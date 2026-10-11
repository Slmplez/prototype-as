"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200028e4; bytecode file offset 0x7eaa4"
!CwCompositeBox methodsFor: 'recovered'!
helpLabelString
    | recoveredValue0 |
    recoveredValue0 := xmNhelpLabelString.
    ^recoveredValue0
! !

"winsys.ic method 0x20002900; bytecode file offset 0x7eac8"
!CwCompositeBox methodsFor: 'recovered'!
minimizeButtons
    | recoveredValue0 |
    recoveredValue0 := xmNminimizeButtons.
    ^recoveredValue0
! !

"winsys.ic method 0x20002b54; bytecode file offset 0x7ed1c"
!CwCompositeBox methodsFor: 'recovered'!
okLabelString
    | recoveredValue0 |
    recoveredValue0 := xmNokLabelString.
    ^recoveredValue0
! !

"winsys.ic method 0x200046b0; bytecode file offset 0x80878"
!CwCompositeBox methodsFor: 'recovered'!
cancelLabelString
    | recoveredValue0 |
    recoveredValue0 := xmNcancelLabelString.
    ^recoveredValue0
! !

"winsys.ic method 0x20006ea8; bytecode file offset 0x83070"
!CwCompositeBox methodsFor: 'recovered'!
setSpaces: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (' ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' ').
    ^recoveredValue2
! !

"winsys.ic method 0x200070d8; bytecode file offset 0x83298"
!CwCompositeBox methodsFor: 'recovered'!
okCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNokCallback := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000ab2c; bytecode file offset 0x86cfc"
!CwCompositeBox methodsFor: 'recovered'!
updateCancelLabelString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := XmDIALOGCANCELBUTTON.
    recoveredValue1 := (self) getChild: (recoveredValue0).
    recoveredValue2 := xmNcancelLabelString.
    recoveredValue3 := (self) setSpaces: (recoveredValue2).
    (recoveredValue1) labelString: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000be80; bytecode file offset 0x88050"
!CwCompositeBox methodsFor: 'recovered'!
updateHelpLabelString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := XmDIALOGHELPBUTTON.
    recoveredValue1 := (self) getChild: (recoveredValue0).
    recoveredValue2 := xmNhelpLabelString.
    recoveredValue3 := (self) setSpaces: (recoveredValue2).
    (recoveredValue1) labelString: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000beac; bytecode file offset 0x8807c"
!CwCompositeBox methodsFor: 'recovered'!
updateOkLabelString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := XmDIALOGOKBUTTON.
    recoveredValue1 := (self) getChild: (recoveredValue0).
    recoveredValue2 := xmNokLabelString.
    recoveredValue3 := (self) setSpaces: (recoveredValue2).
    (recoveredValue1) labelString: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000c520; bytecode file offset 0x886ec"
!CwCompositeBox methodsFor: 'recovered'!
osCreateWidget
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super osCreateWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) createStandardChildren.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20012104; bytecode file offset 0x8e2d4"
!CwCompositeBox methodsFor: 'recovered'!
updateMinimizeButtons
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
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
            recoveredStack0 := (recoveredStack0) requestPreferredExtent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := XtGeometryDone.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) layOut.
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

"winsys.ic method 0x2001260c; bytecode file offset 0x8e7f4"
!CwCompositeBox methodsFor: 'recovered'!
autoUnmanage: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := XmDIALOGHELPBUTTON.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getChild: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            super autoUnmanage: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
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

"winsys.ic method 0x200135d0; bytecode file offset 0x8f79c"
!CwCompositeBox methodsFor: 'recovered'!
okCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNokCallback.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) okCallback: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := xmNokCallback.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20015444; bytecode file offset 0x9161c"
!CwCompositeBox methodsFor: 'recovered'!
createSeparator
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SEP'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSeparator: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20016ff4; bytecode file offset 0x931c8"
!CwCompositeBox methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initializeResources.
    recoveredValue0 := MxCW6.
    xmNcancelLabelString := recoveredValue0.
    recoveredValue1 := MxCW7.
    xmNhelpLabelString := recoveredValue1.
    xmNminimizeButtons := false.
    recoveredValue2 := MxCW8.
    xmNokLabelString := recoveredValue2.
    ^self
! !

"winsys.ic method 0x20018248; bytecode file offset 0x94410"
!CwCompositeBox methodsFor: 'recovered'!
cancelLabelString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNcancelLabelString.
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
            xmNcancelLabelString := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'updateCancelLabelString'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) updateCancelLabelString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20019224; bytecode file offset 0x953ec"
!CwCompositeBox methodsFor: 'recovered'!
minimizeButtons: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNminimizeButtons.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            xmNminimizeButtons := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'updateMinimizeButtons'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) updateMinimizeButtons.
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

"winsys.ic method 0x20019754; bytecode file offset 0x95930"
!CwCompositeBox methodsFor: 'recovered'!
createButton: recoveredArg1 callbackReason: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSpaces: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'button:clientData:callData:'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001a31c; bytecode file offset 0x964e4"
!CwCompositeBox methodsFor: 'recovered'!
helpLabelString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNhelpLabelString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
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
            recoveredStack1 := self.
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
            xmNhelpLabelString := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'updateHelpLabelString'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateHelpLabelString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001a350; bytecode file offset 0x96518"
!CwCompositeBox methodsFor: 'recovered'!
okLabelString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNokLabelString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
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
            recoveredStack1 := self.
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
            xmNokLabelString := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'updateOkLabelString'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateOkLabelString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20038090; bytecode file offset 0xb4284"
!CwCompositeBox methodsFor: 'recovered'!
buttonsToBeLayedOut
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) minimizeButtons.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isManaged.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 60].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) preferredExtent.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) x.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack3 := recoveredLocal1.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) y.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Arg1.
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) borderWidth.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            (recoveredBlock16Stack1) resizeWidget: (recoveredBlock16Stack2) height: (recoveredBlock16Stack3) borderWidth: (recoveredBlock16Stack4).
            recoveredBlock16PC := 54.
        ].
        recoveredBlock16Step = 54 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal4.
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) add: (recoveredBlock16Stack2).
            recoveredBlock16PC := 60.
        ].
        recoveredBlock16Step = 60 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := nil.
            recoveredBlock84PC := 91.
        ].
        recoveredBlock84Step = 91 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 92.
        ].
        recoveredBlock84Step = 92 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) isManaged.
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            (recoveredBlock84Stack2) ifTrue: [recoveredBlock84PC := 98] ifFalse: [recoveredBlock84PC := 137].
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84PC := 99.
        ].
        recoveredBlock84Step = 99 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 100.
        ].
        recoveredBlock84Step = 100 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) preferredExtent.
            recoveredBlock84PC := 102.
        ].
        recoveredBlock84Step = 102 ifTrue: [
            recoveredLocal1 := recoveredBlock84Stack1.
            recoveredBlock84PC := 105.
        ].
        recoveredBlock84Step = 105 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal3.
            recoveredBlock84PC := 108.
        ].
        recoveredBlock84Step = 108 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal1.
            recoveredBlock84PC := 111.
        ].
        recoveredBlock84Step = 111 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) x.
            recoveredBlock84PC := 113.
        ].
        recoveredBlock84Step = 113 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) max: (recoveredBlock84Stack2).
            recoveredBlock84PC := 115.
        ].
        recoveredBlock84Step = 115 ifTrue: [
            recoveredLocal3 := recoveredBlock84Stack1.
            recoveredBlock84PC := 118.
        ].
        recoveredBlock84Step = 118 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal2.
            recoveredBlock84PC := 121.
        ].
        recoveredBlock84Step = 121 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal1.
            recoveredBlock84PC := 124.
        ].
        recoveredBlock84Step = 124 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) y.
            recoveredBlock84PC := 126.
        ].
        recoveredBlock84Step = 126 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) max: (recoveredBlock84Stack2).
            recoveredBlock84PC := 128.
        ].
        recoveredBlock84Step = 128 ifTrue: [
            recoveredLocal2 := recoveredBlock84Stack1.
            recoveredBlock84PC := 131.
        ].
        recoveredBlock84Step = 131 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal4.
            recoveredBlock84PC := 134.
        ].
        recoveredBlock84Step = 134 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 135.
        ].
        recoveredBlock84Step = 135 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) add: (recoveredBlock84Stack2).
            recoveredBlock84PC := 137.
        ].
        recoveredBlock84Step = 137 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack1.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 recoveredBlock143Value4 recoveredBlock143Value5 |
    recoveredBlock143Value0 := recoveredBlock143Arg1.
    recoveredBlock143Value1 := recoveredLocal3.
    recoveredBlock143Value2 := recoveredLocal2.
    recoveredBlock143Value3 := recoveredBlock143Arg1.
    recoveredBlock143Value4 := (recoveredBlock143Value3) borderWidth.
    recoveredBlock143Value5 := (recoveredBlock143Value0) resizeWidget: (recoveredBlock143Value1) height: (recoveredBlock143Value2) borderWidth: (recoveredBlock143Value4).
    recoveredBlock143Value5
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

