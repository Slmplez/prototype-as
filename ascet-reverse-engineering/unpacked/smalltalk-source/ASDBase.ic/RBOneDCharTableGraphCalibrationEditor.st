"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002de0; bytecode file offset 0x8ffcfc"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
startDisplayingWP
    ^self
! !

"ASDBase.ic method 0x20009b60; bytecode file offset 0x908be4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
isHex
    | recoveredValue0 |
    recoveredValue0 := (self) hexView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013c68; bytecode file offset 0x912098"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
defaultKeyMapTextString
    | recoveredValue0 |
    recoveredValue0 := HTOneDCharTableGraphEditor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018b90; bytecode file offset 0x92209c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
defaultIcon
    ^'EditorEECalibrationOneD32'
! !

"ASDBase.ic method 0x2001eec0; bytecode file offset 0x92209c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
defaultBitmapName
    ^'etas'
! !

"ASDBase.ic method 0x20027af0; bytecode file offset 0x92454c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
isPrintingPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) activeWPDisplay.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027f24; bytecode file offset 0x934580"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
defaultChannelColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) nextDefaultChannelColor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a4d4; bytecode file offset 0x934580"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
editBlockStartIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) editBlockStartIndex.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cb84; bytecode file offset 0x934580"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
editBlockEndIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) editBlockEndIndex.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030424; bytecode file offset 0x934580"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
hasSingleWAxis
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) hasSingleWAxis.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033b24; bytecode file offset 0x934580"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) backgroundColor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036644; bytecode file offset 0x934580"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
editPointSelected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) isEditPointSelected.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c380; bytecode file offset 0x938c38"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
checkXArg: recoveredArg1 arg: recoveredArg2 data: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004708c; bytecode file offset 0x9451f8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
drawingArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('signalDrawingArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050858; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
xMax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getXAxisMaxOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050878; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
hexView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) channelIsHexView: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050888; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
canUndo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) canUndoChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050898; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
wMax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getWAxisMaxOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200508a8; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
canRedo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) canRedoChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200508c8; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
wMin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getWAxisOffsetOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200508d8; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
color
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getColorOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200508e8; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
xMin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getXAxisOffsetOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050908; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
connectionType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getDisplayTypeOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050928; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
xUnit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) xUnitOfChannel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050958; bytecode file offset 0x94d214"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
hasGrid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) channelHasGrid: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051204; bytecode file offset 0x94f0e0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
undoBuffer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getActiveChannel.
    recoveredValue2 := (recoveredValue1) undoBuffer.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005163c; bytecode file offset 0x94f0e0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
wUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := (recoveredValue0) getActiveChannel.
    recoveredValue2 := (recoveredValue1) wUnit.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058ad8; bytecode file offset 0x956284"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
checkValidBackgroundColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkValidBackgroundColor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fdc4; bytecode file offset 0x95c79c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
changeToHexView
    (self) changeToHexViewRedraw: (true).
    ^self
! !

"ASDBase.ic method 0x2005fe48; bytecode file offset 0x95c79c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
changeToPhysView
    (self) changeToPhysViewRedraw: (true).
    ^self
! !

"ASDBase.ic method 0x20063d34; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuIncrement
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) incrementW.
    ^self
! !

"ASDBase.ic method 0x20063ff4; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuDecrementX
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) decrementX.
    ^self
! !

"ASDBase.ic method 0x200641f4; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuSelectAll
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) selectAllEditPoints.
    ^self
! !

"ASDBase.ic method 0x20064294; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuInvertColors
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) invertColors.
    ^self
! !

"ASDBase.ic method 0x200649b4; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuDecrement
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) decrementW.
    ^self
! !

"ASDBase.ic method 0x20064a54; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuToggleBlockSelection
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) toggleBlockSelection.
    ^self
! !

"ASDBase.ic method 0x20064f44; bytecode file offset 0x961970"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuIncrementX
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) incrementX.
    ^self
! !

"ASDBase.ic method 0x200756c4; bytecode file offset 0x9757c8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
canChangeAxisGrid
    ^true
! !

"ASDBase.ic method 0x2007fb20; bytecode file offset 0x97c3d4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
defaultWidth
    ^280
! !

"ASDBase.ic method 0x2008055c; bytecode file offset 0x97ce10"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
defaultKeyMapTextHeight
    ^62
! !

"ASDBase.ic method 0x2008fa48; bytecode file offset 0x98c374"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuBlackAndWhite
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) changeToBlackAndWhiteRedraw: (true).
    ^self
! !

"ASDBase.ic method 0x200a12ec; bytecode file offset 0x99dbb8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuUndo
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) undoChannel: (nil) redraw: (true).
    ^self
! !

"ASDBase.ic method 0x200a12fc; bytecode file offset 0x99dbb8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuRedo
    | recoveredValue0 |
    recoveredValue0 := (self) paneController.
    (recoveredValue0) redoChannel: (nil) redraw: (true).
    ^self
! !

"ASDBase.ic method 0x200b290c; bytecode file offset 0x9af1f8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuToggleGrid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hasGrid.
    recoveredValue1 := (recoveredValue0) not.
    (self) showGrid: (recoveredValue1) redraw: (true).
    ^self
! !

"ASDBase.ic method 0x200e5510; bytecode file offset 0x9e1f3c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
paneController
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
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
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e64c8; bytecode file offset 0x9e2d88"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
updateTitle
    | recoveredValue0 |
    super updateTitle.
    recoveredValue0 := (self) title.
    orgTitle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ea4b8; bytecode file offset 0x9e6d74"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
putConfigurationObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super putConfigurationObject: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    windowConfigObject := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200eaa0c; bytecode file offset 0x9e72cc"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
addWorkingPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) applicationController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addWorkingPointForCalibrationView: (self) calibrationElement: (recoveredValue1).
    (self) manageWPValueLabels.
    ^self
! !

"ASDBase.ic method 0x200efa2c; bytecode file offset 0x9ec2f4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
getBlockIndices
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Interval.
    recoveredValue1 := (self) editBlockStartIndex.
    recoveredValue2 := (self) editBlockEndIndex.
    recoveredValue3 := (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asArray.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fa4fc; bytecode file offset 0x9f6dd8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    dataConfigObjects := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20108ccc; bytecode file offset 0xa05588"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuHexView
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) changeToHexViewRedraw: (recoveredStack1).
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

"ASDBase.ic method 0x201093f0; bytecode file offset 0xa05cb0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
editBlockSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) editPointSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) editBlockStartIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) editBlockEndIndex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010f7b8; bytecode file offset 0xa0c08c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
changeToHexViewRedraw: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changeToHexViewChannel: (nil) update: (true) redraw: (recoveredValue1).
    (self) updateDescription.
    ^self
! !

"ASDBase.ic method 0x2010f7cc; bytecode file offset 0xa0c08c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
changeToPhysViewRedraw: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) paneController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changeToPhysViewChannel: (nil) update: (true) redraw: (recoveredValue1).
    (self) updateDescription.
    ^self
! !

"ASDBase.ic method 0x2011927c; bytecode file offset 0xa15b44"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
updateView
    | recoveredValue0 |
    (self) updateChannels.
    recoveredValue0 := (self) paneController.
    (recoveredValue0) updatePane.
    super updateView.
    ^self
! !

"ASDBase.ic method 0x2014f938; bytecode file offset 0xa4c254"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
selectFirstEditPoint
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) selectFirstEditPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setInputFocus.
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

"ASDBase.ic method 0x2014f954; bytecode file offset 0xa4c254"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
selectPrevEditPoint
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) selectPrevEditPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setInputFocus.
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

"ASDBase.ic method 0x2014f970; bytecode file offset 0xa4c254"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
selectNextEditPoint
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) selectNextEditPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setInputFocus.
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

"ASDBase.ic method 0x2014f98c; bytecode file offset 0xa4c254"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
selectLastEditPoint
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) selectLastEditPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setInputFocus.
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

"ASDBase.ic method 0x20150c9c; bytecode file offset 0xa4d560"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
getBlockValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getBlockIndices.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := dataId.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) valueAtIndex: (recoveredBlock5Value1).
    recoveredBlock5Value3 := (recoveredBlock5Value2) getPhysValue.
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018ebb0; bytecode file offset 0xa8b480"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
unmanageWPValueLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetAt: ('xNameText').
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmATTACHFORM.
    (recoveredValue1) topAttachment: (recoveredValue2).
    (recoveredValue0) topOffset: (8).
    recoveredValue3 := (self) widgetAt: ('xValueText').
    (recoveredValue3) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x201a241c; bytecode file offset 0xa9ece4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuDefaultColors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeProtection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) changeToDefaultColorsRedraw: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWriteProtectionBackgroundColor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a906c; bytecode file offset 0xaa5930"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printDestroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            printingDone := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := printerFont.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) display.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultFontStruct.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := printerFont.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) freeFont.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d0b1c; bytecode file offset 0xacd3e4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuMultFactor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SCMultiplyWith.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := SCValueFactor.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) multWFactor: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d1484; bytecode file offset 0xacdd50"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
getConfigurationObject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super getConfigurationObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) fillConfigurationObject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := orgBackgroundColor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 25.
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

"ASDBase.ic method 0x201d6be0; bytecode file offset 0xad34b4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
getIncDecStepNumberRepresentation
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'hex'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveChannel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'dez'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := 'float'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2c1c; bytecode file offset 0xadf4f4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
manageWPValueLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetAt: ('xNameText').
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmATTACHFORM.
    (recoveredValue1) topAttachment: (recoveredValue2).
    (recoveredValue0) topOffset: (2).
    recoveredValue3 := (self) widgetAt: ('xValueText').
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) labelString: ('Process point ?').
    (recoveredValue3) manageChild.
    ^self
! !

"ASDBase.ic method 0x201e3ea0; bytecode file offset 0xae0770"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) xMin.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) setXOffset: (recoveredStack1) channel: (recoveredStack2) update: (recoveredStack3) redraw: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) initializeWidgetsForOneDCharTable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updatePane.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb748; bytecode file offset 0xae8014"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createEditMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createViewMenu.
    (recoveredValue5) addMenu: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) createOptionsMenu.
    (recoveredValue7) addMenu: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201fa738; bytecode file offset 0xaf700c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
removeWorkingPoint: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannelNamed: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) removeWorkingPointForCalibrationView: (recoveredStack1) calibrationElement: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) stopDisplayingWP.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) unmanageWPValueLabels.
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

"ASDBase.ic method 0x20209670; bytecode file offset 0xb05f48"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
getConfigurationObjectOfData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultDataConfigObjectClass.
    recoveredValue2 := (recoveredValue1) create.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) paneController.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) wName.
    recoveredValue6 := (recoveredValue3) getChannelNamed: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := (self) paneController.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue7) fillDataConfigurationObject: (recoveredValue8) channel: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) isDisplayingWorkingPoint: (recoveredValue11).
    (recoveredValue10) workingPoint: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2020e670; bytecode file offset 0xb0af3c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printRepresentation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) asHex.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRound.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
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
            recoveredStack2 := 3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) printRounded: (recoveredStack1) decimals: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxDisplayDigits.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) printStringMaxDigits: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021cda0; bytecode file offset 0xb1966c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
addDataList: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            dataConfigObjects := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            dataConfigObjects := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            super addDataList: (recoveredStack1) with: (recoveredStack2).
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

"ASDBase.ic method 0x202492e8; bytecode file offset 0xb45bc0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
stopDisplayingWP
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280de8e8Arg1 | 
    | block280de8e8Value0 block280de8e8Value1 |
    block280de8e8Value0 := block280de8e8Arg1.
    block280de8e8Value1 := (block280de8e8Value0) stopDisplayingWP.
    block280de8e8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'xValueText'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'xValueText'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'Process point ?'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
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

"ASDBase.ic method 0x20249b38; bytecode file offset 0xb4640c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) adjustShellSizeToScreenResolution.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBlackAndWhite.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWriteProtectionBackgroundColor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1) redraw: (recoveredStack2).
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

"ASDBase.ic method 0x2024dfd4; bytecode file offset 0xb4a8b4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createFileMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := MTFile.
    (recoveredValue3) title: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := Print.
    recoveredValue7 := Dots.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := [
    | recoveredBlock22Value0 |
    recoveredBlock22Value0 := (self) isPrintingPossible.
    recoveredBlock22Value0
].
    (recoveredValue5) add: ('menuPrint') label: (recoveredValue8) enable: (recoveredValue9).
    recoveredLocal1 := recoveredValue2.
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2025ca14; bytecode file offset 0xb592e4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printMap: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := '-*-courier-medium-r-normal-*-*-100-*-*-*-*-*-*'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadQueryFont: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            printerFont := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFontStruct.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            printerFont := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) startJob.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) startPage.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20272338; bytecode file offset 0xb6ec04"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createDataChannelFor: recoveredArg1 configuration: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) addEditChannelWithSignal: (recoveredStack1) color: (recoveredStack2) redraw: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) putDataConfigurationObject: (recoveredStack1) channel: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) initEditPermissionsForChannel: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingPoint.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) addWorkingPoint: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c8304; bytecode file offset 0xbc4bd8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuAddOffset
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexView.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := '0'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := SCAddOffset.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := SCValueOffset.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) editHexStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := SCAddOffset.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := SCValueOffset.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addWOffset: (recoveredStack1).
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

"ASDBase.ic method 0x202d2690; bytecode file offset 0xbcef68"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuFillWithValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexView.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := SCFillWith.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := SCValueFill.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) editHexStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := SCFillWith.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := SCValueFill.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) fillWWithValue: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e97a8; bytecode file offset 0xbe6074"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
showGrid: recoveredArg1 redraw: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannels.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) = (recoveredStack6).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) & (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) showGrid: (recoveredStack2) channel: (recoveredStack3) redraw: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 48]] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
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

"ASDBase.ic method 0x202ea6c8; bytecode file offset 0xbe6f94"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuPhysView
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
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
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkDisplayPhys: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkMonotony: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) errorNoPhysNotMonotonous.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkMonotony: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) changeToPhysViewRedraw: (recoveredStack1).
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

"ASDBase.ic method 0x202eefdc; bytecode file offset 0xbeb8b4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
displayEditPosition: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := orgTitle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Arg.:'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printRepresentation: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) addBlankTo: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Var.:'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := ': '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) printRepresentation: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) addBlankTo: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
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

"ASDBase.ic method 0x202f50ec; bytecode file offset 0xbf19cc"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
data: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
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
            (recoveredStack0) dataElement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'EHI_36284'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) isWriteProtected.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDependentParam.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) writeProtection: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) updateDescription.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) updateSDExtensionWidget.
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

"ASDBase.ic method 0x20317a10; bytecode file offset 0xc142e8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
triggerCalibrationOn: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValueOperation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) indices.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280eb2fcArg1 | 
    | block280eb2fcStack0 block280eb2fcStack1 block280eb2fcStack2 block280eb2fcStack3 block280eb2fcPC block280eb2fcStep block280eb2fcDone block280eb2fcResult |
    block280eb2fcStack0 := self.
    block280eb2fcPC := 4.
    block280eb2fcDone := false.
    [block280eb2fcDone not] whileTrue: [
        block280eb2fcStep := block280eb2fcPC.
        block280eb2fcStep = 4 ifTrue: [
            block280eb2fcStack1 := block280eb2fcArg1.
            block280eb2fcPC := 5.
        ].
        block280eb2fcStep = 5 ifTrue: [
            block280eb2fcStack1 := (block280eb2fcStack1) y.
            block280eb2fcPC := 6.
        ].
        block280eb2fcStep = 6 ifTrue: [
            block280eb2fcStack2 := 0.
            block280eb2fcPC := 8.
        ].
        block280eb2fcStep = 8 ifTrue: [
            block280eb2fcStack1 := (block280eb2fcStack1) = (block280eb2fcStack2).
            block280eb2fcPC := 9.
        ].
        block280eb2fcStep = 9 ifTrue: [
            (block280eb2fcStack1) ifTrue: [block280eb2fcPC := 12] ifFalse: [block280eb2fcPC := 16].
        ].
        block280eb2fcStep = 12 ifTrue: [
            block280eb2fcStack1 := block280eb2fcArg1.
            block280eb2fcPC := 13.
        ].
        block280eb2fcStep = 13 ifTrue: [
            block280eb2fcPC := 22.
        ].
        block280eb2fcStep = 16 ifTrue: [
            block280eb2fcStack1 := block280eb2fcArg1.
            block280eb2fcPC := 17.
        ].
        block280eb2fcStep = 17 ifTrue: [
            block280eb2fcStack1 := (block280eb2fcStack1) y.
            block280eb2fcPC := 18.
        ].
        block280eb2fcStep = 18 ifTrue: [
            block280eb2fcStack2 := 1.
            block280eb2fcPC := 20.
        ].
        block280eb2fcStep = 20 ifTrue: [
            block280eb2fcStack1 := (block280eb2fcStack1) @ (block280eb2fcStack2).
            block280eb2fcPC := 22.
        ].
        block280eb2fcStep = 22 ifTrue: [
            block280eb2fcResult := block280eb2fcStack1.
            block280eb2fcDone := true.
        ].
    ].
    block280eb2fcResult
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            super triggerCalibrationOn: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203274d4; bytecode file offset 0xc23db8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
notifyActivateChannel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := [
    ^nil
].
    recoveredValue1 := (self) widgetAt: ('aVariablesComboBox') ifAbsent: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getSignal.
    (self) data: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) data.
    recoveredValue7 := (recoveredValue6) wName.
    recoveredValue8 := (recoveredValue7) , (' <').
    recoveredValue9 := (self) data.
    recoveredValue10 := (recoveredValue9) infoType.
    recoveredValue11 := (recoveredValue8) , (recoveredValue10).
    recoveredValue12 := (recoveredValue11) , ('>').
    recoveredValue13 := (recoveredValue5) itemPos: (recoveredValue12).
    (recoveredValue4) selectPos: (recoveredValue13) notify: (false).
    ^self
! !

"ASDBase.ic method 0x20328940; bytecode file offset 0xc25224"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
updateSelectedData
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ' <'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannelNamed: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) activateChannel: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) changeToEditChannel: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSignal.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) data: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032db48; bytecode file offset 0xc2a474"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createColorMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack3 := 'menuBlackAndWhite'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := MPBlackAndWhiteDisplay.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := (self) paneController.
    recoveredBlock13Value1 := (recoveredBlock13Value0) isBlackAndWhite.
    recoveredBlock13Value2 := (recoveredBlock13Value1) not.
    recoveredBlock13Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'menuDefaultColors'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := MPDefaultColorsDisplay.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'menuInvertColors'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := MPInvertColors.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20378454; bytecode file offset 0xc74d40"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
hideKeyMapping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetAt: ('aScrolledText1').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) shell.
    recoveredValue2 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) showSDExtensions.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 22] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) sdCalibrationExt.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := XmATTACHFORM.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            (recoveredBlock12Stack0) bottomAttachment: (recoveredBlock12Stack1).
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) signalDrawingArea.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := XmATTACHFORM.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            (recoveredBlock12Stack0) bottomAttachment: (recoveredBlock12Stack1).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            (recoveredBlock12Stack0) unmanageChild.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) keyMapText.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            (recoveredBlock12Stack0) unmanageChild.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) drawingArea.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) drawingArea.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) height.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 60.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) height.
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) + (recoveredBlock12Stack2).
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) height: (recoveredBlock12Stack1).
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) deferRedraw: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20392480; bytecode file offset 0xc8ed6c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
adjustShellSizeToScreenResolution
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfCreatedByConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 800.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 600.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) screenRect.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) newPosition: (recoveredStack1) width: (recoveredStack2) height: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b497c; bytecode file offset 0xcb1264"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
valueAtIndex: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) xSize.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHex.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDCalibrationEditorOptions.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCalibrationGraphicalEditorHexAxis.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) implXArgAt: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) physXArgAt: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) implAt: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) physAt: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f4214; bytecode file offset 0xcf0b04"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
showKeyMapping
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'aScrolledText1'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'aScrolledText1'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) showSDExtensions.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            (recoveredBlock22Stack0) ifTrue: [recoveredBlock22PC := 34] ifFalse: [recoveredBlock22PC := 50].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack0 := self.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) sdCalibrationExt.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Stack0.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack2 := XmATTACHWIDGET.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            (recoveredBlock22Stack1) bottomAttachment: (recoveredBlock22Stack2).
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) keyMapText.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            (recoveredBlock22Stack0) bottomWidget: (recoveredBlock22Stack1).
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack0 := self.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) signalDrawingArea.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Stack0.
            recoveredBlock22PC := 54.
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Stack2 := XmATTACHWIDGET.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            (recoveredBlock22Stack1) bottomAttachment: (recoveredBlock22Stack2).
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) keyMapText.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            (recoveredBlock22Stack0) bottomWidget: (recoveredBlock22Stack1).
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack0 := recoveredLocal1.
            recoveredBlock22PC := 66.
        ].
        recoveredBlock22Step = 66 ifTrue: [
            (recoveredBlock22Stack0) manageChild.
            recoveredBlock22PC := 68.
        ].
        recoveredBlock22Step = 68 ifTrue: [
            recoveredBlock22Stack0 := self.
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) keyMapText.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            (recoveredBlock22Stack0) manageChild.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            recoveredBlock22Stack0 := self.
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) drawingArea.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) drawingArea.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) height.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 82.
        ].
        recoveredBlock22Step = 82 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) height.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) - (recoveredBlock22Stack2).
            recoveredBlock22PC := 85.
        ].
        recoveredBlock22Step = 85 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) height: (recoveredBlock22Stack1).
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f55b4; bytecode file offset 0xcf1e9c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuRemoveXArg
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) xIncrementableChannel: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMaxXSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) errorFixedDistributionSize.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) minArgSize.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) minArgSize.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) errorCannotRemoveLastArgs: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) editBlockStartIndex.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock76Value0 recoveredBlock76Value1 |
    recoveredBlock76Value0 := recoveredLocal2.
    recoveredBlock76Value1 := (self) removeXArgAtIndex: (recoveredBlock76Value0).
    recoveredBlock76Value1
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041dbe8; bytecode file offset 0xd1a4e4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
updateDescription
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSource.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) xName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ASDCalibrationEditorOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCalibrationGraphicalEditorHexAxis.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := ' ['.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := SCHex.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) xUnit.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := ' ['.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) xUnit.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'xNameText'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisplayingWorkingPoint: (recoveredStack1).
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
            (recoveredStack0) manageWPValueLabels.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) unmanageWPValueLabels.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043b614; bytecode file offset 0xd37f0c"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
removeData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := variables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisplayingWorkingPoint: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) removeWorkingPoint: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := variables.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := variables.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := variables.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) data: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannelNamed: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) removeChannel: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) updateList.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannelNamed: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) changeToEditChannel: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            super removeData: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20442e8c; bytecode file offset 0xd3f774"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
writeProtection: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) writeProtection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
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
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            super writeProtection: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannels.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := (self) paneController.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := recoveredBlock27Arg1.
    recoveredBlock27Value3 := (recoveredBlock27Value0) writeProtection: (recoveredBlock27Value1) channel: (recoveredBlock27Value2).
    recoveredBlock27Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBlackAndWhite.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) backgroundColor.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            orgBackgroundColor := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultWriteProtectionBackgroundColor.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := orgBackgroundColor.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) writeProtection: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045ec98; bytecode file offset 0xd5b578"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printLines: recoveredArg1 on: recoveredArg2 inRect: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := printerFont.
    recoveredValue3 := (recoveredValue2) height.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) gc.
    recoveredValue6 := printerFont.
    recoveredValue7 := (recoveredValue6) fid.
    (recoveredValue5) setFont: (recoveredValue7).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) origin.
    recoveredValue10 := (recoveredValue9) x.
    recoveredValue11 := (recoveredValue10) + (30).
    recoveredLocal4 := recoveredValue11.
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := (recoveredValue12) origin.
    recoveredValue14 := (recoveredValue13) y.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) + (recoveredValue15).
    recoveredValue17 := (recoveredValue16) + (30).
    recoveredLocal3 := recoveredValue17.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59Stack5 recoveredBlock59Stack6 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg2.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) window.
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal2.
            recoveredBlock59PC := 74.
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal4.
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            recoveredBlock59Stack4 := recoveredLocal3.
            recoveredBlock59PC := 80.
        ].
        recoveredBlock59Step = 80 ifTrue: [
            recoveredBlock59Stack5 := recoveredBlock59Arg1.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            (recoveredBlock59Stack1) drawString: (recoveredBlock59Stack2) x: (recoveredBlock59Stack3) y: (recoveredBlock59Stack4) string: (recoveredBlock59Stack5).
            recoveredBlock59PC := 84.
        ].
        recoveredBlock59Step = 84 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal3.
            recoveredBlock59PC := 87.
        ].
        recoveredBlock59Step = 87 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal1.
            recoveredBlock59PC := 90.
        ].
        recoveredBlock59Step = 90 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) + (recoveredBlock59Stack2).
            recoveredBlock59PC := 91.
        ].
        recoveredBlock59Step = 91 ifTrue: [
            recoveredLocal3 := recoveredBlock59Stack1.
            recoveredBlock59PC := 94.
        ].
        recoveredBlock59Step = 94 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 95.
        ].
        recoveredBlock59Step = 95 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal3.
            recoveredBlock59PC := 98.
        ].
        recoveredBlock59Step = 98 ifTrue: [
            recoveredBlock59Stack3 := recoveredArg3.
            recoveredBlock59PC := 101.
        ].
        recoveredBlock59Step = 101 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) corner.
            recoveredBlock59PC := 103.
        ].
        recoveredBlock59Step = 103 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) y.
            recoveredBlock59PC := 105.
        ].
        recoveredBlock59Step = 105 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) > (recoveredBlock59Stack3).
            recoveredBlock59PC := 106.
        ].
        recoveredBlock59Step = 106 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 110] ifFalse: [recoveredBlock59PC := 113].
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredBlock59PC := 111.
        ].
        recoveredBlock59Step = 111 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 112.
        ].
        recoveredBlock59Step = 112 ifTrue: [
            ^recoveredBlock59Stack1
        ].
        recoveredBlock59Step = 113 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
    (recoveredValue18) do: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x20474e04; bytecode file offset 0xd71704"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
updateChannels
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChannels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block281018ccArg1 | 
    | block281018ccValue0 block281018ccValue1 |
    block281018ccValue0 := block281018ccArg1.
    block281018ccValue1 := (block281018ccValue0) getSignal.
    block281018ccValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := variables.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack3 := [:recoveredBlock29Block40Arg1 | 
    | recoveredBlock29Block40Value0 recoveredBlock29Block40Value1 recoveredBlock29Block40Value2 recoveredBlock29Block40Value3 recoveredBlock29Block40Value4 |
    recoveredBlock29Block40Value0 := recoveredBlock29Block40Arg1.
    recoveredBlock29Block40Value1 := (recoveredBlock29Block40Value0) wName.
    recoveredBlock29Block40Value2 := recoveredBlock29Arg1.
    recoveredBlock29Block40Value3 := (recoveredBlock29Block40Value2) wName.
    recoveredBlock29Block40Value4 := (recoveredBlock29Block40Value1) = (recoveredBlock29Block40Value3).
    recoveredBlock29Block40Value4
].
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack4 := [].
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) detect: (recoveredBlock29Stack3) ifNone: (recoveredBlock29Stack4).
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            (recoveredBlock29Stack2 ~~ nil) ifTrue: [recoveredBlock29PC := 73] ifFalse: [recoveredBlock29PC := 64].
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29PC := 65.
        ].
        recoveredBlock29Step = 65 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 68.
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) add: (recoveredBlock29Stack2).
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:recoveredBlock79Arg1 :recoveredBlock79Arg2 | 
    | recoveredBlock79Local1 recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 recoveredBlock79Value4 recoveredBlock79Value5 recoveredBlock79Value6 recoveredBlock79Value7 |
    recoveredBlock79Value0 := dataConfigObjects.
    recoveredBlock79Value1 := recoveredBlock79Arg2.
    recoveredBlock79Value2 := (recoveredBlock79Value0) at: (recoveredBlock79Value1).
    recoveredBlock79Value3 := recoveredBlock79Arg1.
    recoveredBlock79Value4 := (self) fillDataConfigObjectWithDefaultValues: (recoveredBlock79Value2) for: (recoveredBlock79Value3).
    recoveredBlock79Local1 := recoveredBlock79Value4.
    recoveredBlock79Value5 := recoveredBlock79Arg1.
    recoveredBlock79Value6 := recoveredBlock79Local1.
    recoveredBlock79Value7 := (self) createDataChannelFor: (recoveredBlock79Value5) configuration: (recoveredBlock79Value6).
    recoveredBlock79Value7
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) changeToEditChannel: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            dataConfigObjects := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204751d8; bytecode file offset 0xd71ae0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
removeXArgAtIndex: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) xArgAtIndex: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueAtIndex: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := (self) data.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := (recoveredBlock24Value0) removeXIndex: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) data.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRemoveXArg: (recoveredStack1) arg: (recoveredStack2) value: (recoveredStack3) data: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveChannel.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := SCRemoveArg.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := ': '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) printRepresentation: (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 |
    recoveredBlock82Value0 := recoveredBlock82Arg1.
    recoveredBlock82Value1 := recoveredLocal2.
    (recoveredBlock82Value0) removeXArg: (recoveredBlock82Value1).
    recoveredBlock82Value2 := (self) updateContents.
    recoveredBlock82Value2
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 recoveredBlock99Value3 |
    recoveredBlock99Value0 := recoveredBlock99Arg1.
    recoveredBlock99Value1 := recoveredLocal2.
    recoveredBlock99Value2 := recoveredLocal1.
    (recoveredBlock99Value0) addXArg: (recoveredBlock99Value1) value: (recoveredBlock99Value2).
    recoveredBlock99Value3 := (self) updateContents.
    recoveredBlock99Value3
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) addUndoOperation: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204820a0; bytecode file offset 0xd7e9c8"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack3 := MT_View.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuToggleGrid'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := MeasureAxisGrid.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := (self) hasGrid.
    recoveredBlock26Value0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'menuToggleGrid'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := XKG.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := 'Ctrl+G'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLine.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkingPointDisplaySupported.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'menuToggleShowWorkingPoint'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := GMVWorkingPoint.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock68Value0 |
    recoveredBlock68Value0 := (self) allowWPActions.
    recoveredBlock68Value0
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock77Value0 recoveredBlock77Value1 |
    recoveredBlock77Value0 := (self) data.
    recoveredBlock77Value1 := (self) isDisplayingWorkingPoint: (recoveredBlock77Value0).
    recoveredBlock77Value1
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) addLine.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'menuToggleShowKeyMapping'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 'Show Key Help'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock108Value0 |
    recoveredBlock108Value0 := (self) isShowKeyHelp.
    recoveredBlock108Value0
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendViewMenu: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20498814; bytecode file offset 0xd95134"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPaneControllerClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) drawingArea.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithOwner: (recoveredStack1) widget: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) createSDExtWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataMenu.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'aVariablesComboBox'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'variableListLabel'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'keyMapText'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'xLabel'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'xNameText'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'xValueText'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'variableListLabel'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := LLVariablesShort.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := ':'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) updateChannels.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) updateList.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := windowConfigObject.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := windowConfigObject.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) putConfigurationObject: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) title.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            orgTitle := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) initializeKeyHelpDisplay.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d5094; bytecode file offset 0xdd19a4"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
addXArg: recoveredArg1 oldArg: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextLowerIndexOf: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueAtIndex: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := (self) data.
    recoveredBlock48Value1 := recoveredArg1.
    recoveredBlock48Value2 := recoveredLocal3.
    recoveredBlock48Value3 := (recoveredBlock48Value0) addXArg: (recoveredBlock48Value1) value: (recoveredBlock48Value2).
    recoveredBlock48Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) checkXArg: (recoveredStack1) arg: (recoveredStack2) data: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveChannel.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := RBBlockContextEditOperation.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := SCAddArg.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := ': '.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := (recoveredStack4) printRepresentation: (recoveredStack5).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 |
    recoveredBlock116Value0 := recoveredBlock116Arg1.
    recoveredBlock116Value1 := recoveredArg1.
    recoveredBlock116Value2 := recoveredLocal3.
    (recoveredBlock116Value0) addXArg: (recoveredBlock116Value1) value: (recoveredBlock116Value2).
    recoveredBlock116Value3 := (self) updateContents.
    recoveredBlock116Value3
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack2) redoBlock: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 |
    recoveredBlock136Value0 := recoveredBlock136Arg1.
    recoveredBlock136Value1 := recoveredArg1.
    (recoveredBlock136Value0) removeXArg: (recoveredBlock136Value1).
    recoveredBlock136Value2 := (self) updateContents.
    recoveredBlock136Value2
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) undoBlock: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) addUndoOperation: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d81f4; bytecode file offset 0xdd4b00"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
initEditPermissionsForChannel: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_36284'.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSignal.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) isWriteProtected.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSignal.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDependentParam.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) writeProtection: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'isSymbolic'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSymbolic.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'hasSymbolicXArgs'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSymbolicXArgs.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) typePermissions.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'editX'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) xEditable: (recoveredStack2) channel: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) xIncrementable: (recoveredStack1) channel: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'editW'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) wEditable: (recoveredStack1) channel: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) wEditable: (recoveredStack1) channel: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) wIncrementable: (recoveredStack2) channel: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) wBlockSelectionAllowed: (recoveredStack1) channel: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e4144; bytecode file offset 0xde0a58"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
outputXWorkingPointHex: recoveredArg1 phys: recoveredArg2 editData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconic.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := self.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isDestroyed.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 158] ifFalse: [recoveredBlock32PC := 44].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) paneController.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) getActiveChannel.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack4 := recoveredArg3.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            (recoveredBlock32Stack1) outputXWorkingPointHex: (recoveredBlock32Stack2) phys: (recoveredBlock32Stack3) editData: (recoveredBlock32Stack4).
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) acquisitionRunning.
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg3.
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32Stack3 := self.
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) data.
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) == (recoveredBlock32Stack3).
            recoveredBlock32PC := 71.
        ].
        recoveredBlock32Step = 71 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) & (recoveredBlock32Stack2).
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 74.
        ].
        recoveredBlock32Step = 74 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 75.
        ].
        recoveredBlock32Step = 75 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 76.
        ].
        recoveredBlock32Step = 76 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 80] ifFalse: [recoveredBlock32PC := 158].
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 82.
        ].
        recoveredBlock32Step = 82 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isHex.
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 88] ifFalse: [recoveredBlock32PC := 110].
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32Stack1 := ASDCalibrationEditorOptions.
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) instance.
            recoveredBlock32PC := 92.
        ].
        recoveredBlock32Step = 92 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) optionCalibrationGraphicalEditorHexAxis.
            recoveredBlock32PC := 94.
        ].
        recoveredBlock32Step = 94 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 98] ifFalse: [recoveredBlock32PC := 110].
        ].
        recoveredBlock32Step = 98 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg1.
            recoveredBlock32PC := 101.
        ].
        recoveredBlock32Step = 101 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) asHexString.
            recoveredBlock32PC := 103.
        ].
        recoveredBlock32Step = 103 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 106.
        ].
        recoveredBlock32Step = 106 ifTrue: [
            recoveredBlock32PC := 148.
        ].
        recoveredBlock32Step = 110 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg3.
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 113 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) xFormula.
            recoveredBlock32PC := 115.
        ].
        recoveredBlock32Step = 115 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) decimals.
            recoveredBlock32PC := 117.
        ].
        recoveredBlock32Step = 117 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 118.
        ].
        recoveredBlock32Step = 118 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 121.
        ].
        recoveredBlock32Step = 121 ifTrue: [
            (recoveredBlock32Stack1 ~~ nil) ifTrue: [recoveredBlock32PC := 136] ifFalse: [recoveredBlock32PC := 124].
        ].
        recoveredBlock32Step = 124 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) printString.
            recoveredBlock32PC := 129.
        ].
        recoveredBlock32Step = 129 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 132.
        ].
        recoveredBlock32Step = 132 ifTrue: [
            recoveredBlock32PC := 148.
        ].
        recoveredBlock32Step = 136 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 137.
        ].
        recoveredBlock32Step = 137 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg2.
            recoveredBlock32PC := 140.
        ].
        recoveredBlock32Step = 140 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal1.
            recoveredBlock32PC := 143.
        ].
        recoveredBlock32Step = 143 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) printRounded: (recoveredBlock32Stack2) decimals: (recoveredBlock32Stack3).
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 145 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 148.
        ].
        recoveredBlock32Step = 148 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 149.
        ].
        recoveredBlock32Step = 149 ifTrue: [
            recoveredBlock32Stack2 := 'xValueText'.
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) widgetAt: (recoveredBlock32Stack2).
            recoveredBlock32PC := 153.
        ].
        recoveredBlock32Step = 153 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal2.
            recoveredBlock32PC := 156.
        ].
        recoveredBlock32Step = 156 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) labelString: (recoveredBlock32Stack2).
            recoveredBlock32PC := 158.
        ].
        recoveredBlock32Step = 158 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204edb28; bytecode file offset 0xdea440"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printDataListOn: recoveredArg1 rect: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) window.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) with: (recoveredValue6).
    (recoveredValue3) drawRectangles: (recoveredValue4) rectangles: (recoveredValue7).
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := SCOneDCharTables.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) extent.
    recoveredValue14 := (recoveredValue13) x.
    recoveredValue15 := (recoveredValue14) - (40).
    recoveredValue16 := printerFont.
    recoveredValue17 := (recoveredValue16) textWidth: ('0').
    recoveredValue18 := (recoveredValue15) / (recoveredValue17).
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := variables.
    recoveredValue20 := [:recoveredBlock63Arg1 :recoveredBlock63Arg2 | 
    | recoveredBlock63Local1 recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63Stack4 recoveredBlock63Stack5 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack1 := recoveredBlock63Arg2.
            recoveredBlock63PC := 71.
        ].
        recoveredBlock63Step = 71 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) printString.
            recoveredBlock63PC := 73.
        ].
        recoveredBlock63Step = 73 ifTrue: [
            recoveredBlock63Stack2 := 4.
            recoveredBlock63PC := 75.
        ].
        recoveredBlock63Step = 75 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) addBlankTo: (recoveredBlock63Stack2).
            recoveredBlock63PC := 77.
        ].
        recoveredBlock63Step = 77 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 78.
        ].
        recoveredBlock63Step = 78 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) wName.
            recoveredBlock63PC := 80.
        ].
        recoveredBlock63Step = 80 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) , (recoveredBlock63Stack2).
            recoveredBlock63PC := 82.
        ].
        recoveredBlock63Step = 82 ifTrue: [
            recoveredBlock63Stack2 := ' ['.
            recoveredBlock63PC := 84.
        ].
        recoveredBlock63Step = 84 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) , (recoveredBlock63Stack2).
            recoveredBlock63PC := 86.
        ].
        recoveredBlock63Step = 86 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 87.
        ].
        recoveredBlock63Step = 87 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) wUnit.
            recoveredBlock63PC := 89.
        ].
        recoveredBlock63Step = 89 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) , (recoveredBlock63Stack2).
            recoveredBlock63PC := 91.
        ].
        recoveredBlock63Step = 91 ifTrue: [
            recoveredBlock63Stack2 := ']'.
            recoveredBlock63PC := 93.
        ].
        recoveredBlock63Step = 93 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) , (recoveredBlock63Stack2).
            recoveredBlock63PC := 95.
        ].
        recoveredBlock63Step = 95 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack1.
            recoveredBlock63PC := 96.
        ].
        recoveredBlock63Step = 96 ifTrue: [
            recoveredBlock63Stack1 := recoveredBlock63Local1.
            recoveredBlock63PC := 97.
        ].
        recoveredBlock63Step = 97 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) size.
            recoveredBlock63PC := 99.
        ].
        recoveredBlock63Step = 99 ifTrue: [
            recoveredBlock63Stack2 := recoveredLocal1.
            recoveredBlock63PC := 102.
        ].
        recoveredBlock63Step = 102 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) > (recoveredBlock63Stack2).
            recoveredBlock63PC := 103.
        ].
        recoveredBlock63Step = 103 ifTrue: [
            (recoveredBlock63Stack1) ifTrue: [recoveredBlock63PC := 106] ifFalse: [recoveredBlock63PC := 144].
        ].
        recoveredBlock63Step = 106 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal2.
            recoveredBlock63PC := 109.
        ].
        recoveredBlock63Step = 109 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Stack1.
            recoveredBlock63PC := 110.
        ].
        recoveredBlock63Step = 110 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Arg2.
            recoveredBlock63PC := 111.
        ].
        recoveredBlock63Step = 111 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) printString.
            recoveredBlock63PC := 113.
        ].
        recoveredBlock63Step = 113 ifTrue: [
            recoveredBlock63Stack4 := 4.
            recoveredBlock63PC := 115.
        ].
        recoveredBlock63Step = 115 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) addBlankTo: (recoveredBlock63Stack4).
            recoveredBlock63PC := 117.
        ].
        recoveredBlock63Step = 117 ifTrue: [
            recoveredBlock63Stack4 := recoveredBlock63Arg1.
            recoveredBlock63PC := 118.
        ].
        recoveredBlock63Step = 118 ifTrue: [
            recoveredBlock63Stack4 := (recoveredBlock63Stack4) wName.
            recoveredBlock63PC := 120.
        ].
        recoveredBlock63Step = 120 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) , (recoveredBlock63Stack4).
            recoveredBlock63PC := 122.
        ].
        recoveredBlock63Step = 122 ifTrue: [
            (recoveredBlock63Stack2) add: (recoveredBlock63Stack3).
            recoveredBlock63PC := 124.
        ].
        recoveredBlock63Step = 124 ifTrue: [
            recoveredBlock63Stack2 := '    '.
            recoveredBlock63PC := 126.
        ].
        recoveredBlock63Step = 126 ifTrue: [
            recoveredBlock63Stack3 := ' ['.
            recoveredBlock63PC := 128.
        ].
        recoveredBlock63Step = 128 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) , (recoveredBlock63Stack3).
            recoveredBlock63PC := 130.
        ].
        recoveredBlock63Step = 130 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Arg1.
            recoveredBlock63PC := 131.
        ].
        recoveredBlock63Step = 131 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) wUnit.
            recoveredBlock63PC := 133.
        ].
        recoveredBlock63Step = 133 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) , (recoveredBlock63Stack3).
            recoveredBlock63PC := 135.
        ].
        recoveredBlock63Step = 135 ifTrue: [
            recoveredBlock63Stack3 := ']'.
            recoveredBlock63PC := 137.
        ].
        recoveredBlock63Step = 137 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) , (recoveredBlock63Stack3).
            recoveredBlock63PC := 139.
        ].
        recoveredBlock63Step = 139 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) add: (recoveredBlock63Stack2).
            recoveredBlock63PC := 141.
        ].
        recoveredBlock63Step = 141 ifTrue: [
            recoveredBlock63PC := 150.
        ].
        recoveredBlock63Step = 144 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal2.
            recoveredBlock63PC := 147.
        ].
        recoveredBlock63Step = 147 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Local1.
            recoveredBlock63PC := 148.
        ].
        recoveredBlock63Step = 148 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) add: (recoveredBlock63Stack2).
            recoveredBlock63PC := 150.
        ].
        recoveredBlock63Step = 150 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack1.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
    (recoveredValue19) doWithIndex: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredArg2.
    (self) printLines: (recoveredValue21) on: (recoveredValue22) inRect: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x20501598; bytecode file offset 0xdfded0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createSDExtWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'rbExtWidget'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    (recoveredBlock14Value1) y: (34).
    recoveredBlock14Value2 := recoveredBlock14Value0.
    (recoveredBlock14Value2) height: (50).
    recoveredBlock14Value3 := (self) form.
    recoveredBlock14Value4 := (recoveredBlock14Value3) width.
    recoveredBlock14Value5 := (recoveredBlock14Value0) width: (recoveredBlock14Value4).
    recoveredBlock14Value5
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSDCalibrationExtWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 recoveredBlock48Value8 recoveredBlock48Value9 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredBlock48Value0.
    recoveredBlock48Value2 := XmATTACHWIDGET.
    (recoveredBlock48Value1) bottomAttachment: (recoveredBlock48Value2).
    recoveredBlock48Value3 := recoveredBlock48Value0.
    recoveredBlock48Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock48Value3) bottomWidget: (recoveredBlock48Value4).
    recoveredBlock48Value5 := recoveredBlock48Value0.
    (recoveredBlock48Value5) bottomOffset: (5).
    recoveredBlock48Value6 := recoveredBlock48Value0.
    recoveredBlock48Value7 := XmATTACHFORM.
    (recoveredBlock48Value6) leftAttachment: (recoveredBlock48Value7).
    recoveredBlock48Value8 := XmATTACHFORM.
    recoveredBlock48Value9 := (recoveredBlock48Value0) rightAttachment: (recoveredBlock48Value8).
    recoveredBlock48Value9
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := XmATTACHWIDGET.
    (recoveredBlock88Value1) bottomAttachment: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredLocal1.
    recoveredBlock88Value4 := (recoveredBlock88Value0) bottomWidget: (recoveredBlock88Value3).
    recoveredBlock88Value4
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueFont.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) initAsDragDropTarget: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'sdCalibrationExt'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := [:block2810a71cArg1 | 
    | block2810a71cValue0 block2810a71cValue1 |
    block2810a71cValue0 := block2810a71cArg1.
    block2810a71cValue1 := (block2810a71cValue0) mappedWhenManaged: (false).
    block2810a71cValue1
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) specificationMode: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050fe88; bytecode file offset 0xe0c7c0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ($m) put: ('menuIncrement').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) at: ($n) put: ('menuDecrement').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) at: ($k) put: ('menuIncrementX').
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) at: ($j) put: ('menuDecrementX').
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) at: ($+) put: ('menuAddOffset').
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) at: ($*) put: ('menuMultFactor').
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) at: ($=) put: ('menuFillWithValue').
    recoveredLocal1 := recoveredValue3.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (self) drawingArea.
    recoveredValue13 := (recoveredValue12) primaryWidget.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue11) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := (self) globalActionKeys.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) at: ($b) put: ('menuToggleBlockSelection').
    recoveredValue17 := recoveredValue15.
    recoveredValue18 := XKLeft.
    (recoveredValue17) at: (recoveredValue18) put: ('selectPrevEditPoint').
    recoveredValue19 := recoveredValue15.
    recoveredValue20 := XKRight.
    (recoveredValue19) at: (recoveredValue20) put: ('selectNextEditPoint').
    recoveredValue21 := recoveredValue15.
    recoveredValue22 := XKHome.
    (recoveredValue21) at: (recoveredValue22) put: ('selectFirstEditPoint').
    recoveredValue23 := recoveredValue15.
    recoveredValue24 := XKEnd.
    (recoveredValue23) at: (recoveredValue24) put: ('selectLastEditPoint').
    recoveredValue25 := recoveredValue15.
    recoveredValue26 := XKF11.
    (recoveredValue25) at: (recoveredValue26) put: ('menuToggleShowKeyMapping').
    recoveredValue27 := recoveredValue15.
    (recoveredValue27) at: ($h) put: ('menuHexView').
    recoveredValue28 := recoveredValue15.
    (recoveredValue28) at: ($p) put: ('menuPhysView').
    recoveredValue29 := recoveredValue15.
    (recoveredValue29) at: ($u) put: ('menuUndo').
    recoveredValue30 := recoveredValue15.
    (recoveredValue30) at: ($d) put: ('menuRedo').
    recoveredValue31 := recoveredValue15.
    (recoveredValue31) at: ($?) put: ('menuShowInfo').
    recoveredValue32 := recoveredValue15.
    recoveredValue33 := HKFocusVariableComboBox.
    (recoveredValue32) at: (recoveredValue33) put: ('focusVariableComboBox').
    recoveredLocal1 := recoveredValue15.
    recoveredValue34 := recoveredLocal2.
    recoveredValue35 := (self) shell.
    recoveredValue36 := recoveredLocal1.
    (recoveredValue34) at: (recoveredValue35) put: (recoveredValue36).
    recoveredValue37 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue37).
    ^self
! !

"ASDBase.ic method 0x2051e068; bytecode file offset 0xe1a9a0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printLogoListOn: recoveredArg1 rect: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) drawRectangles: (recoveredStack2) rectangles: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'EHI_84703'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := ASDMeasureEditorOptions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionMeasureOsciEditorLogoBitmap.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 recoveredBlock42Value7 recoveredBlock42Value8 recoveredBlock42Value9 recoveredBlock42Value10 recoveredBlock42Value11 recoveredBlock42Value12 recoveredBlock42Value13 recoveredBlock42Value14 |
    recoveredBlock42Value0 := RBUserInfo.
    recoveredBlock42Value1 := ASDMeasureEditorOptions.
    recoveredBlock42Value2 := (recoveredBlock42Value1) instance.
    recoveredBlock42Value3 := (recoveredBlock42Value2) optionMeasureOsciEditorLogoBitmap.
    recoveredBlock42Value4 := (recoveredBlock42Value3) copyReplaceAll: ('\') with: ('/').
    recoveredBlock42Value5 := ('The bitmap logo ') , (recoveredBlock42Value4).
    recoveredBlock42Value6 := (recoveredBlock42Value5) , (' cannot be found.\').
    recoveredBlock42Value7 := (recoveredBlock42Value6) , ('See tool option <Bitmap For Logo:> under <Editors/measurement/>').
    recoveredBlock42Value8 := (recoveredBlock42Value7) addLineDelimiters.
    recoveredBlock42Value9 := (recoveredBlock42Value0) message: (recoveredBlock42Value8).
    (recoveredBlock42Value9) prompt.
    recoveredBlock42Value10 := RBUserInterface.
    recoveredBlock42Value11 := (recoveredBlock42Value10) resourceManager.
    recoveredBlock42Value12 := (self) defaultBitmapName.
    recoveredBlock42Value13 := (recoveredBlock42Value11) returnImageWithName: (recoveredBlock42Value12).
    recoveredBlock42Value14 := recoveredBlock42Value13.
    recoveredLocal1 := recoveredBlock42Value14.
    recoveredBlock42Value13
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildImageFromFileAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 191] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) putDeviceIndependentImage: (recoveredStack2) image: (recoveredStack3) srcRect: (recoveredStack4) destRect: (recoveredStack5).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20531660; bytecode file offset 0xe2dfa0"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuSetup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70389'.
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
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorNoSetupInHexDisplayMode.
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveChannel.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) incDecStep.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSetupDialogClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) incDecStep: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIncDecStepNumberRepresentation.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) numberRepresentation: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) xMin.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMin.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMax.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplValue: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) incDecStep: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) setWMin: (recoveredStack1) max: (recoveredStack2) channel: (recoveredStack3) update: (recoveredStack4) redraw: (recoveredStack5).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisGrid.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasGrid.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisGrid.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) showGrid: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) color.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) setColor: (recoveredStack2) channel: (recoveredStack3) redraw: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) backgroundColor.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2) redraw: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) xMin.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := (recoveredStack3) xMax.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) setXMin: (recoveredStack2) max: (recoveredStack3) channel: (recoveredStack4) update: (recoveredStack5) redraw: (recoveredStack6).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) updatePane.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20574ad4; bytecode file offset 0xe71454"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createOptionsMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := MTExtras.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addDebugMenuItems: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'menuChangeTitle'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := GMVChangeTitle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'menuSetup'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := GMVDisplaySetup.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'menuSetup'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := XKS.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := 'Ctrl+S'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'createColorMenu'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := MPColors.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) addSubMenu: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'menuPhysView'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := GMVChangeToPhysView.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock102Value0 recoveredBlock102Value1 |
    recoveredBlock102Value0 := (self) hexView.
    recoveredBlock102Value1 := (recoveredBlock102Value0) not.
    recoveredBlock102Value1
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'menuPhysView'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := XKP.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := 'Ctrl+P'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'menuHexView'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := GMVChangeToHexView.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock142Value0 |
    recoveredBlock142Value0 := (self) hexView.
    recoveredBlock142Value0
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'menuHexView'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := XKH.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := 'Ctrl+H'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'menuMoveData'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := GMVMoveDataToWindow.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 'menuRemoveData'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := GMVRemoveData.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := 'menuShowInfo'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := GMVInfoAbout.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'menuShowInfo'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack5 := XKI.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := 'Ctrl+I'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendOptionsMenu: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20588b34; bytecode file offset 0xe85444"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) boundingBox.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) origin.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue4) + (50).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) origin.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) extent.
    recoveredValue11 := (recoveredValue10) y.
    recoveredValue12 := (recoveredValue11) // (8).
    recoveredValue13 := (recoveredValue8) + (recoveredValue12).
    recoveredValue14 := (recoveredValue5) @ (recoveredValue13).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) corner.
    recoveredValue17 := (recoveredValue16) x.
    recoveredValue18 := (recoveredValue17) - (50).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) corner.
    recoveredValue21 := (recoveredValue20) y.
    recoveredValue22 := (recoveredValue21) - (50).
    recoveredValue23 := (recoveredValue18) @ (recoveredValue22).
    recoveredValue24 := (recoveredValue14) corner: (recoveredValue23).
    recoveredLocal1 := recoveredValue24.
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) window.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) gc.
    recoveredValue29 := Array.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue29) with: (recoveredValue30).
    (recoveredValue26) drawRectangles: (recoveredValue28) rectangles: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := (recoveredValue32) origin.
    recoveredValue34 := (recoveredValue33) x.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue35) extent.
    recoveredValue37 := (recoveredValue36) x.
    recoveredValue38 := (recoveredValue37) * (3).
    recoveredValue39 := (recoveredValue38) // (4).
    recoveredValue40 := (recoveredValue34) + (recoveredValue39).
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := (recoveredValue41) origin.
    recoveredValue43 := (recoveredValue42) y.
    recoveredValue44 := (recoveredValue40) @ (recoveredValue43).
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (recoveredValue45) extent.
    recoveredValue47 := (recoveredValue46) x.
    recoveredValue48 := (recoveredValue47) // (4).
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue49) extent.
    recoveredValue51 := (recoveredValue50) y.
    recoveredValue52 := (recoveredValue51) // (10).
    recoveredValue53 := (recoveredValue48) @ (recoveredValue52).
    recoveredValue54 := (recoveredValue44) extent: (recoveredValue53).
    recoveredLocal2 := recoveredValue54.
    recoveredValue55 := recoveredArg1.
    recoveredValue56 := recoveredLocal2.
    (self) printLogoListOn: (recoveredValue55) rect: (recoveredValue56).
    recoveredValue57 := recoveredLocal1.
    recoveredValue58 := (recoveredValue57) origin.
    recoveredValue59 := (recoveredValue58) x.
    recoveredValue60 := recoveredLocal1.
    recoveredValue61 := (recoveredValue60) extent.
    recoveredValue62 := (recoveredValue61) x.
    recoveredValue63 := (recoveredValue62) * (3).
    recoveredValue64 := (recoveredValue63) // (4).
    recoveredValue65 := (recoveredValue59) + (recoveredValue64).
    recoveredValue66 := recoveredLocal1.
    recoveredValue67 := (recoveredValue66) origin.
    recoveredValue68 := (recoveredValue67) y.
    recoveredValue69 := recoveredLocal1.
    recoveredValue70 := (recoveredValue69) extent.
    recoveredValue71 := (recoveredValue70) y.
    recoveredValue72 := (recoveredValue71) // (10).
    recoveredValue73 := (recoveredValue68) + (recoveredValue72).
    recoveredValue74 := (recoveredValue65) @ (recoveredValue73).
    recoveredValue75 := recoveredLocal1.
    recoveredValue76 := (recoveredValue75) extent.
    recoveredValue77 := (recoveredValue76) x.
    recoveredValue78 := (recoveredValue77) // (4).
    recoveredValue79 := recoveredLocal1.
    recoveredValue80 := (recoveredValue79) extent.
    recoveredValue81 := (recoveredValue80) y.
    recoveredValue82 := (recoveredValue81) * (2).
    recoveredValue83 := (recoveredValue82) // (3).
    recoveredValue84 := recoveredLocal1.
    recoveredValue85 := (recoveredValue84) extent.
    recoveredValue86 := (recoveredValue85) y.
    recoveredValue87 := (recoveredValue86) // (10).
    recoveredValue88 := (recoveredValue83) - (recoveredValue87).
    recoveredValue89 := (recoveredValue78) @ (recoveredValue88).
    recoveredValue90 := (recoveredValue74) extent: (recoveredValue89).
    recoveredLocal2 := recoveredValue90.
    recoveredValue91 := recoveredArg1.
    recoveredValue92 := recoveredLocal2.
    (self) printDataListOn: (recoveredValue91) rect: (recoveredValue92).
    recoveredValue93 := recoveredLocal1.
    recoveredValue94 := (recoveredValue93) origin.
    recoveredValue95 := (recoveredValue94) x.
    recoveredValue96 := recoveredLocal1.
    recoveredValue97 := (recoveredValue96) extent.
    recoveredValue98 := (recoveredValue97) x.
    recoveredValue99 := (recoveredValue98) * (3).
    recoveredValue100 := (recoveredValue99) // (4).
    recoveredValue101 := (recoveredValue95) + (recoveredValue100).
    recoveredValue102 := recoveredLocal1.
    recoveredValue103 := (recoveredValue102) origin.
    recoveredValue104 := (recoveredValue103) y.
    recoveredValue105 := recoveredLocal1.
    recoveredValue106 := (recoveredValue105) extent.
    recoveredValue107 := (recoveredValue106) y.
    recoveredValue108 := (recoveredValue107) * (2).
    recoveredValue109 := (recoveredValue108) // (3).
    recoveredValue110 := (recoveredValue104) + (recoveredValue109).
    recoveredValue111 := (recoveredValue101) @ (recoveredValue110).
    recoveredValue112 := recoveredLocal1.
    recoveredValue113 := (recoveredValue112) extent.
    recoveredValue114 := (recoveredValue113) x.
    recoveredValue115 := (recoveredValue114) // (4).
    recoveredValue116 := recoveredLocal1.
    recoveredValue117 := (recoveredValue116) extent.
    recoveredValue118 := (recoveredValue117) y.
    recoveredValue119 := (recoveredValue118) // (3).
    recoveredValue120 := (recoveredValue115) @ (recoveredValue119).
    recoveredValue121 := (recoveredValue111) extent: (recoveredValue120).
    recoveredLocal2 := recoveredValue121.
    recoveredValue122 := recoveredArg1.
    recoveredValue123 := recoveredLocal2.
    (self) printProjectInfoOn: (recoveredValue122) rect: (recoveredValue123).
    recoveredValue124 := recoveredLocal1.
    recoveredValue125 := (recoveredValue124) origin.
    recoveredValue126 := recoveredLocal1.
    recoveredValue127 := (recoveredValue126) extent.
    recoveredValue128 := (recoveredValue127) x.
    recoveredValue129 := (recoveredValue128) * (3).
    recoveredValue130 := (recoveredValue129) // (4).
    recoveredValue131 := recoveredLocal1.
    recoveredValue132 := (recoveredValue131) extent.
    recoveredValue133 := (recoveredValue132) y.
    recoveredValue134 := (recoveredValue130) @ (recoveredValue133).
    recoveredValue135 := (recoveredValue125) extent: (recoveredValue134).
    recoveredLocal2 := recoveredValue135.
    recoveredValue136 := recoveredLocal2.
    recoveredValue137 := (recoveredValue136) insetBy: (20).
    recoveredLocal2 := recoveredValue137.
    recoveredValue138 := (self) paneController.
    recoveredValue139 := recoveredArg1.
    recoveredValue140 := recoveredLocal2.
    (recoveredValue138) printOn: (recoveredValue139) rect: (recoveredValue140).
    recoveredValue141 := recoveredArg1.
    recoveredValue142 := recoveredValue141.
    (recoveredValue142) endPage.
    recoveredValue143 := recoveredValue141.
    (recoveredValue143) endJob.
    (recoveredValue141) destroyWidget.
    ^self
! !

"ASDBase.ic method 0x2059b4e4; bytecode file offset 0xe97e30"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
printProjectInfoOn: recoveredArg1 rect: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) window.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) with: (recoveredValue6).
    (recoveredValue3) drawRectangles: (recoveredValue4) rectangles: (recoveredValue7).
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    recoveredLocal4 := recoveredValue9.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Date.
    recoveredValue13 := (recoveredValue12) today.
    recoveredValue14 := (recoveredValue13) printString.
    recoveredValue15 := (recoveredValue14) , ('   ').
    recoveredValue16 := Time.
    recoveredValue17 := (recoveredValue16) now.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := (recoveredValue15) , (recoveredValue18).
    (recoveredValue11) add: (recoveredValue19).
    recoveredValue20 := recoveredValue10.
    (recoveredValue20) add: ('').
    recoveredValue21 := recoveredValue10.
    recoveredValue22 := SCProject.
    recoveredValue23 := (recoveredValue22) , (':').
    recoveredValue24 := (recoveredValue23) addBlankTo: (12).
    recoveredValue25 := printHeaderInfo.
    recoveredValue26 := (recoveredValue25) project.
    recoveredValue27 := (recoveredValue24) , (recoveredValue26).
    (recoveredValue21) add: (recoveredValue27).
    recoveredValue28 := recoveredValue10.
    recoveredValue29 := SCEditor.
    recoveredValue30 := (recoveredValue29) , (':').
    recoveredValue31 := (recoveredValue30) addBlankTo: (12).
    recoveredValue32 := printHeaderInfo.
    recoveredValue33 := (recoveredValue32) name.
    recoveredValue34 := (recoveredValue31) , (recoveredValue33).
    (recoveredValue28) add: (recoveredValue34).
    recoveredValue35 := recoveredValue10.
    recoveredValue36 := SCDivision.
    recoveredValue37 := (recoveredValue36) , (':').
    recoveredValue38 := (recoveredValue37) addBlankTo: (12).
    recoveredValue39 := printHeaderInfo.
    recoveredValue40 := (recoveredValue39) division.
    recoveredValue41 := (recoveredValue38) , (recoveredValue40).
    (recoveredValue35) add: (recoveredValue41).
    recoveredValue42 := recoveredValue10.
    recoveredValue43 := SCVehicle.
    recoveredValue44 := (recoveredValue43) , (':').
    recoveredValue45 := (recoveredValue44) addBlankTo: (12).
    recoveredValue46 := printHeaderInfo.
    recoveredValue47 := (recoveredValue46) subject.
    recoveredValue48 := (recoveredValue45) , (recoveredValue47).
    (recoveredValue42) add: (recoveredValue48).
    (recoveredValue10) add: ('').
    recoveredValue49 := recoveredArg2.
    recoveredValue50 := (recoveredValue49) extent.
    recoveredValue51 := (recoveredValue50) x.
    recoveredValue52 := (recoveredValue51) - (40).
    recoveredValue53 := printerFont.
    recoveredValue54 := (recoveredValue53) textWidth: ('0').
    recoveredValue55 := (recoveredValue52) / (recoveredValue54).
    recoveredLocal2 := recoveredValue55.
    recoveredValue56 := printHeaderInfo.
    recoveredValue57 := (recoveredValue56) text.
    recoveredValue58 := (recoveredValue57) asArrayOfSubstringsSeparatedBy: ('
').
    recoveredLocal1 := recoveredValue58.
    recoveredValue59 := recoveredLocal1.
    recoveredValue60 := [:recoveredBlock177Arg1 | 
    | recoveredBlock177Local1 recoveredBlock177Local2 recoveredBlock177Value0 recoveredBlock177Value1 recoveredBlock177Value2 recoveredBlock177Value3 recoveredBlock177Value4 recoveredBlock177Value5 recoveredBlock177Value6 |
    recoveredBlock177Value0 := recoveredBlock177Arg1.
    recoveredBlock177Value1 := (recoveredBlock177Value0) asArrayOfSubstringsSeparatedBy: (' ').
    recoveredBlock177Local2 := recoveredBlock177Value1.
    recoveredBlock177Local1 := ''.
    recoveredBlock177Value2 := recoveredBlock177Local2.
    recoveredBlock177Value3 := [:recoveredBlock177Block202Arg1 | 
    | recoveredBlock177Block202Stack0 recoveredBlock177Block202Stack1 recoveredBlock177Block202Stack2 recoveredBlock177Block202Stack3 recoveredBlock177Block202PC recoveredBlock177Block202Step recoveredBlock177Block202Done recoveredBlock177Block202Result |
    recoveredBlock177Block202Stack0 := nil.
    recoveredBlock177Block202PC := 208.
    recoveredBlock177Block202Done := false.
    [recoveredBlock177Block202Done not] whileTrue: [
        recoveredBlock177Block202Step := recoveredBlock177Block202PC.
        recoveredBlock177Block202Step = 208 ifTrue: [
            recoveredBlock177Block202Stack1 := recoveredBlock177Local1.
            recoveredBlock177Block202PC := 211.
        ].
        recoveredBlock177Block202Step = 211 ifTrue: [
            recoveredBlock177Block202Stack1 := (recoveredBlock177Block202Stack1) size.
            recoveredBlock177Block202PC := 213.
        ].
        recoveredBlock177Block202Step = 213 ifTrue: [
            recoveredBlock177Block202Stack2 := recoveredBlock177Block202Arg1.
            recoveredBlock177Block202PC := 214.
        ].
        recoveredBlock177Block202Step = 214 ifTrue: [
            recoveredBlock177Block202Stack2 := (recoveredBlock177Block202Stack2) size.
            recoveredBlock177Block202PC := 216.
        ].
        recoveredBlock177Block202Step = 216 ifTrue: [
            recoveredBlock177Block202Stack1 := (recoveredBlock177Block202Stack1) + (recoveredBlock177Block202Stack2).
            recoveredBlock177Block202PC := 217.
        ].
        recoveredBlock177Block202Step = 217 ifTrue: [
            recoveredBlock177Block202Stack2 := recoveredLocal2.
            recoveredBlock177Block202PC := 220.
        ].
        recoveredBlock177Block202Step = 220 ifTrue: [
            recoveredBlock177Block202Stack1 := (recoveredBlock177Block202Stack1) < (recoveredBlock177Block202Stack2).
            recoveredBlock177Block202PC := 221.
        ].
        recoveredBlock177Block202Step = 221 ifTrue: [
            (recoveredBlock177Block202Stack1) ifTrue: [recoveredBlock177Block202PC := 224] ifFalse: [recoveredBlock177Block202PC := 242].
        ].
        recoveredBlock177Block202Step = 224 ifTrue: [
            recoveredBlock177Block202Stack1 := recoveredBlock177Local1.
            recoveredBlock177Block202PC := 227.
        ].
        recoveredBlock177Block202Step = 227 ifTrue: [
            recoveredBlock177Block202Stack2 := recoveredBlock177Block202Arg1.
            recoveredBlock177Block202PC := 228.
        ].
        recoveredBlock177Block202Step = 228 ifTrue: [
            recoveredBlock177Block202Stack1 := (recoveredBlock177Block202Stack1) , (recoveredBlock177Block202Stack2).
            recoveredBlock177Block202PC := 230.
        ].
        recoveredBlock177Block202Step = 230 ifTrue: [
            recoveredBlock177Block202Stack2 := ' '.
            recoveredBlock177Block202PC := 232.
        ].
        recoveredBlock177Block202Step = 232 ifTrue: [
            recoveredBlock177Block202Stack1 := (recoveredBlock177Block202Stack1) , (recoveredBlock177Block202Stack2).
            recoveredBlock177Block202PC := 234.
        ].
        recoveredBlock177Block202Step = 234 ifTrue: [
            recoveredBlock177Block202Stack2 := recoveredBlock177Block202Stack1.
            recoveredBlock177Block202PC := 235.
        ].
        recoveredBlock177Block202Step = 235 ifTrue: [
            recoveredBlock177Local1 := recoveredBlock177Block202Stack2.
            recoveredBlock177Block202PC := 238.
        ].
        recoveredBlock177Block202Step = 238 ifTrue: [
            recoveredBlock177Block202PC := 259.
        ].
        recoveredBlock177Block202Step = 242 ifTrue: [
            recoveredBlock177Block202Stack1 := recoveredLocal4.
            recoveredBlock177Block202PC := 245.
        ].
        recoveredBlock177Block202Step = 245 ifTrue: [
            recoveredBlock177Block202Stack2 := recoveredBlock177Local1.
            recoveredBlock177Block202PC := 248.
        ].
        recoveredBlock177Block202Step = 248 ifTrue: [
            (recoveredBlock177Block202Stack1) add: (recoveredBlock177Block202Stack2).
            recoveredBlock177Block202PC := 250.
        ].
        recoveredBlock177Block202Step = 250 ifTrue: [
            recoveredBlock177Block202Stack1 := recoveredBlock177Block202Arg1.
            recoveredBlock177Block202PC := 251.
        ].
        recoveredBlock177Block202Step = 251 ifTrue: [
            recoveredBlock177Block202Stack2 := ' '.
            recoveredBlock177Block202PC := 253.
        ].
        recoveredBlock177Block202Step = 253 ifTrue: [
            recoveredBlock177Block202Stack1 := (recoveredBlock177Block202Stack1) , (recoveredBlock177Block202Stack2).
            recoveredBlock177Block202PC := 255.
        ].
        recoveredBlock177Block202Step = 255 ifTrue: [
            recoveredBlock177Block202Stack2 := recoveredBlock177Block202Stack1.
            recoveredBlock177Block202PC := 256.
        ].
        recoveredBlock177Block202Step = 256 ifTrue: [
            recoveredBlock177Local1 := recoveredBlock177Block202Stack2.
            recoveredBlock177Block202PC := 259.
        ].
        recoveredBlock177Block202Step = 259 ifTrue: [
            recoveredBlock177Block202Result := recoveredBlock177Block202Stack1.
            recoveredBlock177Block202Done := true.
        ].
    ].
    recoveredBlock177Block202Result
].
    (recoveredBlock177Value2) do: (recoveredBlock177Value3).
    recoveredBlock177Value4 := recoveredLocal4.
    recoveredBlock177Value5 := recoveredBlock177Local1.
    recoveredBlock177Value6 := (recoveredBlock177Value4) add: (recoveredBlock177Value5).
    recoveredBlock177Value6
].
    (recoveredValue59) do: (recoveredValue60).
    recoveredValue61 := recoveredLocal4.
    recoveredValue62 := recoveredArg1.
    recoveredValue63 := recoveredArg2.
    (self) printLines: (recoveredValue61) on: (recoveredValue62) inRect: (recoveredValue63).
    ^self
! !

"ASDBase.ic method 0x205bbcf4; bytecode file offset 0xeb8650"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
menuAddXArg
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) xIncrementableChannel: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := $G.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) wName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeStringOf: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) cannotEditDistributionOf: (recoveredStack1) type: (recoveredStack2) groupDistribution: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMaxXSize.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) errorFixedDistributionSize.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) xSize.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) errorMaxXDistributionSizeReached: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) editPointSelected.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) editBlockStartIndex.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueAtIndex: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := SCAddArg.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := SCMaxArgNumber.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithArguments: (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := SCValueNewArg.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) editHexStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := SCValueNewArg.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue: (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplValue: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesImpl: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 301].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) bell.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock302Value0 recoveredBlock302Value1 recoveredBlock302Value2 |
    recoveredBlock302Value0 := recoveredLocal6.
    recoveredBlock302Value1 := recoveredLocal7.
    recoveredBlock302Value2 := (self) addXArg: (recoveredBlock302Value0) oldArg: (recoveredBlock302Value1).
    recoveredBlock302Value2
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d82cc; bytecode file offset 0xed4c48"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
fillDataConfigObjectWithDefaultValues: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBComposedDataElement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ASDCalibrationEditorOptions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCalibrationEditorFloatIncDecStepSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ASDCalibrationEditorOptions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCalibrationEditorIntIncDecStepSize.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultDataConfigObjectClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingPoint.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) workingPoint: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := ASDCalibrationEditorOptions.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionCalibrationEditorDisplayHex.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) hexView: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) xMin.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) xMax.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) min.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundDownTo2or5or10.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysInterval.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) max.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundUpTo2or5or10.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysInterval.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := ASDCalibrationEditorOptions.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionCalibrationGraphicalEditorHexAxis.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUnsignedImplInterval: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) xMin: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) xMax: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMin.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMax.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 317].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysInterval.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysInterval.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) min.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundDownTo2or5or10.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) max.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundUpTo2or5or10.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUnsignedImplInterval: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack2) wMin: (recoveredStack3).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack1) wMax: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) color.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 331] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultChannelColor.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) color: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) incDecStep.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 343] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) incDecStep: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) showGrid.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 359] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultShowGridFlag.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) showGrid: (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20601b40; bytecode file offset 0xefe4fc"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createDataMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack3 := MTExtras.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuSelectAll'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := MPSelectAllValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := (self) writeProtection.
    recoveredBlock18Value1 := (recoveredBlock18Value0) not.
    recoveredBlock18Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'menuDecrement'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := MPDecrementValue.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := (self) writeProtection.
    recoveredBlock38Value1 := (recoveredBlock38Value0) not.
    recoveredBlock38Value2 := (self) editPointSelected.
    recoveredBlock38Value3 := (recoveredBlock38Value1) & (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'menuIncrement'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := MPIncrementValue.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := (self) writeProtection.
    recoveredBlock60Value1 := (recoveredBlock60Value0) not.
    recoveredBlock60Value2 := (self) editPointSelected.
    recoveredBlock60Value3 := (recoveredBlock60Value1) & (recoveredBlock60Value2).
    recoveredBlock60Value3
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'menuAddOffset'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := MPAddOffset.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 |
    recoveredBlock86Value0 := (self) writeProtection.
    recoveredBlock86Value1 := (recoveredBlock86Value0) not.
    recoveredBlock86Value2 := (self) editPointSelected.
    recoveredBlock86Value3 := (recoveredBlock86Value1) & (recoveredBlock86Value2).
    recoveredBlock86Value3
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := 'menuMultFactor'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := MPMultiplyWith.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 recoveredBlock112Value3 |
    recoveredBlock112Value0 := (self) writeProtection.
    recoveredBlock112Value1 := (recoveredBlock112Value0) not.
    recoveredBlock112Value2 := (self) editPointSelected.
    recoveredBlock112Value3 := (recoveredBlock112Value1) & (recoveredBlock112Value2).
    recoveredBlock112Value3
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := 'menuFillWithValue'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := MPFillWith.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock138Value0 recoveredBlock138Value1 recoveredBlock138Value2 recoveredBlock138Value3 |
    recoveredBlock138Value0 := (self) writeProtection.
    recoveredBlock138Value1 := (recoveredBlock138Value0) not.
    recoveredBlock138Value2 := (self) editPointSelected.
    recoveredBlock138Value3 := (recoveredBlock138Value1) & (recoveredBlock138Value2).
    recoveredBlock138Value3
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := 'menuDecrementX'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := MPDecrementXArg.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 recoveredBlock163Value3 recoveredBlock163Value4 recoveredBlock163Value5 recoveredBlock163Value6 |
    recoveredBlock163Value0 := (self) paneController.
    recoveredBlock163Value1 := (recoveredBlock163Value0) xIncrementableChannel: (nil).
    recoveredBlock163Value2 := (self) writeProtection.
    recoveredBlock163Value3 := (recoveredBlock163Value2) not.
    recoveredBlock163Value4 := (recoveredBlock163Value1) & (recoveredBlock163Value3).
    recoveredBlock163Value5 := (self) editPointSelected.
    recoveredBlock163Value6 := (recoveredBlock163Value4) & (recoveredBlock163Value5).
    recoveredBlock163Value6
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := 'menuIncrementX'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := MPIncrementXArg.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 recoveredBlock194Value4 recoveredBlock194Value5 recoveredBlock194Value6 |
    recoveredBlock194Value0 := (self) paneController.
    recoveredBlock194Value1 := (recoveredBlock194Value0) xIncrementableChannel: (nil).
    recoveredBlock194Value2 := (self) writeProtection.
    recoveredBlock194Value3 := (recoveredBlock194Value2) not.
    recoveredBlock194Value4 := (recoveredBlock194Value1) & (recoveredBlock194Value3).
    recoveredBlock194Value5 := (self) editPointSelected.
    recoveredBlock194Value6 := (recoveredBlock194Value4) & (recoveredBlock194Value5).
    recoveredBlock194Value6
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := SCDisplaySetup.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack6 := XKS.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack5 := 'Ctrl+S'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := 'createColorMenu'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := MPColors.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack2) addSubMenu: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := 'menuPhysView'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := PhysDisplay.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock284Value0 recoveredBlock284Value1 |
    recoveredBlock284Value0 := (self) hexView.
    recoveredBlock284Value1 := (recoveredBlock284Value0) not.
    recoveredBlock284Value1
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := 'menuPhysView'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack6 := XKP.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack5 := 'Ctrl+P'.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := 'menuHexView'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack4 := SCHexDisplay.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock324Value0 |
    recoveredBlock324Value0 := (self) hexView.
    recoveredBlock324Value0
].
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := 'menuHexView'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack6 := XKH.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack5 := 'Ctrl+H'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := 'menuMoveData'.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack4 := MPMoveDataToWindow.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := 'menuRemoveData'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := MPRemoveData.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := 'menuShowInfo'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := MPInfoAbout.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := 'menuShowInfo'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack6 := XKI.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack5 := 'Ctrl+I'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20615474; bytecode file offset 0xf11e34"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createEditMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := MTEdit.
    (recoveredValue3) title: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := GMVUndo.
    recoveredValue7 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := (self) writeProtection.
    recoveredBlock18Value1 := (recoveredBlock18Value0) not.
    recoveredBlock18Value2 := (self) canUndo.
    recoveredBlock18Value3 := (recoveredBlock18Value1) & (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    (recoveredValue5) add: ('menuUndo') label: (recoveredValue6) enable: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := CwAccelerator.
    recoveredValue10 := ControlMask.
    recoveredValue11 := XKU.
    recoveredValue12 := (recoveredValue9) mask: (recoveredValue10) keysym: (recoveredValue11).
    (recoveredValue8) setAcceleratorAt: ('menuUndo') to: (recoveredValue12) text: ('Ctrl+U').
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := GMVRedo.
    recoveredValue15 := [
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 |
    recoveredBlock55Value0 := (self) writeProtection.
    recoveredBlock55Value1 := (recoveredBlock55Value0) not.
    recoveredBlock55Value2 := (self) canRedo.
    recoveredBlock55Value3 := (recoveredBlock55Value1) & (recoveredBlock55Value2).
    recoveredBlock55Value3
].
    (recoveredValue13) add: ('menuRedo') label: (recoveredValue14) enable: (recoveredValue15).
    recoveredValue16 := recoveredValue2.
    recoveredValue17 := CwAccelerator.
    recoveredValue18 := ControlMask.
    recoveredValue19 := XKD.
    recoveredValue20 := (recoveredValue17) mask: (recoveredValue18) keysym: (recoveredValue19).
    (recoveredValue16) setAcceleratorAt: ('menuRedo') to: (recoveredValue20) text: ('Ctrl+D').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) addLine.
    recoveredValue22 := recoveredValue2.
    recoveredValue23 := GMVSelectAllValues.
    recoveredValue24 := [
    | recoveredBlock96Value0 recoveredBlock96Value1 |
    recoveredBlock96Value0 := (self) writeProtection.
    recoveredBlock96Value1 := (recoveredBlock96Value0) not.
    recoveredBlock96Value1
].
    (recoveredValue22) add: ('menuSelectAll') label: (recoveredValue23) enable: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := CwAccelerator.
    recoveredValue27 := ControlMask.
    recoveredValue28 := XKA.
    recoveredValue29 := (recoveredValue26) mask: (recoveredValue27) keysym: (recoveredValue28).
    (recoveredValue25) setAcceleratorAt: ('menuSelectAll') to: (recoveredValue29) text: ('Ctrl+A').
    recoveredValue30 := recoveredValue2.
    recoveredValue31 := GMVToggleBlockSelection.
    recoveredValue32 := [
    | recoveredBlock128Value0 recoveredBlock128Value1 |
    recoveredBlock128Value0 := (self) writeProtection.
    recoveredBlock128Value1 := (recoveredBlock128Value0) not.
    recoveredBlock128Value1
].
    recoveredValue33 := [
    | recoveredBlock138Value0 recoveredBlock138Value1 |
    recoveredBlock138Value0 := (self) paneController.
    recoveredBlock138Value1 := (recoveredBlock138Value0) blockSelection.
    recoveredBlock138Value1
].
    (recoveredValue30) add: ('menuToggleBlockSelection') label: (recoveredValue31) enable: (recoveredValue32) toggle: (recoveredValue33).
    recoveredValue34 := recoveredValue2.
    recoveredValue35 := CwAccelerator.
    recoveredValue36 := ControlMask.
    recoveredValue37 := XKB.
    recoveredValue38 := (recoveredValue35) mask: (recoveredValue36) keysym: (recoveredValue37).
    (recoveredValue34) setAcceleratorAt: ('menuToggleBlockSelection') to: (recoveredValue38) text: ('Ctrl+B').
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) addLine.
    recoveredValue40 := recoveredValue2.
    recoveredValue41 := GMVDecrementValue.
    recoveredValue42 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 recoveredBlock174Value3 |
    recoveredBlock174Value0 := (self) writeProtection.
    recoveredBlock174Value1 := (recoveredBlock174Value0) not.
    recoveredBlock174Value2 := (self) editPointSelected.
    recoveredBlock174Value3 := (recoveredBlock174Value1) & (recoveredBlock174Value2).
    recoveredBlock174Value3
].
    (recoveredValue40) add: ('menuDecrement') label: (recoveredValue41) enable: (recoveredValue42).
    recoveredValue43 := recoveredValue2.
    recoveredValue44 := CwAccelerator.
    recoveredValue45 := ControlMask.
    recoveredValue46 := XKN.
    recoveredValue47 := (recoveredValue44) mask: (recoveredValue45) keysym: (recoveredValue46).
    (recoveredValue43) setAcceleratorAt: ('menuDecrement') to: (recoveredValue47) text: ('Ctrl+N').
    recoveredValue48 := recoveredValue2.
    recoveredValue49 := GMVIncrementValue.
    recoveredValue50 := [
    | recoveredBlock211Value0 recoveredBlock211Value1 recoveredBlock211Value2 recoveredBlock211Value3 |
    recoveredBlock211Value0 := (self) writeProtection.
    recoveredBlock211Value1 := (recoveredBlock211Value0) not.
    recoveredBlock211Value2 := (self) editPointSelected.
    recoveredBlock211Value3 := (recoveredBlock211Value1) & (recoveredBlock211Value2).
    recoveredBlock211Value3
].
    (recoveredValue48) add: ('menuIncrement') label: (recoveredValue49) enable: (recoveredValue50).
    recoveredValue51 := recoveredValue2.
    recoveredValue52 := CwAccelerator.
    recoveredValue53 := ControlMask.
    recoveredValue54 := XKM.
    recoveredValue55 := (recoveredValue52) mask: (recoveredValue53) keysym: (recoveredValue54).
    (recoveredValue51) setAcceleratorAt: ('menuIncrement') to: (recoveredValue55) text: ('Ctrl+M').
    recoveredValue56 := recoveredValue2.
    recoveredValue57 := GMVAddOffset.
    recoveredValue58 := Dots.
    recoveredValue59 := (recoveredValue57) , (recoveredValue58).
    recoveredValue60 := [
    | recoveredBlock253Value0 recoveredBlock253Value1 recoveredBlock253Value2 recoveredBlock253Value3 |
    recoveredBlock253Value0 := (self) writeProtection.
    recoveredBlock253Value1 := (recoveredBlock253Value0) not.
    recoveredBlock253Value2 := (self) editPointSelected.
    recoveredBlock253Value3 := (recoveredBlock253Value1) & (recoveredBlock253Value2).
    recoveredBlock253Value3
].
    (recoveredValue56) add: ('menuAddOffset') label: (recoveredValue59) enable: (recoveredValue60).
    recoveredValue61 := recoveredValue2.
    recoveredValue62 := GMVMultiplyWith.
    recoveredValue63 := Dots.
    recoveredValue64 := (recoveredValue62) , (recoveredValue63).
    recoveredValue65 := [
    | recoveredBlock280Value0 recoveredBlock280Value1 recoveredBlock280Value2 recoveredBlock280Value3 |
    recoveredBlock280Value0 := (self) writeProtection.
    recoveredBlock280Value1 := (recoveredBlock280Value0) not.
    recoveredBlock280Value2 := (self) editPointSelected.
    recoveredBlock280Value3 := (recoveredBlock280Value1) & (recoveredBlock280Value2).
    recoveredBlock280Value3
].
    (recoveredValue61) add: ('menuMultFactor') label: (recoveredValue64) enable: (recoveredValue65).
    recoveredValue66 := recoveredValue2.
    recoveredValue67 := GMVFillWith.
    recoveredValue68 := Dots.
    recoveredValue69 := (recoveredValue67) , (recoveredValue68).
    recoveredValue70 := [
    | recoveredBlock306Value0 recoveredBlock306Value1 recoveredBlock306Value2 recoveredBlock306Value3 |
    recoveredBlock306Value0 := (self) writeProtection.
    recoveredBlock306Value1 := (recoveredBlock306Value0) not.
    recoveredBlock306Value2 := (self) editPointSelected.
    recoveredBlock306Value3 := (recoveredBlock306Value1) & (recoveredBlock306Value2).
    recoveredBlock306Value3
].
    (recoveredValue66) add: ('menuFillWithValue') label: (recoveredValue69) enable: (recoveredValue70).
    recoveredValue71 := recoveredValue2.
    (recoveredValue71) addLine.
    recoveredValue72 := recoveredValue2.
    recoveredValue73 := GMVDecrementXArg.
    recoveredValue74 := [
    | recoveredBlock331Value0 recoveredBlock331Value1 recoveredBlock331Value2 recoveredBlock331Value3 recoveredBlock331Value4 recoveredBlock331Value5 recoveredBlock331Value6 |
    recoveredBlock331Value0 := (self) paneController.
    recoveredBlock331Value1 := (recoveredBlock331Value0) xIncrementableChannel: (nil).
    recoveredBlock331Value2 := (self) writeProtection.
    recoveredBlock331Value3 := (recoveredBlock331Value2) not.
    recoveredBlock331Value4 := (recoveredBlock331Value1) & (recoveredBlock331Value3).
    recoveredBlock331Value5 := (self) editPointSelected.
    recoveredBlock331Value6 := (recoveredBlock331Value4) & (recoveredBlock331Value5).
    recoveredBlock331Value6
].
    (recoveredValue72) add: ('menuDecrementX') label: (recoveredValue73) enable: (recoveredValue74).
    recoveredValue75 := recoveredValue2.
    recoveredValue76 := CwAccelerator.
    recoveredValue77 := ControlMask.
    recoveredValue78 := XKJ.
    recoveredValue79 := (recoveredValue76) mask: (recoveredValue77) keysym: (recoveredValue78).
    (recoveredValue75) setAcceleratorAt: ('menuDecrementX') to: (recoveredValue79) text: ('Ctrl+J').
    recoveredValue80 := recoveredValue2.
    recoveredValue81 := GMVIncrementXArg.
    recoveredValue82 := [
    | recoveredBlock378Value0 recoveredBlock378Value1 recoveredBlock378Value2 recoveredBlock378Value3 recoveredBlock378Value4 recoveredBlock378Value5 recoveredBlock378Value6 |
    recoveredBlock378Value0 := (self) paneController.
    recoveredBlock378Value1 := (recoveredBlock378Value0) xIncrementableChannel: (nil).
    recoveredBlock378Value2 := (self) writeProtection.
    recoveredBlock378Value3 := (recoveredBlock378Value2) not.
    recoveredBlock378Value4 := (recoveredBlock378Value1) & (recoveredBlock378Value3).
    recoveredBlock378Value5 := (self) editPointSelected.
    recoveredBlock378Value6 := (recoveredBlock378Value4) & (recoveredBlock378Value5).
    recoveredBlock378Value6
].
    (recoveredValue80) add: ('menuIncrementX') label: (recoveredValue81) enable: (recoveredValue82).
    recoveredValue83 := recoveredValue2.
    recoveredValue84 := CwAccelerator.
    recoveredValue85 := ControlMask.
    recoveredValue86 := XKK.
    recoveredValue87 := (recoveredValue84) mask: (recoveredValue85) keysym: (recoveredValue86).
    (recoveredValue83) setAcceleratorAt: ('menuIncrementX') to: (recoveredValue87) text: ('Ctrl+K').
    recoveredValue88 := recoveredValue2.
    recoveredValue89 := GMVAddXSupportingPoint.
    recoveredValue90 := Dots.
    recoveredValue91 := (recoveredValue89) , (recoveredValue90).
    recoveredValue92 := [
    | recoveredBlock434Value0 recoveredBlock434Value1 recoveredBlock434Value2 recoveredBlock434Value3 recoveredBlock434Value4 |
    recoveredBlock434Value0 := (self) writeProtection.
    recoveredBlock434Value1 := (recoveredBlock434Value0) not.
    recoveredBlock434Value2 := (self) paneController.
    recoveredBlock434Value3 := (recoveredBlock434Value2) xIncrementableChannel: (nil).
    recoveredBlock434Value4 := (recoveredBlock434Value1) & (recoveredBlock434Value3).
    recoveredBlock434Value4
].
    (recoveredValue88) add: ('menuAddXArg') label: (recoveredValue91) enable: (recoveredValue92).
    recoveredValue93 := recoveredValue2.
    recoveredValue94 := GMVRemoveXSupportingPoint.
    recoveredValue95 := [
    | recoveredBlock462Value0 recoveredBlock462Value1 recoveredBlock462Value2 recoveredBlock462Value3 recoveredBlock462Value4 recoveredBlock462Value5 recoveredBlock462Value6 recoveredBlock462Value7 recoveredBlock462Value8 recoveredBlock462Value9 |
    recoveredBlock462Value0 := (self) writeProtection.
    recoveredBlock462Value1 := (recoveredBlock462Value0) not.
    recoveredBlock462Value2 := (self) paneController.
    recoveredBlock462Value3 := (recoveredBlock462Value2) xIncrementableChannel: (nil).
    recoveredBlock462Value4 := (recoveredBlock462Value1) & (recoveredBlock462Value3).
    recoveredBlock462Value5 := (self) editPointSelected.
    recoveredBlock462Value6 := (recoveredBlock462Value4) & (recoveredBlock462Value5).
    recoveredBlock462Value7 := (self) editBlockSelected.
    recoveredBlock462Value8 := (recoveredBlock462Value7) not.
    recoveredBlock462Value9 := (recoveredBlock462Value6) & (recoveredBlock462Value8).
    recoveredBlock462Value9
].
    (recoveredValue93) add: ('menuRemoveXArg') label: (recoveredValue94) enable: (recoveredValue95).
    recoveredLocal1 := recoveredValue2.
    recoveredValue96 := (self) applicationController.
    recoveredValue97 := recoveredLocal1.
    recoveredValue98 := (recoveredValue96) extendEditMenu: (recoveredValue97).
    ^recoveredValue98
! !

"ASDBase.ic method 0x20670c10; bytecode file offset 0xf6d610"
!RBOneDCharTableGraphCalibrationEditor methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Kennlinien-Editor').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal12.
    recoveredBlock24Value4 := (250) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := (self) defaultWidth.
    recoveredBlock24Value7 := recoveredLocal13.
    recoveredBlock24Value8 := (recoveredBlock24Value6) * (recoveredBlock24Value7).
    recoveredBlock24Value9 := (recoveredBlock24Value8) rounded.
    recoveredBlock24Value10 := (recoveredBlock24Value0) width: (recoveredBlock24Value9).
    recoveredBlock24Value10
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'aVariablesComboBox'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 recoveredBlock126Value4 recoveredBlock126Value5 recoveredBlock126Value6 recoveredBlock126Value7 recoveredBlock126Value8 recoveredBlock126Value9 recoveredBlock126Value10 recoveredBlock126Value11 recoveredBlock126Value12 recoveredBlock126Value13 recoveredBlock126Value14 recoveredBlock126Value15 recoveredBlock126Value16 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := recoveredBlock126Value0.
    recoveredBlock126Value2 := recoveredLocal13.
    recoveredBlock126Value3 := (26) * (recoveredBlock126Value2).
    recoveredBlock126Value4 := (recoveredBlock126Value3) rounded.
    (recoveredBlock126Value1) x: (recoveredBlock126Value4).
    recoveredBlock126Value5 := recoveredBlock126Value0.
    recoveredBlock126Value6 := recoveredLocal12.
    recoveredBlock126Value7 := (5) * (recoveredBlock126Value6).
    recoveredBlock126Value8 := (recoveredBlock126Value7) rounded.
    (recoveredBlock126Value5) y: (recoveredBlock126Value8).
    recoveredBlock126Value9 := recoveredBlock126Value0.
    recoveredBlock126Value10 := recoveredLocal12.
    recoveredBlock126Value11 := (24) * (recoveredBlock126Value10).
    recoveredBlock126Value12 := (recoveredBlock126Value11) rounded.
    (recoveredBlock126Value9) height: (recoveredBlock126Value12).
    recoveredBlock126Value13 := recoveredLocal13.
    recoveredBlock126Value14 := (186) * (recoveredBlock126Value13).
    recoveredBlock126Value15 := (recoveredBlock126Value14) rounded.
    recoveredBlock126Value16 := (recoveredBlock126Value0) width: (recoveredBlock126Value15).
    recoveredBlock126Value16
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'aVariablesComboBox'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'signalDrawingArea'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := [:recoveredBlock201Arg1 | 
    | recoveredBlock201Value0 recoveredBlock201Value1 recoveredBlock201Value2 recoveredBlock201Value3 recoveredBlock201Value4 recoveredBlock201Value5 recoveredBlock201Value6 recoveredBlock201Value7 recoveredBlock201Value8 recoveredBlock201Value9 recoveredBlock201Value10 recoveredBlock201Value11 recoveredBlock201Value12 recoveredBlock201Value13 |
    recoveredBlock201Value0 := recoveredBlock201Arg1.
    recoveredBlock201Value1 := recoveredBlock201Value0.
    recoveredBlock201Value2 := recoveredLocal12.
    recoveredBlock201Value3 := (34) * (recoveredBlock201Value2).
    recoveredBlock201Value4 := (recoveredBlock201Value3) rounded.
    (recoveredBlock201Value1) y: (recoveredBlock201Value4).
    recoveredBlock201Value5 := recoveredBlock201Value0.
    (recoveredBlock201Value5) borderWidth: (1).
    recoveredBlock201Value6 := recoveredBlock201Value0.
    recoveredBlock201Value7 := recoveredLocal12.
    recoveredBlock201Value8 := (302) * (recoveredBlock201Value7).
    recoveredBlock201Value9 := (recoveredBlock201Value8) rounded.
    (recoveredBlock201Value6) height: (recoveredBlock201Value9).
    recoveredBlock201Value10 := recoveredLocal13.
    recoveredBlock201Value11 := (489) * (recoveredBlock201Value10).
    recoveredBlock201Value12 := (recoveredBlock201Value11) rounded.
    recoveredBlock201Value13 := (recoveredBlock201Value0) width: (recoveredBlock201Value12).
    recoveredBlock201Value13
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBSignalDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := 'signalDrawingArea'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := [:recoveredBlock273Arg1 | 
    | recoveredBlock273Value0 recoveredBlock273Value1 recoveredBlock273Value2 recoveredBlock273Value3 recoveredBlock273Value4 recoveredBlock273Value5 recoveredBlock273Value6 recoveredBlock273Value7 recoveredBlock273Value8 recoveredBlock273Value9 recoveredBlock273Value10 recoveredBlock273Value11 recoveredBlock273Value12 recoveredBlock273Value13 recoveredBlock273Value14 recoveredBlock273Value15 recoveredBlock273Value16 recoveredBlock273Value17 recoveredBlock273Value18 recoveredBlock273Value19 |
    recoveredBlock273Value0 := recoveredBlock273Arg1.
    recoveredBlock273Value1 := recoveredBlock273Value0.
    recoveredBlock273Value2 := recoveredLocal13.
    recoveredBlock273Value3 := (168) * (recoveredBlock273Value2).
    recoveredBlock273Value4 := (recoveredBlock273Value3) rounded.
    (recoveredBlock273Value1) x: (recoveredBlock273Value4).
    recoveredBlock273Value5 := recoveredBlock273Value0.
    (recoveredBlock273Value5) labelString: ('x:').
    recoveredBlock273Value6 := recoveredBlock273Value0.
    recoveredBlock273Value7 := recoveredLocal12.
    recoveredBlock273Value8 := (5) * (recoveredBlock273Value7).
    recoveredBlock273Value9 := (recoveredBlock273Value8) rounded.
    (recoveredBlock273Value6) y: (recoveredBlock273Value9).
    recoveredBlock273Value10 := recoveredBlock273Value0.
    recoveredBlock273Value11 := recoveredLocal12.
    recoveredBlock273Value12 := (20) * (recoveredBlock273Value11).
    recoveredBlock273Value13 := (recoveredBlock273Value12) rounded.
    (recoveredBlock273Value10) height: (recoveredBlock273Value13).
    recoveredBlock273Value14 := recoveredBlock273Value0.
    recoveredBlock273Value15 := recoveredLocal13.
    recoveredBlock273Value16 := (13) * (recoveredBlock273Value15).
    recoveredBlock273Value17 := (recoveredBlock273Value16) rounded.
    (recoveredBlock273Value14) width: (recoveredBlock273Value17).
    recoveredBlock273Value18 := (self) defaultLabelBlue.
    recoveredBlock273Value19 := (recoveredBlock273Value0) foregroundColor: (recoveredBlock273Value18).
    recoveredBlock273Value19
].
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := 'xNameText'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Value0 recoveredBlock360Value1 recoveredBlock360Value2 recoveredBlock360Value3 recoveredBlock360Value4 recoveredBlock360Value5 recoveredBlock360Value6 recoveredBlock360Value7 recoveredBlock360Value8 recoveredBlock360Value9 recoveredBlock360Value10 recoveredBlock360Value11 recoveredBlock360Value12 recoveredBlock360Value13 recoveredBlock360Value14 recoveredBlock360Value15 recoveredBlock360Value16 recoveredBlock360Value17 recoveredBlock360Value18 recoveredBlock360Value19 recoveredBlock360Value20 |
    recoveredBlock360Value0 := recoveredBlock360Arg1.
    recoveredBlock360Value1 := recoveredBlock360Value0.
    recoveredBlock360Value2 := recoveredLocal13.
    recoveredBlock360Value3 := (191) * (recoveredBlock360Value2).
    recoveredBlock360Value4 := (recoveredBlock360Value3) rounded.
    (recoveredBlock360Value1) x: (recoveredBlock360Value4).
    recoveredBlock360Value5 := recoveredBlock360Value0.
    recoveredBlock360Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock360Value5) alignment: (recoveredBlock360Value6).
    recoveredBlock360Value7 := recoveredBlock360Value0.
    recoveredBlock360Value8 := recoveredLocal12.
    recoveredBlock360Value9 := (2) * (recoveredBlock360Value8).
    recoveredBlock360Value10 := (recoveredBlock360Value9) rounded.
    (recoveredBlock360Value7) y: (recoveredBlock360Value10).
    recoveredBlock360Value11 := recoveredBlock360Value0.
    (recoveredBlock360Value11) marginHeight: (0).
    recoveredBlock360Value12 := recoveredBlock360Value0.
    (recoveredBlock360Value12) recomputeSize: (false).
    recoveredBlock360Value13 := recoveredBlock360Value0.
    recoveredBlock360Value14 := recoveredLocal12.
    recoveredBlock360Value15 := (14) * (recoveredBlock360Value14).
    recoveredBlock360Value16 := (recoveredBlock360Value15) rounded.
    (recoveredBlock360Value13) height: (recoveredBlock360Value16).
    recoveredBlock360Value17 := recoveredLocal13.
    recoveredBlock360Value18 := (146) * (recoveredBlock360Value17).
    recoveredBlock360Value19 := (recoveredBlock360Value18) rounded.
    recoveredBlock360Value20 := (recoveredBlock360Value0) width: (recoveredBlock360Value19).
    recoveredBlock360Value20
].
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := 'xNameText'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'xValueText'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := [:recoveredBlock451Arg1 | 
    | recoveredBlock451Value0 recoveredBlock451Value1 recoveredBlock451Value2 recoveredBlock451Value3 recoveredBlock451Value4 recoveredBlock451Value5 recoveredBlock451Value6 recoveredBlock451Value7 recoveredBlock451Value8 recoveredBlock451Value9 recoveredBlock451Value10 recoveredBlock451Value11 recoveredBlock451Value12 recoveredBlock451Value13 recoveredBlock451Value14 recoveredBlock451Value15 recoveredBlock451Value16 recoveredBlock451Value17 recoveredBlock451Value18 recoveredBlock451Value19 recoveredBlock451Value20 |
    recoveredBlock451Value0 := recoveredBlock451Arg1.
    recoveredBlock451Value1 := recoveredBlock451Value0.
    recoveredBlock451Value2 := recoveredLocal13.
    recoveredBlock451Value3 := (191) * (recoveredBlock451Value2).
    recoveredBlock451Value4 := (recoveredBlock451Value3) rounded.
    (recoveredBlock451Value1) x: (recoveredBlock451Value4).
    recoveredBlock451Value5 := recoveredBlock451Value0.
    recoveredBlock451Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock451Value5) alignment: (recoveredBlock451Value6).
    recoveredBlock451Value7 := recoveredBlock451Value0.
    recoveredBlock451Value8 := recoveredLocal12.
    recoveredBlock451Value9 := (12) * (recoveredBlock451Value8).
    recoveredBlock451Value10 := (recoveredBlock451Value9) rounded.
    (recoveredBlock451Value7) y: (recoveredBlock451Value10).
    recoveredBlock451Value11 := recoveredBlock451Value0.
    (recoveredBlock451Value11) marginHeight: (0).
    recoveredBlock451Value12 := recoveredBlock451Value0.
    (recoveredBlock451Value12) recomputeSize: (false).
    recoveredBlock451Value13 := recoveredBlock451Value0.
    recoveredBlock451Value14 := recoveredLocal12.
    recoveredBlock451Value15 := (15) * (recoveredBlock451Value14).
    recoveredBlock451Value16 := (recoveredBlock451Value15) rounded.
    (recoveredBlock451Value13) height: (recoveredBlock451Value16).
    recoveredBlock451Value17 := recoveredLocal13.
    recoveredBlock451Value18 := (146) * (recoveredBlock451Value17).
    recoveredBlock451Value19 := (recoveredBlock451Value18) rounded.
    recoveredBlock451Value20 := (recoveredBlock451Value0) width: (recoveredBlock451Value19).
    recoveredBlock451Value20
].
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := 'xValueText'.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack2 := 'keyMapText'.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack3 := [:block28126e74Arg1 | 
    | block28126e74Value0 block28126e74Value1 block28126e74Value2 block28126e74Value3 block28126e74Value4 |
    block28126e74Value0 := block28126e74Arg1.
    block28126e74Value1 := block28126e74Value0.
    (block28126e74Value1) editable: (false).
    block28126e74Value2 := block28126e74Value0.
    (block28126e74Value2) wordWrap: (true).
    block28126e74Value3 := XmMULTILINEEDIT.
    block28126e74Value4 := (block28126e74Value0) editMode: (block28126e74Value3).
    block28126e74Value4
].
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := 'keyMapText'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := 'variableListLabel'.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := [:recoveredBlock602Arg1 | 
    | recoveredBlock602Value0 recoveredBlock602Value1 recoveredBlock602Value2 recoveredBlock602Value3 recoveredBlock602Value4 recoveredBlock602Value5 recoveredBlock602Value6 recoveredBlock602Value7 recoveredBlock602Value8 recoveredBlock602Value9 recoveredBlock602Value10 recoveredBlock602Value11 recoveredBlock602Value12 recoveredBlock602Value13 |
    recoveredBlock602Value0 := recoveredBlock602Arg1.
    recoveredBlock602Value1 := recoveredBlock602Value0.
    recoveredBlock602Value2 := recoveredLocal13.
    recoveredBlock602Value3 := (16) * (recoveredBlock602Value2).
    recoveredBlock602Value4 := (recoveredBlock602Value3) rounded.
    (recoveredBlock602Value1) x: (recoveredBlock602Value4).
    recoveredBlock602Value5 := recoveredBlock602Value0.
    recoveredBlock602Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock602Value5) alignment: (recoveredBlock602Value6).
    recoveredBlock602Value7 := recoveredBlock602Value0.
    (recoveredBlock602Value7) labelString: ('w:').
    recoveredBlock602Value8 := recoveredBlock602Value0.
    recoveredBlock602Value9 := recoveredLocal12.
    recoveredBlock602Value10 := (15) * (recoveredBlock602Value9).
    recoveredBlock602Value11 := (recoveredBlock602Value10) rounded.
    (recoveredBlock602Value8) y: (recoveredBlock602Value11).
    recoveredBlock602Value12 := (self) defaultLabelBlue.
    recoveredBlock602Value13 := (recoveredBlock602Value0) foregroundColor: (recoveredBlock602Value12).
    recoveredBlock602Value13
].
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := 'variableListLabel'.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := [:recoveredBlock667Arg1 | 
    | recoveredBlock667Value0 recoveredBlock667Value1 recoveredBlock667Value2 |
    recoveredBlock667Value0 := recoveredBlock667Arg1.
    recoveredBlock667Value1 := recoveredLocal9.
    recoveredBlock667Value2 := (recoveredBlock667Value0) workWindow: (recoveredBlock667Value1).
    recoveredBlock667Value2
].
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := [:recoveredBlock692Arg1 | 
    | recoveredBlock692Value0 recoveredBlock692Value1 recoveredBlock692Value2 recoveredBlock692Value3 recoveredBlock692Value4 recoveredBlock692Value5 recoveredBlock692Value6 recoveredBlock692Value7 recoveredBlock692Value8 recoveredBlock692Value9 recoveredBlock692Value10 recoveredBlock692Value11 |
    recoveredBlock692Value0 := recoveredBlock692Arg1.
    recoveredBlock692Value1 := recoveredBlock692Value0.
    recoveredBlock692Value2 := XmATTACHFORM.
    (recoveredBlock692Value1) topAttachment: (recoveredBlock692Value2).
    recoveredBlock692Value3 := recoveredBlock692Value0.
    (recoveredBlock692Value3) topOffset: (5).
    recoveredBlock692Value4 := recoveredBlock692Value0.
    recoveredBlock692Value5 := XmATTACHWIDGET.
    (recoveredBlock692Value4) leftAttachment: (recoveredBlock692Value5).
    recoveredBlock692Value6 := recoveredBlock692Value0.
    recoveredBlock692Value7 := recoveredLocal4.
    (recoveredBlock692Value6) leftWidget: (recoveredBlock692Value7).
    recoveredBlock692Value8 := recoveredBlock692Value0.
    (recoveredBlock692Value8) leftOffset: (3).
    recoveredBlock692Value9 := recoveredBlock692Value0.
    recoveredBlock692Value10 := XmATTACHPOSITION.
    (recoveredBlock692Value9) rightAttachment: (recoveredBlock692Value10).
    recoveredBlock692Value11 := (recoveredBlock692Value0) rightPosition: (60).
    recoveredBlock692Value11
].
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := [:recoveredBlock760Arg1 | 
    | recoveredBlock760Value0 recoveredBlock760Value1 recoveredBlock760Value2 recoveredBlock760Value3 recoveredBlock760Value4 recoveredBlock760Value5 recoveredBlock760Value6 recoveredBlock760Value7 recoveredBlock760Value8 recoveredBlock760Value9 recoveredBlock760Value10 recoveredBlock760Value11 |
    recoveredBlock760Value0 := recoveredBlock760Arg1.
    recoveredBlock760Value1 := recoveredBlock760Value0.
    recoveredBlock760Value2 := XmATTACHWIDGET.
    (recoveredBlock760Value1) bottomAttachment: (recoveredBlock760Value2).
    recoveredBlock760Value3 := recoveredBlock760Value0.
    recoveredBlock760Value4 := recoveredLocal6.
    (recoveredBlock760Value3) bottomWidget: (recoveredBlock760Value4).
    recoveredBlock760Value5 := recoveredBlock760Value0.
    recoveredBlock760Value6 := XmATTACHFORM.
    (recoveredBlock760Value5) topAttachment: (recoveredBlock760Value6).
    recoveredBlock760Value7 := recoveredBlock760Value0.
    (recoveredBlock760Value7) topOffset: (30).
    recoveredBlock760Value8 := recoveredBlock760Value0.
    recoveredBlock760Value9 := XmATTACHFORM.
    (recoveredBlock760Value8) leftAttachment: (recoveredBlock760Value9).
    recoveredBlock760Value10 := XmATTACHFORM.
    recoveredBlock760Value11 := (recoveredBlock760Value0) rightAttachment: (recoveredBlock760Value10).
    recoveredBlock760Value11
].
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack2 := [:block28126e98Arg1 | 
    | block28126e98Value0 block28126e98Value1 block28126e98Value2 block28126e98Value3 block28126e98Value4 block28126e98Value5 block28126e98Value6 |
    block28126e98Value0 := block28126e98Arg1.
    block28126e98Value1 := block28126e98Value0.
    block28126e98Value2 := XmATTACHFORM.
    (block28126e98Value1) bottomAttachment: (block28126e98Value2).
    block28126e98Value3 := block28126e98Value0.
    block28126e98Value4 := XmATTACHFORM.
    (block28126e98Value3) leftAttachment: (block28126e98Value4).
    block28126e98Value5 := XmATTACHFORM.
    block28126e98Value6 := (block28126e98Value0) rightAttachment: (block28126e98Value5).
    block28126e98Value6
].
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack2 := [:block28126ebcArg1 | 
    | block28126ebcValue0 block28126ebcValue1 block28126ebcValue2 block28126ebcValue3 block28126ebcValue4 block28126ebcValue5 block28126ebcValue6 |
    block28126ebcValue0 := block28126ebcArg1.
    block28126ebcValue1 := block28126ebcValue0.
    block28126ebcValue2 := XmATTACHFORM.
    (block28126ebcValue1) topAttachment: (block28126ebcValue2).
    block28126ebcValue3 := block28126ebcValue0.
    (block28126ebcValue3) topOffset: (5).
    block28126ebcValue4 := block28126ebcValue0.
    block28126ebcValue5 := XmATTACHFORM.
    (block28126ebcValue4) leftAttachment: (block28126ebcValue5).
    block28126ebcValue6 := (block28126ebcValue0) leftOffset: (5).
    block28126ebcValue6
].
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack2 := [:recoveredBlock916Arg1 | 
    | recoveredBlock916Value0 recoveredBlock916Value1 recoveredBlock916Value2 recoveredBlock916Value3 recoveredBlock916Value4 recoveredBlock916Value5 recoveredBlock916Value6 recoveredBlock916Value7 recoveredBlock916Value8 |
    recoveredBlock916Value0 := recoveredBlock916Arg1.
    recoveredBlock916Value1 := recoveredBlock916Value0.
    recoveredBlock916Value2 := XmATTACHFORM.
    (recoveredBlock916Value1) topAttachment: (recoveredBlock916Value2).
    recoveredBlock916Value3 := recoveredBlock916Value0.
    (recoveredBlock916Value3) topOffset: (5).
    recoveredBlock916Value4 := recoveredBlock916Value0.
    recoveredBlock916Value5 := XmATTACHWIDGET.
    (recoveredBlock916Value4) leftAttachment: (recoveredBlock916Value5).
    recoveredBlock916Value6 := recoveredBlock916Value0.
    recoveredBlock916Value7 := recoveredLocal8.
    (recoveredBlock916Value6) leftWidget: (recoveredBlock916Value7).
    recoveredBlock916Value8 := (recoveredBlock916Value0) leftOffset: (10).
    recoveredBlock916Value8
].
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack2 := [:recoveredBlock970Arg1 | 
    | recoveredBlock970Value0 recoveredBlock970Value1 recoveredBlock970Value2 recoveredBlock970Value3 recoveredBlock970Value4 recoveredBlock970Value5 recoveredBlock970Value6 recoveredBlock970Value7 recoveredBlock970Value8 recoveredBlock970Value9 recoveredBlock970Value10 |
    recoveredBlock970Value0 := recoveredBlock970Arg1.
    recoveredBlock970Value1 := recoveredBlock970Value0.
    recoveredBlock970Value2 := XmATTACHFORM.
    (recoveredBlock970Value1) topAttachment: (recoveredBlock970Value2).
    recoveredBlock970Value3 := recoveredBlock970Value0.
    (recoveredBlock970Value3) topOffset: (2).
    recoveredBlock970Value4 := recoveredBlock970Value0.
    recoveredBlock970Value5 := XmATTACHWIDGET.
    (recoveredBlock970Value4) leftAttachment: (recoveredBlock970Value5).
    recoveredBlock970Value6 := recoveredBlock970Value0.
    recoveredBlock970Value7 := recoveredLocal1.
    (recoveredBlock970Value6) leftWidget: (recoveredBlock970Value7).
    recoveredBlock970Value8 := recoveredBlock970Value0.
    (recoveredBlock970Value8) leftOffset: (3).
    recoveredBlock970Value9 := XmATTACHFORM.
    recoveredBlock970Value10 := (recoveredBlock970Value0) rightAttachment: (recoveredBlock970Value9).
    recoveredBlock970Value10
].
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack2 := [:recoveredBlock1032Arg1 | 
    | recoveredBlock1032Value0 recoveredBlock1032Value1 recoveredBlock1032Value2 recoveredBlock1032Value3 recoveredBlock1032Value4 recoveredBlock1032Value5 recoveredBlock1032Value6 recoveredBlock1032Value7 recoveredBlock1032Value8 recoveredBlock1032Value9 recoveredBlock1032Value10 |
    recoveredBlock1032Value0 := recoveredBlock1032Arg1.
    recoveredBlock1032Value1 := recoveredBlock1032Value0.
    recoveredBlock1032Value2 := XmATTACHFORM.
    (recoveredBlock1032Value1) topAttachment: (recoveredBlock1032Value2).
    recoveredBlock1032Value3 := recoveredBlock1032Value0.
    (recoveredBlock1032Value3) topOffset: (15).
    recoveredBlock1032Value4 := recoveredBlock1032Value0.
    recoveredBlock1032Value5 := XmATTACHWIDGET.
    (recoveredBlock1032Value4) leftAttachment: (recoveredBlock1032Value5).
    recoveredBlock1032Value6 := recoveredBlock1032Value0.
    recoveredBlock1032Value7 := recoveredLocal1.
    (recoveredBlock1032Value6) leftWidget: (recoveredBlock1032Value7).
    recoveredBlock1032Value8 := recoveredBlock1032Value0.
    (recoveredBlock1032Value8) leftOffset: (3).
    recoveredBlock1032Value9 := XmATTACHFORM.
    recoveredBlock1032Value10 := (recoveredBlock1032Value0) rightAttachment: (recoveredBlock1032Value9).
    recoveredBlock1032Value10
].
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack2 := XmNpopdownCallback.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack4 := 'aVariablesComboBoxPopdown:clientData:callData:'.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack2 := XmNpopupCallback.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack4 := 'aVariablesComboBoxPopup:clientData:callData:'.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack4 := 'aVariablesComboBoxSingle:clientData:callData:'.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

