"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000908; bytecode file offset 0x5173c"
!EwPushButtonTool methodsFor: 'recovered'!
upState
    ^'up'
! !

"extwid.ic method 0x20000914; bytecode file offset 0x5173c"
!EwPushButtonTool methodsFor: 'recovered'!
deepPressedState
    ^'deepPressed'
! !

"extwid.ic method 0x2000092c; bytecode file offset 0x5173c"
!EwPushButtonTool methodsFor: 'recovered'!
pressedState
    ^'pressed'
! !

"extwid.ic method 0x20000950; bytecode file offset 0x5173c"
!EwPushButtonTool methodsFor: 'recovered'!
checkedState
    ^'checked'
! !

"extwid.ic method 0x20000f78; bytecode file offset 0x52154"
!EwPushButtonTool methodsFor: 'recovered'!
assumedBorder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) buttonDrawPolicy.
    recoveredValue1 := (recoveredValue0) assumedBorder.
    ^recoveredValue1
! !

"extwid.ic method 0x20003af4; bytecode file offset 0x548e0"
!EwPushButtonTool methodsFor: 'recovered'!
drawnState
    | recoveredValue0 |
    recoveredValue0 := drawnState.
    ^recoveredValue0
! !

"extwid.ic method 0x20003b38; bytecode file offset 0x54934"
!EwPushButtonTool methodsFor: 'recovered'!
imageWidth
    | recoveredValue0 |
    recoveredValue0 := ewImageWidth.
    ^recoveredValue0
! !

"extwid.ic method 0x20003bb0; bytecode file offset 0x54994"
!EwPushButtonTool methodsFor: 'recovered'!
imageHeight
    | recoveredValue0 |
    recoveredValue0 := ewImageHeight.
    ^recoveredValue0
! !

"extwid.ic method 0x20003d00; bytecode file offset 0x54acc"
!EwPushButtonTool methodsFor: 'recovered'!
buttonIndex
    | recoveredValue0 |
    recoveredValue0 := buttonIndex.
    ^recoveredValue0
! !

"extwid.ic method 0x200042a0; bytecode file offset 0x5512c"
!EwPushButtonTool methodsFor: 'recovered'!
isButton
    ^true
! !

"extwid.ic method 0x200042e0; bytecode file offset 0x5512c"
!EwPushButtonTool methodsFor: 'recovered'!
isOpaque
    ^true
! !

"extwid.ic method 0x20004358; bytecode file offset 0x5512c"
!EwPushButtonTool methodsFor: 'recovered'!
isPushButton
    ^true
! !

"extwid.ic method 0x20004a50; bytecode file offset 0x5581c"
!EwPushButtonTool methodsFor: 'recovered'!
initializeAfterCreate
    (self) drawnState: ('up').
    ^self
! !

"extwid.ic method 0x20004a6c; bytecode file offset 0x558e8"
!EwPushButtonTool methodsFor: 'recovered'!
showUpButton
    | recoveredValue0 |
    recoveredValue0 := (self) upState.
    (self) setStateAndDraw: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x20004a7c; bytecode file offset 0x558e8"
!EwPushButtonTool methodsFor: 'recovered'!
showDeepPressedButton
    | recoveredValue0 |
    recoveredValue0 := (self) deepPressedState.
    (self) setStateAndDraw: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x20004abc; bytecode file offset 0x558e8"
!EwPushButtonTool methodsFor: 'recovered'!
showPressedButton
    | recoveredValue0 |
    recoveredValue0 := (self) pressedState.
    (self) setStateAndDraw: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x20004acc; bytecode file offset 0x558e8"
!EwPushButtonTool methodsFor: 'recovered'!
showCheckedButton
    | recoveredValue0 |
    recoveredValue0 := (self) checkedState.
    (self) setStateAndDraw: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x200060e0; bytecode file offset 0x56ecc"
!EwPushButtonTool methodsFor: 'recovered'!
callbackData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super callbackData.
    recoveredValue1 := (self) buttonIndex.
    recoveredValue2 := (recoveredValue0) buttonIndex: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x2000611c; bytecode file offset 0x56ef8"
!EwPushButtonTool methodsFor: 'recovered'!
setStateAndDraw: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) drawnState: (recoveredValue0).
    (self) refresh.
    ^self
! !

"extwid.ic method 0x2000742c; bytecode file offset 0x581f0"
!EwPushButtonTool methodsFor: 'recovered'!
drawnState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drawnState := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200074c4; bytecode file offset 0x58290"
!EwPushButtonTool methodsFor: 'recovered'!
armCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNarmCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007514; bytecode file offset 0x582d8"
!EwPushButtonTool methodsFor: 'recovered'!
disarmCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNdisarmCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000754c; bytecode file offset 0x58320"
!EwPushButtonTool methodsFor: 'recovered'!
activateCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNactivateCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007594; bytecode file offset 0x58358"
!EwPushButtonTool methodsFor: 'recovered'!
buttonIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttonIndex := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20009234; bytecode file offset 0x5a008"
!EwPushButtonTool methodsFor: 'recovered'!
callArmCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := xmNarmCallback.
    recoveredValue1 := (self) callbackData.
    recoveredValue2 := XmCRARM.
    recoveredValue3 := (recoveredValue1) reason: (recoveredValue2).
    (self) callCallbackList: (recoveredValue0) callData: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x2000925c; bytecode file offset 0x5a030"
!EwPushButtonTool methodsFor: 'recovered'!
callDisarmCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := xmNdisarmCallback.
    recoveredValue1 := (self) callbackData.
    recoveredValue2 := XmCRDISARM.
    recoveredValue3 := (recoveredValue1) reason: (recoveredValue2).
    (self) callCallbackList: (recoveredValue0) callData: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20009284; bytecode file offset 0x5a058"
!EwPushButtonTool methodsFor: 'recovered'!
callActivateCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := xmNactivateCallback.
    recoveredValue1 := (self) callbackData.
    recoveredValue2 := XmCRACTIVATE.
    recoveredValue3 := (recoveredValue1) reason: (recoveredValue2).
    (self) callCallbackList: (recoveredValue0) callData: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x2000a1dc; bytecode file offset 0x5afa8"
!EwPushButtonTool methodsFor: 'recovered'!
width
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNwidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonWidth.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := xmNwidth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000a200; bytecode file offset 0x5afcc"
!EwPushButtonTool methodsFor: 'recovered'!
height
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNheight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonHeight.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := xmNheight.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000d728; bytecode file offset 0x5e4f8"
!EwPushButtonTool methodsFor: 'recovered'!
armCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNarmCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) armCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNarmCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000d754; bytecode file offset 0x5e524"
!EwPushButtonTool methodsFor: 'recovered'!
disarmCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNdisarmCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) disarmCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNdisarmCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000d780; bytecode file offset 0x5e550"
!EwPushButtonTool methodsFor: 'recovered'!
activateCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNactivateCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) activateCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNactivateCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20013074; bytecode file offset 0x63e44"
!EwPushButtonTool methodsFor: 'recovered'!
imageWidth: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ewImageWidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ewImageWidth := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
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
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) buttonDrawPolicy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) bevelWidth.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200130a8; bytecode file offset 0x63e78"
!EwPushButtonTool methodsFor: 'recovered'!
imageHeight: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ewImageHeight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ewImageHeight := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
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
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) buttonDrawPolicy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) bevelHeight.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20013588; bytecode file offset 0x64364"
!EwPushButtonTool methodsFor: 'recovered'!
drawToolFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) borderBoundingBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersects: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) borderBoundingBox.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
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
            (recoveredStack0) clipGCsTo: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonDrawPolicy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) drawButton: (recoveredStack1).
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

"extwid.ic method 0x20014560; bytecode file offset 0x6534c"
!EwPushButtonTool methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeResources.
    recoveredValue0 := (self) upState.
    (self) drawnState: (recoveredValue0).
    recoveredValue1 := (self) fsm.
    recoveredValue2 := (recoveredValue1) initialState.
    (self) dynState: (recoveredValue2).
    recoveredValue3 := (self) buttonDrawPolicy.
    recoveredValue4 := (recoveredValue3) assumedBorder.
    (self) borderWidth: (recoveredValue4).
    ^self
! !

"extwid.ic method 0x20015bc8; bytecode file offset 0x669b0"
!EwPushButtonTool methodsFor: 'recovered'!
copyCallbacksTo: recoveredArg1
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
            super copyCallbacksTo: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isButton.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) armCallback.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) armCallback: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) disarmCallback.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) disarmCallback: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) activateCallback.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) activateCallback: (recoveredStack1).
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

"extwid.ic method 0x2002af14; bytecode file offset 0x7bd1c"
!EwPushButtonTool methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) tab.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) image.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := ('image: ') , (recoveredValue5).
    (recoveredValue3) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) tab.
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) boundingBox.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := ('boundingBox: ') , (recoveredValue11).
    (recoveredValue9) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) tab.
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := (self) drawnState.
    recoveredValue17 := (recoveredValue16) printString.
    recoveredValue18 := ('drawnState: ') , (recoveredValue17).
    (recoveredValue15) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) cr.
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) tab.
    recoveredValue21 := recoveredValue1.
    recoveredValue22 := (self) dynState.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('dynState: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) cr.
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) tab.
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := (self) userData.
    recoveredValue29 := (recoveredValue28) printString.
    recoveredValue30 := ('userData: ') , (recoveredValue29).
    (recoveredValue27) nextPutAll: (recoveredValue30).
    (recoveredValue1) cr.
    ^self
! !

