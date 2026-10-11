"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002dc8; bytecode file offset 0x8ffcfc"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
updateFont
    ^self
! !

"ASDBase.ic method 0x2006b728; bytecode file offset 0x96873c"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
fontList
    | recoveredValue0 |
    recoveredValue0 := xmNfontList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c6c4; bytecode file offset 0x9692b0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
menu
    | recoveredValue0 |
    recoveredValue0 := menu.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d310; bytecode file offset 0x969c04"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
groups
    | recoveredValue0 |
    recoveredValue0 := groups.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d564; bytecode file offset 0x96a390"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
groupButtons
    | recoveredValue0 |
    recoveredValue0 := groupButtons.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e634; bytecode file offset 0x96af48"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
selectedGroup
    | recoveredValue0 |
    recoveredValue0 := selectedGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f1d8; bytecode file offset 0x96bc1c"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
topItemIndex
    | recoveredValue0 |
    recoveredValue0 := topItemIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fd88; bytecode file offset 0x96c6ac"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
spinInterval
    | recoveredValue0 |
    recoveredValue0 := spinInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200871bc; bytecode file offset 0x983a74"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
arrowReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) isSpinning: (false).
    ^self
! !

"ASDBase.ic method 0x200a8b40; bytecode file offset 0x9a5404"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNfontList := recoveredValue0.
    (self) updateFont.
    ^self
! !

"ASDBase.ic method 0x200c2ebc; bytecode file offset 0x9bfde0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
menu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    menu := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a50; bytecode file offset 0x9c058c"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
groups: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    groups := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3fd4; bytecode file offset 0x9c0bf0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
groupButtons: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    groupButtons := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44f8; bytecode file offset 0x9c11bc"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
colorTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    colorTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c57bc; bytecode file offset 0x9c22c8"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
topItemIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    topItemIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6238; bytecode file offset 0x9c2bec"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
spinInterval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    spinInterval := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c638c; bytecode file offset 0x9c2dd0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
isSpinning: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isSpinning := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dff18; bytecode file offset 0x9dc7d4"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
spinInitialize
    (self) spinInterval: (40).
    (self) isSpinning: (true).
    ^self
! !

"ASDBase.ic method 0x200ecae8; bytecode file offset 0x9e93a4"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
resize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) layOutChildren.
    (self) updateSelectedGroup.
    (self) layOutChildren.
    ^self
! !

"ASDBase.ic method 0x200f110c; bytecode file offset 0x9ed9c0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
isSpinning
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isSpinning.
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
            recoveredStack1 := isSpinning.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20104118; bytecode file offset 0xa009d8"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
buttonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) first.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) last.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) callItemPressedCallback: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20106340; bytecode file offset 0xa02bf8"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201235c0; bytecode file offset 0xa1fe80"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createWidget: (recoveredValue1) parent: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) userData: (self).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20130ac8; bytecode file offset 0xa2d380"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mainArea.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := mainArea.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169da8; bytecode file offset 0xa66668"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
groupButtonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGroup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) selectedGroup: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) layOutChildren.
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

"ASDBase.ic method 0x201882a8; bytecode file offset 0xa84b68"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := firstExpose.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) layOutChildren.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) updateSelectedGroup.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            firstExpose := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) draw.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a73a8; bytecode file offset 0xaa3c74"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
deleteGroup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groups.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) groups.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) selectedGroup: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) layOutChildren.
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

"ASDBase.ic method 0x201b8658; bytecode file offset 0xab4f20"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
draw
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
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) drawBorder: (recoveredStack1).
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

"ASDBase.ic method 0x201c8e08; bytecode file offset 0xac56d4"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
hookCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNresizeCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('resize:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := XmNexposeCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('expose:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x201ca828; bytecode file offset 0xac70f0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeResources.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    groups := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    groupButtons := recoveredValue3.
    selectedGroup := nil.
    topItemIndex := 1.
    ^self
! !

"ASDBase.ic method 0x2020d918; bytecode file offset 0xb0a1e0"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
selectedGroup: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) selectedGroup.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) topItemIndex: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            selectedGroup := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateSelectedGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) layOutChildren.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202583b8; bytecode file offset 0xb54c90"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
arrowPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) spinInitialize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'mouse'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) spinInterval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 'mouse'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) addTimeout: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20378170; bytecode file offset 0xc74a9c"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203af31c; bytecode file offset 0xcabc10"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
upSpin: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'mouse'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwBasicWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetUnderPointer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := upArrow.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) isSpinning: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSpinning.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) topItemIndex.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) topItemIndex: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) updateSelectedGroup.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) layOutChildren.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) spinInterval.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) spinInterval.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) spinInterval: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) spinInterval.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := 'upSpin:'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) addTimeout: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d02c8; bytecode file offset 0xcccbc8"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
downSpin: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'mouse'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwBasicWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetUnderPointer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := downArrow.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) isSpinning: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSpinning.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) topItemIndex.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedGroup.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) topItemIndex: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) updateSelectedGroup.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) layOutChildren.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) spinInterval.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) spinInterval.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) spinInterval: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) spinInterval.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'downSpin:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) addTimeout: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040df74; bytecode file offset 0xd0a850"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
drawBorder: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := (self) primaryWidget.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) window.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) colorTable.
    recoveredValue5 := (recoveredValue4) at: ('borderShadow').
    (recoveredValue3) setForeground: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) height.
    recoveredValue11 := (recoveredValue10) + (-1).
    (recoveredValue7) drawLine: (recoveredValue8) x1: (0) y1: (recoveredValue11) x2: (0) y2: (0).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) width.
    recoveredValue15 := (recoveredValue14) + (-1).
    (recoveredValue6) drawLine: (recoveredValue12) x1: (0) y1: (0) x2: (recoveredValue15) y2: (0).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (self) colorTable.
    recoveredValue18 := (recoveredValue17) at: ('borderHighlight').
    (recoveredValue16) setForeground: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) height.
    recoveredValue24 := (recoveredValue23) + (-1).
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue25) width.
    recoveredValue27 := (recoveredValue26) + (-1).
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (recoveredValue28) height.
    recoveredValue30 := (recoveredValue29) + (-1).
    (recoveredValue20) drawLine: (recoveredValue21) x1: (0) y1: (recoveredValue24) x2: (recoveredValue27) y2: (recoveredValue30).
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := (self) width.
    recoveredValue33 := (recoveredValue32) + (-1).
    recoveredValue34 := (self) height.
    recoveredValue35 := (recoveredValue34) + (-1).
    recoveredValue36 := (self) width.
    recoveredValue37 := (recoveredValue36) + (-1).
    (recoveredValue19) drawLine: (recoveredValue31) x1: (recoveredValue33) y1: (recoveredValue35) x2: (recoveredValue37) y2: (0).
    ^self
! !

"ASDBase.ic method 0x2041fa9c; bytecode file offset 0xd1c3a8"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
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
            recoveredStack4 := (recoveredStack4) buttonShading.
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
            recoveredStack4 := CgRGBColor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) black.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'highlight'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) buttonHighlight.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 'borderShadow'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) buttonShading.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'borderHighlight'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) buttonHighlight.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) colorTable: (recoveredStack1).
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

"ASDBase.ic method 0x20442fe8; bytecode file offset 0xd3f8ec"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
addGroup: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groups.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
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
            recoveredStack0 := (recoveredStack0) groups.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGroup.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) selectedGroup: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := TobTBShortcutGroupButtonWidget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Button of '.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredBlock46Value0.
    recoveredBlock46Value2 := recoveredArg1.
    recoveredBlock46Value3 := (recoveredBlock46Value2) name.
    (recoveredBlock46Value1) labelString: (recoveredBlock46Value3).
    recoveredBlock46Value4 := (self) fontList.
    recoveredBlock46Value5 := (recoveredBlock46Value0) fontList: (recoveredBlock46Value4).
    recoveredBlock46Value5
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWidget: (recoveredStack1) parent: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'releasedCallback'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'groupButtonPressed:clientData:callData:'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupButtons.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) layOutChildren.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ee708; bytecode file offset 0xdeb030"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := 'Main Area'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) backgroundColor.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack2 ~~ nil) ifTrue: [recoveredBlock24PC := 48] ifFalse: [recoveredBlock24PC := 36].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack2 := EwSystemColors.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack3 := self.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) primaryWidget.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) on: (recoveredBlock24Stack3).
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) buttonShading.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) backgroundColor.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) backgroundColor: (recoveredBlock24Stack2).
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            mainArea := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := mainArea.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) hookCallbacks.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            firstExpose := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := mainArea.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'Down Arrow'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:block281094b0Arg1 | 
    | block281094b0Value0 block281094b0Value1 block281094b0Value2 block281094b0Value3 |
    block281094b0Value0 := block281094b0Arg1.
    block281094b0Value1 := block281094b0Value0.
    block281094b0Value2 := XmARROWDOWN.
    (block281094b0Value1) arrowDirection: (block281094b0Value2).
    block281094b0Value3 := (block281094b0Value0) mappedWhenManaged: (false).
    block281094b0Value3
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArrowButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            downArrow := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := downArrow.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := downArrow.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 'arrowPressed:clientData:callData:'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := 'downSpin:'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := ButtonReleaseMask.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 'arrowReleased:clientData:callData:'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := mainArea.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'Up Arrow'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [:block281094d4Arg1 | 
    | block281094d4Value0 block281094d4Value1 block281094d4Value2 block281094d4Value3 |
    block281094d4Value0 := block281094d4Arg1.
    block281094d4Value1 := block281094d4Value0.
    block281094d4Value2 := XmARROWUP.
    (block281094d4Value1) arrowDirection: (block281094d4Value2).
    block281094d4Value3 := (block281094d4Value0) mappedWhenManaged: (false).
    block281094d4Value3
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) createArrowButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            upArrow := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := upArrow.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := upArrow.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 'arrowPressed:clientData:callData:'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := 'upSpin:'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := ButtonReleaseMask.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := 'arrowReleased:clientData:callData:'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20581ee8; bytecode file offset 0xe7e7f4"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
layOutChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredLocal5 := false.
    recoveredValue4 := (self) groups.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) groupButtons.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) at: (recoveredBlock21Stack1).
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal5.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            (recoveredBlock21Stack0) ifTrue: [recoveredBlock21PC := 40] ifFalse: [recoveredBlock21PC := 50].
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal3.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local1.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            (recoveredBlock21Stack0) add: (recoveredBlock21Stack1).
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal4.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local1.
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            (recoveredBlock21Stack0) add: (recoveredBlock21Stack1).
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack0 := nil.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) selectedGroup.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            (recoveredBlock21Stack1 ~~ recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 70] ifFalse: [recoveredBlock21PC := 64].
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack0 := true.
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredLocal5 := recoveredBlock21Stack1.
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := [:recoveredBlock78Arg1 :recoveredBlock78Arg2 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 |
    recoveredBlock78Value0 := recoveredBlock78Arg2.
    recoveredBlock78Value1 := [:recoveredBlock78Block87Arg1 | 
    | recoveredBlock78Block87Value0 recoveredBlock78Block87Value1 recoveredBlock78Block87Value2 recoveredBlock78Block87Value3 recoveredBlock78Block87Value4 recoveredBlock78Block87Value5 recoveredBlock78Block87Value6 recoveredBlock78Block87Value7 |
    recoveredBlock78Block87Value0 := recoveredBlock78Block87Arg1.
    recoveredBlock78Block87Value1 := recoveredBlock78Block87Value0.
    recoveredBlock78Block87Value2 := recoveredBlock78Arg1.
    recoveredBlock78Block87Value3 := (recoveredBlock78Block87Value2) + (1).
    (recoveredBlock78Block87Value1) y: (recoveredBlock78Block87Value3).
    recoveredBlock78Block87Value4 := recoveredBlock78Block87Value0.
    (recoveredBlock78Block87Value4) x: (1).
    recoveredBlock78Block87Value5 := (self) width.
    recoveredBlock78Block87Value6 := (recoveredBlock78Block87Value5) + (-2).
    recoveredBlock78Block87Value7 := (recoveredBlock78Block87Value0) width: (recoveredBlock78Block87Value6).
    recoveredBlock78Block87Value7
].
    (recoveredBlock78Value0) setValuesBlock: (recoveredBlock78Value1).
    recoveredBlock78Value2 := recoveredBlock78Arg1.
    recoveredBlock78Value3 := recoveredBlock78Arg2.
    recoveredBlock78Value4 := (recoveredBlock78Value3) height.
    recoveredBlock78Value5 := (recoveredBlock78Value2) + (recoveredBlock78Value4).
    recoveredBlock78Value5
].
    recoveredValue8 := (recoveredValue6) inject: (0) into: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue9) reverse.
    recoveredValue11 := (self) height.
    recoveredValue12 := (recoveredValue11) + (-1).
    recoveredValue13 := [:recoveredBlock140Arg1 :recoveredBlock140Arg2 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 recoveredBlock140Value3 recoveredBlock140Value4 recoveredBlock140Value5 |
    recoveredBlock140Value0 := recoveredBlock140Arg2.
    recoveredBlock140Value1 := [:recoveredBlock140Block149Arg1 | 
    | recoveredBlock140Block149Value0 recoveredBlock140Block149Value1 recoveredBlock140Block149Value2 recoveredBlock140Block149Value3 recoveredBlock140Block149Value4 recoveredBlock140Block149Value5 recoveredBlock140Block149Value6 recoveredBlock140Block149Value7 recoveredBlock140Block149Value8 recoveredBlock140Block149Value9 |
    recoveredBlock140Block149Value0 := recoveredBlock140Block149Arg1.
    recoveredBlock140Block149Value1 := recoveredBlock140Block149Value0.
    recoveredBlock140Block149Value2 := recoveredBlock140Arg1.
    recoveredBlock140Block149Value3 := recoveredBlock140Arg2.
    recoveredBlock140Block149Value4 := (recoveredBlock140Block149Value3) height.
    recoveredBlock140Block149Value5 := (recoveredBlock140Block149Value2) - (recoveredBlock140Block149Value4).
    (recoveredBlock140Block149Value1) y: (recoveredBlock140Block149Value5).
    recoveredBlock140Block149Value6 := recoveredBlock140Block149Value0.
    (recoveredBlock140Block149Value6) x: (1).
    recoveredBlock140Block149Value7 := (self) width.
    recoveredBlock140Block149Value8 := (recoveredBlock140Block149Value7) + (-2).
    recoveredBlock140Block149Value9 := (recoveredBlock140Block149Value0) width: (recoveredBlock140Block149Value8).
    recoveredBlock140Block149Value9
].
    (recoveredBlock140Value0) setValuesBlock: (recoveredBlock140Value1).
    recoveredBlock140Value2 := recoveredBlock140Arg1.
    recoveredBlock140Value3 := recoveredBlock140Arg2.
    recoveredBlock140Value4 := (recoveredBlock140Value3) height.
    recoveredBlock140Value5 := (recoveredBlock140Value2) - (recoveredBlock140Value4).
    recoveredBlock140Value5
].
    recoveredValue14 := (recoveredValue10) inject: (recoveredValue12) into: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := mainArea.
    recoveredValue16 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Value0 recoveredBlock200Value1 recoveredBlock200Value2 recoveredBlock200Value3 recoveredBlock200Value4 recoveredBlock200Value5 recoveredBlock200Value6 recoveredBlock200Value7 recoveredBlock200Value8 recoveredBlock200Value9 recoveredBlock200Value10 recoveredBlock200Value11 recoveredBlock200Value12 recoveredBlock200Value13 recoveredBlock200Value14 recoveredBlock200Value15 recoveredBlock200Value16 recoveredBlock200Value17 recoveredBlock200Value18 recoveredBlock200Value19 recoveredBlock200Value20 recoveredBlock200Value21 |
    recoveredBlock200Value0 := recoveredLocal2.
    recoveredBlock200Value1 := (recoveredBlock200Value0) + (1).
    recoveredBlock200Value2 := (1) @ (recoveredBlock200Value1).
    recoveredBlock200Value3 := (self) width.
    recoveredBlock200Value4 := (recoveredBlock200Value3) + (-2).
    recoveredBlock200Value5 := recoveredLocal1.
    recoveredBlock200Value6 := recoveredLocal2.
    recoveredBlock200Value7 := (recoveredBlock200Value5) - (recoveredBlock200Value6).
    recoveredBlock200Value8 := (recoveredBlock200Value7) + (-2).
    recoveredBlock200Value9 := (recoveredBlock200Value4) @ (recoveredBlock200Value8).
    recoveredBlock200Value10 := (recoveredBlock200Value2) extent: (recoveredBlock200Value9).
    mainAreaRect := recoveredBlock200Value10.
    recoveredBlock200Value11 := recoveredBlock200Arg1.
    recoveredBlock200Value12 := mainAreaRect.
    recoveredBlock200Value13 := (recoveredBlock200Value12) left.
    recoveredBlock200Value14 := mainAreaRect.
    recoveredBlock200Value15 := (recoveredBlock200Value14) top.
    (recoveredBlock200Value11) moveWidget: (recoveredBlock200Value13) y: (recoveredBlock200Value15).
    recoveredBlock200Value16 := recoveredBlock200Arg1.
    recoveredBlock200Value17 := mainAreaRect.
    recoveredBlock200Value18 := (recoveredBlock200Value17) width.
    recoveredBlock200Value19 := mainAreaRect.
    recoveredBlock200Value20 := (recoveredBlock200Value19) height.
    recoveredBlock200Value21 := (recoveredBlock200Value16) resizeWidget: (recoveredBlock200Value18) height: (recoveredBlock200Value20) borderWidth: (0).
    recoveredBlock200Value21
].
    (recoveredValue15) setValuesBlock: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x2060a488; bytecode file offset 0xf06dfc"
!TobTBShortcutBarWidget methodsFor: 'recovered'!
updateSelectedGroup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGroup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := mainArea.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := upArrow.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            (recoveredBlock12Stack2 == recoveredBlock12Stack3) ifTrue: [recoveredBlock12PC := 35] ifFalse: [recoveredBlock12PC := 26].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack3 := downArrow.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            (recoveredBlock12Stack2 == recoveredBlock12Stack3) ifTrue: [recoveredBlock12PC := 35] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) destroyWidget.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) topItemIndex.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := [:recoveredBlock87Arg1 :recoveredBlock87Arg2 | 
    | recoveredBlock87Local1 recoveredBlock87Local2 recoveredBlock87Stack0 recoveredBlock87Stack1 recoveredBlock87Stack2 recoveredBlock87Stack3 recoveredBlock87Stack4 recoveredBlock87Stack5 recoveredBlock87Stack6 recoveredBlock87Stack7 recoveredBlock87Stack8 recoveredBlock87PC recoveredBlock87Step recoveredBlock87Done recoveredBlock87Result |
    recoveredBlock87Stack0 := self.
    recoveredBlock87PC := 94.
    recoveredBlock87Done := false.
    [recoveredBlock87Done not] whileTrue: [
        recoveredBlock87Step := recoveredBlock87PC.
        recoveredBlock87Step = 94 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 97.
        ].
        recoveredBlock87Step = 97 ifTrue: [
            recoveredBlock87Stack2 := mainAreaRect.
            recoveredBlock87PC := 99.
        ].
        recoveredBlock87Step = 99 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) height.
            recoveredBlock87PC := 101.
        ].
        recoveredBlock87Step = 101 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) > (recoveredBlock87Stack2).
            recoveredBlock87PC := 102.
        ].
        recoveredBlock87Step = 102 ifTrue: [
            (recoveredBlock87Stack1) ifTrue: [recoveredBlock87PC := 106] ifFalse: [recoveredBlock87PC := 112].
        ].
        recoveredBlock87Step = 106 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 109.
        ].
        recoveredBlock87Step = 109 ifTrue: [
            recoveredBlock87PC := 352.
        ].
        recoveredBlock87Step = 112 ifTrue: [
            recoveredBlock87Stack1 := recoveredLocal3.
            recoveredBlock87PC := 115.
        ].
        recoveredBlock87Step = 115 ifTrue: [
            recoveredBlock87Stack2 := recoveredBlock87Arg2.
            recoveredBlock87PC := 118.
        ].
        recoveredBlock87Step = 118 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) callItemRequestCallback: (recoveredBlock87Stack2).
            recoveredBlock87PC := 120.
        ].
        recoveredBlock87Step = 120 ifTrue: [
            recoveredBlock87Local2 := recoveredBlock87Stack1.
            recoveredBlock87PC := 123.
        ].
        recoveredBlock87Step = 123 ifTrue: [
            recoveredBlock87Stack1 := TobTBPushButtonWidget.
            recoveredBlock87PC := 125.
        ].
        recoveredBlock87Step = 125 ifTrue: [
            recoveredBlock87Stack2 := ''.
            recoveredBlock87PC := 127.
        ].
        recoveredBlock87Step = 127 ifTrue: [
            recoveredBlock87Stack3 := mainArea.
            recoveredBlock87PC := 129.
        ].
        recoveredBlock87Step = 129 ifTrue: [
            recoveredBlock87Stack4 := [:recoveredBlock87Block129Arg1 | 
    | recoveredBlock87Block129Value0 recoveredBlock87Block129Value1 recoveredBlock87Block129Value2 recoveredBlock87Block129Value3 recoveredBlock87Block129Value4 recoveredBlock87Block129Value5 recoveredBlock87Block129Value6 recoveredBlock87Block129Value7 recoveredBlock87Block129Value8 recoveredBlock87Block129Value9 |
    recoveredBlock87Block129Value0 := recoveredBlock87Block129Arg1.
    recoveredBlock87Block129Value1 := recoveredBlock87Block129Value0.
    recoveredBlock87Block129Value2 := recoveredBlock87Local2.
    recoveredBlock87Block129Value3 := (recoveredBlock87Block129Value2) image.
    (recoveredBlock87Block129Value1) image: (recoveredBlock87Block129Value3).
    recoveredBlock87Block129Value4 := recoveredBlock87Block129Value0.
    recoveredBlock87Block129Value5 := recoveredBlock87Local2.
    recoveredBlock87Block129Value6 := (recoveredBlock87Block129Value5) focusImage.
    (recoveredBlock87Block129Value4) focusImage: (recoveredBlock87Block129Value6).
    recoveredBlock87Block129Value7 := recoveredBlock87Local2.
    recoveredBlock87Block129Value8 := (recoveredBlock87Block129Value7) imageCropFrame.
    recoveredBlock87Block129Value9 := (recoveredBlock87Block129Value0) imageCropFrame: (recoveredBlock87Block129Value8).
    recoveredBlock87Block129Value9
].
            recoveredBlock87PC := 161.
        ].
        recoveredBlock87Step = 161 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) createWidget: (recoveredBlock87Stack2) parent: (recoveredBlock87Stack3) argBlock: (recoveredBlock87Stack4).
            recoveredBlock87PC := 164.
        ].
        recoveredBlock87Step = 164 ifTrue: [
            recoveredBlock87Local1 := recoveredBlock87Stack1.
            recoveredBlock87PC := 167.
        ].
        recoveredBlock87Step = 167 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Local1.
            recoveredBlock87PC := 170.
        ].
        recoveredBlock87Step = 170 ifTrue: [
            (recoveredBlock87Stack1) manageChild.
            recoveredBlock87PC := 172.
        ].
        recoveredBlock87Step = 172 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Local1.
            recoveredBlock87PC := 175.
        ].
        recoveredBlock87Step = 175 ifTrue: [
            recoveredBlock87Stack2 := 'releasedCallback'.
            recoveredBlock87PC := 177.
        ].
        recoveredBlock87Step = 177 ifTrue: [
            recoveredBlock87Stack3 := self.
            recoveredBlock87PC := 178.
        ].
        recoveredBlock87Step = 178 ifTrue: [
            recoveredBlock87Stack4 := 'buttonPressed:clientData:callData:'.
            recoveredBlock87PC := 180.
        ].
        recoveredBlock87Step = 180 ifTrue: [
            recoveredBlock87Stack5 := Array.
            recoveredBlock87PC := 182.
        ].
        recoveredBlock87Step = 182 ifTrue: [
            recoveredBlock87Stack6 := recoveredLocal3.
            recoveredBlock87PC := 185.
        ].
        recoveredBlock87Step = 185 ifTrue: [
            recoveredBlock87Stack7 := recoveredBlock87Arg2.
            recoveredBlock87PC := 188.
        ].
        recoveredBlock87Step = 188 ifTrue: [
            recoveredBlock87Stack5 := (recoveredBlock87Stack5) with: (recoveredBlock87Stack6) with: (recoveredBlock87Stack7).
            recoveredBlock87PC := 190.
        ].
        recoveredBlock87Step = 190 ifTrue: [
            (recoveredBlock87Stack1) addCallback: (recoveredBlock87Stack2) receiver: (recoveredBlock87Stack3) selector: (recoveredBlock87Stack4) clientData: (recoveredBlock87Stack5).
            recoveredBlock87PC := 193.
        ].
        recoveredBlock87Step = 193 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Local1.
            recoveredBlock87PC := 196.
        ].
        recoveredBlock87Step = 196 ifTrue: [
            recoveredBlock87Stack2 := [:recoveredBlock87Block196Arg1 | 
    | recoveredBlock87Block196Value0 recoveredBlock87Block196Value1 recoveredBlock87Block196Value2 recoveredBlock87Block196Value3 recoveredBlock87Block196Value4 recoveredBlock87Block196Value5 recoveredBlock87Block196Value6 recoveredBlock87Block196Value7 recoveredBlock87Block196Value8 recoveredBlock87Block196Value9 |
    recoveredBlock87Block196Value0 := recoveredBlock87Block196Arg1.
    recoveredBlock87Block196Value1 := recoveredBlock87Block196Value0.
    recoveredBlock87Block196Value2 := recoveredBlock87Arg1.
    (recoveredBlock87Block196Value1) y: (recoveredBlock87Block196Value2).
    recoveredBlock87Block196Value3 := (self) width.
    recoveredBlock87Block196Value4 := recoveredBlock87Block196Arg1.
    recoveredBlock87Block196Value5 := (recoveredBlock87Block196Value4) width.
    recoveredBlock87Block196Value6 := (recoveredBlock87Block196Value3) - (recoveredBlock87Block196Value5).
    recoveredBlock87Block196Value7 := (2) asInteger.
    recoveredBlock87Block196Value8 := (recoveredBlock87Block196Value6) // (recoveredBlock87Block196Value7).
    recoveredBlock87Block196Value9 := (recoveredBlock87Block196Value0) x: (recoveredBlock87Block196Value8).
    recoveredBlock87Block196Value9
].
            recoveredBlock87PC := 224.
        ].
        recoveredBlock87Step = 224 ifTrue: [
            (recoveredBlock87Stack1) setValuesBlock: (recoveredBlock87Stack2).
            recoveredBlock87PC := 226.
        ].
        recoveredBlock87Step = 226 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Local2.
            recoveredBlock87PC := 229.
        ].
        recoveredBlock87Step = 229 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) labelString.
            recoveredBlock87PC := 231.
        ].
        recoveredBlock87Step = 231 ifTrue: [
            recoveredBlock87Stack2 := 2.
            recoveredBlock87PC := 233.
        ].
        recoveredBlock87Step = 233 ifTrue: [
            recoveredBlock87Stack3 := self.
            recoveredBlock87PC := 234.
        ].
        recoveredBlock87Step = 234 ifTrue: [
            recoveredBlock87Stack3 := (recoveredBlock87Stack3) fontList.
            recoveredBlock87PC := 236.
        ].
        recoveredBlock87Step = 236 ifTrue: [
            recoveredBlock87Stack3 := (recoveredBlock87Stack3) fontStruct.
            recoveredBlock87PC := 238.
        ].
        recoveredBlock87Step = 238 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) tobTBAsSubStrings: (recoveredBlock87Stack2) fontStruct: (recoveredBlock87Stack3).
            recoveredBlock87PC := 240.
        ].
        recoveredBlock87Step = 240 ifTrue: [
            recoveredBlock87Stack2 := recoveredBlock87Local1.
            recoveredBlock87PC := 243.
        ].
        recoveredBlock87Step = 243 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) y.
            recoveredBlock87PC := 245.
        ].
        recoveredBlock87Step = 245 ifTrue: [
            recoveredBlock87Stack3 := recoveredBlock87Local1.
            recoveredBlock87PC := 248.
        ].
        recoveredBlock87Step = 248 ifTrue: [
            recoveredBlock87Stack3 := (recoveredBlock87Stack3) height.
            recoveredBlock87PC := 250.
        ].
        recoveredBlock87Step = 250 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) + (recoveredBlock87Stack3).
            recoveredBlock87PC := 251.
        ].
        recoveredBlock87Step = 251 ifTrue: [
            recoveredBlock87Stack3 := [:recoveredBlock87Block251Arg1 :recoveredBlock87Block251Arg2 | 
    | recoveredBlock87Block251Local1 recoveredBlock87Block251Value0 recoveredBlock87Block251Value1 recoveredBlock87Block251Value2 recoveredBlock87Block251Value3 recoveredBlock87Block251Value4 recoveredBlock87Block251Value5 recoveredBlock87Block251Value6 recoveredBlock87Block251Value7 recoveredBlock87Block251Value8 recoveredBlock87Block251Value9 recoveredBlock87Block251Value10 recoveredBlock87Block251Value11 |
    recoveredBlock87Block251Value0 := mainArea.
    recoveredBlock87Block251Value1 := [:recoveredBlock87Block251Block262Arg1 | 
    | recoveredBlock87Block251Block262Value0 recoveredBlock87Block251Block262Value1 recoveredBlock87Block251Block262Value2 recoveredBlock87Block251Block262Value3 recoveredBlock87Block251Block262Value4 |
    recoveredBlock87Block251Block262Value0 := recoveredBlock87Block251Block262Arg1.
    recoveredBlock87Block251Block262Value1 := recoveredBlock87Block251Block262Value0.
    recoveredBlock87Block251Block262Value2 := recoveredBlock87Block251Arg2.
    (recoveredBlock87Block251Block262Value1) labelString: (recoveredBlock87Block251Block262Value2).
    recoveredBlock87Block251Block262Value3 := (self) fontList.
    recoveredBlock87Block251Block262Value4 := (recoveredBlock87Block251Block262Value0) fontList: (recoveredBlock87Block251Block262Value3).
    recoveredBlock87Block251Block262Value4
].
    recoveredBlock87Block251Value2 := (recoveredBlock87Block251Value0) createLabel: ('') argBlock: (recoveredBlock87Block251Value1).
    recoveredBlock87Block251Local1 := recoveredBlock87Block251Value2.
    recoveredBlock87Block251Value3 := recoveredBlock87Block251Local1.
    (recoveredBlock87Block251Value3) manageChild.
    recoveredBlock87Block251Value4 := recoveredBlock87Local1.
    recoveredBlock87Block251Value5 := recoveredBlock87Block251Local1.
    (recoveredBlock87Block251Value4) addFriendlyWidget: (recoveredBlock87Block251Value5).
    recoveredBlock87Block251Value6 := recoveredBlock87Block251Local1.
    recoveredBlock87Block251Value7 := [:recoveredBlock87Block251Block302Arg1 | 
    | recoveredBlock87Block251Block302Value0 recoveredBlock87Block251Block302Value1 recoveredBlock87Block251Block302Value2 recoveredBlock87Block251Block302Value3 recoveredBlock87Block251Block302Value4 recoveredBlock87Block251Block302Value5 recoveredBlock87Block251Block302Value6 |
    recoveredBlock87Block251Block302Value0 := recoveredBlock87Block251Block302Arg1.
    recoveredBlock87Block251Block302Value1 := recoveredBlock87Block251Block302Value0.
    recoveredBlock87Block251Block302Value2 := recoveredBlock87Block251Arg1.
    (recoveredBlock87Block251Block302Value1) y: (recoveredBlock87Block251Block302Value2).
    recoveredBlock87Block251Block302Value3 := recoveredBlock87Block251Block302Value0.
    (recoveredBlock87Block251Block302Value3) x: (0).
    recoveredBlock87Block251Block302Value4 := (self) width.
    recoveredBlock87Block251Block302Value5 := (recoveredBlock87Block251Block302Value4) + (-1).
    recoveredBlock87Block251Block302Value6 := (recoveredBlock87Block251Block302Value0) width: (recoveredBlock87Block251Block302Value5).
    recoveredBlock87Block251Block302Value6
].
    (recoveredBlock87Block251Value6) setValuesBlock: (recoveredBlock87Block251Value7).
    recoveredBlock87Block251Value8 := recoveredBlock87Block251Arg1.
    recoveredBlock87Block251Value9 := recoveredBlock87Block251Local1.
    recoveredBlock87Block251Value10 := (recoveredBlock87Block251Value9) height.
    recoveredBlock87Block251Value11 := (recoveredBlock87Block251Value8) + (recoveredBlock87Block251Value10).
    recoveredBlock87Block251Value11
].
            recoveredBlock87PC := 339.
        ].
        recoveredBlock87Step = 339 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) inject: (recoveredBlock87Stack2) into: (recoveredBlock87Stack3).
            recoveredBlock87PC := 341.
        ].
        recoveredBlock87Step = 341 ifTrue: [
            recoveredBlock87Stack2 := 5.
            recoveredBlock87PC := 343.
        ].
        recoveredBlock87Step = 343 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) + (recoveredBlock87Stack2).
            recoveredBlock87PC := 344.
        ].
        recoveredBlock87Step = 344 ifTrue: [
            recoveredBlock87Stack2 := nil.
            recoveredBlock87PC := 345.
        ].
        recoveredBlock87Step = 345 ifTrue: [
            recoveredBlock87Stack3 := recoveredBlock87Stack2.
            recoveredBlock87PC := 346.
        ].
        recoveredBlock87Step = 346 ifTrue: [
            recoveredBlock87Local2 := recoveredBlock87Stack3.
            recoveredBlock87PC := 349.
        ].
        recoveredBlock87Step = 349 ifTrue: [
            recoveredBlock87Local1 := recoveredBlock87Stack2.
            recoveredBlock87PC := 352.
        ].
        recoveredBlock87Step = 352 ifTrue: [
            recoveredBlock87Result := recoveredBlock87Stack1.
            recoveredBlock87Done := true.
        ].
    ].
    recoveredBlock87Result
].
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := mainAreaRect.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := downArrow.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := [:recoveredBlock372Arg1 | 
    | recoveredBlock372Value0 recoveredBlock372Value1 recoveredBlock372Value2 recoveredBlock372Value3 recoveredBlock372Value4 recoveredBlock372Value5 recoveredBlock372Value6 recoveredBlock372Value7 recoveredBlock372Value8 recoveredBlock372Value9 recoveredBlock372Value10 recoveredBlock372Value11 recoveredBlock372Value12 |
    recoveredBlock372Value0 := recoveredBlock372Arg1.
    recoveredBlock372Value1 := (self) width.
    recoveredBlock372Value2 := recoveredBlock372Arg1.
    recoveredBlock372Value3 := (recoveredBlock372Value2) width.
    recoveredBlock372Value4 := (recoveredBlock372Value1) - (recoveredBlock372Value3).
    recoveredBlock372Value5 := (recoveredBlock372Value4) - (5).
    recoveredBlock372Value6 := mainAreaRect.
    recoveredBlock372Value7 := (recoveredBlock372Value6) height.
    recoveredBlock372Value8 := recoveredBlock372Arg1.
    recoveredBlock372Value9 := (recoveredBlock372Value8) height.
    recoveredBlock372Value10 := (recoveredBlock372Value7) - (recoveredBlock372Value9).
    recoveredBlock372Value11 := (recoveredBlock372Value10) - (5).
    recoveredBlock372Value12 := (recoveredBlock372Value0) moveWidget: (recoveredBlock372Value5) y: (recoveredBlock372Value11).
    recoveredBlock372Value12
].
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := downArrow.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) mapWidget.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredPC := 420.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := downArrow.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) unmapWidget.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) topItemIndex.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 466].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := upArrow.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := [:recoveredBlock432Arg1 | 
    | recoveredBlock432Value0 recoveredBlock432Value1 recoveredBlock432Value2 recoveredBlock432Value3 recoveredBlock432Value4 recoveredBlock432Value5 recoveredBlock432Value6 |
    recoveredBlock432Value0 := recoveredBlock432Arg1.
    recoveredBlock432Value1 := (self) width.
    recoveredBlock432Value2 := recoveredBlock432Arg1.
    recoveredBlock432Value3 := (recoveredBlock432Value2) width.
    recoveredBlock432Value4 := (recoveredBlock432Value1) - (recoveredBlock432Value3).
    recoveredBlock432Value5 := (recoveredBlock432Value4) - (5).
    recoveredBlock432Value6 := (recoveredBlock432Value0) moveWidget: (recoveredBlock432Value5) y: (5).
    recoveredBlock432Value6
].
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := upArrow.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) mapWidget.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredPC := 470.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := upArrow.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack0) unmapWidget.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

