"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004538; bytecode file offset 0x90206c"
!TobTBMenuWidget methodsFor: 'recovered'!
drawSeparators: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2004f338; bytecode file offset 0x94d048"
!TobTBMenuWidget methodsFor: 'recovered'!
hide
    (self) unmapWidget.
    ^self
! !

"ASDBase.ic method 0x2004fc50; bytecode file offset 0x94d048"
!TobTBMenuWidget methodsFor: 'recovered'!
initializeAfterCreate
    (self) hookCallbacks.
    ^self
! !

"ASDBase.ic method 0x2005aec0; bytecode file offset 0x957a6c"
!TobTBMenuWidget methodsFor: 'recovered'!
expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) draw.
    ^self
! !

"ASDBase.ic method 0x2006b528; bytecode file offset 0x96873c"
!TobTBMenuWidget methodsFor: 'recovered'!
fontList
    | recoveredValue0 |
    recoveredValue0 := xmNfontList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c734; bytecode file offset 0x9692b0"
!TobTBMenuWidget methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := xmNchildren.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d84c; bytecode file offset 0x96a390"
!TobTBMenuWidget methodsFor: 'recovered'!
drawingArea
    | recoveredValue0 |
    recoveredValue0 := drawingArea.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc98; bytecode file offset 0x96a9dc"
!TobTBMenuWidget methodsFor: 'recovered'!
separators
    | recoveredValue0 |
    recoveredValue0 := separators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072580; bytecode file offset 0x96f1c4"
!TobTBMenuWidget methodsFor: 'recovered'!
rightMargin
    ^2
! !

"ASDBase.ic method 0x200726d8; bytecode file offset 0x96f1c4"
!TobTBMenuWidget methodsFor: 'recovered'!
bottomMargin
    ^2
! !

"ASDBase.ic method 0x20072718; bytecode file offset 0x96f1c4"
!TobTBMenuWidget methodsFor: 'recovered'!
topMargin
    ^2
! !

"ASDBase.ic method 0x200728a0; bytecode file offset 0x96f1c4"
!TobTBMenuWidget methodsFor: 'recovered'!
leftMargin
    ^2
! !

"ASDBase.ic method 0x20072c20; bytecode file offset 0x96f6d4"
!TobTBMenuWidget methodsFor: 'recovered'!
separatorWidth
    ^4
! !

"ASDBase.ic method 0x20084708; bytecode file offset 0x981ca4"
!TobTBMenuWidget methodsFor: 'recovered'!
setButtonFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) fontList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084840; bytecode file offset 0x981ca4"
!TobTBMenuWidget methodsFor: 'recovered'!
setTextFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) fontList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200915e0; bytecode file offset 0x98e0cc"
!TobTBMenuWidget methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x20098c74; bytecode file offset 0x995850"
!TobTBMenuWidget methodsFor: 'recovered'!
addChild: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a8b34; bytecode file offset 0x9a5404"
!TobTBMenuWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNfontList := recoveredValue0.
    (self) updateFont.
    ^self
! !

"ASDBase.ic method 0x200c2cac; bytecode file offset 0x9bfde0"
!TobTBMenuWidget methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNchildren := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3910; bytecode file offset 0x9c058c"
!TobTBMenuWidget methodsFor: 'recovered'!
colorTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    colorTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c40a4; bytecode file offset 0x9c0bf0"
!TobTBMenuWidget methodsFor: 'recovered'!
drawingArea: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drawingArea := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4538; bytecode file offset 0x9c11bc"
!TobTBMenuWidget methodsFor: 'recovered'!
separators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    separators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f7614; bytecode file offset 0x9f4e38"
!TobTBMenuWidget methodsFor: 'recovered'!
managedChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c471cArg1 | 
    | block280c471cValue0 block280c471cValue1 |
    block280c471cValue0 := block280c471cArg1.
    block280c471cValue1 := (block280c471cValue0) isManaged.
    block280c471cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fa21c; bytecode file offset 0x9f6b10"
!TobTBMenuWidget methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 |
    super initializeResources.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    xmNchildren := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20102f20; bytecode file offset 0x9ff8dc"
!TobTBMenuWidget methodsFor: 'recovered'!
drawingWindow
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201061f8; bytecode file offset 0xa02ab0"
!TobTBMenuWidget methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20108844; bytecode file offset 0xa05138"
!TobTBMenuWidget methodsFor: 'recovered'!
hookCallbacks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := XmNresizeCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('resize:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x2014b0a4; bytecode file offset 0xa47968"
!TobTBMenuWidget methodsFor: 'recovered'!
createTobTBMenuItem: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := TobTBMenuItemWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) drawingArea.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createWidget: (recoveredValue1) parent: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) addChild: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20161644; bytecode file offset 0xa5df38"
!TobTBMenuWidget methodsFor: 'recovered'!
updateFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) fontList.
    recoveredBlock5Value2 := (recoveredBlock5Value0) fontList: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b8690; bytecode file offset 0xab4f5c"
!TobTBMenuWidget methodsFor: 'recovered'!
draw
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingWindow.
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
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) sendToBack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) drawSeparators: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) freeGC.
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

"ASDBase.ic method 0x2021e62c; bytecode file offset 0xb1af04"
!TobTBMenuWidget methodsFor: 'recovered'!
resize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) drawingArea.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) x: (0).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) y: (0).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) width.
    (recoveredValue3) width: (recoveredValue4).
    recoveredValue5 := (self) height.
    (recoveredValue0) height: (recoveredValue5).
    (self) layOutChildren.
    (self) draw.
    ^self
! !

"ASDBase.ic method 0x202e0acc; bytecode file offset 0xbdd3b4"
!TobTBMenuWidget methodsFor: 'recovered'!
createWidgetSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwDrawingArea.
    recoveredValue1 := (self) primaryWidget.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredBlock10Value0.
    (recoveredBlock10Value1) x: (0).
    recoveredBlock10Value2 := recoveredBlock10Value0.
    (recoveredBlock10Value2) y: (0).
    recoveredBlock10Value3 := recoveredBlock10Value0.
    recoveredBlock10Value4 := (self) width.
    (recoveredBlock10Value3) width: (recoveredBlock10Value4).
    recoveredBlock10Value5 := (self) height.
    recoveredBlock10Value6 := (recoveredBlock10Value0) height: (recoveredBlock10Value5).
    recoveredBlock10Value6
].
    recoveredValue3 := (recoveredValue0) createWidget: ('') parent: (recoveredValue1) argBlock: (recoveredValue2).
    (self) drawingArea: (recoveredValue3).
    recoveredValue4 := (self) drawingArea.
    (recoveredValue4) manageChild.
    ^self
! !

"ASDBase.ic method 0x202faa18; bytecode file offset 0xbf730c"
!TobTBMenuWidget methodsFor: 'recovered'!
initializeColors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := EwSystemColors.
    recoveredValue1 := (self) drawingArea.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) palette.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := (self) shell.
    recoveredValue6 := (recoveredValue5) window.
    recoveredValue7 := recoveredLocal3.
    (recoveredValue6) setPalette: (recoveredValue7).
    recoveredValue8 := IdentityDictionary.
    recoveredValue9 := (recoveredValue8) new.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) buttonShading.
    recoveredValue15 := (recoveredValue12) nearestPixelValue: (recoveredValue14).
    (recoveredValue11) at: ('shadow') put: (recoveredValue15).
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue17) buttonHighlight.
    recoveredValue19 := (recoveredValue16) nearestPixelValue: (recoveredValue18).
    (recoveredValue10) at: ('highlight') put: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    (self) colorTable: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x20318ed0; bytecode file offset 0xc157ac"
!TobTBMenuWidget methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwDialogShell.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 |
    recoveredBlock12Value0 := recoveredArg3.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    (recoveredBlock12Value0) value: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := recoveredBlock12Value2.
    (recoveredBlock12Value3) mappedWhenManaged: (false).
    recoveredBlock12Value4 := recoveredBlock12Value2.
    recoveredBlock12Value5 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock12Value4) mwmInputMode: (recoveredBlock12Value5).
    recoveredBlock12Value6 := recoveredBlock12Value2.
    recoveredBlock12Value7 := MWMDECORBORDER.
    (recoveredBlock12Value6) mwmDecorations: (recoveredBlock12Value7).
    recoveredBlock12Value8 := (recoveredBlock12Value2) allowShellResize: (true).
    recoveredBlock12Value8
].
    recoveredValue4 := (recoveredValue0) createWidget: (recoveredValue1) parent: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) userData: (self).
    recoveredLocal1 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20378130; bytecode file offset 0xc74a9c"
!TobTBMenuWidget methodsFor: 'recovered'!
createGC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := None.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) foregroundColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingArea.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) drawingArea.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) foregroundColor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) backgroundColor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingArea.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) drawingArea.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) backgroundColor.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) setBackground: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := LineSolid.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := CapButt.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := JoinMiter.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) setLineAttributes: (recoveredStack1) lineStyle: (recoveredStack2) capStyle: (recoveredStack3) joinStyle: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204468f0; bytecode file offset 0xd43208"
!TobTBMenuWidget methodsFor: 'recovered'!
popupAt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) realizeWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := CwWMShell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingArea.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) updateWindow.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := PlatformGlobals.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'IsWinNT'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := PlatformGlobals.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'IsWin95'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) resize.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) resizeAllChildren.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) sendEvent: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) sendEvent: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 268435456.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) setStyleBits: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) updateSubclassing.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 22.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) sendEvent: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) showWindow: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) updateWindow.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) showWithParent: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) mapWidget.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d025c; bytecode file offset 0xdccb70"
!TobTBMenuWidget methodsFor: 'recovered'!
layOutChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) separators: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block281073a4Arg1 :block281073a4Arg2 | 
    | block281073a4Value0 block281073a4Value1 block281073a4Value2 block281073a4Value3 |
    block281073a4Value0 := block281073a4Arg1.
    block281073a4Value1 := block281073a4Arg2.
    block281073a4Value2 := (block281073a4Value1) width.
    block281073a4Value3 := (block281073a4Value0) max: (block281073a4Value2).
    block281073a4Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) topMargin.
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
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42Stack5 recoveredBlock42Stack6 recoveredBlock42Stack7 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := self.
            recoveredBlock42PC := 50.
        ].
        recoveredBlock42Step = 50 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) leftMargin.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack3 := recoveredLocal3.
            recoveredBlock42PC := 55.
        ].
        recoveredBlock42Step = 55 ifTrue: [
            recoveredBlock42Stack4 := recoveredLocal2.
            recoveredBlock42PC := 58.
        ].
        recoveredBlock42Step = 58 ifTrue: [
            recoveredBlock42Stack5 := recoveredBlock42Arg1.
            recoveredBlock42PC := 59.
        ].
        recoveredBlock42Step = 59 ifTrue: [
            recoveredBlock42Stack5 := (recoveredBlock42Stack5) height.
            recoveredBlock42PC := 61.
        ].
        recoveredBlock42Step = 61 ifTrue: [
            recoveredBlock42Stack6 := recoveredBlock42Arg1.
            recoveredBlock42PC := 62.
        ].
        recoveredBlock42Step = 62 ifTrue: [
            recoveredBlock42Stack6 := (recoveredBlock42Stack6) borderWidth.
            recoveredBlock42PC := 64.
        ].
        recoveredBlock42Step = 64 ifTrue: [
            (recoveredBlock42Stack1) configureWidget: (recoveredBlock42Stack2) y: (recoveredBlock42Stack3) width: (recoveredBlock42Stack4) height: (recoveredBlock42Stack5) borderWidth: (recoveredBlock42Stack6).
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal3.
            recoveredBlock42PC := 70.
        ].
        recoveredBlock42Step = 70 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 71.
        ].
        recoveredBlock42Step = 71 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) height.
            recoveredBlock42PC := 73.
        ].
        recoveredBlock42Step = 73 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) + (recoveredBlock42Stack2).
            recoveredBlock42PC := 74.
        ].
        recoveredBlock42Step = 74 ifTrue: [
            recoveredLocal3 := recoveredBlock42Stack1.
            recoveredBlock42PC := 77.
        ].
        recoveredBlock42Step = 77 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 78.
        ].
        recoveredBlock42Step = 78 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 79.
        ].
        recoveredBlock42Step = 79 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) hasSeparator.
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 81 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 84] ifFalse: [recoveredBlock42PC := 120].
        ].
        recoveredBlock42Step = 84 ifTrue: [
            recoveredBlock42PC := 85.
        ].
        recoveredBlock42Step = 85 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal1.
            recoveredBlock42PC := 88.
        ].
        recoveredBlock42Step = 88 ifTrue: [
            recoveredBlock42Stack2 := Array.
            recoveredBlock42PC := 90.
        ].
        recoveredBlock42Step = 90 ifTrue: [
            recoveredBlock42Stack3 := 0.
            recoveredBlock42PC := 92.
        ].
        recoveredBlock42Step = 92 ifTrue: [
            recoveredBlock42Stack4 := recoveredLocal3.
            recoveredBlock42PC := 95.
        ].
        recoveredBlock42Step = 95 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) @ (recoveredBlock42Stack4).
            recoveredBlock42PC := 97.
        ].
        recoveredBlock42Step = 97 ifTrue: [
            recoveredBlock42Stack4 := self.
            recoveredBlock42PC := 98.
        ].
        recoveredBlock42Step = 98 ifTrue: [
            recoveredBlock42Stack4 := (recoveredBlock42Stack4) width.
            recoveredBlock42PC := 100.
        ].
        recoveredBlock42Step = 100 ifTrue: [
            recoveredBlock42Stack5 := recoveredLocal3.
            recoveredBlock42PC := 103.
        ].
        recoveredBlock42Step = 103 ifTrue: [
            recoveredBlock42Stack4 := (recoveredBlock42Stack4) @ (recoveredBlock42Stack5).
            recoveredBlock42PC := 105.
        ].
        recoveredBlock42Step = 105 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) with: (recoveredBlock42Stack3) with: (recoveredBlock42Stack4).
            recoveredBlock42PC := 107.
        ].
        recoveredBlock42Step = 107 ifTrue: [
            (recoveredBlock42Stack1) add: (recoveredBlock42Stack2).
            recoveredBlock42PC := 109.
        ].
        recoveredBlock42Step = 109 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal3.
            recoveredBlock42PC := 112.
        ].
        recoveredBlock42Step = 112 ifTrue: [
            recoveredBlock42Stack2 := self.
            recoveredBlock42PC := 113.
        ].
        recoveredBlock42Step = 113 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) separatorWidth.
            recoveredBlock42PC := 115.
        ].
        recoveredBlock42Step = 115 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) + (recoveredBlock42Stack2).
            recoveredBlock42PC := 116.
        ].
        recoveredBlock42Step = 116 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 117.
        ].
        recoveredBlock42Step = 117 ifTrue: [
            recoveredLocal3 := recoveredBlock42Stack2.
            recoveredBlock42PC := 120.
        ].
        recoveredBlock42Step = 120 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottomMargin.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftMargin.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightMargin.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

