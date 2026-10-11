"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d464; bytecode file offset 0x934580"
!SGImageDialog methodsFor: 'recovered'!
canWrite
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) imageDB.
    recoveredValue1 := (recoveredValue0) modifiable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200430cc; bytecode file offset 0x9451f8"
!SGImageDialog methodsFor: 'recovered'!
drawPane
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aRBDrawingArea1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200438dc; bytecode file offset 0x9451f8"
!SGImageDialog methodsFor: 'recovered'!
mainForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mainForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043c6c; bytecode file offset 0x9451f8"
!SGImageDialog methodsFor: 'recovered'!
mainWindow
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mainWin').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200471fc; bytecode file offset 0x9451f8"
!SGImageDialog methodsFor: 'recovered'!
xSpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xSpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004891c; bytecode file offset 0x9451f8"
!SGImageDialog methodsFor: 'recovered'!
ySpinButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ySpinButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200507bc; bytecode file offset 0x94d080"
!SGImageDialog methodsFor: 'recovered'!
idleTimeShutdown
    (self) ok.
    ^true
! !

"ASDBase.ic method 0x2005a524; bytecode file offset 0x957a6c"
!SGImageDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005a920; bytecode file offset 0x957a6c"
!SGImageDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005abc0; bytecode file offset 0x957a6c"
!SGImageDialog methodsFor: 'recovered'!
drawPaneExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateGraphics.
    ^self
! !

"ASDBase.ic method 0x200700a8; bytecode file offset 0x96cb7c"
!SGImageDialog methodsFor: 'recovered'!
imageDB
    | recoveredValue0 |
    recoveredValue0 := imageDB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200704f4; bytecode file offset 0x96ce40"
!SGImageDialog methodsFor: 'recovered'!
image
    | recoveredValue0 |
    recoveredValue0 := image.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070778; bytecode file offset 0x96d06c"
!SGImageDialog methodsFor: 'recovered'!
originalImage
    | recoveredValue0 |
    recoveredValue0 := originalImage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6760; bytecode file offset 0x9c3164"
!SGImageDialog methodsFor: 'recovered'!
imageDB: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imageDB := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b34; bytecode file offset 0x9c3470"
!SGImageDialog methodsFor: 'recovered'!
image: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    image := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6cf8; bytecode file offset 0x9c36ec"
!SGImageDialog methodsFor: 'recovered'!
originalImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalImage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d0a64; bytecode file offset 0x9cd3a0"
!SGImageDialog methodsFor: 'recovered'!
loadImageAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_56485').
    recoveredValue1 := (self) imageDB.
    recoveredValue2 := (recoveredValue1) modifiable.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e1bc4; bytecode file offset 0x9de4fc"
!SGImageDialog methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_2008404900').
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200eca00; bytecode file offset 0x9e92c4"
!SGImageDialog methodsFor: 'recovered'!
resetScalingActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) originalImage.
    recoveredValue1 := (recoveredValue0) deepCopy.
    (self) image: (recoveredValue1).
    (self) updateGraphics.
    ^self
! !

"ASDBase.ic method 0x201a3dc0; bytecode file offset 0xaa0694"
!SGImageDialog methodsFor: 'recovered'!
promptForFileNameExt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBFileSelectionPrompter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) title: ('Image file').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) searchMask: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) setAppendDefaultExtension.
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) setCheckOverwrite.
    recoveredValue7 := (recoveredValue1) prompt.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201c9d10; bytecode file offset 0xac65e4"
!SGImageDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) editorName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ' for: '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) imageDB.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
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

"ASDBase.ic method 0x201d4f7c; bytecode file offset 0xad1888"
!SGImageDialog methodsFor: 'recovered'!
menuImageExportJPG
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
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
            recoveredStack1 := '*.jpg'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameExt: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CgJPEGFileFormat.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) exportImageClass: (recoveredStack1) intoFile: (recoveredStack2).
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

"ASDBase.ic method 0x201d4f9c; bytecode file offset 0xad1888"
!SGImageDialog methodsFor: 'recovered'!
menuImageExportTIF
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
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
            recoveredStack1 := '*.tif'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameExt: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CgTIFFFileFormat.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) exportImageClass: (recoveredStack1) intoFile: (recoveredStack2).
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

"ASDBase.ic method 0x201d4fbc; bytecode file offset 0xad1888"
!SGImageDialog methodsFor: 'recovered'!
menuImageExportWindowsBMP
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
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
            recoveredStack1 := '*.bmp'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameExt: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CgWinBMPFileFormat.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) exportImageClass: (recoveredStack1) intoFile: (recoveredStack2).
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

"ASDBase.ic method 0x201de1bc; bytecode file offset 0xadaa90"
!SGImageDialog methodsFor: 'recovered'!
initMenus
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) createMenuBar.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) mainWindow.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) mainWindow.
    recoveredValue4 := (recoveredValue2) createMenuBarFor: (recoveredValue3) owner: (self).
    recoveredValue5 := (recoveredValue4) manageChild.
    (recoveredValue1) menuBar: (recoveredValue5).
    recoveredValue6 := (self) drawPane.
    recoveredValue7 := (self) createImageMenu.
    (recoveredValue6) menu: (recoveredValue7) owner: (self).
    ^self
! !

"ASDBase.ic method 0x201f2614; bytecode file offset 0xaeeef0"
!SGImageDialog methodsFor: 'recovered'!
checkImage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) shouldShowPostscriptExportWarning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) postscriptExportWarningMessage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) imageDB.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
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

"ASDBase.ic method 0x20260014; bytecode file offset 0xb5c8e0"
!SGImageDialog methodsFor: 'recovered'!
updateImageSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImage.
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSpinButton.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySpinButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) updateGraphics.
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

"ASDBase.ic method 0x2027549c; bytecode file offset 0xb71d7c"
!SGImageDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_56486'.
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
            recoveredStack0 := (recoveredStack0) canWrite.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'call_2008404900'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) updateImageSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) changed.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202896f0; bytecode file offset 0xb85fc8"
!SGImageDialog methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenuBar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) createImageMenu.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) addMenu: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'EHI_81124'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMInstalled.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) scmCreateMenu.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) addMenu: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b95fc; bytecode file offset 0xbb5f08"
!SGImageDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) at: ('Alt-o') put: ('ok').
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) at: ('Alt-c') put: ('cancel').
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (self) shell.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x202e4b2c; bytecode file offset 0xbe1418"
!SGImageDialog methodsFor: 'recovered'!
createImageMenu
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
            recoveredStack3 := '~Icon'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuImageImport'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Import'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) loadImageAllowed.
    recoveredBlock18Value0
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'createImageExportMenu'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := '~Export'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) addSubMenu: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
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

"ASDBase.ic method 0x202fed18; bytecode file offset 0xbfb63c"
!SGImageDialog methodsFor: 'recovered'!
createImageExportMenu
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
            recoveredStack3 := 'menuImageExportWindowsBMP'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 'As ~BMP'.
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
            recoveredStack3 := 'menuImageExportJPG'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := 'As ~JPG'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'menuImageExportTIF'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := 'As ~TIF'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20313ff4; bytecode file offset 0xc108cc"
!SGImageDialog methodsFor: 'recovered'!
updateSizeWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSpinButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) imageDB.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) minimum: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySpinButton.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) imageDB.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) minimum: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSpinButton.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySpinButton.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
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

"ASDBase.ic method 0x20325834; bytecode file offset 0xc22124"
!SGImageDialog methodsFor: 'recovered'!
ySpinButtonvalueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImage.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'call_2008404900'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) scaledTo: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) updateImageSize.
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

"ASDBase.ic method 0x203258b4; bytecode file offset 0xc221a4"
!SGImageDialog methodsFor: 'recovered'!
xSpinButtonvalueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImage.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'call_2008404900'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) image.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) scaledTo: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) updateImageSize.
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

"ASDBase.ic method 0x20361810; bytecode file offset 0xc5e118"
!SGImageDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) mainForm.
    (recoveredValue0) updateLabelsForForm: (recoveredValue1).
    recoveredValue2 := SGUserInterfaceSettings.
    recoveredValue3 := (self) xSpinButton.
    (recoveredValue2) updateLabelFont: (recoveredValue3).
    recoveredValue4 := SGUserInterfaceSettings.
    recoveredValue5 := (self) ySpinButton.
    (recoveredValue4) updateLabelFont: (recoveredValue5).
    recoveredValue6 := (self) drawPane.
    recoveredValue7 := XmNexposeCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('drawPaneExpose:clientData:callData:') clientData: (nil).
    recoveredValue8 := ('Kk') == ('Call56486').
    recoveredValue9 := (self) widgetAt: ('ok').
    recoveredValue10 := (self) canWrite.
    (recoveredValue9) sensitive: (recoveredValue10).
    (self) installActionKeys.
    (self) updateWindowLabel.
    (self) initMenus.
    (self) grayBackground.
    (self) updateSizeWidgets.
    ^self
! !

"ASDBase.ic method 0x2037df94; bytecode file offset 0xc7a87c"
!SGImageDialog methodsFor: 'recovered'!
updateGraphics
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_2008404900'.
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
            recoveredStack0 := (recoveredStack0) drawPane.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) drawBackground.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageDB.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
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
            recoveredStack0 := (recoveredStack0) drawPane.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawPane.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) image.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) drawPane.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) boundingBox.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) center.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045c4f4; bytecode file offset 0xd58e00"
!SGImageDialog methodsFor: 'recovered'!
menuImageImport
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_3000906'.
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
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Image file'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptGraphicsFileTitle: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) imageDB.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := recoveredLocal1.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) replaceSelectedIconWith: (recoveredBlock26Stack3).
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            (recoveredBlock26Stack2 ~~ nil) ifTrue: [recoveredBlock26PC := 60] ifFalse: [recoveredBlock26PC := 44].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := RBUserInfo.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack2 := 'Wrong format in '.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack3 := recoveredLocal1.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) , (recoveredBlock26Stack3).
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) message: (recoveredBlock26Stack2).
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            (recoveredBlock26Stack1) prompt.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            ^recoveredBlock26Stack1
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := RBUserInfo.
    recoveredBlock63Value1 := recoveredLocal1.
    recoveredBlock63Value2 := ('Error (maybe wrong format) while reading ') , (recoveredBlock63Value1).
    recoveredBlock63Value3 := (recoveredBlock63Value0) message: (recoveredBlock63Value2).
    (recoveredBlock63Value3) prompt.
    ^nil
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageDB.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) checkImage.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageDB.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) originalImage: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) updateGraphics.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) updateSizeWidgets.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20671e68; bytecode file offset 0xf6e894"
!SGImageDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block281270fcArg1 | 
    | block281270fcValue0 block281270fcValue1 block281270fcValue2 block281270fcValue3 block281270fcValue4 block281270fcValue5 block281270fcValue6 block281270fcValue7 block281270fcValue8 block281270fcValue9 block281270fcValue10 block281270fcValue11 |
    block281270fcValue0 := block281270fcArg1.
    block281270fcValue1 := block281270fcValue0.
    block281270fcValue2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block281270fcValue1) mwmInputMode: (block281270fcValue2).
    block281270fcValue3 := block281270fcValue0.
    (block281270fcValue3) title: ('Image').
    block281270fcValue4 := block281270fcValue0.
    block281270fcValue5 := MWMDECORALL.
    block281270fcValue6 := MWMDECORMINIMIZE.
    block281270fcValue7 := (block281270fcValue5) | (block281270fcValue6).
    block281270fcValue8 := MWMDECORMAXIMIZE.
    block281270fcValue9 := (block281270fcValue7) | (block281270fcValue8).
    (block281270fcValue4) mwmDecorations: (block281270fcValue9).
    block281270fcValue10 := block281270fcValue0.
    (block281270fcValue10) height: (288).
    block281270fcValue11 := (block281270fcValue0) width: (456).
    block281270fcValue11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'mainWin'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'mainWin'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block28127120Arg1 | 
    | block28127120Value0 block28127120Value1 block28127120Value2 block28127120Value3 |
    block28127120Value0 := block28127120Arg1.
    block28127120Value1 := block28127120Value0.
    (block28127120Value1) labelString: ('&Cancel').
    block28127120Value2 := block28127120Value0.
    (block28127120Value2) height: (24).
    block28127120Value3 := (block28127120Value0) width: (80).
    block28127120Value3
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := [:block28127144Arg1 | 
    | block28127144Value0 block28127144Value1 block28127144Value2 block28127144Value3 |
    block28127144Value0 := block28127144Arg1.
    block28127144Value1 := block28127144Value0.
    (block28127144Value1) labelString: ('&OK').
    block28127144Value2 := block28127144Value0.
    (block28127144Value2) height: (24).
    block28127144Value3 := (block28127144Value0) width: (80).
    block28127144Value3
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'aRBDrawingArea1'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := [:block28127168Arg1 | 
    | block28127168Value0 block28127168Value1 block28127168Value2 block28127168Value3 |
    block28127168Value0 := block28127168Arg1.
    block28127168Value1 := block28127168Value0.
    (block28127168Value1) borderWidth: (1).
    block28127168Value2 := block28127168Value0.
    (block28127168Value2) height: (100).
    block28127168Value3 := (block28127168Value0) width: (100).
    block28127168Value3
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 'aRBDrawingArea1'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := [:block2812718cArg1 | 
    | block2812718cValue0 block2812718cValue1 block2812718cValue2 block2812718cValue3 block2812718cValue4 block2812718cValue5 |
    block2812718cValue0 := block2812718cArg1.
    block2812718cValue1 := block2812718cValue0.
    block2812718cValue2 := XmALIGNMENTBEGINNING.
    (block2812718cValue1) alignment: (block2812718cValue2).
    block2812718cValue3 := block2812718cValue0.
    (block2812718cValue3) labelString: ('Size x (px):').
    block2812718cValue4 := block2812718cValue0.
    (block2812718cValue4) height: (24).
    block2812718cValue5 := (block2812718cValue0) width: (80).
    block2812718cValue5
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := [:block281271b0Arg1 | 
    | block281271b0Value0 block281271b0Value1 block281271b0Value2 block281271b0Value3 block281271b0Value4 block281271b0Value5 |
    block281271b0Value0 := block281271b0Arg1.
    block281271b0Value1 := block281271b0Value0.
    block281271b0Value2 := XmALIGNMENTBEGINNING.
    (block281271b0Value1) alignment: (block281271b0Value2).
    block281271b0Value3 := block281271b0Value0.
    (block281271b0Value3) labelString: ('Size y (px):').
    block281271b0Value4 := block281271b0Value0.
    (block281271b0Value4) height: (24).
    block281271b0Value5 := (block281271b0Value0) width: (80).
    block281271b0Value5
].
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := 'xSpinButton'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := [:block281271d4Arg1 | 
    | block281271d4Value0 block281271d4Value1 block281271d4Value2 block281271d4Value3 block281271d4Value4 block281271d4Value5 |
    block281271d4Value0 := block281271d4Arg1.
    block281271d4Value1 := block281271d4Value0.
    (block281271d4Value1) maximum: (2000).
    block281271d4Value2 := block281271d4Value0.
    (block281271d4Value2) editable: (true).
    block281271d4Value3 := block281271d4Value0.
    (block281271d4Value3) minimum: (0).
    block281271d4Value4 := block281271d4Value0.
    (block281271d4Value4) height: (24).
    block281271d4Value5 := (block281271d4Value0) width: (80).
    block281271d4Value5
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := 'xSpinButton'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := 'ySpinButton'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := [:block281271f8Arg1 | 
    | block281271f8Value0 block281271f8Value1 block281271f8Value2 block281271f8Value3 block281271f8Value4 block281271f8Value5 |
    block281271f8Value0 := block281271f8Arg1.
    block281271f8Value1 := block281271f8Value0.
    (block281271f8Value1) maximum: (2000).
    block281271f8Value2 := block281271f8Value0.
    (block281271f8Value2) editable: (true).
    block281271f8Value3 := block281271f8Value0.
    (block281271f8Value3) minimum: (0).
    block281271f8Value4 := block281271f8Value0.
    (block281271f8Value4) height: (24).
    block281271f8Value5 := (block281271f8Value0) width: (80).
    block281271f8Value5
].
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := 'ySpinButton'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := 'resetScaling'.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack3 := [:block2812721cArg1 | 
    | block2812721cValue0 block2812721cValue1 block2812721cValue2 block2812721cValue3 |
    block2812721cValue0 := block2812721cArg1.
    block2812721cValue1 := block2812721cValue0.
    (block2812721cValue1) labelString: ('&Reset Scaling').
    block2812721cValue2 := block2812721cValue0.
    (block2812721cValue2) height: (24).
    block2812721cValue3 := (block2812721cValue0) width: (160).
    block2812721cValue3
].
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := 'resetScaling'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := [:recoveredBlock524Arg1 | 
    | recoveredBlock524Value0 recoveredBlock524Value1 recoveredBlock524Value2 |
    recoveredBlock524Value0 := recoveredBlock524Arg1.
    recoveredBlock524Value1 := recoveredLocal10.
    recoveredBlock524Value2 := (recoveredBlock524Value0) workWindow: (recoveredBlock524Value1).
    recoveredBlock524Value2
].
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack2 := [:block28127240Arg1 | 
    | block28127240Value0 block28127240Value1 block28127240Value2 block28127240Value3 block28127240Value4 block28127240Value5 block28127240Value6 |
    block28127240Value0 := block28127240Arg1.
    block28127240Value1 := block28127240Value0.
    block28127240Value2 := XmATTACHFORM.
    (block28127240Value1) rightAttachment: (block28127240Value2).
    block28127240Value3 := block28127240Value0.
    (block28127240Value3) rightOffset: (5).
    block28127240Value4 := block28127240Value0.
    block28127240Value5 := XmATTACHFORM.
    (block28127240Value4) bottomAttachment: (block28127240Value5).
    block28127240Value6 := (block28127240Value0) bottomOffset: (5).
    block28127240Value6
].
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack2 := [:recoveredBlock596Arg1 | 
    | recoveredBlock596Value0 recoveredBlock596Value1 recoveredBlock596Value2 recoveredBlock596Value3 recoveredBlock596Value4 recoveredBlock596Value5 recoveredBlock596Value6 recoveredBlock596Value7 recoveredBlock596Value8 |
    recoveredBlock596Value0 := recoveredBlock596Arg1.
    recoveredBlock596Value1 := recoveredBlock596Value0.
    recoveredBlock596Value2 := XmATTACHWIDGET.
    (recoveredBlock596Value1) rightAttachment: (recoveredBlock596Value2).
    recoveredBlock596Value3 := recoveredBlock596Value0.
    recoveredBlock596Value4 := recoveredLocal9.
    (recoveredBlock596Value3) rightWidget: (recoveredBlock596Value4).
    recoveredBlock596Value5 := recoveredBlock596Value0.
    (recoveredBlock596Value5) rightOffset: (5).
    recoveredBlock596Value6 := recoveredBlock596Value0.
    recoveredBlock596Value7 := XmATTACHFORM.
    (recoveredBlock596Value6) bottomAttachment: (recoveredBlock596Value7).
    recoveredBlock596Value8 := (recoveredBlock596Value0) bottomOffset: (5).
    recoveredBlock596Value8
].
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := [:recoveredBlock650Arg1 | 
    | recoveredBlock650Value0 recoveredBlock650Value1 recoveredBlock650Value2 recoveredBlock650Value3 recoveredBlock650Value4 recoveredBlock650Value5 recoveredBlock650Value6 recoveredBlock650Value7 recoveredBlock650Value8 recoveredBlock650Value9 recoveredBlock650Value10 recoveredBlock650Value11 recoveredBlock650Value12 recoveredBlock650Value13 recoveredBlock650Value14 |
    recoveredBlock650Value0 := recoveredBlock650Arg1.
    recoveredBlock650Value1 := recoveredBlock650Value0.
    recoveredBlock650Value2 := XmATTACHWIDGET.
    (recoveredBlock650Value1) bottomAttachment: (recoveredBlock650Value2).
    recoveredBlock650Value3 := recoveredBlock650Value0.
    recoveredBlock650Value4 := recoveredLocal5.
    (recoveredBlock650Value3) bottomWidget: (recoveredBlock650Value4).
    recoveredBlock650Value5 := recoveredBlock650Value0.
    (recoveredBlock650Value5) bottomOffset: (5).
    recoveredBlock650Value6 := recoveredBlock650Value0.
    recoveredBlock650Value7 := XmATTACHFORM.
    (recoveredBlock650Value6) topAttachment: (recoveredBlock650Value7).
    recoveredBlock650Value8 := recoveredBlock650Value0.
    (recoveredBlock650Value8) topOffset: (5).
    recoveredBlock650Value9 := recoveredBlock650Value0.
    recoveredBlock650Value10 := XmATTACHFORM.
    (recoveredBlock650Value9) leftAttachment: (recoveredBlock650Value10).
    recoveredBlock650Value11 := recoveredBlock650Value0.
    (recoveredBlock650Value11) leftOffset: (5).
    recoveredBlock650Value12 := recoveredBlock650Value0.
    recoveredBlock650Value13 := XmATTACHFORM.
    (recoveredBlock650Value12) rightAttachment: (recoveredBlock650Value13).
    recoveredBlock650Value14 := (recoveredBlock650Value0) rightOffset: (5).
    recoveredBlock650Value14
].
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := [:recoveredBlock732Arg1 | 
    | recoveredBlock732Value0 recoveredBlock732Value1 recoveredBlock732Value2 recoveredBlock732Value3 recoveredBlock732Value4 recoveredBlock732Value5 recoveredBlock732Value6 recoveredBlock732Value7 recoveredBlock732Value8 |
    recoveredBlock732Value0 := recoveredBlock732Arg1.
    recoveredBlock732Value1 := recoveredBlock732Value0.
    recoveredBlock732Value2 := XmATTACHFORM.
    (recoveredBlock732Value1) leftAttachment: (recoveredBlock732Value2).
    recoveredBlock732Value3 := recoveredBlock732Value0.
    (recoveredBlock732Value3) leftOffset: (5).
    recoveredBlock732Value4 := recoveredBlock732Value0.
    recoveredBlock732Value5 := XmATTACHWIDGET.
    (recoveredBlock732Value4) bottomAttachment: (recoveredBlock732Value5).
    recoveredBlock732Value6 := recoveredBlock732Value0.
    recoveredBlock732Value7 := recoveredLocal9.
    (recoveredBlock732Value6) bottomWidget: (recoveredBlock732Value7).
    recoveredBlock732Value8 := (recoveredBlock732Value0) bottomOffset: (10).
    recoveredBlock732Value8
].
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack2 := [:recoveredBlock786Arg1 | 
    | recoveredBlock786Value0 recoveredBlock786Value1 recoveredBlock786Value2 recoveredBlock786Value3 recoveredBlock786Value4 recoveredBlock786Value5 recoveredBlock786Value6 recoveredBlock786Value7 recoveredBlock786Value8 recoveredBlock786Value9 recoveredBlock786Value10 |
    recoveredBlock786Value0 := recoveredBlock786Arg1.
    recoveredBlock786Value1 := recoveredBlock786Value0.
    recoveredBlock786Value2 := XmATTACHWIDGET.
    (recoveredBlock786Value1) leftAttachment: (recoveredBlock786Value2).
    recoveredBlock786Value3 := recoveredBlock786Value0.
    recoveredBlock786Value4 := recoveredLocal5.
    (recoveredBlock786Value3) leftWidget: (recoveredBlock786Value4).
    recoveredBlock786Value5 := recoveredBlock786Value0.
    (recoveredBlock786Value5) leftOffset: (5).
    recoveredBlock786Value6 := recoveredBlock786Value0.
    recoveredBlock786Value7 := XmATTACHWIDGET.
    (recoveredBlock786Value6) bottomAttachment: (recoveredBlock786Value7).
    recoveredBlock786Value8 := recoveredBlock786Value0.
    recoveredBlock786Value9 := recoveredLocal9.
    (recoveredBlock786Value8) bottomWidget: (recoveredBlock786Value9).
    recoveredBlock786Value10 := (recoveredBlock786Value0) bottomOffset: (10).
    recoveredBlock786Value10
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack2 := [:recoveredBlock848Arg1 | 
    | recoveredBlock848Value0 recoveredBlock848Value1 recoveredBlock848Value2 recoveredBlock848Value3 recoveredBlock848Value4 recoveredBlock848Value5 recoveredBlock848Value6 recoveredBlock848Value7 recoveredBlock848Value8 recoveredBlock848Value9 recoveredBlock848Value10 |
    recoveredBlock848Value0 := recoveredBlock848Arg1.
    recoveredBlock848Value1 := recoveredBlock848Value0.
    recoveredBlock848Value2 := XmATTACHWIDGET.
    (recoveredBlock848Value1) leftAttachment: (recoveredBlock848Value2).
    recoveredBlock848Value3 := recoveredBlock848Value0.
    recoveredBlock848Value4 := recoveredLocal3.
    (recoveredBlock848Value3) leftWidget: (recoveredBlock848Value4).
    recoveredBlock848Value5 := recoveredBlock848Value0.
    (recoveredBlock848Value5) leftOffset: (20).
    recoveredBlock848Value6 := recoveredBlock848Value0.
    recoveredBlock848Value7 := XmATTACHWIDGET.
    (recoveredBlock848Value6) bottomAttachment: (recoveredBlock848Value7).
    recoveredBlock848Value8 := recoveredBlock848Value0.
    recoveredBlock848Value9 := recoveredLocal9.
    (recoveredBlock848Value8) bottomWidget: (recoveredBlock848Value9).
    recoveredBlock848Value10 := (recoveredBlock848Value0) bottomOffset: (10).
    recoveredBlock848Value10
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack2 := [:recoveredBlock910Arg1 | 
    | recoveredBlock910Value0 recoveredBlock910Value1 recoveredBlock910Value2 recoveredBlock910Value3 recoveredBlock910Value4 recoveredBlock910Value5 recoveredBlock910Value6 recoveredBlock910Value7 recoveredBlock910Value8 recoveredBlock910Value9 recoveredBlock910Value10 |
    recoveredBlock910Value0 := recoveredBlock910Arg1.
    recoveredBlock910Value1 := recoveredBlock910Value0.
    recoveredBlock910Value2 := XmATTACHWIDGET.
    (recoveredBlock910Value1) leftAttachment: (recoveredBlock910Value2).
    recoveredBlock910Value3 := recoveredBlock910Value0.
    recoveredBlock910Value4 := recoveredLocal4.
    (recoveredBlock910Value3) leftWidget: (recoveredBlock910Value4).
    recoveredBlock910Value5 := recoveredBlock910Value0.
    (recoveredBlock910Value5) leftOffset: (5).
    recoveredBlock910Value6 := recoveredBlock910Value0.
    recoveredBlock910Value7 := XmATTACHWIDGET.
    (recoveredBlock910Value6) bottomAttachment: (recoveredBlock910Value7).
    recoveredBlock910Value8 := recoveredBlock910Value0.
    recoveredBlock910Value9 := recoveredLocal9.
    (recoveredBlock910Value8) bottomWidget: (recoveredBlock910Value9).
    recoveredBlock910Value10 := (recoveredBlock910Value0) bottomOffset: (10).
    recoveredBlock910Value10
].
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := [:recoveredBlock972Arg1 | 
    | recoveredBlock972Value0 recoveredBlock972Value1 recoveredBlock972Value2 recoveredBlock972Value3 recoveredBlock972Value4 recoveredBlock972Value5 recoveredBlock972Value6 recoveredBlock972Value7 recoveredBlock972Value8 recoveredBlock972Value9 recoveredBlock972Value10 |
    recoveredBlock972Value0 := recoveredBlock972Arg1.
    recoveredBlock972Value1 := recoveredBlock972Value0.
    recoveredBlock972Value2 := XmATTACHWIDGET.
    (recoveredBlock972Value1) leftAttachment: (recoveredBlock972Value2).
    recoveredBlock972Value3 := recoveredBlock972Value0.
    recoveredBlock972Value4 := recoveredLocal2.
    (recoveredBlock972Value3) leftWidget: (recoveredBlock972Value4).
    recoveredBlock972Value5 := recoveredBlock972Value0.
    (recoveredBlock972Value5) leftOffset: (20).
    recoveredBlock972Value6 := recoveredBlock972Value0.
    recoveredBlock972Value7 := XmATTACHWIDGET.
    (recoveredBlock972Value6) bottomAttachment: (recoveredBlock972Value7).
    recoveredBlock972Value8 := recoveredBlock972Value0.
    recoveredBlock972Value9 := recoveredLocal9.
    (recoveredBlock972Value8) bottomWidget: (recoveredBlock972Value9).
    recoveredBlock972Value10 := (recoveredBlock972Value0) bottomOffset: (10).
    recoveredBlock972Value10
].
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            recoveredStack4 := 'resetScalingActivate:clientData:callData:'.
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack4 := 'xSpinButtonvalueChangedCallback:clientData:callData:'.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack4 := 'ySpinButtonvalueChangedCallback:clientData:callData:'.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

