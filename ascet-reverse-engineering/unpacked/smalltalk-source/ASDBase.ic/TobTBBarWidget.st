"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20037974; bytecode file offset 0x934580"
!TobTBBarWidget methodsFor: 'recovered'!
isMoveable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) areBarsMoveable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ee3c; bytecode file offset 0x95b7f0"
!TobTBBarWidget methodsFor: 'recovered'!
draw
    (self) draw: (nil).
    ^self
! !

"ASDBase.ic method 0x2006b630; bytecode file offset 0x96873c"
!TobTBBarWidget methodsFor: 'recovered'!
labelString
    | recoveredValue0 |
    recoveredValue0 := xmNlabelString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c254; bytecode file offset 0x9692b0"
!TobTBBarWidget methodsFor: 'recovered'!
fontList
    | recoveredValue0 |
    recoveredValue0 := xmNfontList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cd38; bytecode file offset 0x969c04"
!TobTBBarWidget methodsFor: 'recovered'!
showTips
    | recoveredValue0 |
    recoveredValue0 := xmNshowTips.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d3cc; bytecode file offset 0x96a390"
!TobTBBarWidget methodsFor: 'recovered'!
uniformWidth
    | recoveredValue0 |
    recoveredValue0 := xmNuniformWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e020; bytecode file offset 0x96a9dc"
!TobTBBarWidget methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := xmNchildren.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ed14; bytecode file offset 0x96b8a0"
!TobTBBarWidget methodsFor: 'recovered'!
separators
    | recoveredValue0 |
    recoveredValue0 := separators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072620; bytecode file offset 0x96f1c4"
!TobTBBarWidget methodsFor: 'recovered'!
gutter
    ^2
! !

"ASDBase.ic method 0x20079534; bytecode file offset 0x97c330"
!TobTBBarWidget methodsFor: 'recovered'!
isFloating
    ^false
! !

"ASDBase.ic method 0x2007b3bc; bytecode file offset 0x97c330"
!TobTBBarWidget methodsFor: 'recovered'!
isPrimitive
    ^false
! !

"ASDBase.ic method 0x20084570; bytecode file offset 0x981ca4"
!TobTBBarWidget methodsFor: 'recovered'!
setTextFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) fontList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200847c8; bytecode file offset 0x981ca4"
!TobTBBarWidget methodsFor: 'recovered'!
setButtonFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) fontList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086e78; bytecode file offset 0x98376c"
!TobTBBarWidget methodsFor: 'recovered'!
createToolButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createTobTBPushButton: (recoveredValue0) argBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008fb8c; bytecode file offset 0x98c444"
!TobTBBarWidget methodsFor: 'recovered'!
separatorWidth
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) gutter.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := (recoveredValue1) + (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8b84; bytecode file offset 0x9a543c"
!TobTBBarWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNfontList := recoveredValue0.
    (self) updateFont.
    ^self
! !

"ASDBase.ic method 0x200c2940; bytecode file offset 0x9bf474"
!TobTBBarWidget methodsFor: 'recovered'!
labelString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNlabelString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4314; bytecode file offset 0x9c0bf0"
!TobTBBarWidget methodsFor: 'recovered'!
uniformWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNuniformWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44d0; bytecode file offset 0x9c11bc"
!TobTBBarWidget methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNchildren := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4fb0; bytecode file offset 0x9c1afc"
!TobTBBarWidget methodsFor: 'recovered'!
colorTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    colorTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5638; bytecode file offset 0x9c1f64"
!TobTBBarWidget methodsFor: 'recovered'!
separators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    separators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f24e4; bytecode file offset 0x9eedc0"
!TobTBBarWidget methodsFor: 'recovered'!
isDrawEnabled
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCreated.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f762c; bytecode file offset 0x9f4e38"
!TobTBBarWidget methodsFor: 'recovered'!
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
            recoveredStack1 := [:block280c4740Arg1 | 
    | block280c4740Value0 block280c4740Value1 |
    block280c4740Value0 := block280c4740Arg1.
    block280c4740Value1 := (block280c4740Value0) isManaged.
    block280c4740Value1
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

"ASDBase.ic method 0x200ffa4c; bytecode file offset 0x9fc310"
!TobTBBarWidget methodsFor: 'recovered'!
addChild: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) children.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) fontList.
    (recoveredValue2) fontList: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20102f40; bytecode file offset 0x9ff8dc"
!TobTBBarWidget methodsFor: 'recovered'!
drawingWindow
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
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

"ASDBase.ic method 0x20106530; bytecode file offset 0xa02de8"
!TobTBBarWidget methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2011aa3c; bytecode file offset 0xa172f4"
!TobTBBarWidget methodsFor: 'recovered'!
leftMarginForThumb
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMoveable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 7.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20121048; bytecode file offset 0xa1d908"
!TobTBBarWidget methodsFor: 'recovered'!
drawThumb: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMoveable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := #(4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicDrawThumb: (recoveredStack1) offsets: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201235ac; bytecode file offset 0xa1fe80"
!TobTBBarWidget methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := TobTBDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createWidget: (recoveredValue1) parent: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) userData: (self).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20138ec0; bytecode file offset 0xa357a8"
!TobTBBarWidget methodsFor: 'recovered'!
createTobTBPushButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := TobTBPushButtonWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addChild: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20138ed4; bytecode file offset 0xa357a8"
!TobTBBarWidget methodsFor: 'recovered'!
createTobTBMenuButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := TobTBMenuButtonWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addChild: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20138ee8; bytecode file offset 0xa357a8"
!TobTBBarWidget methodsFor: 'recovered'!
createTobTBPushAndMenuButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := TobTBPushAndMenuButtonWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addChild: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20150e78; bytecode file offset 0xa4d73c"
!TobTBBarWidget methodsFor: 'recovered'!
createSeparator
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
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) hasSeparator: (recoveredStack1).
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

"ASDBase.ic method 0x2016165c; bytecode file offset 0xa5df38"
!TobTBBarWidget methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201799a8; bytecode file offset 0xa76270"
!TobTBBarWidget methodsFor: 'recovered'!
resize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := TobTBDockingAreaWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) layOutChildren.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) draw.
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

"ASDBase.ic method 0x20196bc8; bytecode file offset 0xa9351c"
!TobTBBarWidget methodsFor: 'recovered'!
toolNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a2280; bytecode file offset 0xa9eb4c"
!TobTBBarWidget methodsFor: 'recovered'!
preferredWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gutter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block280d2a5cArg1 :block280d2a5cArg2 | 
    | block280d2a5cValue0 block280d2a5cValue1 block280d2a5cValue2 block280d2a5cValue3 |
    block280d2a5cValue0 := block280d2a5cArg1.
    block280d2a5cValue1 := block280d2a5cArg2.
    block280d2a5cValue2 := (block280d2a5cValue1) width.
    block280d2a5cValue3 := (block280d2a5cValue0) max: (block280d2a5cValue2).
    block280d2a5cValue3
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a3128; bytecode file offset 0xa9f9f0"
!TobTBBarWidget methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 |
    super initializeResources.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    xmNchildren := recoveredValue1.
    xmNuniformWidth := false.
    xmNmoveable := false.
    xmNlabelString := ''.
    ^self
! !

"ASDBase.ic method 0x201df87c; bytecode file offset 0xadc148"
!TobTBBarWidget methodsFor: 'recovered'!
createTobTBToggleButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TobTBToggleButtonWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addChild: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := XmNvalueChangedCallback.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) addCallback: (recoveredValue6) receiver: (self) selector: ('toggleButtonValueChanged:clientData:callData:') clientData: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20222344; bytecode file offset 0xb1ec1c"
!TobTBBarWidget methodsFor: 'recovered'!
expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    (self) layOutChildren.
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) event.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) event.
    recoveredValue5 := (recoveredValue4) y.
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) event.
    recoveredValue9 := (recoveredValue8) width.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) event.
    recoveredValue12 := (recoveredValue11) height.
    recoveredValue13 := (recoveredValue9) @ (recoveredValue12).
    recoveredValue14 := (recoveredValue6) extent: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    (self) draw: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x20228e40; bytecode file offset 0xb25704"
!TobTBBarWidget methodsFor: 'recovered'!
setSensitive: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) setSensitive: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x202309d8; bytecode file offset 0xb2d2b0"
!TobTBBarWidget methodsFor: 'recovered'!
hookCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNresizeCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('resize:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := XmNexposeCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('expose:clientData:callData:') clientData: (nil).
    recoveredValue5 := Button1MotionMask.
    (recoveredValue0) addEventHandler: (recoveredValue5) receiver: (self) selector: ('button1Motion:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x20248b44; bytecode file offset 0xb45418"
!TobTBBarWidget methodsFor: 'recovered'!
preferredHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) gutter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280de858Arg1 :block280de858Arg2 | 
    | block280de858Value0 block280de858Value1 block280de858Value2 block280de858Value3 block280de858Value4 block280de858Value5 block280de858Value6 |
    block280de858Value0 := block280de858Arg1.
    block280de858Value1 := block280de858Arg2.
    block280de858Value2 := (block280de858Value1) y.
    block280de858Value3 := block280de858Arg2.
    block280de858Value4 := (block280de858Value3) height.
    block280de858Value5 := (block280de858Value2) + (block280de858Value4).
    block280de858Value6 := (block280de858Value0) max: (block280de858Value5).
    block280de858Value6
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025fa64; bytecode file offset 0xb5c33c"
!TobTBBarWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := (recoveredStack1) defaultFontList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (self) processMnemonicAndAcceleterators: (recoveredBlock22Value0).
    recoveredBlock22Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) processMnemonicAndAcceleratorsBlock: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) hookCallbacks.
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

"ASDBase.ic method 0x20300580; bytecode file offset 0xbfce60"
!TobTBBarWidget methodsFor: 'recovered'!
draw: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
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
            recoveredStack0 := (recoveredStack0) primaryWidget.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := Unsorted.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) setClipRectangles: (recoveredStack1) clipYOrigin: (recoveredStack2) rectangles: (recoveredStack3) ordering: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) drawThumb: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) drawBorder: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) drawSeparators: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b617c; bytecode file offset 0xcb2a78"
!TobTBBarWidget methodsFor: 'recovered'!
createGC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
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
            recoveredStack0 := (recoveredStack0) primaryWidget.
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
            recoveredStack1 := (recoveredStack1) primaryWidget.
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
            recoveredStack2 := (recoveredStack2) primaryWidget.
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
            recoveredStack0 := (recoveredStack0) primaryWidget.
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
            recoveredStack1 := (recoveredStack1) primaryWidget.
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
            recoveredStack2 := (recoveredStack2) primaryWidget.
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
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) font.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) setFont: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ef440; bytecode file offset 0xcebd28"
!TobTBBarWidget methodsFor: 'recovered'!
processMnemonicAndAcceleterators: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) sensitive.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 86].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMapped.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 86].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) mnemonic.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 86] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) keysym.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) asCharacter.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) asUppercase.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) mnemonic.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) asUppercase.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            (recoveredBlock5Stack2 ~~ recoveredBlock5Stack3) ifTrue: [recoveredBlock5PC := 86] ifFalse: [recoveredBlock5PC := 48].
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) state.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack3 := ControlMask.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bitAnd: (recoveredBlock5Stack3).
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack3 := ControlMask.
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ~= (recoveredBlock5Stack3).
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 64] ifFalse: [recoveredBlock5PC := 86].
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) state.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Stack3 := Mod1Mask.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bitAnd: (recoveredBlock5Stack3).
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack3 := Mod1Mask.
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 80] ifFalse: [recoveredBlock5PC := 86].
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 81 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            (recoveredBlock5Stack1) mnemonicAction.
            recoveredBlock5PC := 84.
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 85.
        ].
        recoveredBlock5Step = 85 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2040dee0; bytecode file offset 0xd0a7bc"
!TobTBBarWidget methodsFor: 'recovered'!
drawBorder: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := (self) primaryWidget.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) drawingWindow.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) colorTable.
    recoveredValue4 := (recoveredValue3) at: ('highlight').
    (recoveredValue2) setForeground: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) height.
    recoveredValue10 := (recoveredValue9) + (-1).
    (recoveredValue6) drawLine: (recoveredValue7) x1: (0) y1: (recoveredValue10) x2: (0) y2: (0).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) width.
    recoveredValue14 := (recoveredValue13) + (-1).
    (recoveredValue5) drawLine: (recoveredValue11) x1: (0) y1: (0) x2: (recoveredValue14) y2: (0).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (self) colorTable.
    recoveredValue17 := (recoveredValue16) at: ('shadow').
    (recoveredValue15) setForeground: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue21) height.
    recoveredValue23 := (recoveredValue22) + (-1).
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue24) width.
    recoveredValue26 := (recoveredValue25) + (-1).
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) height.
    recoveredValue29 := (recoveredValue28) + (-1).
    (recoveredValue19) drawLine: (recoveredValue20) x1: (0) y1: (recoveredValue23) x2: (recoveredValue26) y2: (recoveredValue29).
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := (self) width.
    recoveredValue32 := (recoveredValue31) + (-1).
    recoveredValue33 := (self) height.
    recoveredValue34 := (recoveredValue33) + (-1).
    recoveredValue35 := (self) width.
    recoveredValue36 := (recoveredValue35) + (-1).
    (recoveredValue18) drawLine: (recoveredValue30) x1: (recoveredValue32) y1: (recoveredValue34) x2: (recoveredValue36) y2: (0).
    ^self
! !

"ASDBase.ic method 0x20417244; bytecode file offset 0xd13b50"
!TobTBBarWidget methodsFor: 'recovered'!
initializeColors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwSystemColors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setPalette: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'background'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) backgroundColor.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) buttonFace.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) backgroundColor.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'shadow'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) buttonShading.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'highlight'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) buttonHighlight.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'text'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) foregroundColor.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) buttonText.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) foregroundColor.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) nearestPixelValue: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) colorTable: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041b048; bytecode file offset 0xd1793c"
!TobTBBarWidget methodsFor: 'recovered'!
createTobTBInput: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := TobTBInputWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (self) addChild: (recoveredValue4).
    recoveredValue5 := CwText.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) , ('text').
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 recoveredBlock36Value10 recoveredBlock36Value11 recoveredBlock36Value12 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredBlock36Value0.
    recoveredBlock36Value2 := recoveredLocal2.
    recoveredBlock36Value3 := (recoveredBlock36Value2) basicCalculateSizes.
    recoveredBlock36Value4 := (recoveredBlock36Value3) x.
    recoveredBlock36Value5 := (recoveredBlock36Value4) + (-1).
    (recoveredBlock36Value1) width: (recoveredBlock36Value5).
    recoveredBlock36Value6 := recoveredBlock36Value0.
    (recoveredBlock36Value6) y: (1).
    recoveredBlock36Value7 := recoveredBlock36Value0.
    recoveredBlock36Value8 := recoveredLocal2.
    recoveredBlock36Value9 := (recoveredBlock36Value8) fontList.
    (recoveredBlock36Value7) fontList: (recoveredBlock36Value9).
    recoveredBlock36Value10 := recoveredBlock36Value0.
    (recoveredBlock36Value10) editable: (true).
    recoveredBlock36Value11 := recoveredLocal2.
    recoveredBlock36Value12 := (recoveredBlock36Value0) userData: (recoveredBlock36Value11).
    recoveredBlock36Value12
].
    recoveredValue10 := (recoveredValue5) createWidget: (recoveredValue7) parent: (recoveredValue8) argBlock: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) manageChild.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) inputField: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x20430334; bytecode file offset 0xd2cc30"
!TobTBBarWidget methodsFor: 'recovered'!
createTobTBCombo: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := TobTBComboWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (self) addChild: (recoveredValue4).
    recoveredValue5 := CwComboBox.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) , ('combo').
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 recoveredBlock36Value10 recoveredBlock36Value11 recoveredBlock36Value12 recoveredBlock36Value13 recoveredBlock36Value14 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredBlock36Value0.
    recoveredBlock36Value2 := recoveredLocal2.
    recoveredBlock36Value3 := (recoveredBlock36Value2) width.
    recoveredBlock36Value4 := (recoveredBlock36Value3) + (-1).
    (recoveredBlock36Value1) width: (recoveredBlock36Value4).
    recoveredBlock36Value5 := recoveredBlock36Value0.
    (recoveredBlock36Value5) y: (1).
    recoveredBlock36Value6 := recoveredBlock36Value0.
    recoveredBlock36Value7 := recoveredLocal2.
    recoveredBlock36Value8 := (recoveredBlock36Value7) fontList.
    (recoveredBlock36Value6) fontList: (recoveredBlock36Value8).
    recoveredBlock36Value9 := recoveredBlock36Value0.
    (recoveredBlock36Value9) editable: (true).
    recoveredBlock36Value10 := recoveredBlock36Value0.
    recoveredBlock36Value11 := CgRGBColor.
    recoveredBlock36Value12 := (recoveredBlock36Value11) white.
    (recoveredBlock36Value10) backgroundColor: (recoveredBlock36Value12).
    recoveredBlock36Value13 := recoveredLocal2.
    recoveredBlock36Value14 := (recoveredBlock36Value0) userData: (recoveredBlock36Value13).
    recoveredBlock36Value14
].
    recoveredValue10 := (recoveredValue5) createWidget: (recoveredValue7) parent: (recoveredValue8) argBlock: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) manageChild.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) comboBox: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x204aaf14; bytecode file offset 0xda77f0"
!TobTBBarWidget methodsFor: 'recovered'!
basicDrawThumb: recoveredArg1 offsets: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) primaryWidget.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) drawingWindow.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 recoveredBlock16Value11 recoveredBlock16Value12 recoveredBlock16Value13 recoveredBlock16Value14 recoveredBlock16Value15 recoveredBlock16Value16 recoveredBlock16Value17 recoveredBlock16Value18 recoveredBlock16Value19 recoveredBlock16Value20 recoveredBlock16Value21 recoveredBlock16Value22 recoveredBlock16Value23 recoveredBlock16Value24 recoveredBlock16Value25 recoveredBlock16Value26 recoveredBlock16Value27 recoveredBlock16Value28 recoveredBlock16Value29 recoveredBlock16Value30 recoveredBlock16Value31 recoveredBlock16Value32 recoveredBlock16Value33 recoveredBlock16Value34 recoveredBlock16Value35 recoveredBlock16Value36 recoveredBlock16Value37 recoveredBlock16Value38 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := (self) colorTable.
    recoveredBlock16Value2 := (recoveredBlock16Value1) at: ('highlight').
    (recoveredBlock16Value0) setForeground: (recoveredBlock16Value2).
    recoveredBlock16Value3 := recoveredLocal2.
    recoveredBlock16Value4 := recoveredBlock16Value3.
    recoveredBlock16Value5 := recoveredArg1.
    recoveredBlock16Value6 := recoveredBlock16Arg1.
    recoveredBlock16Value7 := recoveredBlock16Arg1.
    recoveredBlock16Value8 := recoveredLocal1.
    recoveredBlock16Value9 := (recoveredBlock16Value8) height.
    recoveredBlock16Value10 := (recoveredBlock16Value9) - (3).
    (recoveredBlock16Value4) drawLine: (recoveredBlock16Value5) x1: (recoveredBlock16Value6) y1: (2) x2: (recoveredBlock16Value7) y2: (recoveredBlock16Value10).
    recoveredBlock16Value11 := recoveredArg1.
    recoveredBlock16Value12 := recoveredBlock16Arg1.
    recoveredBlock16Value13 := recoveredBlock16Arg1.
    recoveredBlock16Value14 := (2) + (recoveredBlock16Value13).
    (recoveredBlock16Value3) drawLine: (recoveredBlock16Value11) x1: (recoveredBlock16Value12) y1: (2) x2: (recoveredBlock16Value14) y2: (2).
    recoveredBlock16Value15 := recoveredArg1.
    recoveredBlock16Value16 := (self) colorTable.
    recoveredBlock16Value17 := (recoveredBlock16Value16) at: ('shadow').
    (recoveredBlock16Value15) setForeground: (recoveredBlock16Value17).
    recoveredBlock16Value18 := recoveredLocal2.
    recoveredBlock16Value19 := recoveredBlock16Value18.
    recoveredBlock16Value20 := recoveredArg1.
    recoveredBlock16Value21 := recoveredBlock16Arg1.
    recoveredBlock16Value22 := recoveredLocal1.
    recoveredBlock16Value23 := (recoveredBlock16Value22) height.
    recoveredBlock16Value24 := (recoveredBlock16Value23) - (3).
    recoveredBlock16Value25 := recoveredBlock16Arg1.
    recoveredBlock16Value26 := (2) + (recoveredBlock16Value25).
    recoveredBlock16Value27 := recoveredLocal1.
    recoveredBlock16Value28 := (recoveredBlock16Value27) height.
    recoveredBlock16Value29 := (recoveredBlock16Value28) - (3).
    (recoveredBlock16Value19) drawLine: (recoveredBlock16Value20) x1: (recoveredBlock16Value21) y1: (recoveredBlock16Value24) x2: (recoveredBlock16Value26) y2: (recoveredBlock16Value29).
    recoveredBlock16Value30 := recoveredArg1.
    recoveredBlock16Value31 := recoveredBlock16Arg1.
    recoveredBlock16Value32 := (2) + (recoveredBlock16Value31).
    recoveredBlock16Value33 := recoveredBlock16Arg1.
    recoveredBlock16Value34 := (2) + (recoveredBlock16Value33).
    recoveredBlock16Value35 := recoveredLocal1.
    recoveredBlock16Value36 := (recoveredBlock16Value35) height.
    recoveredBlock16Value37 := (recoveredBlock16Value36) - (3).
    recoveredBlock16Value38 := (recoveredBlock16Value18) drawLine: (recoveredBlock16Value30) x1: (recoveredBlock16Value32) y1: (2) x2: (recoveredBlock16Value34) y2: (recoveredBlock16Value37).
    recoveredBlock16Value38
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204c4ab4; bytecode file offset 0xdc1388"
!TobTBBarWidget methodsFor: 'recovered'!
toggleButtonValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasRadioBehaviour.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSet.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSeparator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 50] ifFalse: [recoveredBlock37PC := 70].
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack2 := recoveredLocal1.
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 58] ifFalse: [recoveredBlock37PC := 66].
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) unsetRadioToRight.
            recoveredBlock37PC := 62.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock37Stack2.
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37PC := 84.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 71.
        ].
        recoveredBlock37Step = 71 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37Stack3 := recoveredArg2.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            (recoveredBlock37Stack2 ~~ recoveredBlock37Stack3) ifTrue: [recoveredBlock37PC := 84] ifFalse: [recoveredBlock37PC := 78].
        ].
        recoveredBlock37Step = 78 ifTrue: [
            recoveredBlock37PC := 79.
        ].
        recoveredBlock37Step = 79 ifTrue: [
            recoveredBlock37Stack1 := true.
            recoveredBlock37PC := 80.
        ].
        recoveredBlock37Step = 80 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            recoveredLocal2 := recoveredBlock37Stack2.
            recoveredBlock37PC := 84.
        ].
        recoveredBlock37Step = 84 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal2.
            recoveredBlock99PC := 109.
        ].
        recoveredBlock99Step = 109 ifTrue: [
            (recoveredBlock99Stack1) ifTrue: [recoveredBlock99PC := 112] ifFalse: [recoveredBlock99PC := 132].
        ].
        recoveredBlock99Step = 112 ifTrue: [
            recoveredBlock99Stack1 := nil.
            recoveredBlock99PC := 113.
        ].
        recoveredBlock99Step = 113 ifTrue: [
            recoveredBlock99Stack2 := recoveredLocal1.
            recoveredBlock99PC := 116.
        ].
        recoveredBlock99Step = 116 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 120] ifFalse: [recoveredBlock99PC := 128].
        ].
        recoveredBlock99Step = 120 ifTrue: [
            recoveredBlock99PC := 121.
        ].
        recoveredBlock99Step = 121 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 122.
        ].
        recoveredBlock99Step = 122 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) unsetRadioToLeft.
            recoveredBlock99PC := 124.
        ].
        recoveredBlock99Step = 124 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Stack1.
            recoveredBlock99PC := 125.
        ].
        recoveredBlock99Step = 125 ifTrue: [
            recoveredLocal1 := recoveredBlock99Stack2.
            recoveredBlock99PC := 128.
        ].
        recoveredBlock99Step = 128 ifTrue: [
            recoveredBlock99PC := 146.
        ].
        recoveredBlock99Step = 132 ifTrue: [
            recoveredBlock99Stack1 := nil.
            recoveredBlock99PC := 133.
        ].
        recoveredBlock99Step = 133 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 134.
        ].
        recoveredBlock99Step = 134 ifTrue: [
            recoveredBlock99Stack3 := recoveredArg2.
            recoveredBlock99PC := 137.
        ].
        recoveredBlock99Step = 137 ifTrue: [
            (recoveredBlock99Stack2 ~~ recoveredBlock99Stack3) ifTrue: [recoveredBlock99PC := 146] ifFalse: [recoveredBlock99PC := 140].
        ].
        recoveredBlock99Step = 140 ifTrue: [
            recoveredBlock99PC := 141.
        ].
        recoveredBlock99Step = 141 ifTrue: [
            recoveredBlock99Stack1 := true.
            recoveredBlock99PC := 142.
        ].
        recoveredBlock99Step = 142 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Stack1.
            recoveredBlock99PC := 143.
        ].
        recoveredBlock99Step = 143 ifTrue: [
            recoveredLocal2 := recoveredBlock99Stack2.
            recoveredBlock99PC := 146.
        ].
        recoveredBlock99Step = 146 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack1.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e405c; bytecode file offset 0xde094c"
!TobTBBarWidget methodsFor: 'recovered'!
button1Motion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMoveable.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) tobTBContainsMouseEventPoint: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) tobTBTranslateCoords: (recoveredStack1) point: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) tobTBContainsMouseEventPoint: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightwardChildOf: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) moveRightwardsInRow: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftwardChildOf: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) moveLeftwardsInRow: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
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
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) moveUpARow: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) moveDownARow: (recoveredStack1).
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

"ASDBase.ic method 0x2055f580; bytecode file offset 0xe5be68"
!TobTBBarWidget methodsFor: 'recovered'!
drawSeparators: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) primaryWidget.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) drawingWindow.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) gutter.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) separators.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20Stack6 recoveredBlock20Stack7 recoveredBlock20Stack8 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := 1.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack2 := 2.
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local2.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) x.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) x.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) = (recoveredBlock20Stack2).
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 48] ifFalse: [recoveredBlock20PC := 140].
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 52.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) colorTable.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack3 := 'shadow'.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            (recoveredBlock20Stack1) setForeground: (recoveredBlock20Stack2).
            recoveredBlock20PC := 60.
        ].
        recoveredBlock20Step = 60 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) x.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack4 := recoveredLocal1.
            recoveredBlock20PC := 72.
        ].
        recoveredBlock20Step = 72 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (recoveredBlock20Stack4).
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local2.
            recoveredBlock20PC := 74.
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) y.
            recoveredBlock20PC := 76.
        ].
        recoveredBlock20Step = 76 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (1).
            recoveredBlock20PC := 77.
        ].
        recoveredBlock20Step = 77 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local1.
            recoveredBlock20PC := 78.
        ].
        recoveredBlock20Step = 78 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) x.
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack6 := recoveredLocal1.
            recoveredBlock20PC := 83.
        ].
        recoveredBlock20Step = 83 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (recoveredBlock20Stack6).
            recoveredBlock20PC := 84.
        ].
        recoveredBlock20Step = 84 ifTrue: [
            recoveredBlock20Stack6 := recoveredBlock20Local1.
            recoveredBlock20PC := 85.
        ].
        recoveredBlock20Step = 85 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) y.
            recoveredBlock20PC := 87.
        ].
        recoveredBlock20Step = 87 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) + (-1).
            recoveredBlock20PC := 88.
        ].
        recoveredBlock20Step = 88 ifTrue: [
            (recoveredBlock20Stack1) drawLine: (recoveredBlock20Stack2) x1: (recoveredBlock20Stack3) y1: (recoveredBlock20Stack4) x2: (recoveredBlock20Stack5) y2: (recoveredBlock20Stack6).
            recoveredBlock20PC := 91.
        ].
        recoveredBlock20Step = 91 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 95.
        ].
        recoveredBlock20Step = 95 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) colorTable.
            recoveredBlock20PC := 97.
        ].
        recoveredBlock20Step = 97 ifTrue: [
            recoveredBlock20Stack3 := 'highlight'.
            recoveredBlock20PC := 99.
        ].
        recoveredBlock20Step = 99 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 101.
        ].
        recoveredBlock20Step = 101 ifTrue: [
            (recoveredBlock20Stack1) setForeground: (recoveredBlock20Stack2).
            recoveredBlock20PC := 103.
        ].
        recoveredBlock20Step = 103 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 106.
        ].
        recoveredBlock20Step = 106 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 109.
        ].
        recoveredBlock20Step = 109 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 110.
        ].
        recoveredBlock20Step = 110 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) x.
            recoveredBlock20PC := 112.
        ].
        recoveredBlock20Step = 112 ifTrue: [
            recoveredBlock20Stack4 := recoveredLocal1.
            recoveredBlock20PC := 115.
        ].
        recoveredBlock20Step = 115 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (recoveredBlock20Stack4).
            recoveredBlock20PC := 116.
        ].
        recoveredBlock20Step = 116 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (1).
            recoveredBlock20PC := 117.
        ].
        recoveredBlock20Step = 117 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local2.
            recoveredBlock20PC := 118.
        ].
        recoveredBlock20Step = 118 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) y.
            recoveredBlock20PC := 120.
        ].
        recoveredBlock20Step = 120 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (1).
            recoveredBlock20PC := 121.
        ].
        recoveredBlock20Step = 121 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local1.
            recoveredBlock20PC := 122.
        ].
        recoveredBlock20Step = 122 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) x.
            recoveredBlock20PC := 124.
        ].
        recoveredBlock20Step = 124 ifTrue: [
            recoveredBlock20Stack6 := recoveredLocal1.
            recoveredBlock20PC := 127.
        ].
        recoveredBlock20Step = 127 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (recoveredBlock20Stack6).
            recoveredBlock20PC := 128.
        ].
        recoveredBlock20Step = 128 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (1).
            recoveredBlock20PC := 129.
        ].
        recoveredBlock20Step = 129 ifTrue: [
            recoveredBlock20Stack6 := recoveredBlock20Local1.
            recoveredBlock20PC := 130.
        ].
        recoveredBlock20Step = 130 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) y.
            recoveredBlock20PC := 132.
        ].
        recoveredBlock20Step = 132 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) + (-1).
            recoveredBlock20PC := 133.
        ].
        recoveredBlock20Step = 133 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) drawLine: (recoveredBlock20Stack2) x1: (recoveredBlock20Stack3) y1: (recoveredBlock20Stack4) x2: (recoveredBlock20Stack5) y2: (recoveredBlock20Stack6).
            recoveredBlock20PC := 136.
        ].
        recoveredBlock20Step = 136 ifTrue: [
            recoveredBlock20PC := 228.
        ].
        recoveredBlock20Step = 140 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 143.
        ].
        recoveredBlock20Step = 143 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 144.
        ].
        recoveredBlock20Step = 144 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) colorTable.
            recoveredBlock20PC := 146.
        ].
        recoveredBlock20Step = 146 ifTrue: [
            recoveredBlock20Stack3 := 'shadow'.
            recoveredBlock20PC := 148.
        ].
        recoveredBlock20Step = 148 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 150.
        ].
        recoveredBlock20Step = 150 ifTrue: [
            (recoveredBlock20Stack1) setForeground: (recoveredBlock20Stack2).
            recoveredBlock20PC := 152.
        ].
        recoveredBlock20Step = 152 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 155.
        ].
        recoveredBlock20Step = 155 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 158.
        ].
        recoveredBlock20Step = 158 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 159.
        ].
        recoveredBlock20Step = 159 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) x.
            recoveredBlock20PC := 161.
        ].
        recoveredBlock20Step = 161 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (1).
            recoveredBlock20PC := 162.
        ].
        recoveredBlock20Step = 162 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local2.
            recoveredBlock20PC := 163.
        ].
        recoveredBlock20Step = 163 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) y.
            recoveredBlock20PC := 165.
        ].
        recoveredBlock20Step = 165 ifTrue: [
            recoveredBlock20Stack5 := recoveredLocal1.
            recoveredBlock20PC := 168.
        ].
        recoveredBlock20Step = 168 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (recoveredBlock20Stack5).
            recoveredBlock20PC := 169.
        ].
        recoveredBlock20Step = 169 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local1.
            recoveredBlock20PC := 170.
        ].
        recoveredBlock20Step = 170 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) x.
            recoveredBlock20PC := 172.
        ].
        recoveredBlock20Step = 172 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (-1).
            recoveredBlock20PC := 173.
        ].
        recoveredBlock20Step = 173 ifTrue: [
            recoveredBlock20Stack6 := recoveredBlock20Local1.
            recoveredBlock20PC := 174.
        ].
        recoveredBlock20Step = 174 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) y.
            recoveredBlock20PC := 176.
        ].
        recoveredBlock20Step = 176 ifTrue: [
            recoveredBlock20Stack7 := recoveredLocal1.
            recoveredBlock20PC := 179.
        ].
        recoveredBlock20Step = 179 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) + (recoveredBlock20Stack7).
            recoveredBlock20PC := 180.
        ].
        recoveredBlock20Step = 180 ifTrue: [
            (recoveredBlock20Stack1) drawLine: (recoveredBlock20Stack2) x1: (recoveredBlock20Stack3) y1: (recoveredBlock20Stack4) x2: (recoveredBlock20Stack5) y2: (recoveredBlock20Stack6).
            recoveredBlock20PC := 183.
        ].
        recoveredBlock20Step = 183 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 186.
        ].
        recoveredBlock20Step = 186 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 187.
        ].
        recoveredBlock20Step = 187 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) colorTable.
            recoveredBlock20PC := 189.
        ].
        recoveredBlock20Step = 189 ifTrue: [
            recoveredBlock20Stack3 := 'highlight'.
            recoveredBlock20PC := 191.
        ].
        recoveredBlock20Step = 191 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 193.
        ].
        recoveredBlock20Step = 193 ifTrue: [
            (recoveredBlock20Stack1) setForeground: (recoveredBlock20Stack2).
            recoveredBlock20PC := 195.
        ].
        recoveredBlock20Step = 195 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 198.
        ].
        recoveredBlock20Step = 198 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 201.
        ].
        recoveredBlock20Step = 201 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 202.
        ].
        recoveredBlock20Step = 202 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) x.
            recoveredBlock20PC := 204.
        ].
        recoveredBlock20Step = 204 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (1).
            recoveredBlock20PC := 205.
        ].
        recoveredBlock20Step = 205 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local2.
            recoveredBlock20PC := 206.
        ].
        recoveredBlock20Step = 206 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) y.
            recoveredBlock20PC := 208.
        ].
        recoveredBlock20Step = 208 ifTrue: [
            recoveredBlock20Stack5 := recoveredLocal1.
            recoveredBlock20PC := 211.
        ].
        recoveredBlock20Step = 211 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (recoveredBlock20Stack5).
            recoveredBlock20PC := 212.
        ].
        recoveredBlock20Step = 212 ifTrue: [
            recoveredBlock20Stack4 := (recoveredBlock20Stack4) + (1).
            recoveredBlock20PC := 213.
        ].
        recoveredBlock20Step = 213 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local1.
            recoveredBlock20PC := 214.
        ].
        recoveredBlock20Step = 214 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) x.
            recoveredBlock20PC := 216.
        ].
        recoveredBlock20Step = 216 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) + (-1).
            recoveredBlock20PC := 217.
        ].
        recoveredBlock20Step = 217 ifTrue: [
            recoveredBlock20Stack6 := recoveredBlock20Local1.
            recoveredBlock20PC := 218.
        ].
        recoveredBlock20Step = 218 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) y.
            recoveredBlock20PC := 220.
        ].
        recoveredBlock20Step = 220 ifTrue: [
            recoveredBlock20Stack7 := recoveredLocal1.
            recoveredBlock20PC := 223.
        ].
        recoveredBlock20Step = 223 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) + (recoveredBlock20Stack7).
            recoveredBlock20PC := 224.
        ].
        recoveredBlock20Step = 224 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) + (1).
            recoveredBlock20PC := 225.
        ].
        recoveredBlock20Step = 225 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) drawLine: (recoveredBlock20Stack2) x1: (recoveredBlock20Stack3) y1: (recoveredBlock20Stack4) x2: (recoveredBlock20Stack5) y2: (recoveredBlock20Stack6).
            recoveredBlock20PC := 228.
        ].
        recoveredBlock20Step = 228 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20624148; bytecode file offset 0xf20a74"
!TobTBBarWidget methodsFor: 'recovered'!
layOutChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gutter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) separators: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block2811ef9cArg1 :block2811ef9cArg2 | 
    | block2811ef9cValue0 block2811ef9cValue1 block2811ef9cValue2 block2811ef9cValue3 |
    block2811ef9cValue0 := block2811ef9cArg1.
    block2811ef9cValue1 := block2811ef9cArg2.
    block2811ef9cValue2 := (block2811ef9cValue1) height.
    block2811ef9cValue3 := (block2811ef9cValue0) max: (block2811ef9cValue2).
    block2811ef9cValue3
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 :recoveredBlock57Arg2 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal1.
            recoveredBlock57PC := 67.
        ].
        recoveredBlock57Step = 67 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg2.
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            (recoveredBlock57Stack1) add: (recoveredBlock57Stack2).
            recoveredBlock57PC := 70.
        ].
        recoveredBlock57Step = 70 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg2.
            recoveredBlock57PC := 71.
        ].
        recoveredBlock57Step = 71 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) hasSeparator.
            recoveredBlock57PC := 73.
        ].
        recoveredBlock57Step = 73 ifTrue: [
            (recoveredBlock57Stack1) ifTrue: [recoveredBlock57PC := 76] ifFalse: [recoveredBlock57PC := 90].
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal2.
            recoveredBlock57PC := 79.
        ].
        recoveredBlock57Step = 79 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal1.
            recoveredBlock57PC := 82.
        ].
        recoveredBlock57Step = 82 ifTrue: [
            (recoveredBlock57Stack1) add: (recoveredBlock57Stack2).
            recoveredBlock57PC := 84.
        ].
        recoveredBlock57Step = 84 ifTrue: [
            recoveredBlock57Stack1 := OrderedCollection.
            recoveredBlock57PC := 86.
        ].
        recoveredBlock57Step = 86 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) new.
            recoveredBlock57PC := 87.
        ].
        recoveredBlock57Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock57Stack1.
            recoveredBlock57PC := 90.
        ].
        recoveredBlock57Step = 90 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg2.
            recoveredBlock57PC := 91.
        ].
        recoveredBlock57Step = 91 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) canBeResizedHorizonally.
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 93 ifTrue: [
            (recoveredBlock57Stack1) ifTrue: [recoveredBlock57PC := 96] ifFalse: [recoveredBlock57PC := 106].
        ].
        recoveredBlock57Step = 96 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 97.
        ].
        recoveredBlock57Step = 97 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg2.
            recoveredBlock57PC := 98.
        ].
        recoveredBlock57Step = 98 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) width.
            recoveredBlock57PC := 100.
        ].
        recoveredBlock57Step = 100 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) max: (recoveredBlock57Stack2).
            recoveredBlock57PC := 102.
        ].
        recoveredBlock57Step = 102 ifTrue: [
            recoveredBlock57PC := 107.
        ].
        recoveredBlock57Step = 106 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 107.
        ].
        recoveredBlock57Step = 107 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftMarginForThumb.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Local1 recoveredBlock149Local2 recoveredBlock149Stack0 recoveredBlock149Stack1 recoveredBlock149Stack2 recoveredBlock149Stack3 recoveredBlock149Stack4 recoveredBlock149Stack5 recoveredBlock149Stack6 recoveredBlock149PC recoveredBlock149Step recoveredBlock149Done recoveredBlock149Result |
    recoveredBlock149Stack0 := self.
    recoveredBlock149PC := 156.
    recoveredBlock149Done := false.
    [recoveredBlock149Done not] whileTrue: [
        recoveredBlock149Step := recoveredBlock149PC.
        recoveredBlock149Step = 156 ifTrue: [
            recoveredBlock149Stack1 := Dictionary.
            recoveredBlock149PC := 158.
        ].
        recoveredBlock149Step = 158 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) new.
            recoveredBlock149PC := 159.
        ].
        recoveredBlock149Step = 159 ifTrue: [
            recoveredBlock149Local1 := recoveredBlock149Stack1.
            recoveredBlock149PC := 162.
        ].
        recoveredBlock149Step = 162 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 165.
        ].
        recoveredBlock149Step = 165 ifTrue: [
            recoveredBlock149Stack2 := 0.
            recoveredBlock149PC := 167.
        ].
        recoveredBlock149Step = 167 ifTrue: [
            recoveredBlock149Stack3 := [:recoveredBlock149Block167Arg1 :recoveredBlock149Block167Arg2 | 
    | recoveredBlock149Block167Local1 recoveredBlock149Block167Stack0 recoveredBlock149Block167Stack1 recoveredBlock149Block167Stack2 recoveredBlock149Block167Stack3 recoveredBlock149Block167PC recoveredBlock149Block167Step recoveredBlock149Block167Done recoveredBlock149Block167Result |
    recoveredBlock149Block167Stack0 := self.
    recoveredBlock149Block167PC := 174.
    recoveredBlock149Block167Done := false.
    [recoveredBlock149Block167Done not] whileTrue: [
        recoveredBlock149Block167Step := recoveredBlock149Block167PC.
        recoveredBlock149Block167Step = 174 ifTrue: [
            recoveredBlock149Block167Stack0 := (recoveredBlock149Block167Stack0) uniformWidth.
            recoveredBlock149Block167PC := 176.
        ].
        recoveredBlock149Block167Step = 176 ifTrue: [
            (recoveredBlock149Block167Stack0) ifTrue: [recoveredBlock149Block167PC := 180] ifFalse: [recoveredBlock149Block167PC := 198].
        ].
        recoveredBlock149Block167Step = 180 ifTrue: [
            recoveredBlock149Block167Stack0 := recoveredBlock149Block167Arg2.
            recoveredBlock149Block167PC := 181.
        ].
        recoveredBlock149Block167Step = 181 ifTrue: [
            recoveredBlock149Block167Stack0 := (recoveredBlock149Block167Stack0) canBeResizedHorizonally.
            recoveredBlock149Block167PC := 183.
        ].
        recoveredBlock149Block167Step = 183 ifTrue: [
            (recoveredBlock149Block167Stack0) ifTrue: [recoveredBlock149Block167PC := 186] ifFalse: [recoveredBlock149Block167PC := 192].
        ].
        recoveredBlock149Block167Step = 186 ifTrue: [
            recoveredBlock149Block167Stack0 := recoveredLocal4.
            recoveredBlock149Block167PC := 189.
        ].
        recoveredBlock149Block167Step = 189 ifTrue: [
            recoveredBlock149Block167PC := 195.
        ].
        recoveredBlock149Block167Step = 192 ifTrue: [
            recoveredBlock149Block167Stack0 := recoveredBlock149Block167Arg2.
            recoveredBlock149Block167PC := 193.
        ].
        recoveredBlock149Block167Step = 193 ifTrue: [
            recoveredBlock149Block167Stack0 := (recoveredBlock149Block167Stack0) width.
            recoveredBlock149Block167PC := 195.
        ].
        recoveredBlock149Block167Step = 195 ifTrue: [
            recoveredBlock149Block167PC := 201.
        ].
        recoveredBlock149Block167Step = 198 ifTrue: [
            recoveredBlock149Block167Stack0 := recoveredBlock149Block167Arg2.
            recoveredBlock149Block167PC := 199.
        ].
        recoveredBlock149Block167Step = 199 ifTrue: [
            recoveredBlock149Block167Stack0 := (recoveredBlock149Block167Stack0) width.
            recoveredBlock149Block167PC := 201.
        ].
        recoveredBlock149Block167Step = 201 ifTrue: [
            recoveredBlock149Block167Local1 := recoveredBlock149Block167Stack0.
            recoveredBlock149Block167PC := 202.
        ].
        recoveredBlock149Block167Step = 202 ifTrue: [
            recoveredBlock149Block167Stack0 := recoveredBlock149Local1.
            recoveredBlock149Block167PC := 205.
        ].
        recoveredBlock149Block167Step = 205 ifTrue: [
            recoveredBlock149Block167Stack1 := recoveredBlock149Block167Arg2.
            recoveredBlock149Block167PC := 206.
        ].
        recoveredBlock149Block167Step = 206 ifTrue: [
            recoveredBlock149Block167Stack2 := recoveredBlock149Block167Local1.
            recoveredBlock149Block167PC := 207.
        ].
        recoveredBlock149Block167Step = 207 ifTrue: [
            (recoveredBlock149Block167Stack0) at: (recoveredBlock149Block167Stack1) put: (recoveredBlock149Block167Stack2).
            recoveredBlock149Block167PC := 209.
        ].
        recoveredBlock149Block167Step = 209 ifTrue: [
            recoveredBlock149Block167Stack0 := recoveredBlock149Block167Arg1.
            recoveredBlock149Block167PC := 210.
        ].
        recoveredBlock149Block167Step = 210 ifTrue: [
            recoveredBlock149Block167Stack1 := recoveredBlock149Block167Local1.
            recoveredBlock149Block167PC := 211.
        ].
        recoveredBlock149Block167Step = 211 ifTrue: [
            recoveredBlock149Block167Stack0 := (recoveredBlock149Block167Stack0) + (recoveredBlock149Block167Stack1).
            recoveredBlock149Block167PC := 212.
        ].
        recoveredBlock149Block167Step = 212 ifTrue: [
            recoveredBlock149Block167Result := recoveredBlock149Block167Stack0.
            recoveredBlock149Block167Done := true.
        ].
    ].
    recoveredBlock149Block167Result
].
            recoveredBlock149PC := 213.
        ].
        recoveredBlock149Step = 213 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) inject: (recoveredBlock149Stack2) into: (recoveredBlock149Stack3).
            recoveredBlock149PC := 215.
        ].
        recoveredBlock149Step = 215 ifTrue: [
            recoveredBlock149Local2 := recoveredBlock149Stack1.
            recoveredBlock149PC := 218.
        ].
        recoveredBlock149Step = 218 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal6.
            recoveredBlock149PC := 221.
        ].
        recoveredBlock149Step = 221 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Local2.
            recoveredBlock149PC := 224.
        ].
        recoveredBlock149Step = 224 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) + (recoveredBlock149Stack2).
            recoveredBlock149PC := 225.
        ].
        recoveredBlock149Step = 225 ifTrue: [
            recoveredBlock149Stack2 := self.
            recoveredBlock149PC := 226.
        ].
        recoveredBlock149Step = 226 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) width.
            recoveredBlock149PC := 228.
        ].
        recoveredBlock149Step = 228 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) + (-1).
            recoveredBlock149PC := 229.
        ].
        recoveredBlock149Step = 229 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) > (recoveredBlock149Stack2).
            recoveredBlock149PC := 230.
        ].
        recoveredBlock149Step = 230 ifTrue: [
            (recoveredBlock149Stack1) ifTrue: [recoveredBlock149PC := 234] ifFalse: [recoveredBlock149PC := 448].
        ].
        recoveredBlock149Step = 234 ifTrue: [
            recoveredBlock149Stack1 := self.
            recoveredBlock149PC := 235.
        ].
        recoveredBlock149Step = 235 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) isFloating.
            recoveredBlock149PC := 237.
        ].
        recoveredBlock149Step = 237 ifTrue: [
            (recoveredBlock149Stack1) ifTrue: [recoveredBlock149PC := 240] ifFalse: [recoveredBlock149PC := 448].
        ].
        recoveredBlock149Step = 240 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal6.
            recoveredBlock149PC := 243.
        ].
        recoveredBlock149Step = 243 ifTrue: [
            recoveredBlock149Stack2 := self.
            recoveredBlock149PC := 244.
        ].
        recoveredBlock149Step = 244 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) leftMarginForThumb.
            recoveredBlock149PC := 246.
        ].
        recoveredBlock149Step = 246 ifTrue: [
            recoveredBlock149Stack3 := recoveredLocal8.
            recoveredBlock149PC := 249.
        ].
        recoveredBlock149Step = 249 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) + (recoveredBlock149Stack3).
            recoveredBlock149PC := 250.
        ].
        recoveredBlock149Step = 250 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) = (recoveredBlock149Stack2).
            recoveredBlock149PC := 251.
        ].
        recoveredBlock149Step = 251 ifTrue: [
            (recoveredBlock149Stack1) ifTrue: [recoveredBlock149PC := 254] ifFalse: [recoveredBlock149PC := 298].
        ].
        recoveredBlock149Step = 254 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 257.
        ].
        recoveredBlock149Step = 257 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal6.
            recoveredBlock149PC := 260.
        ].
        recoveredBlock149Step = 260 ifTrue: [
            recoveredBlock149Stack3 := [:recoveredBlock149Block260Arg1 :recoveredBlock149Block260Arg2 | 
    | recoveredBlock149Block260Local1 recoveredBlock149Block260Value0 recoveredBlock149Block260Value1 recoveredBlock149Block260Value2 recoveredBlock149Block260Value3 recoveredBlock149Block260Value4 recoveredBlock149Block260Value5 recoveredBlock149Block260Value6 recoveredBlock149Block260Value7 recoveredBlock149Block260Value8 recoveredBlock149Block260Value9 recoveredBlock149Block260Value10 recoveredBlock149Block260Value11 recoveredBlock149Block260Value12 |
    recoveredBlock149Block260Value0 := recoveredBlock149Block260Arg2.
    recoveredBlock149Block260Value1 := recoveredBlock149Block260Arg1.
    recoveredBlock149Block260Value2 := recoveredLocal5.
    recoveredBlock149Block260Value3 := recoveredBlock149Local1.
    recoveredBlock149Block260Value4 := recoveredBlock149Block260Arg2.
    recoveredBlock149Block260Value5 := (recoveredBlock149Block260Value3) at: (recoveredBlock149Block260Value4).
    recoveredBlock149Block260Value6 := recoveredBlock149Block260Value5.
    recoveredBlock149Block260Local1 := recoveredBlock149Block260Value6.
    recoveredBlock149Block260Value7 := recoveredLocal7.
    recoveredBlock149Block260Value8 := recoveredBlock149Block260Arg2.
    recoveredBlock149Block260Value9 := (recoveredBlock149Block260Value8) borderWidth.
    (recoveredBlock149Block260Value0) configureWidget: (recoveredBlock149Block260Value1) y: (recoveredBlock149Block260Value2) width: (recoveredBlock149Block260Value5) height: (recoveredBlock149Block260Value7) borderWidth: (recoveredBlock149Block260Value9).
    recoveredBlock149Block260Value10 := recoveredBlock149Block260Arg1.
    recoveredBlock149Block260Value11 := recoveredBlock149Block260Local1.
    recoveredBlock149Block260Value12 := (recoveredBlock149Block260Value10) + (recoveredBlock149Block260Value11).
    recoveredBlock149Block260Value12
].
            recoveredBlock149PC := 292.
        ].
        recoveredBlock149Step = 292 ifTrue: [
            (recoveredBlock149Stack1) inject: (recoveredBlock149Stack2) into: (recoveredBlock149Stack3).
            recoveredBlock149PC := 294.
        ].
        recoveredBlock149Step = 294 ifTrue: [
            recoveredBlock149PC := 394.
        ].
        recoveredBlock149Step = 298 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal5.
            recoveredBlock149PC := 301.
        ].
        recoveredBlock149Step = 301 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal7.
            recoveredBlock149PC := 304.
        ].
        recoveredBlock149Step = 304 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) + (recoveredBlock149Stack2).
            recoveredBlock149PC := 305.
        ].
        recoveredBlock149Step = 305 ifTrue: [
            recoveredLocal5 := recoveredBlock149Stack1.
            recoveredBlock149PC := 308.
        ].
        recoveredBlock149Step = 308 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal3.
            recoveredBlock149PC := 311.
        ].
        recoveredBlock149Step = 311 ifTrue: [
            (recoveredBlock149Stack1) removeLast.
            recoveredBlock149PC := 313.
        ].
        recoveredBlock149Step = 313 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal3.
            recoveredBlock149PC := 316.
        ].
        recoveredBlock149Step = 316 ifTrue: [
            recoveredBlock149Stack2 := Array.
            recoveredBlock149PC := 318.
        ].
        recoveredBlock149Step = 318 ifTrue: [
            recoveredBlock149Stack3 := self.
            recoveredBlock149PC := 319.
        ].
        recoveredBlock149Step = 319 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) leftMarginForThumb.
            recoveredBlock149PC := 321.
        ].
        recoveredBlock149Step = 321 ifTrue: [
            recoveredBlock149Stack4 := recoveredLocal5.
            recoveredBlock149PC := 324.
        ].
        recoveredBlock149Step = 324 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) @ (recoveredBlock149Stack4).
            recoveredBlock149PC := 326.
        ].
        recoveredBlock149Step = 326 ifTrue: [
            recoveredBlock149Stack4 := self.
            recoveredBlock149PC := 327.
        ].
        recoveredBlock149Step = 327 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) width.
            recoveredBlock149PC := 329.
        ].
        recoveredBlock149Step = 329 ifTrue: [
            recoveredBlock149Stack5 := recoveredLocal5.
            recoveredBlock149PC := 332.
        ].
        recoveredBlock149Step = 332 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) @ (recoveredBlock149Stack5).
            recoveredBlock149PC := 334.
        ].
        recoveredBlock149Step = 334 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) with: (recoveredBlock149Stack3) with: (recoveredBlock149Stack4).
            recoveredBlock149PC := 336.
        ].
        recoveredBlock149Step = 336 ifTrue: [
            (recoveredBlock149Stack1) add: (recoveredBlock149Stack2).
            recoveredBlock149PC := 338.
        ].
        recoveredBlock149Step = 338 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal5.
            recoveredBlock149PC := 341.
        ].
        recoveredBlock149Step = 341 ifTrue: [
            recoveredBlock149Stack2 := self.
            recoveredBlock149PC := 342.
        ].
        recoveredBlock149Step = 342 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) separatorWidth.
            recoveredBlock149PC := 344.
        ].
        recoveredBlock149Step = 344 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) + (recoveredBlock149Stack2).
            recoveredBlock149PC := 345.
        ].
        recoveredBlock149Step = 345 ifTrue: [
            recoveredLocal5 := recoveredBlock149Stack1.
            recoveredBlock149PC := 348.
        ].
        recoveredBlock149Step = 348 ifTrue: [
            recoveredBlock149Stack1 := self.
            recoveredBlock149PC := 349.
        ].
        recoveredBlock149Step = 349 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) leftMarginForThumb.
            recoveredBlock149PC := 351.
        ].
        recoveredBlock149Step = 351 ifTrue: [
            recoveredLocal6 := recoveredBlock149Stack1.
            recoveredBlock149PC := 354.
        ].
        recoveredBlock149Step = 354 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 357.
        ].
        recoveredBlock149Step = 357 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal6.
            recoveredBlock149PC := 360.
        ].
        recoveredBlock149Step = 360 ifTrue: [
            recoveredBlock149Stack3 := [:recoveredBlock149Block360Arg1 :recoveredBlock149Block360Arg2 | 
    | recoveredBlock149Block360Local1 recoveredBlock149Block360Value0 recoveredBlock149Block360Value1 recoveredBlock149Block360Value2 recoveredBlock149Block360Value3 recoveredBlock149Block360Value4 recoveredBlock149Block360Value5 recoveredBlock149Block360Value6 recoveredBlock149Block360Value7 recoveredBlock149Block360Value8 recoveredBlock149Block360Value9 recoveredBlock149Block360Value10 recoveredBlock149Block360Value11 recoveredBlock149Block360Value12 |
    recoveredBlock149Block360Value0 := recoveredBlock149Block360Arg2.
    recoveredBlock149Block360Value1 := recoveredBlock149Block360Arg1.
    recoveredBlock149Block360Value2 := recoveredLocal5.
    recoveredBlock149Block360Value3 := recoveredBlock149Local1.
    recoveredBlock149Block360Value4 := recoveredBlock149Block360Arg2.
    recoveredBlock149Block360Value5 := (recoveredBlock149Block360Value3) at: (recoveredBlock149Block360Value4).
    recoveredBlock149Block360Value6 := recoveredBlock149Block360Value5.
    recoveredBlock149Block360Local1 := recoveredBlock149Block360Value6.
    recoveredBlock149Block360Value7 := recoveredLocal7.
    recoveredBlock149Block360Value8 := recoveredBlock149Block360Arg2.
    recoveredBlock149Block360Value9 := (recoveredBlock149Block360Value8) borderWidth.
    (recoveredBlock149Block360Value0) configureWidget: (recoveredBlock149Block360Value1) y: (recoveredBlock149Block360Value2) width: (recoveredBlock149Block360Value5) height: (recoveredBlock149Block360Value7) borderWidth: (recoveredBlock149Block360Value9).
    recoveredBlock149Block360Value10 := recoveredBlock149Block360Arg1.
    recoveredBlock149Block360Value11 := recoveredBlock149Block360Local1.
    recoveredBlock149Block360Value12 := (recoveredBlock149Block360Value10) + (recoveredBlock149Block360Value11).
    recoveredBlock149Block360Value12
].
            recoveredBlock149PC := 392.
        ].
        recoveredBlock149Step = 392 ifTrue: [
            (recoveredBlock149Stack1) inject: (recoveredBlock149Stack2) into: (recoveredBlock149Stack3).
            recoveredBlock149PC := 394.
        ].
        recoveredBlock149Step = 394 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal6.
            recoveredBlock149PC := 397.
        ].
        recoveredBlock149Step = 397 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Local2.
            recoveredBlock149PC := 400.
        ].
        recoveredBlock149Step = 400 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) + (recoveredBlock149Stack2).
            recoveredBlock149PC := 401.
        ].
        recoveredBlock149Step = 401 ifTrue: [
            recoveredLocal6 := recoveredBlock149Stack1.
            recoveredBlock149PC := 404.
        ].
        recoveredBlock149Step = 404 ifTrue: [
            recoveredBlock149Stack1 := nil.
            recoveredBlock149PC := 405.
        ].
        recoveredBlock149Step = 405 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal2.
            recoveredBlock149PC := 408.
        ].
        recoveredBlock149Step = 408 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) last.
            recoveredBlock149PC := 410.
        ].
        recoveredBlock149Step = 410 ifTrue: [
            recoveredBlock149Stack3 := recoveredBlock149Arg1.
            recoveredBlock149PC := 413.
        ].
        recoveredBlock149Step = 413 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) = (recoveredBlock149Stack3).
            recoveredBlock149PC := 414.
        ].
        recoveredBlock149Step = 414 ifTrue: [
            (recoveredBlock149Stack2) ifTrue: [recoveredBlock149PC := 444] ifFalse: [recoveredBlock149PC := 418].
        ].
        recoveredBlock149Step = 418 ifTrue: [
            recoveredBlock149PC := 419.
        ].
        recoveredBlock149Step = 419 ifTrue: [
            recoveredBlock149Stack1 := recoveredLocal3.
            recoveredBlock149PC := 422.
        ].
        recoveredBlock149Step = 422 ifTrue: [
            recoveredBlock149Stack2 := Array.
            recoveredBlock149PC := 424.
        ].
        recoveredBlock149Step = 424 ifTrue: [
            recoveredBlock149Stack3 := self.
            recoveredBlock149PC := 425.
        ].
        recoveredBlock149Step = 425 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) leftMarginForThumb.
            recoveredBlock149PC := 427.
        ].
        recoveredBlock149Step = 427 ifTrue: [
            recoveredBlock149Stack4 := recoveredLocal5.
            recoveredBlock149PC := 430.
        ].
        recoveredBlock149Step = 430 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) @ (recoveredBlock149Stack4).
            recoveredBlock149PC := 432.
        ].
        recoveredBlock149Step = 432 ifTrue: [
            recoveredBlock149Stack4 := self.
            recoveredBlock149PC := 433.
        ].
        recoveredBlock149Step = 433 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) width.
            recoveredBlock149PC := 435.
        ].
        recoveredBlock149Step = 435 ifTrue: [
            recoveredBlock149Stack5 := recoveredLocal5.
            recoveredBlock149PC := 438.
        ].
        recoveredBlock149Step = 438 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) @ (recoveredBlock149Stack5).
            recoveredBlock149PC := 440.
        ].
        recoveredBlock149Step = 440 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) with: (recoveredBlock149Stack3) with: (recoveredBlock149Stack4).
            recoveredBlock149PC := 442.
        ].
        recoveredBlock149Step = 442 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) add: (recoveredBlock149Stack2).
            recoveredBlock149PC := 444.
        ].
        recoveredBlock149Step = 444 ifTrue: [
            recoveredBlock149PC := 541.
        ].
        recoveredBlock149Step = 448 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 451.
        ].
        recoveredBlock149Step = 451 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal6.
            recoveredBlock149PC := 454.
        ].
        recoveredBlock149Step = 454 ifTrue: [
            recoveredBlock149Stack3 := [:recoveredBlock149Block454Arg1 :recoveredBlock149Block454Arg2 | 
    | recoveredBlock149Block454Local1 recoveredBlock149Block454Stack0 recoveredBlock149Block454Stack1 recoveredBlock149Block454Stack2 recoveredBlock149Block454Stack3 recoveredBlock149Block454Stack4 recoveredBlock149Block454Stack5 recoveredBlock149Block454Stack6 recoveredBlock149Block454Stack7 recoveredBlock149Block454PC recoveredBlock149Block454Step recoveredBlock149Block454Done recoveredBlock149Block454Result |
    recoveredBlock149Block454Stack0 := self.
    recoveredBlock149Block454PC := 460.
    recoveredBlock149Block454Done := false.
    [recoveredBlock149Block454Done not] whileTrue: [
        recoveredBlock149Block454Step := recoveredBlock149Block454PC.
        recoveredBlock149Block454Step = 460 ifTrue: [
            recoveredBlock149Block454Stack1 := recoveredBlock149Block454Arg2.
            recoveredBlock149Block454PC := 461.
        ].
        recoveredBlock149Block454Step = 461 ifTrue: [
            recoveredBlock149Block454Stack2 := recoveredBlock149Block454Arg1.
            recoveredBlock149Block454PC := 462.
        ].
        recoveredBlock149Block454Step = 462 ifTrue: [
            recoveredBlock149Block454Stack3 := recoveredLocal5.
            recoveredBlock149Block454PC := 465.
        ].
        recoveredBlock149Block454Step = 465 ifTrue: [
            recoveredBlock149Block454Stack4 := recoveredBlock149Local1.
            recoveredBlock149Block454PC := 468.
        ].
        recoveredBlock149Block454Step = 468 ifTrue: [
            recoveredBlock149Block454Stack5 := recoveredBlock149Block454Arg2.
            recoveredBlock149Block454PC := 469.
        ].
        recoveredBlock149Block454Step = 469 ifTrue: [
            recoveredBlock149Block454Stack4 := (recoveredBlock149Block454Stack4) at: (recoveredBlock149Block454Stack5).
            recoveredBlock149Block454PC := 471.
        ].
        recoveredBlock149Block454Step = 471 ifTrue: [
            recoveredBlock149Block454Stack5 := recoveredBlock149Block454Stack4.
            recoveredBlock149Block454PC := 472.
        ].
        recoveredBlock149Block454Step = 472 ifTrue: [
            recoveredBlock149Block454Local1 := recoveredBlock149Block454Stack5.
            recoveredBlock149Block454PC := 473.
        ].
        recoveredBlock149Block454Step = 473 ifTrue: [
            recoveredBlock149Block454Stack5 := recoveredLocal7.
            recoveredBlock149Block454PC := 476.
        ].
        recoveredBlock149Block454Step = 476 ifTrue: [
            recoveredBlock149Block454Stack6 := recoveredBlock149Block454Arg2.
            recoveredBlock149Block454PC := 477.
        ].
        recoveredBlock149Block454Step = 477 ifTrue: [
            recoveredBlock149Block454Stack6 := (recoveredBlock149Block454Stack6) borderWidth.
            recoveredBlock149Block454PC := 479.
        ].
        recoveredBlock149Block454Step = 479 ifTrue: [
            (recoveredBlock149Block454Stack1) configureWidget: (recoveredBlock149Block454Stack2) y: (recoveredBlock149Block454Stack3) width: (recoveredBlock149Block454Stack4) height: (recoveredBlock149Block454Stack5) borderWidth: (recoveredBlock149Block454Stack6).
            recoveredBlock149Block454PC := 482.
        ].
        recoveredBlock149Block454Step = 482 ifTrue: [
            recoveredBlock149Block454Stack1 := recoveredLocal6.
            recoveredBlock149Block454PC := 485.
        ].
        recoveredBlock149Block454Step = 485 ifTrue: [
            recoveredBlock149Block454Stack2 := recoveredBlock149Block454Local1.
            recoveredBlock149Block454PC := 486.
        ].
        recoveredBlock149Block454Step = 486 ifTrue: [
            recoveredBlock149Block454Stack1 := (recoveredBlock149Block454Stack1) + (recoveredBlock149Block454Stack2).
            recoveredBlock149Block454PC := 487.
        ].
        recoveredBlock149Block454Step = 487 ifTrue: [
            recoveredLocal6 := recoveredBlock149Block454Stack1.
            recoveredBlock149Block454PC := 490.
        ].
        recoveredBlock149Block454Step = 490 ifTrue: [
            recoveredBlock149Block454Stack1 := recoveredBlock149Block454Arg2.
            recoveredBlock149Block454PC := 491.
        ].
        recoveredBlock149Block454Step = 491 ifTrue: [
            recoveredBlock149Block454Stack1 := (recoveredBlock149Block454Stack1) hasSeparator.
            recoveredBlock149Block454PC := 493.
        ].
        recoveredBlock149Block454Step = 493 ifTrue: [
            (recoveredBlock149Block454Stack1) ifTrue: [recoveredBlock149Block454PC := 496] ifFalse: [recoveredBlock149Block454PC := 535].
        ].
        recoveredBlock149Block454Step = 496 ifTrue: [
            recoveredBlock149Block454Stack1 := recoveredLocal3.
            recoveredBlock149Block454PC := 499.
        ].
        recoveredBlock149Block454Step = 499 ifTrue: [
            recoveredBlock149Block454Stack2 := Array.
            recoveredBlock149Block454PC := 501.
        ].
        recoveredBlock149Block454Step = 501 ifTrue: [
            recoveredBlock149Block454Stack3 := recoveredLocal6.
            recoveredBlock149Block454PC := 504.
        ].
        recoveredBlock149Block454Step = 504 ifTrue: [
            recoveredBlock149Block454Stack4 := recoveredLocal5.
            recoveredBlock149Block454PC := 507.
        ].
        recoveredBlock149Block454Step = 507 ifTrue: [
            recoveredBlock149Block454Stack3 := (recoveredBlock149Block454Stack3) @ (recoveredBlock149Block454Stack4).
            recoveredBlock149Block454PC := 509.
        ].
        recoveredBlock149Block454Step = 509 ifTrue: [
            recoveredBlock149Block454Stack4 := recoveredLocal6.
            recoveredBlock149Block454PC := 512.
        ].
        recoveredBlock149Block454Step = 512 ifTrue: [
            recoveredBlock149Block454Stack5 := recoveredLocal5.
            recoveredBlock149Block454PC := 515.
        ].
        recoveredBlock149Block454Step = 515 ifTrue: [
            recoveredBlock149Block454Stack6 := recoveredLocal7.
            recoveredBlock149Block454PC := 518.
        ].
        recoveredBlock149Block454Step = 518 ifTrue: [
            recoveredBlock149Block454Stack5 := (recoveredBlock149Block454Stack5) + (recoveredBlock149Block454Stack6).
            recoveredBlock149Block454PC := 519.
        ].
        recoveredBlock149Block454Step = 519 ifTrue: [
            recoveredBlock149Block454Stack4 := (recoveredBlock149Block454Stack4) @ (recoveredBlock149Block454Stack5).
            recoveredBlock149Block454PC := 521.
        ].
        recoveredBlock149Block454Step = 521 ifTrue: [
            recoveredBlock149Block454Stack2 := (recoveredBlock149Block454Stack2) with: (recoveredBlock149Block454Stack3) with: (recoveredBlock149Block454Stack4).
            recoveredBlock149Block454PC := 523.
        ].
        recoveredBlock149Block454Step = 523 ifTrue: [
            (recoveredBlock149Block454Stack1) add: (recoveredBlock149Block454Stack2).
            recoveredBlock149Block454PC := 525.
        ].
        recoveredBlock149Block454Step = 525 ifTrue: [
            recoveredBlock149Block454Stack1 := recoveredLocal6.
            recoveredBlock149Block454PC := 528.
        ].
        recoveredBlock149Block454Step = 528 ifTrue: [
            recoveredBlock149Block454Stack2 := self.
            recoveredBlock149Block454PC := 529.
        ].
        recoveredBlock149Block454Step = 529 ifTrue: [
            recoveredBlock149Block454Stack2 := (recoveredBlock149Block454Stack2) separatorWidth.
            recoveredBlock149Block454PC := 531.
        ].
        recoveredBlock149Block454Step = 531 ifTrue: [
            recoveredBlock149Block454Stack1 := (recoveredBlock149Block454Stack1) + (recoveredBlock149Block454Stack2).
            recoveredBlock149Block454PC := 532.
        ].
        recoveredBlock149Block454Step = 532 ifTrue: [
            recoveredLocal6 := recoveredBlock149Block454Stack1.
            recoveredBlock149Block454PC := 535.
        ].
        recoveredBlock149Block454Step = 535 ifTrue: [
            recoveredBlock149Block454Stack1 := recoveredBlock149Block454Arg1.
            recoveredBlock149Block454PC := 536.
        ].
        recoveredBlock149Block454Step = 536 ifTrue: [
            recoveredBlock149Block454Stack2 := recoveredBlock149Block454Local1.
            recoveredBlock149Block454PC := 537.
        ].
        recoveredBlock149Block454Step = 537 ifTrue: [
            recoveredBlock149Block454Stack1 := (recoveredBlock149Block454Stack1) + (recoveredBlock149Block454Stack2).
            recoveredBlock149Block454PC := 538.
        ].
        recoveredBlock149Block454Step = 538 ifTrue: [
            recoveredBlock149Block454Result := recoveredBlock149Block454Stack1.
            recoveredBlock149Block454Done := true.
        ].
    ].
    recoveredBlock149Block454Result
].
            recoveredBlock149PC := 539.
        ].
        recoveredBlock149Step = 539 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) inject: (recoveredBlock149Stack2) into: (recoveredBlock149Stack3).
            recoveredBlock149PC := 541.
        ].
        recoveredBlock149Step = 541 ifTrue: [
            recoveredBlock149Result := recoveredBlock149Stack1.
            recoveredBlock149Done := true.
        ].
    ].
    recoveredBlock149Result
].
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack3 := (recoveredStack3) borderWidth.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            (recoveredStack0) resizeWidget: (recoveredStack1) height: (recoveredStack2) borderWidth: (recoveredStack3).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

