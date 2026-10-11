"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000d10; bytecode file offset 0x8ffcfc"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
updateFocusImage
    ^self
! !

"ASDBase.ic method 0x2002dcc4; bytecode file offset 0x934580"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
drawingWindow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) window.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004dfe8; bytecode file offset 0x94d048"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
updateHasSeparator
    (self) calculateSizes.
    ^self
! !

"ASDBase.ic method 0x2004e294; bytecode file offset 0x94d048"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
updateLabelString
    (self) calculateSizes.
    ^self
! !

"ASDBase.ic method 0x2004e528; bytecode file offset 0x94d048"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
updateImageCropFrame
    (self) calculateSizes.
    ^self
! !

"ASDBase.ic method 0x20050370; bytecode file offset 0x94d048"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
updateFontList
    (self) calculateSizes.
    ^self
! !

"ASDBase.ic method 0x2005ce1c; bytecode file offset 0x9599ac"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
isWidgetUnderPointerFriendly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwBasicWidget.
    recoveredValue1 := (recoveredValue0) widgetUnderPointer.
    recoveredValue2 := (self) isWidgetFriendly: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006d834; bytecode file offset 0x96a390"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
hasSeparator
    | recoveredValue0 |
    recoveredValue0 := xmNhasSeparator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd18; bytecode file offset 0x96a9dc"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
labelString
    | recoveredValue0 |
    recoveredValue0 := xmNlabelString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e414; bytecode file offset 0x96af48"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
labelLines
    | recoveredValue0 |
    recoveredValue0 := xmNlabelLines.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e720; bytecode file offset 0x96b41c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
image
    | recoveredValue0 |
    recoveredValue0 := xmNimage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ed7c; bytecode file offset 0x96b8a0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
focusImage
    | recoveredValue0 |
    recoveredValue0 := xmNfocusImage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f058; bytecode file offset 0x96bc1c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
imageCropFrame
    | recoveredValue0 |
    recoveredValue0 := xmNimageCropFrame.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f838; bytecode file offset 0x96c1f4"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
mnemonic
    | recoveredValue0 |
    recoveredValue0 := xmMnemonic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fd58; bytecode file offset 0x96c6ac"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
disabledImage
    | recoveredValue0 |
    recoveredValue0 := disabledImage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006febc; bytecode file offset 0x96c850"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
timeout
    | recoveredValue0 |
    recoveredValue0 := timeout.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070230; bytecode file offset 0x96cb7c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
friendlyWidgets
    | recoveredValue0 |
    recoveredValue0 := friendlyWidgets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070574; bytecode file offset 0x96ce40"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
tobHoverHelpBlock
    | recoveredValue0 |
    recoveredValue0 := tobHoverHelpBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008529c; bytecode file offset 0x981ca4"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
setTextFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) fontList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200916a0; bytecode file offset 0x98e0cc"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
initializeOnFirstExpose
    super initializeOnFirstExpose.
    ^self
! !

"ASDBase.ic method 0x2009ca48; bytecode file offset 0x999628"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
removeAllFriendlyWidgets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    (self) friendlyWidgets: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a8c94; bytecode file offset 0x9a554c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNfontList := recoveredValue0.
    (self) updateFontList.
    ^self
! !

"ASDBase.ic method 0x200bd2e0; bytecode file offset 0x9b9ba0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
removeFriendlyWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) friendlyWidgets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c5df8; bytecode file offset 0x9c2804"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
mnemonic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmMnemonic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c60c4; bytecode file offset 0x9c29e8"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
colorTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    colorTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c62c0; bytecode file offset 0x9c2bec"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
disabledImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    disabledImage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c64cc; bytecode file offset 0x9c2dd0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
timeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeout := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c67c8; bytecode file offset 0x9c3164"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
friendlyWidgets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    friendlyWidgets := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b4c; bytecode file offset 0x9c3470"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
tobHoverHelpBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tobHoverHelpBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d43d0; bytecode file offset 0x9d0c98"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
labelStringAsSubStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) labelString.
    recoveredValue1 := (self) labelLines.
    recoveredValue2 := (self) fontList.
    recoveredValue3 := (recoveredValue2) fontStruct.
    recoveredValue4 := (recoveredValue0) tobTBAsSubStrings: (recoveredValue1) fontStruct: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de7f8; bytecode file offset 0x9db0b4"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
pointerMotion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initializeGC.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f9340; bytecode file offset 0x9f5ca0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
toolTipText
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tobHoverHelpBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) tobHoverHelpBlock.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201022e4; bytecode file offset 0x9feba4"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
drawIcon: recoveredArg1 x: recoveredArg2 y: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) drawingWindow.
    recoveredValue1 := (self) gc.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    (recoveredValue0) drawIcon: (recoveredValue1) x: (recoveredValue2) y: (recoveredValue3) icon: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20106894; bytecode file offset 0xa0314c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
colorTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := colorTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeColors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := colorTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010ba88; bytecode file offset 0xa085f0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    (self) friendlyWidgets: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011328c; bytecode file offset 0xa0fb4c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
isWidgetFriendly: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) friendlyWidgets.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20134144; bytecode file offset 0xa309fc"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
toolTipText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value0
].
    (self) tobHoverHelpBlock: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201376e8; bytecode file offset 0xa33fb0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
calculateSizes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) basicCalculateSizes.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) y.
    recoveredValue5 := (self) borderWidth.
    (self) resizeWidget: (recoveredValue2) height: (recoveredValue4) borderWidth: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20140860; bytecode file offset 0xa3d11c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
initializeResources
    super initializeResources.
    xmNimageCropFrame := nil.
    xmNhasSeparator := false.
    xmNlabelString := nil.
    ^self
! !

"ASDBase.ic method 0x2014da00; bytecode file offset 0xa4a2c4"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
fontList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNfontList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwFontList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := CgFontStruct.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := xmNfontList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20160fe0; bytecode file offset 0xa5d8a4"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
updateImage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) tobTBfree.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) disabledImage: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) calculateSizes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201646a0; bytecode file offset 0xa60f58"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
hasSeparator: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNhasSeparator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNhasSeparator := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateHasSeparator.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201646f0; bytecode file offset 0xa60fa8"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
labelString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNlabelString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNlabelString := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateLabelString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164714; bytecode file offset 0xa60fcc"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
labelLines: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNlabelLines.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNlabelLines := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateLabelLines.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164760; bytecode file offset 0xa61018"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
image: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNimage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNimage := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateImage.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164784; bytecode file offset 0xa6103c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
focusImage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNfocusImage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNfocusImage := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateFocusImage.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201647d4; bytecode file offset 0xa6108c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
imageCropFrame: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNimageCropFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNimageCropFrame := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateImageCropFrame.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017323c; bytecode file offset 0xa6fb04"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
initializeOnFirstResize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeOnFirstResize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) initializeGC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) calculateSizes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201887a8; bytecode file offset 0xa85070"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
drawPixmap: recoveredArg1 x: recoveredArg2 y: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) drawingWindow.
    recoveredValue2 := (self) gc.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) width.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) height.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg3.
    (recoveredValue0) copyArea: (recoveredValue1) gc: (recoveredValue2) srcX: (0) srcY: (0) width: (recoveredValue4) height: (recoveredValue6) destX: (recoveredValue7) destY: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20198af4; bytecode file offset 0xa953c8"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
createDisabledImage
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EwSystemColors.
    recoveredValue1 := (self) primaryWidget.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) image.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) buttonShading.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) buttonHighlight.
    recoveredValue8 := (recoveredValue3) tobTBasDisabledImage: (recoveredValue5) highlightColor: (recoveredValue7).
    (self) disabledImage: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201b7000; bytecode file offset 0xab38c8"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super destroy: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) freeIcon.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) disabledImage: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204eb8; bytecode file offset 0xb0177c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredArg3.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    (recoveredBlock10Value0) value: (recoveredBlock10Value1).
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value2) userData: (self).
    recoveredBlock10Value3
].
    recoveredValue3 := super createPrimaryWidget: (recoveredValue0) parent: (recoveredValue1) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20225e68; bytecode file offset 0xb22748"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
initializeGC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeGC.
    recoveredValue0 := (self) gc.
    recoveredValue1 := LineSolid.
    recoveredValue2 := CapButt.
    recoveredValue3 := JoinMiter.
    (recoveredValue0) setLineAttributes: (1) lineStyle: (recoveredValue1) capStyle: (recoveredValue2) joinStyle: (recoveredValue3).
    recoveredValue4 := (self) gc.
    recoveredValue5 := (self) fontList.
    recoveredValue6 := (recoveredValue5) fontStruct.
    recoveredValue7 := (recoveredValue6) font.
    (recoveredValue4) setFont: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20260528; bytecode file offset 0xb5cdfc"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
destroyWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super destroyWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) gc: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) tobTBfree.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) disabledImage: (recoveredStack1).
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

"ASDBase.ic method 0x202830b0; bytecode file offset 0xb7f984"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
createTimeout
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeout.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := Delay.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := 1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) forMilliseconds: (recoveredBlock9Stack2).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            (recoveredBlock9Stack1) wait.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isDestroyed.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 35] ifFalse: [recoveredBlock9PC := 30].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) timeoutFired: (recoveredBlock9Stack2).
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) fork.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) timeout: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028f0b8; bytecode file offset 0xb8b998"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
addFriendlyWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) friendlyWidgets.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ButtonPressMask.
    (recoveredValue3) addEventHandler: (recoveredValue4) receiver: (self) selector: ('buttonPressed:clientData:callData:') clientData: (nil).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ButtonReleaseMask.
    (recoveredValue5) addEventHandler: (recoveredValue6) receiver: (self) selector: ('buttonReleased:clientData:callData:') clientData: (nil).
    recoveredValue7 := PointerMotionMask.
    recoveredValue8 := ButtonMotionMask.
    recoveredValue9 := (recoveredValue7) | (recoveredValue8).
    (recoveredValue2) addEventHandler: (recoveredValue9) receiver: (self) selector: ('pointerMotion:clientData:callData:') clientData: (nil).
    recoveredValue10 := recoveredArg1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20297088; bytecode file offset 0xb9396c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
hookCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super hookCallbacks.
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ButtonPressMask.
    (recoveredValue1) addEventHandler: (recoveredValue2) receiver: (self) selector: ('buttonPressed:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ButtonReleaseMask.
    (recoveredValue3) addEventHandler: (recoveredValue4) receiver: (self) selector: ('buttonReleased:clientData:callData:') clientData: (nil).
    recoveredValue5 := PointerMotionMask.
    recoveredValue6 := ButtonMotionMask.
    recoveredValue7 := (recoveredValue5) | (recoveredValue6).
    (recoveredValue0) addEventHandler: (recoveredValue7) receiver: (self) selector: ('pointerMotion:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x202ce71c; bytecode file offset 0xbcafe8"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
basicImageCropFrame
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageCropFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageCropFrame.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040d5cc; bytecode file offset 0xd09eb0"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
drawImage: recoveredArg1 y: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWidgetUnderPointerFriendly.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusImage.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) createDisabledImage.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) disabledImage.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := CgIcon.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesBehaviorFor: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) drawIcon: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := CgPixmap.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesBehaviorFor: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) drawPixmap: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e9580; bytecode file offset 0xee5e9c"
!TobTBToolBarAndMenuItemWidget methodsFor: 'recovered'!
drawText: recoveredArg1 y: recoveredArg2 align: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) drawingWindow.
    recoveredLocal3 := recoveredValue0.
    recoveredLocal1 := false.
    recoveredValue1 := recoveredArg2.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) labelStringAsSubStrings.
    recoveredValue3 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Local3 recoveredBlock20Local4 recoveredBlock20Local5 recoveredBlock20Local6 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20Stack6 recoveredBlock20Stack7 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg3.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack2 := 'left'.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) = (recoveredBlock20Stack2).
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 36] ifFalse: [recoveredBlock20PC := 41].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Local6 := recoveredBlock20Stack1.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg3.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack2 := 'right'.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) = (recoveredBlock20Stack2).
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 50] ifFalse: [recoveredBlock20PC := 65].
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) fontList.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) fontStruct.
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) - (recoveredBlock20Stack2).
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 61.
        ].
        recoveredBlock20Step = 61 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) textWidth: (recoveredBlock20Stack2).
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Local6 := recoveredBlock20Stack1.
            recoveredBlock20PC := 65.
        ].
        recoveredBlock20Step = 65 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg3.
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Stack2 := 'centre'.
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) = (recoveredBlock20Stack2).
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 74] ifFalse: [recoveredBlock20PC := 92].
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 77.
        ].
        recoveredBlock20Step = 77 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 78.
        ].
        recoveredBlock20Step = 78 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) fontList.
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) fontStruct.
            recoveredBlock20PC := 82.
        ].
        recoveredBlock20Step = 82 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 84.
        ].
        recoveredBlock20Step = 84 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) textWidth: (recoveredBlock20Stack3).
            recoveredBlock20PC := 86.
        ].
        recoveredBlock20Step = 86 ifTrue: [
            recoveredBlock20Stack3 := 2.
            recoveredBlock20PC := 88.
        ].
        recoveredBlock20Step = 88 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) // (recoveredBlock20Stack3).
            recoveredBlock20PC := 89.
        ].
        recoveredBlock20Step = 89 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) - (recoveredBlock20Stack2).
            recoveredBlock20PC := 90.
        ].
        recoveredBlock20Step = 90 ifTrue: [
            recoveredBlock20Local6 := recoveredBlock20Stack1.
            recoveredBlock20PC := 92.
        ].
        recoveredBlock20Step = 92 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 95.
        ].
        recoveredBlock20Step = 95 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 180] ifFalse: [recoveredBlock20PC := 98].
        ].
        recoveredBlock20Step = 98 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 99.
        ].
        recoveredBlock20Step = 99 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) mnemonic.
            recoveredBlock20PC := 101.
        ].
        recoveredBlock20Step = 101 ifTrue: [
            (recoveredBlock20Stack1 == nil) ifTrue: [recoveredBlock20PC := 180] ifFalse: [recoveredBlock20PC := 104].
        ].
        recoveredBlock20Step = 104 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 106.
        ].
        recoveredBlock20Step = 106 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) asUppercase.
            recoveredBlock20PC := 108.
        ].
        recoveredBlock20Step = 108 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 109.
        ].
        recoveredBlock20Step = 109 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) mnemonic.
            recoveredBlock20PC := 111.
        ].
        recoveredBlock20Step = 111 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) asUppercase.
            recoveredBlock20PC := 113.
        ].
        recoveredBlock20Step = 113 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) includes: (recoveredBlock20Stack2).
            recoveredBlock20PC := 115.
        ].
        recoveredBlock20Step = 115 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 118] ifFalse: [recoveredBlock20PC := 180].
        ].
        recoveredBlock20Step = 118 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 120.
        ].
        recoveredBlock20Step = 120 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) asUppercase.
            recoveredBlock20PC := 122.
        ].
        recoveredBlock20Step = 122 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 123.
        ].
        recoveredBlock20Step = 123 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) mnemonic.
            recoveredBlock20PC := 125.
        ].
        recoveredBlock20Step = 125 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) asUppercase.
            recoveredBlock20PC := 127.
        ].
        recoveredBlock20Step = 127 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) indexOf: (recoveredBlock20Stack2).
            recoveredBlock20PC := 129.
        ].
        recoveredBlock20Step = 129 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 130.
        ].
        recoveredBlock20Step = 130 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 132.
        ].
        recoveredBlock20Step = 132 ifTrue: [
            recoveredBlock20Stack2 := 1.
            recoveredBlock20PC := 134.
        ].
        recoveredBlock20Step = 134 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 135.
        ].
        recoveredBlock20Step = 135 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (-1).
            recoveredBlock20PC := 136.
        ].
        recoveredBlock20Step = 136 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) copyFrom: (recoveredBlock20Stack2) to: (recoveredBlock20Stack3).
            recoveredBlock20PC := 138.
        ].
        recoveredBlock20Step = 138 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 139.
        ].
        recoveredBlock20Step = 139 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 140.
        ].
        recoveredBlock20Step = 140 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) fontList.
            recoveredBlock20PC := 142.
        ].
        recoveredBlock20Step = 142 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) fontStruct.
            recoveredBlock20PC := 144.
        ].
        recoveredBlock20Step = 144 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 145.
        ].
        recoveredBlock20Step = 145 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) textWidth: (recoveredBlock20Stack2).
            recoveredBlock20PC := 147.
        ].
        recoveredBlock20Step = 147 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local6.
            recoveredBlock20PC := 149.
        ].
        recoveredBlock20Step = 149 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (recoveredBlock20Stack2).
            recoveredBlock20PC := 150.
        ].
        recoveredBlock20Step = 150 ifTrue: [
            recoveredBlock20Local5 := recoveredBlock20Stack1.
            recoveredBlock20PC := 152.
        ].
        recoveredBlock20Step = 152 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 153.
        ].
        recoveredBlock20Step = 153 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) fontList.
            recoveredBlock20PC := 155.
        ].
        recoveredBlock20Step = 155 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) fontStruct.
            recoveredBlock20PC := 157.
        ].
        recoveredBlock20Step = 157 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 159.
        ].
        recoveredBlock20Step = 159 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 160.
        ].
        recoveredBlock20Step = 160 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 162.
        ].
        recoveredBlock20Step = 162 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) asString.
            recoveredBlock20PC := 164.
        ].
        recoveredBlock20Step = 164 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) textWidth: (recoveredBlock20Stack2).
            recoveredBlock20PC := 166.
        ].
        recoveredBlock20Step = 166 ifTrue: [
            recoveredBlock20Local4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 167.
        ].
        recoveredBlock20Step = 167 ifTrue: [
            recoveredBlock20Stack1 := true.
            recoveredBlock20PC := 168.
        ].
        recoveredBlock20Step = 168 ifTrue: [
            recoveredBlock20Local3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 169.
        ].
        recoveredBlock20Step = 169 ifTrue: [
            recoveredBlock20Stack1 := true.
            recoveredBlock20PC := 170.
        ].
        recoveredBlock20Step = 170 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 173.
        ].
        recoveredBlock20Step = 173 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 174.
        ].
        recoveredBlock20Step = 174 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 175.
        ].
        recoveredBlock20Step = 175 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack2.
            recoveredBlock20PC := 176.
        ].
        recoveredBlock20Step = 176 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 177.
        ].
        recoveredBlock20Step = 177 ifTrue: [
            recoveredBlock20PC := 182.
        ].
        recoveredBlock20Step = 180 ifTrue: [
            recoveredBlock20Stack1 := false.
            recoveredBlock20PC := 181.
        ].
        recoveredBlock20Step = 181 ifTrue: [
            recoveredBlock20Local3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 182.
        ].
        recoveredBlock20Step = 182 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) sensitive.
            recoveredBlock20PC := 184.
        ].
        recoveredBlock20Step = 184 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 188] ifFalse: [recoveredBlock20PC := 250].
        ].
        recoveredBlock20Step = 188 ifTrue: [
            recoveredBlock20Stack0 := self.
            recoveredBlock20PC := 189.
        ].
        recoveredBlock20Step = 189 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) gc.
            recoveredBlock20PC := 191.
        ].
        recoveredBlock20Step = 191 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 192.
        ].
        recoveredBlock20Step = 192 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) colorTable.
            recoveredBlock20PC := 194.
        ].
        recoveredBlock20Step = 194 ifTrue: [
            recoveredBlock20Stack2 := 'text'.
            recoveredBlock20PC := 196.
        ].
        recoveredBlock20Step = 196 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 198.
        ].
        recoveredBlock20Step = 198 ifTrue: [
            (recoveredBlock20Stack0) setForeground: (recoveredBlock20Stack1).
            recoveredBlock20PC := 200.
        ].
        recoveredBlock20Step = 200 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal3.
            recoveredBlock20PC := 203.
        ].
        recoveredBlock20Step = 203 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 204.
        ].
        recoveredBlock20Step = 204 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) gc.
            recoveredBlock20PC := 206.
        ].
        recoveredBlock20Step = 206 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local6.
            recoveredBlock20PC := 208.
        ].
        recoveredBlock20Step = 208 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 211.
        ].
        recoveredBlock20Step = 211 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Arg1.
            recoveredBlock20PC := 213.
        ].
        recoveredBlock20Step = 213 ifTrue: [
            (recoveredBlock20Stack0) drawString: (recoveredBlock20Stack1) x: (recoveredBlock20Stack2) y: (recoveredBlock20Stack3) string: (recoveredBlock20Stack4).
            recoveredBlock20PC := 216.
        ].
        recoveredBlock20Step = 216 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local3.
            recoveredBlock20PC := 217.
        ].
        recoveredBlock20Step = 217 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 220] ifFalse: [recoveredBlock20PC := 247].
        ].
        recoveredBlock20Step = 220 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal3.
            recoveredBlock20PC := 223.
        ].
        recoveredBlock20Step = 223 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 224.
        ].
        recoveredBlock20Step = 224 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) gc.
            recoveredBlock20PC := 226.
        ].
        recoveredBlock20Step = 226 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local5.
            recoveredBlock20PC := 228.
        ].
        recoveredBlock20Step = 228 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 231.
        ].
        recoveredBlock20Step = 231 ifTrue: [
            recoveredBlock20Stack4 := 2.
            recoveredBlock20PC := 233.
        ].
        recoveredBlock20Step = 233 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (recoveredBlock20Stack4).
            recoveredBlock20PC := 234.
        ].
        recoveredBlock20Step = 234 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local5.
            recoveredBlock20PC := 236.
        ].
        recoveredBlock20Step = 236 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local4.
            recoveredBlock20PC := 237.
        ].
        recoveredBlock20Step = 237 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (recoveredBlock20Stack5).
            recoveredBlock20PC := 238.
        ].
        recoveredBlock20Step = 238 ifTrue: [
            recoveredBlock20Stack5 := recoveredLocal2.
            recoveredBlock20PC := 241.
        ].
        recoveredBlock20Step = 241 ifTrue: [
            recoveredBlock20Stack6 := 2.
            recoveredBlock20PC := 243.
        ].
        recoveredBlock20Step = 243 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (recoveredBlock20Stack6).
            recoveredBlock20PC := 244.
        ].
        recoveredBlock20Step = 244 ifTrue: [
            (recoveredBlock20Stack0) drawLine: (recoveredBlock20Stack1) x1: (recoveredBlock20Stack2) y1: (recoveredBlock20Stack3) x2: (recoveredBlock20Stack4) y2: (recoveredBlock20Stack5).
            recoveredBlock20PC := 247.
        ].
        recoveredBlock20Step = 247 ifTrue: [
            recoveredBlock20PC := 375.
        ].
        recoveredBlock20Step = 250 ifTrue: [
            recoveredBlock20Stack0 := self.
            recoveredBlock20PC := 251.
        ].
        recoveredBlock20Step = 251 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) gc.
            recoveredBlock20PC := 253.
        ].
        recoveredBlock20Step = 253 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 254.
        ].
        recoveredBlock20Step = 254 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) colorTable.
            recoveredBlock20PC := 256.
        ].
        recoveredBlock20Step = 256 ifTrue: [
            recoveredBlock20Stack2 := 'highlight'.
            recoveredBlock20PC := 258.
        ].
        recoveredBlock20Step = 258 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 260.
        ].
        recoveredBlock20Step = 260 ifTrue: [
            (recoveredBlock20Stack0) setForeground: (recoveredBlock20Stack1).
            recoveredBlock20PC := 262.
        ].
        recoveredBlock20Step = 262 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal3.
            recoveredBlock20PC := 265.
        ].
        recoveredBlock20Step = 265 ifTrue: [
            recoveredBlock20Stack1 := gc.
            recoveredBlock20PC := 267.
        ].
        recoveredBlock20Step = 267 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local6.
            recoveredBlock20PC := 269.
        ].
        recoveredBlock20Step = 269 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) + (1).
            recoveredBlock20PC := 270.
        ].
        recoveredBlock20Step = 270 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 273.
        ].
        recoveredBlock20Step = 273 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (1).
            recoveredBlock20PC := 274.
        ].
        recoveredBlock20Step = 274 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Arg1.
            recoveredBlock20PC := 276.
        ].
        recoveredBlock20Step = 276 ifTrue: [
            (recoveredBlock20Stack0) drawString: (recoveredBlock20Stack1) x: (recoveredBlock20Stack2) y: (recoveredBlock20Stack3) string: (recoveredBlock20Stack4).
            recoveredBlock20PC := 279.
        ].
        recoveredBlock20Step = 279 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local3.
            recoveredBlock20PC := 280.
        ].
        recoveredBlock20Step = 280 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 284] ifFalse: [recoveredBlock20PC := 315].
        ].
        recoveredBlock20Step = 284 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal3.
            recoveredBlock20PC := 287.
        ].
        recoveredBlock20Step = 287 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 288.
        ].
        recoveredBlock20Step = 288 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) gc.
            recoveredBlock20PC := 290.
        ].
        recoveredBlock20Step = 290 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local5.
            recoveredBlock20PC := 292.
        ].
        recoveredBlock20Step = 292 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) + (1).
            recoveredBlock20PC := 293.
        ].
        recoveredBlock20Step = 293 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 296.
        ].
        recoveredBlock20Step = 296 ifTrue: [
            recoveredBlock20Stack4 := 2.
            recoveredBlock20PC := 298.
        ].
        recoveredBlock20Step = 298 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (recoveredBlock20Stack4).
            recoveredBlock20PC := 299.
        ].
        recoveredBlock20Step = 299 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (1).
            recoveredBlock20PC := 300.
        ].
        recoveredBlock20Step = 300 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local5.
            recoveredBlock20PC := 302.
        ].
        recoveredBlock20Step = 302 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local4.
            recoveredBlock20PC := 303.
        ].
        recoveredBlock20Step = 303 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (recoveredBlock20Stack5).
            recoveredBlock20PC := 304.
        ].
        recoveredBlock20Step = 304 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (1).
            recoveredBlock20PC := 305.
        ].
        recoveredBlock20Step = 305 ifTrue: [
            recoveredBlock20Stack5 := recoveredLocal2.
            recoveredBlock20PC := 308.
        ].
        recoveredBlock20Step = 308 ifTrue: [
            recoveredBlock20Stack6 := 2.
            recoveredBlock20PC := 310.
        ].
        recoveredBlock20Step = 310 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (recoveredBlock20Stack6).
            recoveredBlock20PC := 311.
        ].
        recoveredBlock20Step = 311 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (1).
            recoveredBlock20PC := 312.
        ].
        recoveredBlock20Step = 312 ifTrue: [
            (recoveredBlock20Stack0) drawLine: (recoveredBlock20Stack1) x1: (recoveredBlock20Stack2) y1: (recoveredBlock20Stack3) x2: (recoveredBlock20Stack4) y2: (recoveredBlock20Stack5).
            recoveredBlock20PC := 315.
        ].
        recoveredBlock20Step = 315 ifTrue: [
            recoveredBlock20Stack0 := self.
            recoveredBlock20PC := 316.
        ].
        recoveredBlock20Step = 316 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) gc.
            recoveredBlock20PC := 318.
        ].
        recoveredBlock20Step = 318 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 319.
        ].
        recoveredBlock20Step = 319 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) colorTable.
            recoveredBlock20PC := 321.
        ].
        recoveredBlock20Step = 321 ifTrue: [
            recoveredBlock20Stack2 := 'shadow'.
            recoveredBlock20PC := 323.
        ].
        recoveredBlock20Step = 323 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 325.
        ].
        recoveredBlock20Step = 325 ifTrue: [
            (recoveredBlock20Stack0) setForeground: (recoveredBlock20Stack1).
            recoveredBlock20PC := 327.
        ].
        recoveredBlock20Step = 327 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal3.
            recoveredBlock20PC := 330.
        ].
        recoveredBlock20Step = 330 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 331.
        ].
        recoveredBlock20Step = 331 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) gc.
            recoveredBlock20PC := 333.
        ].
        recoveredBlock20Step = 333 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local6.
            recoveredBlock20PC := 335.
        ].
        recoveredBlock20Step = 335 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 338.
        ].
        recoveredBlock20Step = 338 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Arg1.
            recoveredBlock20PC := 340.
        ].
        recoveredBlock20Step = 340 ifTrue: [
            (recoveredBlock20Stack0) drawString: (recoveredBlock20Stack1) x: (recoveredBlock20Stack2) y: (recoveredBlock20Stack3) string: (recoveredBlock20Stack4).
            recoveredBlock20PC := 343.
        ].
        recoveredBlock20Step = 343 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local3.
            recoveredBlock20PC := 344.
        ].
        recoveredBlock20Step = 344 ifTrue: [
            (recoveredBlock20Stack0) ifTrue: [recoveredBlock20PC := 348] ifFalse: [recoveredBlock20PC := 375].
        ].
        recoveredBlock20Step = 348 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal3.
            recoveredBlock20PC := 351.
        ].
        recoveredBlock20Step = 351 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 352.
        ].
        recoveredBlock20Step = 352 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) gc.
            recoveredBlock20PC := 354.
        ].
        recoveredBlock20Step = 354 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local5.
            recoveredBlock20PC := 356.
        ].
        recoveredBlock20Step = 356 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 359.
        ].
        recoveredBlock20Step = 359 ifTrue: [
            recoveredBlock20Stack4 := 2.
            recoveredBlock20PC := 361.
        ].
        recoveredBlock20Step = 361 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (recoveredBlock20Stack4).
            recoveredBlock20PC := 362.
        ].
        recoveredBlock20Step = 362 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local5.
            recoveredBlock20PC := 364.
        ].
        recoveredBlock20Step = 364 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local4.
            recoveredBlock20PC := 365.
        ].
        recoveredBlock20Step = 365 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (recoveredBlock20Stack5).
            recoveredBlock20PC := 366.
        ].
        recoveredBlock20Step = 366 ifTrue: [
            recoveredBlock20Stack5 := recoveredLocal2.
            recoveredBlock20PC := 369.
        ].
        recoveredBlock20Step = 369 ifTrue: [
            recoveredBlock20Stack6 := 2.
            recoveredBlock20PC := 371.
        ].
        recoveredBlock20Step = 371 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (recoveredBlock20Stack6).
            recoveredBlock20PC := 372.
        ].
        recoveredBlock20Step = 372 ifTrue: [
            (recoveredBlock20Stack0) drawLine: (recoveredBlock20Stack1) x1: (recoveredBlock20Stack2) y1: (recoveredBlock20Stack3) x2: (recoveredBlock20Stack4) y2: (recoveredBlock20Stack5).
            recoveredBlock20PC := 375.
        ].
        recoveredBlock20Step = 375 ifTrue: [
            recoveredBlock20Stack0 := recoveredLocal2.
            recoveredBlock20PC := 378.
        ].
        recoveredBlock20Step = 378 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 379.
        ].
        recoveredBlock20Step = 379 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) fontList.
            recoveredBlock20PC := 381.
        ].
        recoveredBlock20Step = 381 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) fontStruct.
            recoveredBlock20PC := 383.
        ].
        recoveredBlock20Step = 383 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) height.
            recoveredBlock20PC := 385.
        ].
        recoveredBlock20Step = 385 ifTrue: [
            recoveredBlock20Stack0 := (recoveredBlock20Stack0) + (recoveredBlock20Stack1).
            recoveredBlock20PC := 386.
        ].
        recoveredBlock20Step = 386 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Stack0.
            recoveredBlock20PC := 387.
        ].
        recoveredBlock20Step = 387 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 390.
        ].
        recoveredBlock20Step = 390 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack0.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

