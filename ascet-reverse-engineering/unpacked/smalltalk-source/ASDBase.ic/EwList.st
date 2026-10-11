"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008504; bytecode file offset 0x908be4"
!EwList methodsFor: 'recovered'!
haveNodesDrawn
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200382ec; bytecode file offset 0x934c18"
!EwList methodsFor: 'recovered'!
hoverIndentNode: recoveredArg1
    ^0
! !

"ASDBase.ic method 0x2003c31c; bytecode file offset 0x938bd4"
!EwList methodsFor: 'recovered'!
getHoverInfoFor: recoveredArg1 position: recoveredArg2 point: recoveredArg3
    ^''
! !

"ASDBase.ic method 0x2004e228; bytecode file offset 0x94d048"
!EwList methodsFor: 'recovered'!
deselectAllItems
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059ac4; bytecode file offset 0x9566ac"
!EwList methodsFor: 'recovered'!
cursorItem: recoveredArg1 forceFullyVisible: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059b24; bytecode file offset 0x9566ac"
!EwList methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethod: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20077e44; bytecode file offset 0x9757c8"
!EwList methodsFor: 'recovered'!
isList
    ^true
! !

"ASDBase.ic method 0x200781ac; bytecode file offset 0x9757c8"
!EwList methodsFor: 'recovered'!
usesFocusProxy
    ^true
! !

"ASDBase.ic method 0x2007fec4; bytecode file offset 0x97c780"
!EwList methodsFor: 'recovered'!
stsHoverHelpTruncateWidth
    ^160
! !

"ASDBase.ic method 0x200aaf24; bytecode file offset 0x9a7960"
!EwList methodsFor: 'recovered'!
stsHoverHelpWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) propertyAt: ('stsHoverHelpWidget') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e8bd0; bytecode file offset 0x9e548c"
!EwList methodsFor: 'recovered'!
backgroundColorNoMercy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    ewBackgroundColor := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    super backgroundColor: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20134518; bytecode file offset 0xa30ddc"
!EwList methodsFor: 'recovered'!
background: recoveredArg1 brush: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fromOSRGB: (recoveredValue1).
    ewBackgroundColor := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    super background: (recoveredValue3) brush: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013e144; bytecode file offset 0xa3aa0c"
!EwList methodsFor: 'recovered'!
stsHoverHelpWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'stsHoverHelpWidget'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3d80; bytecode file offset 0xba0658"
!EwList methodsFor: 'recovered'!
stsHoverHelpWindowHide
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwDragAndDropManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInProgress.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) stsHoverHelpWidget: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'call_84864'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) stsHoverHelpWindow.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) popdown.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f02cc; bytecode file offset 0xbecb9c"
!EwList methodsFor: 'recovered'!
cursorItem: recoveredArg1 equalMethod: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) eraseCursoredEmphasis.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) drawCursoredEmphasis.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 50.
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
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfItem: (recoveredStack2) equalMethod: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) usingSingleItemSelection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) deselectAllItems.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) cursorItem: (recoveredStack2) forceFullyVisible: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2039b218; bytecode file offset 0xc97b0c"
!EwList methodsFor: 'recovered'!
stsMaskForEvent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ButtonPress.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ButtonPressMask.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ButtonRelease.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ButtonReleaseMask.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := KeyPress.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := KeyRelease.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := KeyReleaseMask.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := Button2Mask.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := Button2MotionMask.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := Button3Mask.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := Button3MotionMask.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Button1MotionMask.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20402804; bytecode file offset 0xcff0f8"
!EwList methodsFor: 'recovered'!
gettingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_96671'.
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
            recoveredStack0 := (recoveredStack0) isDestroyed.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
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
            recoveredStack0 := (recoveredStack0) colorMap.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := CwList.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectionForegroundColor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPixelValue: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            pixelSelectionForeground := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) colorMap.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := CwList.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectionBackgroundColor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPixelValue: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            pixelSelectionBackground := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) gettingFocusFromOutside.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) focusIsBeingGained.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) hasFocus: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b3a60; bytecode file offset 0xeb0378"
!EwList methodsFor: 'recovered'!
stsItemPointFor: recoveredArg1 visibleAt: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
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
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexAtPoint: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleItemNodeAt: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTableList.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) horizontalScrollOffset.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) horizontalScrollOffset.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) columnAtX: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) lockedColumns.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) columnAtX: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := EwTableList.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := RBEnhancedTableList.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyPolicy.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) widthAt: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) cells.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledX.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) horizontalScrollOffset.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) topYAt: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 211] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledX.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) workWidth.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) horizontalScrollOffset.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledX.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) horizontalScrollOffset.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 261].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 310.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) hoverIndentNode: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) workWidth.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) topYAt: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205b9ad4; bytecode file offset 0xeb6434"
!EwList methodsFor: 'recovered'!
stsHoverHelpWindowShow: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EwDragAndDropManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInProgress.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) stsHoverHelpWindow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
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
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) realizeWidget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredExtent.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootWindow.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) rectangle.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) amountToTranslateWithin: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := CgScreen.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootWindow.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveBy: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) wbPopupWithoutActivate.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) configureWidget: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4) borderWidth: (recoveredStack5).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) wbPopupWithoutActivate.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock246Local1 recoveredBlock246Stack0 recoveredBlock246Stack1 recoveredBlock246Stack2 recoveredBlock246Stack3 recoveredBlock246PC recoveredBlock246Step recoveredBlock246Done recoveredBlock246Result |
    recoveredBlock246Stack0 := self.
    recoveredBlock246PC := 252.
    recoveredBlock246Done := false.
    [recoveredBlock246Done not] whileTrue: [
        recoveredBlock246Step := recoveredBlock246PC.
        recoveredBlock246Step = 252 ifTrue: [
            recoveredBlock246Stack1 := Delay.
            recoveredBlock246PC := 254.
        ].
        recoveredBlock246Step = 254 ifTrue: [
            recoveredBlock246Stack2 := 500.
            recoveredBlock246PC := 258.
        ].
        recoveredBlock246Step = 258 ifTrue: [
            recoveredBlock246Stack1 := (recoveredBlock246Stack1) forMilliseconds: (recoveredBlock246Stack2).
            recoveredBlock246PC := 260.
        ].
        recoveredBlock246Step = 260 ifTrue: [
            (recoveredBlock246Stack1) wait.
            recoveredBlock246PC := 262.
        ].
        recoveredBlock246Step = 262 ifTrue: [
            recoveredBlock246PC := 276.
        ].
        recoveredBlock246Step = 266 ifTrue: [
            recoveredBlock246Stack1 := Delay.
            recoveredBlock246PC := 268.
        ].
        recoveredBlock246Step = 268 ifTrue: [
            recoveredBlock246Stack2 := 500.
            recoveredBlock246PC := 272.
        ].
        recoveredBlock246Step = 272 ifTrue: [
            recoveredBlock246Stack1 := (recoveredBlock246Stack1) forMilliseconds: (recoveredBlock246Stack2).
            recoveredBlock246PC := 274.
        ].
        recoveredBlock246Step = 274 ifTrue: [
            (recoveredBlock246Stack1) wait.
            recoveredBlock246PC := 276.
        ].
        recoveredBlock246Step = 276 ifTrue: [
            recoveredBlock246Stack1 := self.
            recoveredBlock246PC := 277.
        ].
        recoveredBlock246Step = 277 ifTrue: [
            recoveredBlock246Stack1 := (recoveredBlock246Stack1) stsHoverHelpWidget.
            recoveredBlock246PC := 279.
        ].
        recoveredBlock246Step = 279 ifTrue: [
            recoveredBlock246Local1 := recoveredBlock246Stack1.
            recoveredBlock246PC := 280.
        ].
        recoveredBlock246Step = 280 ifTrue: [
            recoveredBlock246Stack1 := CwBasicWidget.
            recoveredBlock246PC := 282.
        ].
        recoveredBlock246Step = 282 ifTrue: [
            recoveredBlock246Stack1 := (recoveredBlock246Stack1) widgetUnderPointer.
            recoveredBlock246PC := 284.
        ].
        recoveredBlock246Step = 284 ifTrue: [
            recoveredLocal1 := recoveredBlock246Stack1.
            recoveredBlock246PC := 287.
        ].
        recoveredBlock246Step = 287 ifTrue: [
            recoveredBlock246Stack1 := recoveredBlock246Local1.
            recoveredBlock246PC := 288.
        ].
        recoveredBlock246Step = 288 ifTrue: [
            (recoveredBlock246Stack1 == nil) ifTrue: [recoveredBlock246PC := 308] ifFalse: [recoveredBlock246PC := 292].
        ].
        recoveredBlock246Step = 292 ifTrue: [
            recoveredBlock246Stack1 := recoveredLocal1.
            recoveredBlock246PC := 295.
        ].
        recoveredBlock246Step = 295 ifTrue: [
            recoveredBlock246Stack2 := recoveredLocal6.
            recoveredBlock246PC := 298.
        ].
        recoveredBlock246Step = 298 ifTrue: [
            (recoveredBlock246Stack1 == recoveredBlock246Stack2) ifTrue: [recoveredBlock246PC := 266] ifFalse: [recoveredBlock246PC := 300].
        ].
        recoveredBlock246Step = 300 ifTrue: [
            recoveredBlock246Stack1 := recoveredBlock246Local1.
            recoveredBlock246PC := 301.
        ].
        recoveredBlock246Step = 301 ifTrue: [
            recoveredBlock246Stack1 := (recoveredBlock246Stack1) basicWidget.
            recoveredBlock246PC := 303.
        ].
        recoveredBlock246Step = 303 ifTrue: [
            recoveredBlock246Stack2 := recoveredLocal1.
            recoveredBlock246PC := 306.
        ].
        recoveredBlock246Step = 306 ifTrue: [
            (recoveredBlock246Stack1 == recoveredBlock246Stack2) ifTrue: [recoveredBlock246PC := 266] ifFalse: [recoveredBlock246PC := 308].
        ].
        recoveredBlock246Step = 308 ifTrue: [
            recoveredBlock246Stack0 := (recoveredBlock246Stack0) stsHoverHelpWindowHide.
            recoveredBlock246PC := 310.
        ].
        recoveredBlock246Step = 310 ifTrue: [
            recoveredBlock246Result := recoveredBlock246Stack0.
            recoveredBlock246Done := true.
        ].
    ].
    recoveredBlock246Result
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) userBackgroundPriority.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060ca38; bytecode file offset 0xf093d4"
!EwList methodsFor: 'recovered'!
stsHoverHelpWindow
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'stsHoverHelpWindow'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16Stack6 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) shell.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) hoverWindow.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack1 := PointerMotionMask.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block26Arg1 :recoveredBlock16Block26Arg2 :recoveredBlock16Block26Arg3 | 
    | recoveredBlock16Block26Value0 |
    recoveredBlock16Block26Value0 := (self) stsHoverHelpWindowHide.
    recoveredBlock16Block26Value0
].
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack3 := 'value:value:value:'.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack4 := nil.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            (recoveredBlock16Stack0) addEventHandler: (recoveredBlock16Stack1) receiver: (recoveredBlock16Stack2) selector: (recoveredBlock16Stack3) clientData: (recoveredBlock16Stack4).
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack0 := self.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) shell.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) hoverWindow.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) allChildren.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack1 := [:recoveredBlock16Block46Arg1 | 
    | recoveredBlock16Block46Value0 recoveredBlock16Block46Value1 recoveredBlock16Block46Value2 recoveredBlock16Block46Value3 |
    recoveredBlock16Block46Value0 := recoveredBlock16Block46Arg1.
    recoveredBlock16Block46Value1 := KeyReleaseMask.
    recoveredBlock16Block46Value2 := [:recoveredBlock16Block46Block55Arg1 :recoveredBlock16Block46Block55Arg2 :recoveredBlock16Block46Block55Arg3 | 
    | recoveredBlock16Block46Block55Value0 |
    recoveredBlock16Block46Block55Value0 := (self) stsHoverHelpWindowHide.
    recoveredBlock16Block46Block55Value0
].
    recoveredBlock16Block46Value3 := (recoveredBlock16Block46Value0) addEventHandler: (recoveredBlock16Block46Value1) receiver: (recoveredBlock16Block46Value2) selector: ('value:value:value:') clientData: (nil).
    recoveredBlock16Block46Value3
].
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            (recoveredBlock16Stack0) do: (recoveredBlock16Stack1).
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16Stack0 := CwOverrideShell.
            recoveredBlock16PC := 76.
        ].
        recoveredBlock16Step = 76 ifTrue: [
            recoveredBlock16Stack1 := 'PopupShell'.
            recoveredBlock16PC := 78.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 79.
        ].
        recoveredBlock16Step = 79 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) shell.
            recoveredBlock16PC := 80.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack3 := [:block2811d628Arg1 | 
    | block2811d628Value0 block2811d628Value1 block2811d628Value2 |
    block2811d628Value0 := block2811d628Arg1.
    block2811d628Value1 := block2811d628Value0.
    (block2811d628Value1) allowShellResize: (true).
    block2811d628Value2 := (block2811d628Value0) mappedWhenManaged: (false).
    block2811d628Value2
].
            recoveredBlock16PC := 82.
        ].
        recoveredBlock16Step = 82 ifTrue: [
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) createPopupShell: (recoveredBlock16Stack1) parent: (recoveredBlock16Stack2) argBlock: (recoveredBlock16Stack3).
            recoveredBlock16PC := 98.
        ].
        recoveredBlock16Step = 98 ifTrue: [
            recoveredBlock16Local2 := recoveredBlock16Stack0.
            recoveredBlock16PC := 99.
        ].
        recoveredBlock16Step = 99 ifTrue: [
            recoveredBlock16Stack0 := recoveredBlock16Local2.
            recoveredBlock16PC := 100.
        ].
        recoveredBlock16Step = 100 ifTrue: [
            recoveredBlock16Stack1 := 'Hover Help'.
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16Stack2 := [:block2811d64cArg1 | 
    | block2811d64cValue0 block2811d64cValue1 block2811d64cValue2 block2811d64cValue3 block2811d64cValue4 block2811d64cValue5 block2811d64cValue6 block2811d64cValue7 block2811d64cValue8 block2811d64cValue9 block2811d64cValue10 |
    block2811d64cValue0 := block2811d64cArg1.
    block2811d64cValue1 := block2811d64cValue0.
    block2811d64cValue2 := EwSystemColors.
    block2811d64cValue3 := (block2811d64cValue2) new.
    block2811d64cValue4 := (block2811d64cValue3) infoBackground.
    (block2811d64cValue1) backgroundColor: (block2811d64cValue4).
    block2811d64cValue5 := block2811d64cValue0.
    block2811d64cValue6 := EwSystemColors.
    block2811d64cValue7 := (block2811d64cValue6) new.
    block2811d64cValue8 := (block2811d64cValue7) infoText.
    (block2811d64cValue5) foregroundColor: (block2811d64cValue8).
    block2811d64cValue9 := block2811d64cValue0.
    (block2811d64cValue9) marginWidth: (2).
    block2811d64cValue10 := (block2811d64cValue0) marginHeight: (1).
    block2811d64cValue10
].
            recoveredBlock16PC := 104.
        ].
        recoveredBlock16Step = 104 ifTrue: [
            recoveredBlock16PC := 137.
        ].
        recoveredBlock16Step = 137 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) createLabel: (recoveredBlock16Stack1) argBlock: (recoveredBlock16Stack2).
            recoveredBlock16PC := 139.
        ].
        recoveredBlock16Step = 139 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Stack0.
            recoveredBlock16PC := 140.
        ].
        recoveredBlock16Step = 140 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 141.
        ].
        recoveredBlock16Step = 141 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Stack0.
            recoveredBlock16PC := 142.
        ].
        recoveredBlock16Step = 142 ifTrue: [
            recoveredBlock16Stack2 := ButtonPressMask.
            recoveredBlock16PC := 144.
        ].
        recoveredBlock16Step = 144 ifTrue: [
            recoveredBlock16Stack3 := ButtonReleaseMask.
            recoveredBlock16PC := 146.
        ].
        recoveredBlock16Step = 146 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) | (recoveredBlock16Stack3).
            recoveredBlock16PC := 148.
        ].
        recoveredBlock16Step = 148 ifTrue: [
            recoveredBlock16Stack3 := Button1MotionMask.
            recoveredBlock16PC := 150.
        ].
        recoveredBlock16Step = 150 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) | (recoveredBlock16Stack3).
            recoveredBlock16PC := 152.
        ].
        recoveredBlock16Step = 152 ifTrue: [
            recoveredBlock16Stack3 := Button2MotionMask.
            recoveredBlock16PC := 154.
        ].
        recoveredBlock16Step = 154 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) | (recoveredBlock16Stack3).
            recoveredBlock16PC := 156.
        ].
        recoveredBlock16Step = 156 ifTrue: [
            recoveredBlock16Stack3 := Button3MotionMask.
            recoveredBlock16PC := 158.
        ].
        recoveredBlock16Step = 158 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) | (recoveredBlock16Stack3).
            recoveredBlock16PC := 160.
        ].
        recoveredBlock16Step = 160 ifTrue: [
            recoveredBlock16Stack3 := KeyPressMask.
            recoveredBlock16PC := 162.
        ].
        recoveredBlock16Step = 162 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) | (recoveredBlock16Stack3).
            recoveredBlock16PC := 164.
        ].
        recoveredBlock16Step = 164 ifTrue: [
            recoveredBlock16Stack3 := KeyReleaseMask.
            recoveredBlock16PC := 166.
        ].
        recoveredBlock16Step = 166 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) | (recoveredBlock16Stack3).
            recoveredBlock16PC := 168.
        ].
        recoveredBlock16Step = 168 ifTrue: [
            recoveredBlock16Stack3 := [:recoveredBlock16Block168Arg1 :recoveredBlock16Block168Arg2 :recoveredBlock16Block168Arg3 | 
    | recoveredBlock16Block168Value0 recoveredBlock16Block168Value1 recoveredBlock16Block168Value2 |
    recoveredBlock16Block168Value0 := (self) stsHoverHelpWidget.
    recoveredBlock16Block168Value1 := [:recoveredBlock16Block168Block176Arg1 | 
    | recoveredBlock16Block168Block176Value0 recoveredBlock16Block168Block176Value1 recoveredBlock16Block168Block176Value2 recoveredBlock16Block168Block176Value3 recoveredBlock16Block168Block176Value4 |
    recoveredBlock16Block168Block176Value0 := recoveredBlock16Block168Block176Arg1.
    recoveredBlock16Block168Block176Value1 := (recoveredBlock16Block168Block176Value0) basicWidget.
    recoveredBlock16Block168Block176Value2 := (recoveredBlock16Block168Block176Value1) window.
    recoveredBlock16Block168Block176Value3 := [:recoveredBlock16Block168Block176Block189Arg1 | 
    | recoveredBlock16Block168Block176Block189Local1 recoveredBlock16Block168Block176Block189Local2 recoveredBlock16Block168Block176Block189Local3 recoveredBlock16Block168Block176Block189Local4 recoveredBlock16Block168Block176Block189Stack0 recoveredBlock16Block168Block176Block189Stack1 recoveredBlock16Block168Block176Block189Stack2 recoveredBlock16Block168Block176Block189Stack3 recoveredBlock16Block168Block176Block189Stack4 recoveredBlock16Block168Block176Block189Stack5 recoveredBlock16Block168Block176Block189Stack6 recoveredBlock16Block168Block176Block189Stack7 recoveredBlock16Block168Block176Block189Stack8 recoveredBlock16Block168Block176Block189PC recoveredBlock16Block168Block176Block189Step recoveredBlock16Block168Block176Block189Done recoveredBlock16Block168Block176Block189Result |
    recoveredBlock16Block168Block176Block189Stack0 := self.
    recoveredBlock16Block168Block176Block189PC := 196.
    recoveredBlock16Block168Block176Block189Done := false.
    [recoveredBlock16Block168Block176Block189Done not] whileTrue: [
        recoveredBlock16Block168Block176Block189Step := recoveredBlock16Block168Block176Block189PC.
        recoveredBlock16Block168Block176Block189Step = 196 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Arg1.
            recoveredBlock16Block168Block176Block189PC := 199.
        ].
        recoveredBlock16Block168Block176Block189Step = 199 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) window.
            recoveredBlock16Block168Block176Block189PC := 201.
        ].
        recoveredBlock16Block168Block176Block189Step = 201 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := recoveredBlock16Block168Block176Block189Arg1.
            recoveredBlock16Block168Block176Block189PC := 203.
        ].
        recoveredBlock16Block168Block176Block189Step = 203 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack3 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 206.
        ].
        recoveredBlock16Block168Block176Block189Step = 206 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack3 := (recoveredBlock16Block168Block176Block189Stack3) x.
            recoveredBlock16Block168Block176Block189PC := 208.
        ].
        recoveredBlock16Block168Block176Block189Step = 208 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack4 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 211.
        ].
        recoveredBlock16Block168Block176Block189Step = 211 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack4 := (recoveredBlock16Block168Block176Block189Stack4) y.
            recoveredBlock16Block168Block176Block189PC := 213.
        ].
        recoveredBlock16Block168Block176Block189Step = 213 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack5 := ReturnParameter.
            recoveredBlock16Block168Block176Block189PC := 215.
        ].
        recoveredBlock16Block168Block176Block189Step = 215 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack5 := (recoveredBlock16Block168Block176Block189Stack5) new.
            recoveredBlock16Block168Block176Block189PC := 217.
        ].
        recoveredBlock16Block168Block176Block189Step = 217 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack6 := recoveredBlock16Block168Block176Block189Stack5.
            recoveredBlock16Block168Block176Block189PC := 218.
        ].
        recoveredBlock16Block168Block176Block189Step = 218 ifTrue: [
            recoveredBlock16Block168Block176Block189Local4 := recoveredBlock16Block168Block176Block189Stack6.
            recoveredBlock16Block168Block176Block189PC := 219.
        ].
        recoveredBlock16Block168Block176Block189Step = 219 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack6 := ReturnParameter.
            recoveredBlock16Block168Block176Block189PC := 221.
        ].
        recoveredBlock16Block168Block176Block189Step = 221 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack6 := (recoveredBlock16Block168Block176Block189Stack6) new.
            recoveredBlock16Block168Block176Block189PC := 223.
        ].
        recoveredBlock16Block168Block176Block189Step = 223 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack7 := recoveredBlock16Block168Block176Block189Stack6.
            recoveredBlock16Block168Block176Block189PC := 224.
        ].
        recoveredBlock16Block168Block176Block189Step = 224 ifTrue: [
            recoveredBlock16Block168Block176Block189Local3 := recoveredBlock16Block168Block176Block189Stack7.
            recoveredBlock16Block168Block176Block189PC := 225.
        ].
        recoveredBlock16Block168Block176Block189Step = 225 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack7 := ReturnParameter.
            recoveredBlock16Block168Block176Block189PC := 227.
        ].
        recoveredBlock16Block168Block176Block189Step = 227 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack7 := (recoveredBlock16Block168Block176Block189Stack7) null.
            recoveredBlock16Block168Block176Block189PC := 229.
        ].
        recoveredBlock16Block168Block176Block189Step = 229 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1) translateCoordinates: (recoveredBlock16Block168Block176Block189Stack2) srcX: (recoveredBlock16Block168Block176Block189Stack3) srcY: (recoveredBlock16Block168Block176Block189Stack4) destXReturn: (recoveredBlock16Block168Block176Block189Stack5) destYReturn: (recoveredBlock16Block168Block176Block189Stack6) childReturn: (recoveredBlock16Block168Block176Block189Stack7).
            recoveredBlock16Block168Block176Block189PC := 232.
        ].
        recoveredBlock16Block168Block176Block189Step = 232 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Block176Block189Local4.
            recoveredBlock16Block168Block176Block189PC := 233.
        ].
        recoveredBlock16Block168Block176Block189Step = 233 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) value.
            recoveredBlock16Block168Block176Block189PC := 235.
        ].
        recoveredBlock16Block168Block176Block189Step = 235 ifTrue: [
            recoveredBlock16Block168Block176Block189Local2 := recoveredBlock16Block168Block176Block189Stack1.
            recoveredBlock16Block168Block176Block189PC := 236.
        ].
        recoveredBlock16Block168Block176Block189Step = 236 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Block176Block189Local3.
            recoveredBlock16Block168Block176Block189PC := 237.
        ].
        recoveredBlock16Block168Block176Block189Step = 237 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) value.
            recoveredBlock16Block168Block176Block189PC := 239.
        ].
        recoveredBlock16Block168Block176Block189Step = 239 ifTrue: [
            recoveredBlock16Block168Block176Block189Local1 := recoveredBlock16Block168Block176Block189Stack1.
            recoveredBlock16Block168Block176Block189PC := 240.
        ].
        recoveredBlock16Block168Block176Block189Step = 240 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 243.
        ].
        recoveredBlock16Block168Block176Block189Step = 243 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := recoveredBlock16Block168Block176Block189Stack1.
            recoveredBlock16Block168Block176Block189PC := 244.
        ].
        recoveredBlock16Block168Block176Block189Step = 244 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack3 := recoveredBlock16Block168Block176Block189Local2.
            recoveredBlock16Block168Block176Block189PC := 245.
        ].
        recoveredBlock16Block168Block176Block189Step = 245 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack2) x: (recoveredBlock16Block168Block176Block189Stack3).
            recoveredBlock16Block168Block176Block189PC := 247.
        ].
        recoveredBlock16Block168Block176Block189Step = 247 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := recoveredBlock16Block168Block176Block189Local1.
            recoveredBlock16Block168Block176Block189PC := 248.
        ].
        recoveredBlock16Block168Block176Block189Step = 248 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1) y: (recoveredBlock16Block168Block176Block189Stack2).
            recoveredBlock16Block168Block176Block189PC := 250.
        ].
        recoveredBlock16Block168Block176Block189Step = 250 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 253.
        ].
        recoveredBlock16Block168Block176Block189Step = 253 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) type.
            recoveredBlock16Block168Block176Block189PC := 255.
        ].
        recoveredBlock16Block168Block176Block189Step = 255 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := ButtonRelease.
            recoveredBlock16Block168Block176Block189PC := 257.
        ].
        recoveredBlock16Block168Block176Block189Step = 257 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1 ~~ recoveredBlock16Block168Block176Block189Stack2) ifTrue: [recoveredBlock16Block168Block176Block189PC := 275] ifFalse: [recoveredBlock16Block168Block176Block189PC := 260].
        ].
        recoveredBlock16Block168Block176Block189Step = 260 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 263.
        ].
        recoveredBlock16Block168Block176Block189Step = 263 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) button.
            recoveredBlock16Block168Block176Block189PC := 265.
        ].
        recoveredBlock16Block168Block176Block189Step = 265 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := 3.
            recoveredBlock16Block168Block176Block189PC := 267.
        ].
        recoveredBlock16Block168Block176Block189Step = 267 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1 ~~ recoveredBlock16Block168Block176Block189Stack2) ifTrue: [recoveredBlock16Block168Block176Block189PC := 275] ifFalse: [recoveredBlock16Block168Block176Block189PC := 270].
        ].
        recoveredBlock16Block168Block176Block189Step = 270 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Block176Arg1.
            recoveredBlock16Block168Block176Block189PC := 273.
        ].
        recoveredBlock16Block168Block176Block189Step = 273 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1) setInputFocus.
            recoveredBlock16Block168Block176Block189PC := 275.
        ].
        recoveredBlock16Block168Block176Block189Step = 275 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 278.
        ].
        recoveredBlock16Block168Block176Block189Step = 278 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) type.
            recoveredBlock16Block168Block176Block189PC := 280.
        ].
        recoveredBlock16Block168Block176Block189Step = 280 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := ButtonRelease.
            recoveredBlock16Block168Block176Block189PC := 282.
        ].
        recoveredBlock16Block168Block176Block189Step = 282 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1 ~~ recoveredBlock16Block168Block176Block189Stack2) ifTrue: [recoveredBlock16Block168Block176Block189PC := 299] ifFalse: [recoveredBlock16Block168Block176Block189PC := 286].
        ].
        recoveredBlock16Block168Block176Block189Step = 286 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 289.
        ].
        recoveredBlock16Block168Block176Block189Step = 289 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) button.
            recoveredBlock16Block168Block176Block189PC := 291.
        ].
        recoveredBlock16Block168Block176Block189Step = 291 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := 1.
            recoveredBlock16Block168Block176Block189PC := 293.
        ].
        recoveredBlock16Block168Block176Block189Step = 293 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1 ~~ recoveredBlock16Block168Block176Block189Stack2) ifTrue: [recoveredBlock16Block168Block176Block189PC := 299] ifFalse: [recoveredBlock16Block168Block176Block189PC := 296].
        ].
        recoveredBlock16Block168Block176Block189Step = 296 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := self.
            recoveredBlock16Block168Block176Block189PC := 297.
        ].
        recoveredBlock16Block168Block176Block189Step = 297 ifTrue: [
            (recoveredBlock16Block168Block176Block189Stack1) stsHoverHelpWindowHide.
            recoveredBlock16Block168Block176Block189PC := 299.
        ].
        recoveredBlock16Block168Block176Block189Step = 299 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := recoveredBlock16Block168Block176Arg1.
            recoveredBlock16Block168Block176Block189PC := 302.
        ].
        recoveredBlock16Block168Block176Block189Step = 302 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) basicWidget.
            recoveredBlock16Block168Block176Block189PC := 304.
        ].
        recoveredBlock16Block168Block176Block189Step = 304 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := self.
            recoveredBlock16Block168Block176Block189PC := 305.
        ].
        recoveredBlock16Block168Block176Block189Step = 305 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack3 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 308.
        ].
        recoveredBlock16Block168Block176Block189Step = 308 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack2 := (recoveredBlock16Block168Block176Block189Stack2) stsMaskForEvent: (recoveredBlock16Block168Block176Block189Stack3).
            recoveredBlock16Block168Block176Block189PC := 310.
        ].
        recoveredBlock16Block168Block176Block189Step = 310 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack3 := recoveredBlock16Block168Arg3.
            recoveredBlock16Block168Block176Block189PC := 313.
        ].
        recoveredBlock16Block168Block176Block189Step = 313 ifTrue: [
            recoveredBlock16Block168Block176Block189Stack1 := (recoveredBlock16Block168Block176Block189Stack1) callHandlersFor: (recoveredBlock16Block168Block176Block189Stack2) with: (recoveredBlock16Block168Block176Block189Stack3).
            recoveredBlock16Block168Block176Block189PC := 315.
        ].
        recoveredBlock16Block168Block176Block189Step = 315 ifTrue: [
            recoveredBlock16Block168Block176Block189Result := recoveredBlock16Block168Block176Block189Stack1.
            recoveredBlock16Block168Block176Block189Done := true.
        ].
    ].
    recoveredBlock16Block168Block176Block189Result
].
    recoveredBlock16Block168Block176Value4 := (recoveredBlock16Block168Block176Value2) ifNotNil: (recoveredBlock16Block168Block176Value3).
    recoveredBlock16Block168Block176Value4
].
    recoveredBlock16Block168Value2 := (recoveredBlock16Block168Value0) ifNotNil: (recoveredBlock16Block168Value1).
    recoveredBlock16Block168Value2
].
            recoveredBlock16PC := 322.
        ].
        recoveredBlock16Step = 322 ifTrue: [
            recoveredBlock16Stack4 := 'value:value:value:'.
            recoveredBlock16PC := 324.
        ].
        recoveredBlock16Step = 324 ifTrue: [
            recoveredBlock16Stack5 := nil.
            recoveredBlock16PC := 325.
        ].
        recoveredBlock16Step = 325 ifTrue: [
            (recoveredBlock16Stack1) addEventHandler: (recoveredBlock16Stack2) receiver: (recoveredBlock16Stack3) selector: (recoveredBlock16Stack4) clientData: (recoveredBlock16Stack5).
            recoveredBlock16Stack1 := recoveredBlock16Stack0.
            recoveredBlock16PC := 328.
        ].
        recoveredBlock16Step = 328 ifTrue: [
            recoveredBlock16Stack2 := ButtonReleaseMask.
            recoveredBlock16PC := 330.
        ].
        recoveredBlock16Step = 330 ifTrue: [
            recoveredBlock16Stack3 := [:recoveredBlock16Block330Arg1 :recoveredBlock16Block330Arg2 :recoveredBlock16Block330Arg3 | 
    | recoveredBlock16Block330Stack0 recoveredBlock16Block330Stack1 recoveredBlock16Block330Stack2 recoveredBlock16Block330Stack3 recoveredBlock16Block330Stack4 recoveredBlock16Block330PC recoveredBlock16Block330Step recoveredBlock16Block330Done recoveredBlock16Block330Result |
    recoveredBlock16Block330Stack0 := self.
    recoveredBlock16Block330PC := 336.
    recoveredBlock16Block330Done := false.
    [recoveredBlock16Block330Done not] whileTrue: [
        recoveredBlock16Block330Step := recoveredBlock16Block330PC.
        recoveredBlock16Block330Step = 336 ifTrue: [
            recoveredBlock16Block330Stack1 := nil.
            recoveredBlock16Block330PC := 337.
        ].
        recoveredBlock16Block330Step = 337 ifTrue: [
            recoveredBlock16Block330Stack2 := recoveredBlock16Block330Arg3.
            recoveredBlock16Block330PC := 338.
        ].
        recoveredBlock16Block330Step = 338 ifTrue: [
            recoveredBlock16Block330Stack2 := (recoveredBlock16Block330Stack2) button.
            recoveredBlock16Block330PC := 340.
        ].
        recoveredBlock16Block330Step = 340 ifTrue: [
            recoveredBlock16Block330Stack3 := 3.
            recoveredBlock16Block330PC := 342.
        ].
        recoveredBlock16Block330Step = 342 ifTrue: [
            recoveredBlock16Block330Stack2 := (recoveredBlock16Block330Stack2) = (recoveredBlock16Block330Stack3).
            recoveredBlock16Block330PC := 343.
        ].
        recoveredBlock16Block330Step = 343 ifTrue: [
            (recoveredBlock16Block330Stack2) ifTrue: [recoveredBlock16Block330PC := 346] ifFalse: [recoveredBlock16Block330PC := 350].
        ].
        recoveredBlock16Block330Step = 346 ifTrue: [
            recoveredBlock16Block330PC := 347.
        ].
        recoveredBlock16Block330Step = 347 ifTrue: [
            recoveredBlock16Block330Stack1 := self.
            recoveredBlock16Block330PC := 348.
        ].
        recoveredBlock16Block330Step = 348 ifTrue: [
            recoveredBlock16Block330Stack1 := (recoveredBlock16Block330Stack1) stsHoverHelpWindowHide.
            recoveredBlock16Block330PC := 350.
        ].
        recoveredBlock16Block330Step = 350 ifTrue: [
            recoveredBlock16Block330Result := recoveredBlock16Block330Stack1.
            recoveredBlock16Block330Done := true.
        ].
    ].
    recoveredBlock16Block330Result
].
            recoveredBlock16PC := 351.
        ].
        recoveredBlock16Step = 351 ifTrue: [
            recoveredBlock16Stack4 := 'value:value:value:'.
            recoveredBlock16PC := 353.
        ].
        recoveredBlock16Step = 353 ifTrue: [
            recoveredBlock16Stack5 := nil.
            recoveredBlock16PC := 354.
        ].
        recoveredBlock16Step = 354 ifTrue: [
            (recoveredBlock16Stack1) addEventHandler: (recoveredBlock16Stack2) receiver: (recoveredBlock16Stack3) selector: (recoveredBlock16Stack4) clientData: (recoveredBlock16Stack5).
            recoveredBlock16Stack1 := recoveredBlock16Stack0.
            recoveredBlock16PC := 357.
        ].
        recoveredBlock16Step = 357 ifTrue: [
            recoveredBlock16Stack2 := PointerMotionMask.
            recoveredBlock16PC := 359.
        ].
        recoveredBlock16Step = 359 ifTrue: [
            recoveredBlock16Stack3 := [:recoveredBlock16Block359Arg1 :recoveredBlock16Block359Arg2 :recoveredBlock16Block359Arg3 | 
    | recoveredBlock16Block359Value0 recoveredBlock16Block359Value1 recoveredBlock16Block359Value2 |
    recoveredBlock16Block359Value0 := (self) stsHoverHelpWidget.
    recoveredBlock16Block359Value1 := [:recoveredBlock16Block359Block368Arg1 | 
    | recoveredBlock16Block359Block368Value0 recoveredBlock16Block359Block368Value1 recoveredBlock16Block359Block368Value2 recoveredBlock16Block359Block368Value3 recoveredBlock16Block359Block368Value4 |
    recoveredBlock16Block359Block368Value0 := recoveredBlock16Block359Block368Arg1.
    recoveredBlock16Block359Block368Value1 := (recoveredBlock16Block359Block368Value0) basicWidget.
    recoveredBlock16Block359Block368Value2 := (recoveredBlock16Block359Block368Value1) window.
    recoveredBlock16Block359Block368Value3 := [:recoveredBlock16Block359Block368Block381Arg1 | 
    | recoveredBlock16Block359Block368Block381Local1 recoveredBlock16Block359Block368Block381Stack0 recoveredBlock16Block359Block368Block381Stack1 recoveredBlock16Block359Block368Block381Stack2 recoveredBlock16Block359Block368Block381Stack3 recoveredBlock16Block359Block368Block381Stack4 recoveredBlock16Block359Block368Block381Stack5 recoveredBlock16Block359Block368Block381Stack6 recoveredBlock16Block359Block368Block381Stack7 recoveredBlock16Block359Block368Block381Stack8 recoveredBlock16Block359Block368Block381PC recoveredBlock16Block359Block368Block381Step recoveredBlock16Block359Block368Block381Done recoveredBlock16Block359Block368Block381Result |
    recoveredBlock16Block359Block368Block381Stack0 := self.
    recoveredBlock16Block359Block368Block381PC := 388.
    recoveredBlock16Block359Block368Block381Done := false.
    [recoveredBlock16Block359Block368Block381Done not] whileTrue: [
        recoveredBlock16Block359Block368Block381Step := recoveredBlock16Block359Block368Block381PC.
        recoveredBlock16Block359Block368Block381Step = 388 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack1 := recoveredBlock16Block359Arg1.
            recoveredBlock16Block359Block368Block381PC := 391.
        ].
        recoveredBlock16Block359Block368Block381Step = 391 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack1 := (recoveredBlock16Block359Block368Block381Stack1) window.
            recoveredBlock16Block359Block368Block381PC := 393.
        ].
        recoveredBlock16Block359Block368Block381Step = 393 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := recoveredBlock16Block359Block368Block381Arg1.
            recoveredBlock16Block359Block368Block381PC := 394.
        ].
        recoveredBlock16Block359Block368Block381Step = 394 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack3 := recoveredBlock16Block359Arg3.
            recoveredBlock16Block359Block368Block381PC := 397.
        ].
        recoveredBlock16Block359Block368Block381Step = 397 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack3 := (recoveredBlock16Block359Block368Block381Stack3) x.
            recoveredBlock16Block359Block368Block381PC := 399.
        ].
        recoveredBlock16Block359Block368Block381Step = 399 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack4 := recoveredBlock16Block359Arg3.
            recoveredBlock16Block359Block368Block381PC := 402.
        ].
        recoveredBlock16Block359Block368Block381Step = 402 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack4 := (recoveredBlock16Block359Block368Block381Stack4) y.
            recoveredBlock16Block359Block368Block381PC := 404.
        ].
        recoveredBlock16Block359Block368Block381Step = 404 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack5 := ReturnParameter.
            recoveredBlock16Block359Block368Block381PC := 406.
        ].
        recoveredBlock16Block359Block368Block381Step = 406 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack5 := (recoveredBlock16Block359Block368Block381Stack5) new.
            recoveredBlock16Block359Block368Block381PC := 408.
        ].
        recoveredBlock16Block359Block368Block381Step = 408 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack6 := recoveredBlock16Block359Block368Block381Stack5.
            recoveredBlock16Block359Block368Block381PC := 409.
        ].
        recoveredBlock16Block359Block368Block381Step = 409 ifTrue: [
            recoveredBlock16Block359Block368Block381Local1 := recoveredBlock16Block359Block368Block381Stack6.
            recoveredBlock16Block359Block368Block381PC := 410.
        ].
        recoveredBlock16Block359Block368Block381Step = 410 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack6 := ReturnParameter.
            recoveredBlock16Block359Block368Block381PC := 412.
        ].
        recoveredBlock16Block359Block368Block381Step = 412 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack6 := (recoveredBlock16Block359Block368Block381Stack6) new.
            recoveredBlock16Block359Block368Block381PC := 414.
        ].
        recoveredBlock16Block359Block368Block381Step = 414 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack7 := ReturnParameter.
            recoveredBlock16Block359Block368Block381PC := 416.
        ].
        recoveredBlock16Block359Block368Block381Step = 416 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack7 := (recoveredBlock16Block359Block368Block381Stack7) null.
            recoveredBlock16Block359Block368Block381PC := 418.
        ].
        recoveredBlock16Block359Block368Block381Step = 418 ifTrue: [
            (recoveredBlock16Block359Block368Block381Stack1) translateCoordinates: (recoveredBlock16Block359Block368Block381Stack2) srcX: (recoveredBlock16Block359Block368Block381Stack3) srcY: (recoveredBlock16Block359Block368Block381Stack4) destXReturn: (recoveredBlock16Block359Block368Block381Stack5) destYReturn: (recoveredBlock16Block359Block368Block381Stack6) childReturn: (recoveredBlock16Block359Block368Block381Stack7).
            recoveredBlock16Block359Block368Block381PC := 421.
        ].
        recoveredBlock16Block359Block368Block381Step = 421 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack1 := nil.
            recoveredBlock16Block359Block368Block381PC := 422.
        ].
        recoveredBlock16Block359Block368Block381Step = 422 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := recoveredBlock16Block359Block368Block381Local1.
            recoveredBlock16Block359Block368Block381PC := 423.
        ].
        recoveredBlock16Block359Block368Block381Step = 423 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := (recoveredBlock16Block359Block368Block381Stack2) value.
            recoveredBlock16Block359Block368Block381PC := 425.
        ].
        recoveredBlock16Block359Block368Block381Step = 425 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack3 := 0.
            recoveredBlock16Block359Block368Block381PC := 427.
        ].
        recoveredBlock16Block359Block368Block381Step = 427 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := (recoveredBlock16Block359Block368Block381Stack2) < (recoveredBlock16Block359Block368Block381Stack3).
            recoveredBlock16Block359Block368Block381PC := 428.
        ].
        recoveredBlock16Block359Block368Block381Step = 428 ifTrue: [
            (recoveredBlock16Block359Block368Block381Stack2) ifTrue: [recoveredBlock16Block359Block368Block381PC := 444] ifFalse: [recoveredBlock16Block359Block368Block381PC := 432].
        ].
        recoveredBlock16Block359Block368Block381Step = 432 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := recoveredBlock16Block359Block368Block381Local1.
            recoveredBlock16Block359Block368Block381PC := 433.
        ].
        recoveredBlock16Block359Block368Block381Step = 433 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := (recoveredBlock16Block359Block368Block381Stack2) value.
            recoveredBlock16Block359Block368Block381PC := 435.
        ].
        recoveredBlock16Block359Block368Block381Step = 435 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack3 := recoveredBlock16Block359Block368Arg1.
            recoveredBlock16Block359Block368Block381PC := 438.
        ].
        recoveredBlock16Block359Block368Block381Step = 438 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack3 := (recoveredBlock16Block359Block368Block381Stack3) width.
            recoveredBlock16Block359Block368Block381PC := 440.
        ].
        recoveredBlock16Block359Block368Block381Step = 440 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack2 := (recoveredBlock16Block359Block368Block381Stack2) > (recoveredBlock16Block359Block368Block381Stack3).
            recoveredBlock16Block359Block368Block381PC := 441.
        ].
        recoveredBlock16Block359Block368Block381Step = 441 ifTrue: [
            (recoveredBlock16Block359Block368Block381Stack2) ifTrue: [recoveredBlock16Block359Block368Block381PC := 444] ifFalse: [recoveredBlock16Block359Block368Block381PC := 448].
        ].
        recoveredBlock16Block359Block368Block381Step = 444 ifTrue: [
            recoveredBlock16Block359Block368Block381PC := 445.
        ].
        recoveredBlock16Block359Block368Block381Step = 445 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack1 := self.
            recoveredBlock16Block359Block368Block381PC := 446.
        ].
        recoveredBlock16Block359Block368Block381Step = 446 ifTrue: [
            recoveredBlock16Block359Block368Block381Stack1 := (recoveredBlock16Block359Block368Block381Stack1) stsHoverHelpWindowHide.
            recoveredBlock16Block359Block368Block381PC := 448.
        ].
        recoveredBlock16Block359Block368Block381Step = 448 ifTrue: [
            recoveredBlock16Block359Block368Block381Result := recoveredBlock16Block359Block368Block381Stack1.
            recoveredBlock16Block359Block368Block381Done := true.
        ].
    ].
    recoveredBlock16Block359Block368Block381Result
].
    recoveredBlock16Block359Block368Value4 := (recoveredBlock16Block359Block368Value2) ifNotNil: (recoveredBlock16Block359Block368Value3).
    recoveredBlock16Block359Block368Value4
].
    recoveredBlock16Block359Value2 := (recoveredBlock16Block359Value0) ifNotNil: (recoveredBlock16Block359Value1).
    recoveredBlock16Block359Value2
].
            recoveredBlock16PC := 455.
        ].
        recoveredBlock16Step = 455 ifTrue: [
            recoveredBlock16Stack4 := 'value:value:value:'.
            recoveredBlock16PC := 457.
        ].
        recoveredBlock16Step = 457 ifTrue: [
            recoveredBlock16Stack5 := nil.
            recoveredBlock16PC := 458.
        ].
        recoveredBlock16Step = 458 ifTrue: [
            (recoveredBlock16Stack1) addEventHandler: (recoveredBlock16Stack2) receiver: (recoveredBlock16Stack3) selector: (recoveredBlock16Stack4) clientData: (recoveredBlock16Stack5).
            recoveredBlock16PC := 461.
        ].
        recoveredBlock16Step = 461 ifTrue: [
            (recoveredBlock16Stack0) manageChild.
            recoveredBlock16PC := 463.
        ].
        recoveredBlock16Step = 463 ifTrue: [
            recoveredBlock16Stack0 := recoveredBlock16Local1.
            recoveredBlock16PC := 464.
        ].
        recoveredBlock16Step = 464 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) osWidget.
            recoveredBlock16PC := 466.
        ].
        recoveredBlock16Step = 466 ifTrue: [
            (recoveredBlock16Stack0) setTooltipFont.
            recoveredBlock16PC := 468.
        ].
        recoveredBlock16Step = 468 ifTrue: [
            recoveredBlock16Stack0 := recoveredBlock16Local2.
            recoveredBlock16PC := 469.
        ].
        recoveredBlock16Step = 469 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack0.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyAt: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

