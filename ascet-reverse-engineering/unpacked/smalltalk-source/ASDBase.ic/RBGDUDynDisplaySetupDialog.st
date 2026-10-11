"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001e40; bytecode file offset 0x8ffcfc"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
help
    ^self
! !

"ASDBase.ic method 0x20005f8c; bytecode file offset 0x902de8"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
textLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006384; bytecode file offset 0x902de8"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
textModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20037444; bytecode file offset 0x934580"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
displayTypeDict
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) displayTypeDict.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f644; bytecode file offset 0x94d048"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
initializeFonts
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2005a440; bytecode file offset 0x957a6c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005aed8; bytecode file offset 0x957a6c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20070108; bytecode file offset 0x96cb7c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
axisGrid
    | recoveredValue0 |
    recoveredValue0 := grid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007043c; bytecode file offset 0x96ce40"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
xExtent
    | recoveredValue0 |
    recoveredValue0 := xExt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200706f0; bytecode file offset 0x96d06c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
wMin
    | recoveredValue0 |
    recoveredValue0 := wMin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200708b4; bytecode file offset 0x96d218"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
wMax
    | recoveredValue0 |
    recoveredValue0 := wMax.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070a60; bytecode file offset 0x96d3ec"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
singleWAxis
    | recoveredValue0 |
    recoveredValue0 := singleWAxis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070b74; bytecode file offset 0x96d580"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
color
    | recoveredValue0 |
    recoveredValue0 := color.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070e34; bytecode file offset 0x96d7b0"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
connectionType
    | recoveredValue0 |
    recoveredValue0 := connectionType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070f70; bytecode file offset 0x96d87c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 |
    recoveredValue0 := backColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009de8c; bytecode file offset 0x99a800"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
focusBackgroundColor
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('backgroundColorList').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2009dea0; bytecode file offset 0x99a800"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
focusForegroundColor
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('foregroundColorList').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2009deb4; bytecode file offset 0x99a800"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
focusYMax
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('wMaxField').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2009dedc; bytecode file offset 0x99a800"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
focusYMin
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('wMinField').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200c73e0; bytecode file offset 0x9c3d64"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7708; bytecode file offset 0x9c400c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
elements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ec938; bytecode file offset 0x9e91f8"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
textFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rnz') == ('Preselect_all_in_numeric_GUI_fields').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) selectAll.
    ^self
! !

"ASDBase.ic method 0x20100574; bytecode file offset 0x9fce40"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
numberFromString: recoveredArg1 hex: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntegerFromHex.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010577c; bytecode file offset 0xa02064"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
xExtentField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105790; bytecode file offset 0xa02064"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
wMaxField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201057a4; bytecode file offset 0xa02064"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
wMinField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b8c0; bytecode file offset 0xa28194"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
focusDisplayType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b8d4; bytecode file offset 0xa28194"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
focusXExtent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014822c; bytecode file offset 0xa44ae8"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) freeFont.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            smallFont := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20187bb8; bytecode file offset 0xa84478"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
stringFromNumber: recoveredArg1 hex: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020ab4c; bytecode file offset 0xb07404"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
cancel
    backColor := nil.
    connectionType := nil.
    color := nil.
    singleWAxis := nil.
    wMax := nil.
    wMin := nil.
    xExt := nil.
    grid := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20242280; bytecode file offset 0xb3eb48"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
setAxisGrid
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) canChangeAxisGrid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202abb54; bytecode file offset 0xba843c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
anIconList1browseSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'foregroundColorList'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineColor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            color := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'foregroundColorArea'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := color.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := color.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := backColor.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) warningSameBackgroundColor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031e59c; bytecode file offset 0xc1ae70"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'foregroundColorList'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSensitive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CgIndexedPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := color.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPixelValue: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'foregroundColorList'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'backgroundColorList'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSensitive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CgIndexedPalette.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := backColor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPixelValue: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'backgroundColorList'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20352424; bytecode file offset 0xc4ed04"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
initializeFocusCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) widgetAt: ('foregroundColorList').
    recoveredValue1 := (recoveredValue0) focusProxy.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmNfocusCallback.
    recoveredValue4 := (self) widgetAt: ('foregroundColorLabel').
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue4).
    recoveredValue5 := XmNlosingFocusCallback.
    recoveredValue6 := (self) widgetAt: ('foregroundColorLabel').
    (recoveredValue1) addCallback: (recoveredValue5) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue6).
    recoveredValue7 := (self) widgetAt: ('backgroundColorList').
    recoveredValue8 := (recoveredValue7) focusProxy.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := XmNfocusCallback.
    recoveredValue11 := (self) widgetAt: ('backgroundColorLabel').
    (recoveredValue9) addCallback: (recoveredValue10) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue11).
    recoveredValue12 := XmNlosingFocusCallback.
    recoveredValue13 := (self) widgetAt: ('backgroundColorLabel').
    (recoveredValue8) addCallback: (recoveredValue12) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20375ee0; bytecode file offset 0xc727b4"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
setCheckMethodeForValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'checkFloat:'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexView.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'checkHex:'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'checkHex:'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'checkFloat:'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'checkFloat:'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203841b4; bytecode file offset 0xc80a98"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
setTitle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ' for: '.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualLabel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := '...'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := elements.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) visualLabel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := SCDisplaySetup.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203860b4; bytecode file offset 0xc829a4"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
anIconList2browseSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'backgroundColorList'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineColor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            backColor := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'backgroundColorArea'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := backColor.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'checkValidBackgroundColor:'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := backColor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkValidBackgroundColor: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) warningSameBackgroundColor.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := color.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := backColor.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) warningSameBackgroundColor.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047c37c; bytecode file offset 0xd78ca8"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
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
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := XKF1.
    (recoveredValue10) at: (recoveredValue11) put: ('help').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := HKOk.
    (recoveredValue12) at: (recoveredValue13) put: ('ok').
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := HKCancel.
    (recoveredValue14) at: (recoveredValue15) put: ('cancel').
    recoveredValue16 := recoveredValue4.
    recoveredValue17 := HKHelp.
    (recoveredValue16) at: (recoveredValue17) put: ('help').
    recoveredValue18 := recoveredValue4.
    recoveredValue19 := HKFrom.
    (recoveredValue18) at: (recoveredValue19) put: ('focusYMin').
    recoveredValue20 := recoveredValue4.
    recoveredValue21 := HKTo.
    (recoveredValue20) at: (recoveredValue21) put: ('focusYMax').
    recoveredValue22 := recoveredValue4.
    recoveredValue23 := HKHeight.
    (recoveredValue22) at: (recoveredValue23) put: ('focusYMax').
    recoveredValue24 := recoveredValue4.
    recoveredValue25 := HKDisplayType.
    (recoveredValue24) at: (recoveredValue25) put: ('focusDisplayType').
    recoveredValue26 := recoveredValue4.
    recoveredValue27 := HKForegroundColor.
    (recoveredValue26) at: (recoveredValue27) put: ('focusForegroundColor').
    recoveredValue28 := recoveredValue4.
    recoveredValue29 := HKExtent.
    (recoveredValue28) at: (recoveredValue29) put: ('focusXExtent').
    recoveredValue30 := recoveredValue4.
    recoveredValue31 := HKAxisGrid.
    (recoveredValue30) at: (recoveredValue31) put: ('setAxisGrid').
    recoveredValue32 := HKBackgroundColor.
    (recoveredValue4) at: (recoveredValue32) put: ('focusBackgroundColor').
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := (self) shell.
    recoveredValue35 := recoveredLocal1.
    (recoveredValue33) at: (recoveredValue34) put: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue36).
    ^self
! !

"ASDBase.ic method 0x2048a444; bytecode file offset 0xd86d54"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28102fb8Arg1 | 
    | block28102fb8Value0 block28102fb8Value1 block28102fb8Value2 block28102fb8Value3 |
    block28102fb8Value0 := block28102fb8Arg1.
    block28102fb8Value1 := block28102fb8Value0.
    (block28102fb8Value1) title: ('Window').
    block28102fb8Value2 := block28102fb8Value0.
    (block28102fb8Value2) height: (512).
    block28102fb8Value3 := (block28102fb8Value0) width: (640).
    block28102fb8Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 |
    recoveredBlock103Value0 := recoveredBlock103Arg1.
    recoveredBlock103Value1 := recoveredLocal1.
    recoveredBlock103Value2 := (recoveredBlock103Value0) workWindow: (recoveredBlock103Value1).
    recoveredBlock103Value2
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2058783c; bytecode file offset 0xe8415c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getState.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getState.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSensitive.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTypeDict.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'displayTypeListBox'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
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
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'xExtentField'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) messageBeepQuestion.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSensitive.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) hexView.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) hexView.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'isOffsetExtentInterpretation'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffsetExtentInterpretation.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmExchangeInvalidExtent: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := owner.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) hexView.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) hexView.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 196 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) messageBeepQuestion.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmExchangeInvalidBoundsMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            grid := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            singleWAxis := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            connectionType := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            xExt := recoveredStack0.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            wMin := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            wMax := recoveredStack0.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064b930; bytecode file offset 0xf48358"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) noResize: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'xScaleLabel'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := SCTimeAxis.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'yScaleLabel'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := SCValueAxis.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := '['.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := SCHex.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := ']'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'yScaleLabel'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := SCValueAxis.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'isOffsetExtentInterpretation'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffsetExtentInterpretation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'fromLabel'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := LLOffset.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'toLabel'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := LLHeight.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 'fromLabel'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := LLFrom.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'toLabel'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := LLTo.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := LLAxisGrid.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := SCSingleWAxis.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 'displayTypeLabel'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 189] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'displayTypeLabel'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := LLDisplayType.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'foregroundColorLabel'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := LLForegroundColor.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := 'backgroundColorLabel'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := LLBackgroundColor.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := 'optionsLabel'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := SCOptions.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := 'extentLabel'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 251] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := 'extentLabel'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := LLExtent.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := SCHelp.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) setTitle.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) noResize: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) grayBackground.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) setCheckMethodeForValues.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 311] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) xExt.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMin.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 390] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMin.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := 'isOffsetExtentInterpretation'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffsetExtentInterpretation.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMin.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMax.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := (recoveredStack0) getYExtentFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredPC := 387.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMax.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasGrid.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) canChangeAxisGrid.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 436] ifFalse: [recoveredPC := 428].
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSingleWAxis.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := (recoveredStack0) canChangeSingleWAxis.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 470].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 565] ifFalse: [recoveredPC := 488].
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayTypeDict.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionType.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 540] ifFalse: [recoveredPC := 528].
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredPC := 565.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := 'displayTypeListBox'.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayTypeDict.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectionType.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := 'Call_2008405390'.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack0 := CgIndexedPalette.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := (recoveredStack0) etasDefault.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredPC := 619.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := RBColoredLineIcon.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineColor: (recoveredStack3) backgroundColor: (recoveredStack4).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 604] ifFalse: [recoveredLocal1 := nil. recoveredPC := 633]] ifFalse: [recoveredPC := 623].
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 631] ifFalse: [recoveredPC := 604].
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack0 := (recoveredStack0) color.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            color := recoveredStack1.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 660] ifFalse: [recoveredPC := 648].
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := 'foregroundColorList'.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredPC := 685.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack1 := 'foregroundColorList'.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := 'foregroundColorArea'.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := color.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack0 := (recoveredStack0) backgroundColor.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            backColor := recoveredStack1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 714] ifFalse: [recoveredPC := 702].
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := 'backgroundColorList'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredPC := 739.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := 'backgroundColorList'.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack1 := 'backgroundColorArea'.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack1 := backColor.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            (recoveredStack1) installActionKeys.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack1) initializeFocusCallbacks.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            (recoveredStack0) initializeFonts.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206ade68; bytecode file offset 0xfaa98c"
!RBGDUDynDisplaySetupDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredLocal28 recoveredLocal29 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal29 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block281308dcArg1 | 
    | block281308dcValue0 block281308dcValue1 block281308dcValue2 block281308dcValue3 block281308dcValue4 block281308dcValue5 block281308dcValue6 |
    block281308dcValue0 := block281308dcArg1.
    block281308dcValue1 := block281308dcValue0.
    block281308dcValue2 := MWMINPUTSYSTEMMODAL.
    (block281308dcValue1) mwmInputMode: (block281308dcValue2).
    block281308dcValue3 := block281308dcValue0.
    block281308dcValue4 := (String new: 32) at: 1 put: (Character value: 68); at: 2 put: (Character value: 97); at: 3 put: (Character value: 114); at: 4 put: (Character value: 115); at: 5 put: (Character value: 116); at: 6 put: (Character value: 101); at: 7 put: (Character value: 108); at: 8 put: (Character value: 108); at: 9 put: (Character value: 117); at: 10 put: (Character value: 110); at: 11 put: (Character value: 103); at: 12 put: (Character value: 115); at: 13 put: (Character value: 45); at: 14 put: (Character value: 83); at: 15 put: (Character value: 101); at: 16 put: (Character value: 116); at: 17 put: (Character value: 117); at: 18 put: (Character value: 112); at: 19 put: (Character value: 32); at: 20 put: (Character value: 102); at: 21 put: (Character value: 252); at: 22 put: (Character value: 114); at: 23 put: (Character value: 32); at: 24 put: (Character value: 77); at: 25 put: (Character value: 101); at: 26 put: (Character value: 223); at: 27 put: (Character value: 103); at: 28 put: (Character value: 114); at: 29 put: (Character value: 246); at: 30 put: (Character value: 223); at: 31 put: (Character value: 101); at: 32 put: (Character value: 110); yourself.
    (block281308dcValue3) title: (block281308dcValue4).
    block281308dcValue5 := block281308dcValue0.
    (block281308dcValue5) height: (319).
    block281308dcValue6 := (block281308dcValue0) width: (415).
    block281308dcValue6
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal28 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal28.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal27.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal26.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block28130900Arg1 | 
    | block28130900Value0 block28130900Value1 block28130900Value2 block28130900Value3 block28130900Value4 |
    block28130900Value0 := block28130900Arg1.
    block28130900Value1 := block28130900Value0.
    (block28130900Value1) y: (30).
    block28130900Value2 := block28130900Value0.
    (block28130900Value2) x: (70).
    block28130900Value3 := block28130900Value0.
    (block28130900Value3) height: (25).
    block28130900Value4 := (block28130900Value0) width: (60).
    block28130900Value4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal25.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := [:block28130924Arg1 | 
    | block28130924Value0 block28130924Value1 block28130924Value2 block28130924Value3 block28130924Value4 |
    block28130924Value0 := block28130924Arg1.
    block28130924Value1 := block28130924Value0.
    (block28130924Value1) y: (60).
    block28130924Value2 := block28130924Value0.
    (block28130924Value2) x: (70).
    block28130924Value3 := block28130924Value0.
    (block28130924Value3) height: (25).
    block28130924Value4 := (block28130924Value0) width: (60).
    block28130924Value4
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := [:block28130948Arg1 | 
    | block28130948Value0 block28130948Value1 block28130948Value2 block28130948Value3 block28130948Value4 block28130948Value5 block28130948Value6 |
    block28130948Value0 := block28130948Arg1.
    block28130948Value1 := block28130948Value0.
    (block28130948Value1) x: (295).
    block28130948Value2 := block28130948Value0.
    (block28130948Value2) showAsDefault: (1).
    block28130948Value3 := block28130948Value0.
    (block28130948Value3) labelString: ('Ok').
    block28130948Value4 := block28130948Value0.
    (block28130948Value4) y: (10).
    block28130948Value5 := block28130948Value0.
    (block28130948Value5) height: (30).
    block28130948Value6 := (block28130948Value0) width: (110).
    block28130948Value6
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := [:block2813096cArg1 | 
    | block2813096cValue0 block2813096cValue1 block2813096cValue2 block2813096cValue3 block2813096cValue4 block2813096cValue5 |
    block2813096cValue0 := block2813096cArg1.
    block2813096cValue1 := block2813096cValue0.
    (block2813096cValue1) x: (295).
    block2813096cValue2 := block2813096cValue0.
    (block2813096cValue2) labelString: ('Abbruch').
    block2813096cValue3 := block2813096cValue0.
    (block2813096cValue3) y: (45).
    block2813096cValue4 := block2813096cValue0.
    (block2813096cValue4) height: (30).
    block2813096cValue5 := (block2813096cValue0) width: (110).
    block2813096cValue5
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'displayTypeListBox'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := [:block28130990Arg1 | 
    | block28130990Value0 block28130990Value1 block28130990Value2 block28130990Value3 block28130990Value4 |
    block28130990Value0 := block28130990Arg1.
    block28130990Value1 := block28130990Value0.
    (block28130990Value1) x: (25).
    block28130990Value2 := block28130990Value0.
    (block28130990Value2) y: (125).
    block28130990Value3 := block28130990Value0.
    (block28130990Value3) height: (24).
    block28130990Value4 := (block28130990Value0) width: (105).
    block28130990Value4
].
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := 'displayTypeListBox'.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := [:block281309b4Arg1 | 
    | block281309b4Value0 block281309b4Value1 block281309b4Value2 block281309b4Value3 block281309b4Value4 block281309b4Value5 |
    block281309b4Value0 := block281309b4Arg1.
    block281309b4Value1 := block281309b4Value0.
    (block281309b4Value1) x: (295).
    block281309b4Value2 := block281309b4Value0.
    (block281309b4Value2) labelString: ('Hilfe').
    block281309b4Value3 := block281309b4Value0.
    (block281309b4Value3) y: (80).
    block281309b4Value4 := block281309b4Value0.
    (block281309b4Value4) height: (30).
    block281309b4Value5 := (block281309b4Value0) width: (110).
    block281309b4Value5
].
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := [:block281309d8Arg1 | 
    | block281309d8Value0 block281309d8Value1 block281309d8Value2 block281309d8Value3 block281309d8Value4 block281309d8Value5 block281309d8Value6 block281309d8Value7 block281309d8Value8 block281309d8Value9 |
    block281309d8Value0 := block281309d8Arg1.
    block281309d8Value1 := block281309d8Value0.
    (block281309d8Value1) marginRight: (10).
    block281309d8Value2 := block281309d8Value0.
    (block281309d8Value2) marginWidth: (0).
    block281309d8Value3 := block281309d8Value0.
    (block281309d8Value3) marginHeight: (0).
    block281309d8Value4 := block281309d8Value0.
    (block281309d8Value4) y: (250).
    block281309d8Value5 := block281309d8Value0.
    (block281309d8Value5) marginBottom: (10).
    block281309d8Value6 := block281309d8Value0.
    (block281309d8Value6) x: (15).
    block281309d8Value7 := block281309d8Value0.
    (block281309d8Value7) labelString: ('Achsengitter').
    block281309d8Value8 := block281309d8Value0.
    (block281309d8Value8) height: (20).
    block281309d8Value9 := (block281309d8Value0) width: (104).
    block281309d8Value9
].
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack2 := 'xExtentField'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := [:block281309fcArg1 | 
    | block281309fcValue0 block281309fcValue1 block281309fcValue2 block281309fcValue3 block281309fcValue4 block281309fcValue5 |
    block281309fcValue0 := block281309fcArg1.
    block281309fcValue1 := block281309fcValue0.
    (block281309fcValue1) borderWidth: (1).
    block281309fcValue2 := block281309fcValue0.
    (block281309fcValue2) y: (190).
    block281309fcValue3 := block281309fcValue0.
    (block281309fcValue3) x: (70).
    block281309fcValue4 := block281309fcValue0.
    (block281309fcValue4) height: (25).
    block281309fcValue5 := (block281309fcValue0) width: (60).
    block281309fcValue5
].
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := 'xExtentField'.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := 'foregroundColorArea'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack3 := [:block28130a20Arg1 | 
    | block28130a20Value0 block28130a20Value1 block28130a20Value2 block28130a20Value3 block28130a20Value4 block28130a20Value5 |
    block28130a20Value0 := block28130a20Arg1.
    block28130a20Value1 := block28130a20Value0.
    (block28130a20Value1) x: (155).
    block28130a20Value2 := block28130a20Value0.
    (block28130a20Value2) borderWidth: (1).
    block28130a20Value3 := block28130a20Value0.
    (block28130a20Value3) y: (125).
    block28130a20Value4 := block28130a20Value0.
    (block28130a20Value4) height: (25).
    block28130a20Value5 := (block28130a20Value0) width: (110).
    block28130a20Value5
].
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := 'foregroundColorArea'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := 'backgroundColorArea'.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := [:block28130a44Arg1 | 
    | block28130a44Value0 block28130a44Value1 block28130a44Value2 block28130a44Value3 block28130a44Value4 block28130a44Value5 |
    block28130a44Value0 := block28130a44Arg1.
    block28130a44Value1 := block28130a44Value0.
    (block28130a44Value1) x: (155).
    block28130a44Value2 := block28130a44Value0.
    (block28130a44Value2) borderWidth: (1).
    block28130a44Value3 := block28130a44Value0.
    (block28130a44Value3) y: (285).
    block28130a44Value4 := block28130a44Value0.
    (block28130a44Value4) height: (25).
    block28130a44Value5 := (block28130a44Value0) width: (110).
    block28130a44Value5
].
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack2 := 'backgroundColorArea'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := 'backgroundColorLabel'.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack3 := [:recoveredBlock708Arg1 | 
    | recoveredBlock708Value0 recoveredBlock708Value1 recoveredBlock708Value2 recoveredBlock708Value3 recoveredBlock708Value4 recoveredBlock708Value5 recoveredBlock708Value6 recoveredBlock708Value7 recoveredBlock708Value8 recoveredBlock708Value9 recoveredBlock708Value10 |
    recoveredBlock708Value0 := recoveredBlock708Arg1.
    recoveredBlock708Value1 := recoveredBlock708Value0.
    (recoveredBlock708Value1) x: (145).
    recoveredBlock708Value2 := recoveredBlock708Value0.
    recoveredBlock708Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock708Value2) alignment: (recoveredBlock708Value3).
    recoveredBlock708Value4 := recoveredBlock708Value0.
    (recoveredBlock708Value4) labelString: ('Hintergrundfarbe').
    recoveredBlock708Value5 := recoveredBlock708Value0.
    (recoveredBlock708Value5) marginWidth: (0).
    recoveredBlock708Value6 := recoveredBlock708Value0.
    (recoveredBlock708Value6) marginHeight: (0).
    recoveredBlock708Value7 := recoveredBlock708Value0.
    (recoveredBlock708Value7) y: (170).
    recoveredBlock708Value8 := recoveredBlock708Value0.
    (recoveredBlock708Value8) height: (20).
    recoveredBlock708Value9 := (self) defaultLabelBlue.
    recoveredBlock708Value10 := (recoveredBlock708Value0) foregroundColor: (recoveredBlock708Value9).
    recoveredBlock708Value10
].
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := 'backgroundColorLabel'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := [:block28130a68Arg1 | 
    | block28130a68Value0 block28130a68Value1 block28130a68Value2 block28130a68Value3 |
    block28130a68Value0 := block28130a68Arg1.
    block28130a68Value1 := block28130a68Value0.
    (block28130a68Value1) y: (160).
    block28130a68Value2 := block28130a68Value0.
    (block28130a68Value2) height: (4).
    block28130a68Value3 := (block28130a68Value0) width: (285).
    block28130a68Value3
].
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack3 := [:block28130a8cArg1 | 
    | block28130a8cValue0 block28130a8cValue1 block28130a8cValue2 block28130a8cValue3 block28130a8cValue4 block28130a8cValue5 block28130a8cValue6 block28130a8cValue7 |
    block28130a8cValue0 := block28130a8cArg1.
    block28130a8cValue1 := block28130a8cValue0.
    (block28130a8cValue1) x: (285).
    block28130a8cValue2 := block28130a8cValue0.
    block28130a8cValue3 := XmSINGLELINE.
    (block28130a8cValue2) separatorType: (block28130a8cValue3).
    block28130a8cValue4 := block28130a8cValue0.
    block28130a8cValue5 := XmVERTICAL.
    (block28130a8cValue4) orientation: (block28130a8cValue5).
    block28130a8cValue6 := block28130a8cValue0.
    (block28130a8cValue6) height: (319).
    block28130a8cValue7 := (block28130a8cValue0) width: (3).
    block28130a8cValue7
].
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack2 := 'foregroundColorLabel'.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack3 := [:recoveredBlock920Arg1 | 
    | recoveredBlock920Value0 recoveredBlock920Value1 recoveredBlock920Value2 recoveredBlock920Value3 recoveredBlock920Value4 recoveredBlock920Value5 recoveredBlock920Value6 recoveredBlock920Value7 recoveredBlock920Value8 recoveredBlock920Value9 recoveredBlock920Value10 |
    recoveredBlock920Value0 := recoveredBlock920Arg1.
    recoveredBlock920Value1 := recoveredBlock920Value0.
    (recoveredBlock920Value1) x: (145).
    recoveredBlock920Value2 := recoveredBlock920Value0.
    recoveredBlock920Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock920Value2) alignment: (recoveredBlock920Value3).
    recoveredBlock920Value4 := recoveredBlock920Value0.
    (recoveredBlock920Value4) labelString: ('Linienfarbe').
    recoveredBlock920Value5 := recoveredBlock920Value0.
    (recoveredBlock920Value5) marginWidth: (0).
    recoveredBlock920Value6 := recoveredBlock920Value0.
    (recoveredBlock920Value6) marginHeight: (0).
    recoveredBlock920Value7 := recoveredBlock920Value0.
    (recoveredBlock920Value7) y: (10).
    recoveredBlock920Value8 := recoveredBlock920Value0.
    (recoveredBlock920Value8) height: (20).
    recoveredBlock920Value9 := (self) defaultLabelBlue.
    recoveredBlock920Value10 := (recoveredBlock920Value0) foregroundColor: (recoveredBlock920Value9).
    recoveredBlock920Value10
].
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack2 := 'foregroundColorLabel'.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack3 := [:recoveredBlock1006Arg1 | 
    | recoveredBlock1006Value0 recoveredBlock1006Value1 recoveredBlock1006Value2 recoveredBlock1006Value3 recoveredBlock1006Value4 recoveredBlock1006Value5 recoveredBlock1006Value6 recoveredBlock1006Value7 recoveredBlock1006Value8 recoveredBlock1006Value9 |
    recoveredBlock1006Value0 := recoveredBlock1006Arg1.
    recoveredBlock1006Value1 := recoveredBlock1006Value0.
    (recoveredBlock1006Value1) x: (10).
    recoveredBlock1006Value2 := recoveredBlock1006Value0.
    recoveredBlock1006Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1006Value2) alignment: (recoveredBlock1006Value3).
    recoveredBlock1006Value4 := recoveredBlock1006Value0.
    (recoveredBlock1006Value4) labelString: ('Optionen').
    recoveredBlock1006Value5 := recoveredBlock1006Value0.
    (recoveredBlock1006Value5) marginWidth: (0).
    recoveredBlock1006Value6 := recoveredBlock1006Value0.
    (recoveredBlock1006Value6) marginHeight: (0).
    recoveredBlock1006Value7 := recoveredBlock1006Value0.
    (recoveredBlock1006Value7) y: (230).
    recoveredBlock1006Value8 := (self) defaultLabelBlue.
    recoveredBlock1006Value9 := (recoveredBlock1006Value0) foregroundColor: (recoveredBlock1006Value8).
    recoveredBlock1006Value9
].
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack3 := [:recoveredBlock1086Arg1 | 
    | recoveredBlock1086Value0 recoveredBlock1086Value1 recoveredBlock1086Value2 recoveredBlock1086Value3 recoveredBlock1086Value4 recoveredBlock1086Value5 recoveredBlock1086Value6 recoveredBlock1086Value7 recoveredBlock1086Value8 recoveredBlock1086Value9 recoveredBlock1086Value10 |
    recoveredBlock1086Value0 := recoveredBlock1086Arg1.
    recoveredBlock1086Value1 := recoveredBlock1086Value0.
    (recoveredBlock1086Value1) x: (10).
    recoveredBlock1086Value2 := recoveredBlock1086Value0.
    recoveredBlock1086Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1086Value2) alignment: (recoveredBlock1086Value3).
    recoveredBlock1086Value4 := recoveredBlock1086Value0.
    (recoveredBlock1086Value4) labelString: ('y-Skalierung').
    recoveredBlock1086Value5 := recoveredBlock1086Value0.
    (recoveredBlock1086Value5) marginWidth: (0).
    recoveredBlock1086Value6 := recoveredBlock1086Value0.
    (recoveredBlock1086Value6) marginHeight: (0).
    recoveredBlock1086Value7 := recoveredBlock1086Value0.
    (recoveredBlock1086Value7) y: (10).
    recoveredBlock1086Value8 := recoveredBlock1086Value0.
    (recoveredBlock1086Value8) height: (20).
    recoveredBlock1086Value9 := (self) defaultLabelBlue.
    recoveredBlock1086Value10 := (recoveredBlock1086Value0) foregroundColor: (recoveredBlock1086Value9).
    recoveredBlock1086Value10
].
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 1170.
        ].
        recoveredStep = 1170 ifTrue: [
            recoveredStack3 := [:block28130ab0Arg1 | 
    | block28130ab0Value0 block28130ab0Value1 block28130ab0Value2 block28130ab0Value3 block28130ab0Value4 block28130ab0Value5 block28130ab0Value6 block28130ab0Value7 block28130ab0Value8 block28130ab0Value9 |
    block28130ab0Value0 := block28130ab0Arg1.
    block28130ab0Value1 := block28130ab0Value0.
    (block28130ab0Value1) x: (20).
    block28130ab0Value2 := block28130ab0Value0.
    block28130ab0Value3 := XmALIGNMENTBEGINNING.
    (block28130ab0Value2) alignment: (block28130ab0Value3).
    block28130ab0Value4 := block28130ab0Value0.
    (block28130ab0Value4) labelString: ('von').
    block28130ab0Value5 := block28130ab0Value0.
    (block28130ab0Value5) marginWidth: (0).
    block28130ab0Value6 := block28130ab0Value0.
    (block28130ab0Value6) marginHeight: (0).
    block28130ab0Value7 := block28130ab0Value0.
    (block28130ab0Value7) y: (35).
    block28130ab0Value8 := block28130ab0Value0.
    (block28130ab0Value8) height: (20).
    block28130ab0Value9 := (block28130ab0Value0) marginBottom: (10).
    block28130ab0Value9
].
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1227.
        ].
        recoveredStep = 1227 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack3 := [:block28130ad4Arg1 | 
    | block28130ad4Value0 block28130ad4Value1 block28130ad4Value2 block28130ad4Value3 block28130ad4Value4 block28130ad4Value5 block28130ad4Value6 block28130ad4Value7 block28130ad4Value8 block28130ad4Value9 |
    block28130ad4Value0 := block28130ad4Arg1.
    block28130ad4Value1 := block28130ad4Value0.
    (block28130ad4Value1) x: (20).
    block28130ad4Value2 := block28130ad4Value0.
    block28130ad4Value3 := XmALIGNMENTBEGINNING.
    (block28130ad4Value2) alignment: (block28130ad4Value3).
    block28130ad4Value4 := block28130ad4Value0.
    (block28130ad4Value4) labelString: ('bis').
    block28130ad4Value5 := block28130ad4Value0.
    (block28130ad4Value5) marginWidth: (0).
    block28130ad4Value6 := block28130ad4Value0.
    (block28130ad4Value6) marginHeight: (0).
    block28130ad4Value7 := block28130ad4Value0.
    (block28130ad4Value7) y: (65).
    block28130ad4Value8 := block28130ad4Value0.
    (block28130ad4Value8) height: (20).
    block28130ad4Value9 := (block28130ad4Value0) marginBottom: (10).
    block28130ad4Value9
].
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredPC := 1304.
        ].
        recoveredStep = 1304 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack2 := 'displayTypeLabel'.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack3 := [:recoveredBlock1332Arg1 | 
    | recoveredBlock1332Value0 recoveredBlock1332Value1 recoveredBlock1332Value2 recoveredBlock1332Value3 recoveredBlock1332Value4 recoveredBlock1332Value5 recoveredBlock1332Value6 recoveredBlock1332Value7 recoveredBlock1332Value8 recoveredBlock1332Value9 recoveredBlock1332Value10 recoveredBlock1332Value11 |
    recoveredBlock1332Value0 := recoveredBlock1332Arg1.
    recoveredBlock1332Value1 := recoveredBlock1332Value0.
    (recoveredBlock1332Value1) x: (10).
    recoveredBlock1332Value2 := recoveredBlock1332Value0.
    recoveredBlock1332Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1332Value2) alignment: (recoveredBlock1332Value3).
    recoveredBlock1332Value4 := recoveredBlock1332Value0.
    (recoveredBlock1332Value4) labelString: ('Darstellungsart').
    recoveredBlock1332Value5 := recoveredBlock1332Value0.
    (recoveredBlock1332Value5) marginWidth: (0).
    recoveredBlock1332Value6 := recoveredBlock1332Value0.
    (recoveredBlock1332Value6) marginHeight: (0).
    recoveredBlock1332Value7 := recoveredBlock1332Value0.
    (recoveredBlock1332Value7) y: (105).
    recoveredBlock1332Value8 := recoveredBlock1332Value0.
    (recoveredBlock1332Value8) height: (20).
    recoveredBlock1332Value9 := recoveredBlock1332Value0.
    (recoveredBlock1332Value9) marginBottom: (10).
    recoveredBlock1332Value10 := (self) defaultLabelBlue.
    recoveredBlock1332Value11 := (recoveredBlock1332Value0) foregroundColor: (recoveredBlock1332Value10).
    recoveredBlock1332Value11
].
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack2 := 'displayTypeLabel'.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack3 := [:recoveredBlock1422Arg1 | 
    | recoveredBlock1422Value0 recoveredBlock1422Value1 recoveredBlock1422Value2 recoveredBlock1422Value3 recoveredBlock1422Value4 recoveredBlock1422Value5 recoveredBlock1422Value6 recoveredBlock1422Value7 recoveredBlock1422Value8 recoveredBlock1422Value9 recoveredBlock1422Value10 recoveredBlock1422Value11 |
    recoveredBlock1422Value0 := recoveredBlock1422Arg1.
    recoveredBlock1422Value1 := recoveredBlock1422Value0.
    (recoveredBlock1422Value1) x: (10).
    recoveredBlock1422Value2 := recoveredBlock1422Value0.
    recoveredBlock1422Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1422Value2) alignment: (recoveredBlock1422Value3).
    recoveredBlock1422Value4 := recoveredBlock1422Value0.
    (recoveredBlock1422Value4) labelString: ('x-Achse').
    recoveredBlock1422Value5 := recoveredBlock1422Value0.
    (recoveredBlock1422Value5) marginWidth: (0).
    recoveredBlock1422Value6 := recoveredBlock1422Value0.
    (recoveredBlock1422Value6) marginHeight: (0).
    recoveredBlock1422Value7 := recoveredBlock1422Value0.
    (recoveredBlock1422Value7) y: (170).
    recoveredBlock1422Value8 := recoveredBlock1422Value0.
    (recoveredBlock1422Value8) height: (20).
    recoveredBlock1422Value9 := recoveredBlock1422Value0.
    (recoveredBlock1422Value9) width: (68).
    recoveredBlock1422Value10 := (self) defaultLabelBlue.
    recoveredBlock1422Value11 := (recoveredBlock1422Value0) foregroundColor: (recoveredBlock1422Value10).
    recoveredBlock1422Value11
].
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1491.
        ].
        recoveredStep = 1491 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1499.
        ].
        recoveredStep = 1499 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1507.
        ].
        recoveredStep = 1507 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            recoveredStack2 := 'extentLabel'.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack3 := [:block28130af8Arg1 | 
    | block28130af8Value0 block28130af8Value1 block28130af8Value2 block28130af8Value3 block28130af8Value4 block28130af8Value5 block28130af8Value6 block28130af8Value7 block28130af8Value8 |
    block28130af8Value0 := block28130af8Arg1.
    block28130af8Value1 := block28130af8Value0.
    (block28130af8Value1) x: (15).
    block28130af8Value2 := block28130af8Value0.
    block28130af8Value3 := XmALIGNMENTBEGINNING.
    (block28130af8Value2) alignment: (block28130af8Value3).
    block28130af8Value4 := block28130af8Value0.
    block28130af8Value5 := (String new: 5) at: 1 put: (Character value: 76); at: 2 put: (Character value: 228); at: 3 put: (Character value: 110); at: 4 put: (Character value: 103); at: 5 put: (Character value: 101); yourself.
    (block28130af8Value4) labelString: (block28130af8Value5).
    block28130af8Value6 := block28130af8Value0.
    (block28130af8Value6) marginWidth: (0).
    block28130af8Value7 := block28130af8Value0.
    (block28130af8Value7) marginHeight: (0).
    block28130af8Value8 := (block28130af8Value0) y: (195).
    block28130af8Value8
].
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredPC := 1559.
        ].
        recoveredStep = 1559 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1565.
        ].
        recoveredStep = 1565 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1568.
        ].
        recoveredStep = 1568 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1571.
        ].
        recoveredStep = 1571 ifTrue: [
            recoveredStack2 := 'extentLabel'.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1577.
        ].
        recoveredStep = 1577 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            recoveredStack2 := 'foregroundColorList'.
            recoveredPC := 1586.
        ].
        recoveredStep = 1586 ifTrue: [
            recoveredStack3 := [:block28130b1cArg1 | 
    | block28130b1cValue0 block28130b1cValue1 block28130b1cValue2 block28130b1cValue3 block28130b1cValue4 |
    block28130b1cValue0 := block28130b1cArg1.
    block28130b1cValue1 := block28130b1cValue0.
    (block28130b1cValue1) itemWidth: (20).
    block28130b1cValue2 := block28130b1cValue0.
    block28130b1cValue3 := XmTOGETHER.
    (block28130b1cValue2) emphasisPolicy: (block28130b1cValue3).
    block28130b1cValue4 := (block28130b1cValue0) itemHeight: (17).
    block28130b1cValue4
].
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1623.
        ].
        recoveredStep = 1623 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1625.
        ].
        recoveredStep = 1625 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1628.
        ].
        recoveredStep = 1628 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1641.
        ].
        recoveredStep = 1641 ifTrue: [
            recoveredStack2 := 'aScrolledIconList1'.
            recoveredPC := 1644.
        ].
        recoveredStep = 1644 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1649.
        ].
        recoveredStep = 1649 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            recoveredStack2 := 'foregroundColorList'.
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1659.
        ].
        recoveredStep = 1659 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1661.
        ].
        recoveredStep = 1661 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1664.
        ].
        recoveredStep = 1664 ifTrue: [
            recoveredStack2 := 'backgroundColorList'.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredStack3 := [:block28130b40Arg1 | 
    | block28130b40Value0 block28130b40Value1 block28130b40Value2 block28130b40Value3 |
    block28130b40Value0 := block28130b40Arg1.
    block28130b40Value1 := block28130b40Value0.
    block28130b40Value2 := XmTOGETHER.
    (block28130b40Value1) emphasisPolicy: (block28130b40Value2).
    block28130b40Value3 := (block28130b40Value0) itemHeight: (17).
    block28130b40Value3
].
            recoveredPC := 1672.
        ].
        recoveredStep = 1672 ifTrue: [
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1699.
        ].
        recoveredStep = 1699 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1701.
        ].
        recoveredStep = 1701 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1707.
        ].
        recoveredStep = 1707 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1711.
        ].
        recoveredStep = 1711 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1717.
        ].
        recoveredStep = 1717 ifTrue: [
            recoveredStack2 := 'aScrolledIconList2'.
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1725.
        ].
        recoveredStep = 1725 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 1728.
        ].
        recoveredStep = 1728 ifTrue: [
            recoveredStack2 := 'backgroundColorList'.
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1735.
        ].
        recoveredStep = 1735 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredStack2 := [:recoveredBlock1740Arg1 | 
    | recoveredBlock1740Value0 recoveredBlock1740Value1 recoveredBlock1740Value2 |
    recoveredBlock1740Value0 := recoveredBlock1740Arg1.
    recoveredBlock1740Value1 := recoveredLocal26.
    recoveredBlock1740Value2 := (recoveredBlock1740Value0) workWindow: (recoveredBlock1740Value1).
    recoveredBlock1740Value2
].
            recoveredPC := 1756.
        ].
        recoveredStep = 1756 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1761.
        ].
        recoveredStep = 1761 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1764.
        ].
        recoveredStep = 1764 ifTrue: [
            recoveredStack2 := [:recoveredBlock1764Arg1 | 
    | recoveredBlock1764Value0 recoveredBlock1764Value1 recoveredBlock1764Value2 recoveredBlock1764Value3 recoveredBlock1764Value4 recoveredBlock1764Value5 recoveredBlock1764Value6 recoveredBlock1764Value7 recoveredBlock1764Value8 recoveredBlock1764Value9 |
    recoveredBlock1764Value0 := recoveredBlock1764Arg1.
    recoveredBlock1764Value1 := recoveredBlock1764Value0.
    recoveredBlock1764Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1764Value1) leftAttachment: (recoveredBlock1764Value2).
    recoveredBlock1764Value3 := recoveredBlock1764Value0.
    recoveredBlock1764Value4 := recoveredLocal2.
    (recoveredBlock1764Value3) leftWidget: (recoveredBlock1764Value4).
    recoveredBlock1764Value5 := recoveredBlock1764Value0.
    (recoveredBlock1764Value5) leftOffset: (-10).
    recoveredBlock1764Value6 := recoveredBlock1764Value0.
    recoveredBlock1764Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1764Value6) rightAttachment: (recoveredBlock1764Value7).
    recoveredBlock1764Value8 := recoveredLocal2.
    recoveredBlock1764Value9 := (recoveredBlock1764Value0) rightWidget: (recoveredBlock1764Value8).
    recoveredBlock1764Value9
].
            recoveredPC := 1812.
        ].
        recoveredStep = 1812 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1817.
        ].
        recoveredStep = 1817 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1820.
        ].
        recoveredStep = 1820 ifTrue: [
            recoveredStack2 := [:recoveredBlock1820Arg1 | 
    | recoveredBlock1820Value0 recoveredBlock1820Value1 recoveredBlock1820Value2 recoveredBlock1820Value3 recoveredBlock1820Value4 recoveredBlock1820Value5 recoveredBlock1820Value6 recoveredBlock1820Value7 recoveredBlock1820Value8 recoveredBlock1820Value9 |
    recoveredBlock1820Value0 := recoveredBlock1820Arg1.
    recoveredBlock1820Value1 := recoveredBlock1820Value0.
    recoveredBlock1820Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1820Value1) leftAttachment: (recoveredBlock1820Value2).
    recoveredBlock1820Value3 := recoveredBlock1820Value0.
    recoveredBlock1820Value4 := recoveredLocal4.
    (recoveredBlock1820Value3) leftWidget: (recoveredBlock1820Value4).
    recoveredBlock1820Value5 := recoveredBlock1820Value0.
    (recoveredBlock1820Value5) leftOffset: (-10).
    recoveredBlock1820Value6 := recoveredBlock1820Value0.
    recoveredBlock1820Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1820Value6) rightAttachment: (recoveredBlock1820Value7).
    recoveredBlock1820Value8 := recoveredLocal4.
    recoveredBlock1820Value9 := (recoveredBlock1820Value0) rightWidget: (recoveredBlock1820Value8).
    recoveredBlock1820Value9
].
            recoveredPC := 1868.
        ].
        recoveredStep = 1868 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1873.
        ].
        recoveredStep = 1873 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1876.
        ].
        recoveredStep = 1876 ifTrue: [
            recoveredStack2 := [:block28130b64Arg1 | 
    | block28130b64Value0 block28130b64Value1 block28130b64Value2 block28130b64Value3 block28130b64Value4 |
    block28130b64Value0 := block28130b64Arg1.
    block28130b64Value1 := block28130b64Value0.
    (block28130b64Value1) x: (155).
    block28130b64Value2 := block28130b64Value0.
    (block28130b64Value2) y: (30).
    block28130b64Value3 := block28130b64Value0.
    (block28130b64Value3) height: (90).
    block28130b64Value4 := (block28130b64Value0) width: (110).
    block28130b64Value4
].
            recoveredPC := 1880.
        ].
        recoveredStep = 1880 ifTrue: [
            recoveredPC := 1911.
        ].
        recoveredStep = 1911 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1915.
        ].
        recoveredStep = 1915 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1918.
        ].
        recoveredStep = 1918 ifTrue: [
            recoveredStack2 := [:block28130b88Arg1 | 
    | block28130b88Value0 block28130b88Value1 block28130b88Value2 block28130b88Value3 block28130b88Value4 |
    block28130b88Value0 := block28130b88Arg1.
    block28130b88Value1 := block28130b88Value0.
    (block28130b88Value1) x: (155).
    block28130b88Value2 := block28130b88Value0.
    (block28130b88Value2) y: (190).
    block28130b88Value3 := block28130b88Value0.
    (block28130b88Value3) height: (90).
    block28130b88Value4 := (block28130b88Value0) width: (110).
    block28130b88Value4
].
            recoveredPC := 1922.
        ].
        recoveredStep = 1922 ifTrue: [
            recoveredPC := 1953.
        ].
        recoveredStep = 1953 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1957.
        ].
        recoveredStep = 1957 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1960.
        ].
        recoveredStep = 1960 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1965.
        ].
        recoveredStep = 1965 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1968.
        ].
        recoveredStep = 1968 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1969.
        ].
        recoveredStep = 1969 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1973.
        ].
        recoveredStep = 1973 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 1976.
        ].
        recoveredStep = 1976 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1977.
        ].
        recoveredStep = 1977 ifTrue: [
            recoveredStack3 := XmNlosingFocusCallback.
            recoveredPC := 1980.
        ].
        recoveredStep = 1980 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1981.
        ].
        recoveredStep = 1981 ifTrue: [
            recoveredStack5 := 'textLosing:clientData:callData:'.
            recoveredPC := 1984.
        ].
        recoveredStep = 1984 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1985.
        ].
        recoveredStep = 1985 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1989.
        ].
        recoveredStep = 1989 ifTrue: [
            recoveredStack3 := XmNfocusCallback.
            recoveredPC := 1992.
        ].
        recoveredStep = 1992 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1993.
        ].
        recoveredStep = 1993 ifTrue: [
            recoveredStack5 := 'textFocus:clientData:callData:'.
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1997.
        ].
        recoveredStep = 1997 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 2001.
        ].
        recoveredStep = 2001 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2004.
        ].
        recoveredStep = 2004 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2005.
        ].
        recoveredStep = 2005 ifTrue: [
            recoveredStack4 := 'textModify:clientData:callData:'.
            recoveredPC := 2008.
        ].
        recoveredStep = 2008 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2009.
        ].
        recoveredStep = 2009 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2013.
        ].
        recoveredStep = 2013 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2017.
        ].
        recoveredStep = 2017 ifTrue: [
            recoveredStack3 := XmNfocusCallback.
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2021.
        ].
        recoveredStep = 2021 ifTrue: [
            recoveredStack5 := 'textFocus:clientData:callData:'.
            recoveredPC := 2024.
        ].
        recoveredStep = 2024 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2025.
        ].
        recoveredStep = 2025 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2029.
        ].
        recoveredStep = 2029 ifTrue: [
            recoveredStack3 := XmNlosingFocusCallback.
            recoveredPC := 2032.
        ].
        recoveredStep = 2032 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2033.
        ].
        recoveredStep = 2033 ifTrue: [
            recoveredStack5 := 'textLosing:clientData:callData:'.
            recoveredPC := 2036.
        ].
        recoveredStep = 2036 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2037.
        ].
        recoveredStep = 2037 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 2041.
        ].
        recoveredStep = 2041 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2044.
        ].
        recoveredStep = 2044 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2045.
        ].
        recoveredStep = 2045 ifTrue: [
            recoveredStack4 := 'textModify:clientData:callData:'.
            recoveredPC := 2048.
        ].
        recoveredStep = 2048 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2049.
        ].
        recoveredStep = 2049 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2053.
        ].
        recoveredStep = 2053 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 2056.
        ].
        recoveredStep = 2056 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2057.
        ].
        recoveredStep = 2057 ifTrue: [
            recoveredStack3 := XmNfocusCallback.
            recoveredPC := 2060.
        ].
        recoveredStep = 2060 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2061.
        ].
        recoveredStep = 2061 ifTrue: [
            recoveredStack5 := 'textFocus:clientData:callData:'.
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2065.
        ].
        recoveredStep = 2065 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2069.
        ].
        recoveredStep = 2069 ifTrue: [
            recoveredStack3 := XmNlosingFocusCallback.
            recoveredPC := 2072.
        ].
        recoveredStep = 2072 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            recoveredStack5 := 'textLosing:clientData:callData:'.
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2077.
        ].
        recoveredStep = 2077 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 2081.
        ].
        recoveredStep = 2081 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2085.
        ].
        recoveredStep = 2085 ifTrue: [
            recoveredStack4 := 'textModify:clientData:callData:'.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2089.
        ].
        recoveredStep = 2089 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2101.
        ].
        recoveredStep = 2101 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2105.
        ].
        recoveredStep = 2105 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2109.
        ].
        recoveredStep = 2109 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2117.
        ].
        recoveredStep = 2117 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2125.
        ].
        recoveredStep = 2125 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2132.
        ].
        recoveredStep = 2132 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack4 := 'anIconList1browseSelectionCallback:clientData:callData:'.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2137.
        ].
        recoveredStep = 2137 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2144.
        ].
        recoveredStep = 2144 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2148.
        ].
        recoveredStep = 2148 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2149.
        ].
        recoveredStep = 2149 ifTrue: [
            recoveredStack4 := 'anIconList2browseSelectionCallback:clientData:callData:'.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 2160.
        ].
        recoveredStep = 2160 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2165.
        ].
        recoveredStep = 2165 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2181.
        ].
        recoveredStep = 2181 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2197.
        ].
        recoveredStep = 2197 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2224.
        ].
        recoveredStep = 2224 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2237.
        ].
        recoveredStep = 2237 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack2 := recoveredLocal29.
            recoveredPC := 2243.
        ].
        recoveredStep = 2243 ifTrue: [
            recoveredStack3 := recoveredLocal27.
            recoveredPC := 2246.
        ].
        recoveredStep = 2246 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2251.
        ].
        recoveredStep = 2251 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

