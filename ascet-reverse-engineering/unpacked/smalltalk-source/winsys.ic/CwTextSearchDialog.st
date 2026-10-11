"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200008e4; bytecode file offset 0x7cc7c"
!CwTextSearchDialog methodsFor: 'recovered'!
shellName
    | recoveredValue0 |
    recoveredValue0 := MxESTa46.
    ^recoveredValue0
! !

"winsys.ic method 0x200015c8; bytecode file offset 0x7d78c"
!CwTextSearchDialog methodsFor: 'recovered'!
forwardDirection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := forwardToggle.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"winsys.ic method 0x200016c0; bytecode file offset 0x7d884"
!CwTextSearchDialog methodsFor: 'recovered'!
caseOption
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := caseToggle.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"winsys.ic method 0x200016d4; bytecode file offset 0x7d898"
!CwTextSearchDialog methodsFor: 'recovered'!
wrapOption
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := wrapToggle.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"winsys.ic method 0x200034e0; bytecode file offset 0x7f720"
!CwTextSearchDialog methodsFor: 'recovered'!
textWidget
    | recoveredValue0 |
    recoveredValue0 := textWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20003e80; bytecode file offset 0x80070"
!CwTextSearchDialog methodsFor: 'recovered'!
ownerChanged
    | recoveredValue0 |
    recoveredValue0 := ownerChanged.
    ^recoveredValue0
! !

"winsys.ic method 0x20004dec; bytecode file offset 0x80fb0"
!CwTextSearchDialog methodsFor: 'recovered'!
ownerChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ownerChanged: (true).
    ^self
! !

"winsys.ic method 0x20004e2c; bytecode file offset 0x80ff4"
!CwTextSearchDialog methodsFor: 'recovered'!
close: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) bulletinBoard.
    (recoveredValue0) unmanageChild.
    ^self
! !

"winsys.ic method 0x2000552c; bytecode file offset 0x816f8"
!CwTextSearchDialog methodsFor: 'recovered'!
showNormalCursor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) window.
    (recoveredValue1) undefineCursor.
    ^self
! !

"winsys.ic method 0x200061a0; bytecode file offset 0x82378"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateNotFound
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := MxESTa40.
    (recoveredValue0) labelString: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x200061b0; bytecode file offset 0x82378"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateNotSearching
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := MxESTa39.
    (recoveredValue0) labelString: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20007ac8; bytecode file offset 0x83ce8"
!CwTextSearchDialog methodsFor: 'recovered'!
textWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200082a0; bytecode file offset 0x84470"
!CwTextSearchDialog methodsFor: 'recovered'!
ownerChanged: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerChanged := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200082fc; bytecode file offset 0x844c4"
!CwTextSearchDialog methodsFor: 'recovered'!
ownerText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerText := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20009fa0; bytecode file offset 0x86194"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateSearching
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := MxESTa44.
    (recoveredValue1) labelString: (recoveredValue2).
    (recoveredValue0) updateWidget.
    ^self
! !

"winsys.ic method 0x20009fb4; bytecode file offset 0x86194"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateReplacing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := MxESTa43.
    (recoveredValue1) labelString: (recoveredValue2).
    (recoveredValue0) updateWidget.
    ^self
! !

"winsys.ic method 0x20009fc8; bytecode file offset 0x86194"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateUpdating
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := MxESTa45.
    (recoveredValue1) labelString: (recoveredValue2).
    (recoveredValue0) updateWidget.
    ^self
! !

"winsys.ic method 0x2000a370; bytecode file offset 0x86540"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateReplaced: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := MxESTa41.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) bindWith: (recoveredValue3).
    (recoveredValue0) labelString: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000adc0; bytecode file offset 0x86f98"
!CwTextSearchDialog methodsFor: 'recovered'!
showBusyCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) window.
    recoveredValue2 := CgDisplay.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := (recoveredValue3) busyCursor.
    (recoveredValue1) defineCursor: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000b644; bytecode file offset 0x8785c"
!CwTextSearchDialog methodsFor: 'recovered'!
removeTextCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := XmNvalueChangedCallback.
    (recoveredValue0) removeCallback: (recoveredValue1) receiver: (self) selector: ('ownerChanged:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2000b68c; bytecode file offset 0x8785c"
!CwTextSearchDialog methodsFor: 'recovered'!
addTextCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := XmNvalueChangedCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('ownerChanged:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2000c770; bytecode file offset 0x88944"
!CwTextSearchDialog methodsFor: 'recovered'!
indicateReplaceInProgress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := indicatorLabel.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := MxESTa42.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue2) bindWith: (recoveredValue4).
    (recoveredValue1) labelString: (recoveredValue5).
    (recoveredValue0) updateWidget.
    ^self
! !

"winsys.ic method 0x2000c9e4; bytecode file offset 0x88bcc"
!CwTextSearchDialog methodsFor: 'recovered'!
replaceSearch: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) showBusyCursor.
    (self) replaceSelection.
    (self) search.
    (self) showNormalCursor.
    ^self
! !

"winsys.ic method 0x2000d6e8; bytecode file offset 0x898b0"
!CwTextSearchDialog methodsFor: 'recovered'!
replace: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) replaceSelection.
    recoveredValue0 := replaceButton.
    (recoveredValue0) sensitive: (false).
    recoveredValue1 := replaceSearchButton.
    (recoveredValue1) sensitive: (false).
    ^self
! !

"winsys.ic method 0x2000e7e0; bytecode file offset 0x8a9b0"
!CwTextSearchDialog methodsFor: 'recovered'!
ownerText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerChanged.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ownerText := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ownerChanged: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := ownerText.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000e8bc; bytecode file offset 0x8aa90"
!CwTextSearchDialog methodsFor: 'recovered'!
open
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) textWidget: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super open.
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

"winsys.ic method 0x20010398; bytecode file offset 0x8c570"
!CwTextSearchDialog methodsFor: 'recovered'!
createShell
    | recoveredValue0 recoveredValue1 |
    super createShell.
    recoveredValue0 := (self) shell.
    recoveredValue1 := XmNfocusCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('focus:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x20012f3c; bytecode file offset 0x8f110"
!CwTextSearchDialog methodsFor: 'recovered'!
search: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := searchText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) showBusyCursor.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) search.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) showNormalCursor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200251f8; bytecode file offset 0xa13e0"
!CwTextSearchDialog methodsFor: 'recovered'!
replaceSelection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) textWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSelectionPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := replaceText.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) getString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) toPos: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) forwardDirection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := replaceText.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) cursorPosition: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) cursorPosition: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200262cc; bytecode file offset 0xa24b4"
!CwTextSearchDialog methodsFor: 'recovered'!
focus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XmCRFOCUS.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSelection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := focusDone.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
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
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) bulletinBoard.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            focusDone := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20028a70; bytecode file offset 0xa4c58"
!CwTextSearchDialog methodsFor: 'recovered'!
selectText: recoveredArg1 text: recoveredArg2 initPosition: recoveredArg3 forward: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) caseOption.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2) matchCase: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) setSelection: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) showPosition: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002a438; bytecode file offset 0xa6624"
!CwTextSearchDialog methodsFor: 'recovered'!
search
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) indicateSearching.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) forwardDirection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchFor: (recoveredStack1) forward: (recoveredStack2).
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
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) indicateNotSearching.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) clearSelection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) indicateNotFound.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            (recoveredStack0) indicateNotSearching.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002de40; bytecode file offset 0xaa040"
!CwTextSearchDialog methodsFor: 'recovered'!
replace: recoveredArg1 toPos: recoveredArg2 value: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    (self) indicateReplacing.
    recoveredValue0 := (self) ownerText.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) - (recoveredValue7).
    recoveredValue9 := (recoveredValue5) - (recoveredValue8).
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue9) + (recoveredValue11).
    recoveredValue13 := (recoveredValue3) new: (recoveredValue12).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredLocal3.
    (recoveredValue15) replaceFrom: (1) to: (recoveredValue16) with: (recoveredValue17) startingAt: (1).
    recoveredValue18 := recoveredValue14.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) + (1).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredArg3.
    recoveredValue23 := (recoveredValue22) size.
    recoveredValue24 := (recoveredValue21) + (recoveredValue23).
    recoveredValue25 := recoveredValue24.
    recoveredLocal1 := recoveredValue25.
    recoveredValue26 := recoveredArg3.
    (recoveredValue18) replaceFrom: (recoveredValue20) to: (recoveredValue24) with: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) + (1).
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue29) size.
    recoveredValue31 := recoveredLocal3.
    recoveredValue32 := recoveredArg2.
    recoveredValue33 := (recoveredValue32) + (1).
    (recoveredValue14) replaceFrom: (recoveredValue28) to: (recoveredValue30) with: (recoveredValue31) startingAt: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (self) ownerText: (recoveredValue34).
    (self) removeTextCallback.
    recoveredValue35 := (self) textWidget.
    recoveredValue36 := recoveredValue35.
    recoveredValue37 := recoveredArg1.
    recoveredValue38 := recoveredArg2.
    recoveredValue39 := recoveredArg3.
    (recoveredValue36) replace: (recoveredValue37) toPos: (recoveredValue38) value: (recoveredValue39).
    (recoveredValue35) updateWidget.
    (self) addTextCallback.
    (self) indicateNotSearching.
    ^self
! !

"winsys.ic method 0x20033608; bytecode file offset 0xaf800"
!CwTextSearchDialog methodsFor: 'recovered'!
replaceAll: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := searchText.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := NlsCatESTa.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := $#.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := NlsCatESTa.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) showBusyCursor.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) indicateReplacing.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapOption.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) replaceAllFull.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) replaceAllPartial.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) showNormalCursor.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20035768; bytecode file offset 0xb1954"
!CwTextSearchDialog methodsFor: 'recovered'!
searchFor: recoveredArg1 forward: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectionPosition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursorPosition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectText: (recoveredStack1) text: (recoveredStack2) initPosition: (recoveredStack3) forward: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapOption.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectText: (recoveredStack1) text: (recoveredStack2) initPosition: (recoveredStack3) forward: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20043c64; bytecode file offset 0xbfe9c"
!CwTextSearchDialog methodsFor: 'recovered'!
replaceAllFull
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) indicateReplaceInProgress: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := searchText.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) caseOption.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) matchCase: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) indicateUpdating.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) removeTextCallback.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 recoveredBlock155Value4 |
    recoveredBlock155Value0 := recoveredLocal1.
    recoveredBlock155Value1 := recoveredBlock155Arg1.
    recoveredBlock155Value2 := (recoveredBlock155Value1) size.
    recoveredBlock155Value3 := (recoveredBlock155Value0) + (recoveredBlock155Value2).
    recoveredBlock155Value4 := recoveredBlock155Value3.
    recoveredLocal1 := recoveredBlock155Value4.
    recoveredBlock155Value3
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := replaceText.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Stack0 recoveredBlock218Stack1 recoveredBlock218Stack2 recoveredBlock218Stack3 recoveredBlock218Stack4 recoveredBlock218Stack5 recoveredBlock218PC recoveredBlock218Step recoveredBlock218Done recoveredBlock218Result |
    recoveredBlock218Stack0 := self.
    recoveredBlock218PC := 224.
    recoveredBlock218Done := false.
    [recoveredBlock218Done not] whileTrue: [
        recoveredBlock218Step := recoveredBlock218PC.
        recoveredBlock218Step = 224 ifTrue: [
            recoveredBlock218Stack1 := recoveredBlock218Arg1.
            recoveredBlock218PC := 225.
        ].
        recoveredBlock218Step = 225 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) isEmpty.
            recoveredBlock218PC := 227.
        ].
        recoveredBlock218Step = 227 ifTrue: [
            (recoveredBlock218Stack1) ifTrue: [recoveredBlock218PC := 258] ifFalse: [recoveredBlock218PC := 230].
        ].
        recoveredBlock218Step = 230 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal6.
            recoveredBlock218PC := 233.
        ].
        recoveredBlock218Step = 233 ifTrue: [
            recoveredBlock218Stack2 := recoveredLocal5.
            recoveredBlock218PC := 236.
        ].
        recoveredBlock218Step = 236 ifTrue: [
            recoveredBlock218Stack3 := recoveredLocal5.
            recoveredBlock218PC := 239.
        ].
        recoveredBlock218Step = 239 ifTrue: [
            recoveredBlock218Stack4 := recoveredBlock218Arg1.
            recoveredBlock218PC := 240.
        ].
        recoveredBlock218Step = 240 ifTrue: [
            recoveredBlock218Stack4 := (recoveredBlock218Stack4) size.
            recoveredBlock218PC := 242.
        ].
        recoveredBlock218Step = 242 ifTrue: [
            recoveredBlock218Stack3 := (recoveredBlock218Stack3) + (recoveredBlock218Stack4).
            recoveredBlock218PC := 243.
        ].
        recoveredBlock218Step = 243 ifTrue: [
            recoveredBlock218Stack3 := (recoveredBlock218Stack3) + (-1).
            recoveredBlock218PC := 244.
        ].
        recoveredBlock218Step = 244 ifTrue: [
            recoveredBlock218Stack4 := recoveredBlock218Arg1.
            recoveredBlock218PC := 245.
        ].
        recoveredBlock218Step = 245 ifTrue: [
            (recoveredBlock218Stack1) replaceFrom: (recoveredBlock218Stack2) to: (recoveredBlock218Stack3) with: (recoveredBlock218Stack4).
            recoveredBlock218PC := 248.
        ].
        recoveredBlock218Step = 248 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal5.
            recoveredBlock218PC := 251.
        ].
        recoveredBlock218Step = 251 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 252.
        ].
        recoveredBlock218Step = 252 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) size.
            recoveredBlock218PC := 254.
        ].
        recoveredBlock218Step = 254 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) + (recoveredBlock218Stack2).
            recoveredBlock218PC := 255.
        ].
        recoveredBlock218Step = 255 ifTrue: [
            recoveredLocal5 := recoveredBlock218Stack1.
            recoveredBlock218PC := 258.
        ].
        recoveredBlock218Step = 258 ifTrue: [
            recoveredBlock218Stack1 := nil.
            recoveredBlock218PC := 259.
        ].
        recoveredBlock218Step = 259 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 260.
        ].
        recoveredBlock218Step = 260 ifTrue: [
            recoveredBlock218Stack3 := recoveredLocal2.
            recoveredBlock218PC := 263.
        ].
        recoveredBlock218Step = 263 ifTrue: [
            recoveredBlock218Stack3 := (recoveredBlock218Stack3) last.
            recoveredBlock218PC := 265.
        ].
        recoveredBlock218Step = 265 ifTrue: [
            (recoveredBlock218Stack2 == recoveredBlock218Stack3) ifTrue: [recoveredBlock218PC := 304] ifFalse: [recoveredBlock218PC := 268].
        ].
        recoveredBlock218Step = 268 ifTrue: [
            recoveredBlock218PC := 269.
        ].
        recoveredBlock218Step = 269 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal6.
            recoveredBlock218PC := 272.
        ].
        recoveredBlock218Step = 272 ifTrue: [
            recoveredBlock218Stack2 := recoveredLocal5.
            recoveredBlock218PC := 275.
        ].
        recoveredBlock218Step = 275 ifTrue: [
            recoveredBlock218Stack3 := recoveredLocal5.
            recoveredBlock218PC := 278.
        ].
        recoveredBlock218Step = 278 ifTrue: [
            recoveredBlock218Stack4 := recoveredLocal3.
            recoveredBlock218PC := 281.
        ].
        recoveredBlock218Step = 281 ifTrue: [
            recoveredBlock218Stack4 := (recoveredBlock218Stack4) size.
            recoveredBlock218PC := 283.
        ].
        recoveredBlock218Step = 283 ifTrue: [
            recoveredBlock218Stack3 := (recoveredBlock218Stack3) + (recoveredBlock218Stack4).
            recoveredBlock218PC := 284.
        ].
        recoveredBlock218Step = 284 ifTrue: [
            recoveredBlock218Stack3 := (recoveredBlock218Stack3) + (-1).
            recoveredBlock218PC := 285.
        ].
        recoveredBlock218Step = 285 ifTrue: [
            recoveredBlock218Stack4 := recoveredLocal3.
            recoveredBlock218PC := 288.
        ].
        recoveredBlock218Step = 288 ifTrue: [
            (recoveredBlock218Stack1) replaceFrom: (recoveredBlock218Stack2) to: (recoveredBlock218Stack3) with: (recoveredBlock218Stack4).
            recoveredBlock218PC := 291.
        ].
        recoveredBlock218Step = 291 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal5.
            recoveredBlock218PC := 294.
        ].
        recoveredBlock218Step = 294 ifTrue: [
            recoveredBlock218Stack2 := recoveredLocal3.
            recoveredBlock218PC := 297.
        ].
        recoveredBlock218Step = 297 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) size.
            recoveredBlock218PC := 299.
        ].
        recoveredBlock218Step = 299 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) + (recoveredBlock218Stack2).
            recoveredBlock218PC := 300.
        ].
        recoveredBlock218Step = 300 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Stack1.
            recoveredBlock218PC := 301.
        ].
        recoveredBlock218Step = 301 ifTrue: [
            recoveredLocal5 := recoveredBlock218Stack2.
            recoveredBlock218PC := 304.
        ].
        recoveredBlock218Step = 304 ifTrue: [
            recoveredBlock218Result := recoveredBlock218Stack1.
            recoveredBlock218Done := true.
        ].
    ].
    recoveredBlock218Result
].
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) forwardDirection.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastPosition.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredPC := 343.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) ownerText: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) addTextCallback.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) indicateReplaced: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200482d0; bytecode file offset 0xc451c"
!CwTextSearchDialog methodsFor: 'recovered'!
replaceAllPartial
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectionPosition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) forwardDirection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursorPosition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastPosition.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursorPosition.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) indicateReplaceInProgress: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := searchText.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) caseOption.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) matchCase: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 201] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 569] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) removeTextCallback.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) indicateUpdating.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Value0 recoveredBlock249Value1 recoveredBlock249Value2 recoveredBlock249Value3 recoveredBlock249Value4 |
    recoveredBlock249Value0 := recoveredLocal2.
    recoveredBlock249Value1 := recoveredBlock249Arg1.
    recoveredBlock249Value2 := (recoveredBlock249Value1) size.
    recoveredBlock249Value3 := (recoveredBlock249Value0) + (recoveredBlock249Value2).
    recoveredBlock249Value4 := recoveredBlock249Value3.
    recoveredLocal2 := recoveredBlock249Value4.
    recoveredBlock249Value3
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := replaceText.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := [:recoveredBlock312Arg1 | 
    | recoveredBlock312Stack0 recoveredBlock312Stack1 recoveredBlock312Stack2 recoveredBlock312Stack3 recoveredBlock312Stack4 recoveredBlock312Stack5 recoveredBlock312PC recoveredBlock312Step recoveredBlock312Done recoveredBlock312Result |
    recoveredBlock312Stack0 := self.
    recoveredBlock312PC := 318.
    recoveredBlock312Done := false.
    [recoveredBlock312Done not] whileTrue: [
        recoveredBlock312Step := recoveredBlock312PC.
        recoveredBlock312Step = 318 ifTrue: [
            recoveredBlock312Stack1 := recoveredBlock312Arg1.
            recoveredBlock312PC := 319.
        ].
        recoveredBlock312Step = 319 ifTrue: [
            recoveredBlock312Stack1 := (recoveredBlock312Stack1) isEmpty.
            recoveredBlock312PC := 321.
        ].
        recoveredBlock312Step = 321 ifTrue: [
            (recoveredBlock312Stack1) ifTrue: [recoveredBlock312PC := 352] ifFalse: [recoveredBlock312PC := 324].
        ].
        recoveredBlock312Step = 324 ifTrue: [
            recoveredBlock312Stack1 := recoveredLocal6.
            recoveredBlock312PC := 327.
        ].
        recoveredBlock312Step = 327 ifTrue: [
            recoveredBlock312Stack2 := recoveredLocal5.
            recoveredBlock312PC := 330.
        ].
        recoveredBlock312Step = 330 ifTrue: [
            recoveredBlock312Stack3 := recoveredLocal5.
            recoveredBlock312PC := 333.
        ].
        recoveredBlock312Step = 333 ifTrue: [
            recoveredBlock312Stack4 := recoveredBlock312Arg1.
            recoveredBlock312PC := 334.
        ].
        recoveredBlock312Step = 334 ifTrue: [
            recoveredBlock312Stack4 := (recoveredBlock312Stack4) size.
            recoveredBlock312PC := 336.
        ].
        recoveredBlock312Step = 336 ifTrue: [
            recoveredBlock312Stack3 := (recoveredBlock312Stack3) + (recoveredBlock312Stack4).
            recoveredBlock312PC := 337.
        ].
        recoveredBlock312Step = 337 ifTrue: [
            recoveredBlock312Stack3 := (recoveredBlock312Stack3) + (-1).
            recoveredBlock312PC := 338.
        ].
        recoveredBlock312Step = 338 ifTrue: [
            recoveredBlock312Stack4 := recoveredBlock312Arg1.
            recoveredBlock312PC := 339.
        ].
        recoveredBlock312Step = 339 ifTrue: [
            (recoveredBlock312Stack1) replaceFrom: (recoveredBlock312Stack2) to: (recoveredBlock312Stack3) with: (recoveredBlock312Stack4).
            recoveredBlock312PC := 342.
        ].
        recoveredBlock312Step = 342 ifTrue: [
            recoveredBlock312Stack1 := recoveredLocal5.
            recoveredBlock312PC := 345.
        ].
        recoveredBlock312Step = 345 ifTrue: [
            recoveredBlock312Stack2 := recoveredBlock312Arg1.
            recoveredBlock312PC := 346.
        ].
        recoveredBlock312Step = 346 ifTrue: [
            recoveredBlock312Stack2 := (recoveredBlock312Stack2) size.
            recoveredBlock312PC := 348.
        ].
        recoveredBlock312Step = 348 ifTrue: [
            recoveredBlock312Stack1 := (recoveredBlock312Stack1) + (recoveredBlock312Stack2).
            recoveredBlock312PC := 349.
        ].
        recoveredBlock312Step = 349 ifTrue: [
            recoveredLocal5 := recoveredBlock312Stack1.
            recoveredBlock312PC := 352.
        ].
        recoveredBlock312Step = 352 ifTrue: [
            recoveredBlock312Stack1 := nil.
            recoveredBlock312PC := 353.
        ].
        recoveredBlock312Step = 353 ifTrue: [
            recoveredBlock312Stack2 := recoveredBlock312Arg1.
            recoveredBlock312PC := 354.
        ].
        recoveredBlock312Step = 354 ifTrue: [
            recoveredBlock312Stack3 := recoveredLocal3.
            recoveredBlock312PC := 357.
        ].
        recoveredBlock312Step = 357 ifTrue: [
            recoveredBlock312Stack3 := (recoveredBlock312Stack3) last.
            recoveredBlock312PC := 359.
        ].
        recoveredBlock312Step = 359 ifTrue: [
            (recoveredBlock312Stack2 == recoveredBlock312Stack3) ifTrue: [recoveredBlock312PC := 398] ifFalse: [recoveredBlock312PC := 362].
        ].
        recoveredBlock312Step = 362 ifTrue: [
            recoveredBlock312PC := 363.
        ].
        recoveredBlock312Step = 363 ifTrue: [
            recoveredBlock312Stack1 := recoveredLocal6.
            recoveredBlock312PC := 366.
        ].
        recoveredBlock312Step = 366 ifTrue: [
            recoveredBlock312Stack2 := recoveredLocal5.
            recoveredBlock312PC := 369.
        ].
        recoveredBlock312Step = 369 ifTrue: [
            recoveredBlock312Stack3 := recoveredLocal5.
            recoveredBlock312PC := 372.
        ].
        recoveredBlock312Step = 372 ifTrue: [
            recoveredBlock312Stack4 := recoveredLocal8.
            recoveredBlock312PC := 375.
        ].
        recoveredBlock312Step = 375 ifTrue: [
            recoveredBlock312Stack4 := (recoveredBlock312Stack4) size.
            recoveredBlock312PC := 377.
        ].
        recoveredBlock312Step = 377 ifTrue: [
            recoveredBlock312Stack3 := (recoveredBlock312Stack3) + (recoveredBlock312Stack4).
            recoveredBlock312PC := 378.
        ].
        recoveredBlock312Step = 378 ifTrue: [
            recoveredBlock312Stack3 := (recoveredBlock312Stack3) + (-1).
            recoveredBlock312PC := 379.
        ].
        recoveredBlock312Step = 379 ifTrue: [
            recoveredBlock312Stack4 := recoveredLocal8.
            recoveredBlock312PC := 382.
        ].
        recoveredBlock312Step = 382 ifTrue: [
            (recoveredBlock312Stack1) replaceFrom: (recoveredBlock312Stack2) to: (recoveredBlock312Stack3) with: (recoveredBlock312Stack4).
            recoveredBlock312PC := 385.
        ].
        recoveredBlock312Step = 385 ifTrue: [
            recoveredBlock312Stack1 := recoveredLocal5.
            recoveredBlock312PC := 388.
        ].
        recoveredBlock312Step = 388 ifTrue: [
            recoveredBlock312Stack2 := recoveredLocal8.
            recoveredBlock312PC := 391.
        ].
        recoveredBlock312Step = 391 ifTrue: [
            recoveredBlock312Stack2 := (recoveredBlock312Stack2) size.
            recoveredBlock312PC := 393.
        ].
        recoveredBlock312Step = 393 ifTrue: [
            recoveredBlock312Stack1 := (recoveredBlock312Stack1) + (recoveredBlock312Stack2).
            recoveredBlock312PC := 394.
        ].
        recoveredBlock312Step = 394 ifTrue: [
            recoveredBlock312Stack2 := recoveredBlock312Stack1.
            recoveredBlock312PC := 395.
        ].
        recoveredBlock312Step = 395 ifTrue: [
            recoveredLocal5 := recoveredBlock312Stack2.
            recoveredBlock312PC := 398.
        ].
        recoveredBlock312Step = 398 ifTrue: [
            recoveredBlock312Result := recoveredBlock312Stack1.
            recoveredBlock312Done := true.
        ].
    ].
    recoveredBlock312Result
].
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) forwardDirection.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack4 := (recoveredStack4) ownerText.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack0) ownerText: (recoveredStack1).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerText.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastPosition.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredPC := 566.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerText.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack3 := (recoveredStack3) ownerText.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack0) ownerText: (recoveredStack1).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerText.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack0) addTextCallback.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack0) indicateReplaced: (recoveredStack1).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2004b4f4; bytecode file offset 0xc787c"
!CwTextSearchDialog methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ownerChanged: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'form'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block280097b4Arg1 | 
    | block280097b4Value0 block280097b4Value1 block280097b4Value2 block280097b4Value3 block280097b4Value4 |
    block280097b4Value0 := block280097b4Arg1.
    block280097b4Value1 := block280097b4Value0.
    (block280097b4Value1) autoUnmanage: (false).
    block280097b4Value2 := block280097b4Value0.
    (block280097b4Value2) marginWidth: (10).
    block280097b4Value3 := block280097b4Value0.
    (block280097b4Value3) marginHeight: (10).
    block280097b4Value4 := (block280097b4Value0) verticalSpacing: (10).
    block280097b4Value4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'label1'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:block280097d8Arg1 | 
    | block280097d8Value0 block280097d8Value1 block280097d8Value2 block280097d8Value3 block280097d8Value4 |
    block280097d8Value0 := block280097d8Arg1.
    block280097d8Value1 := block280097d8Value0.
    block280097d8Value2 := XmALIGNMENTCENTER.
    (block280097d8Value1) alignment: (block280097d8Value2).
    block280097d8Value3 := MxESTa26.
    block280097d8Value4 := (block280097d8Value0) labelString: (block280097d8Value3).
    block280097d8Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'searchReplaceStrings'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:block280097fcArg1 | 
    | block280097fcValue0 block280097fcValue1 block280097fcValue2 block280097fcValue3 block280097fcValue4 block280097fcValue5 block280097fcValue6 |
    block280097fcValue0 := block280097fcArg1.
    block280097fcValue1 := block280097fcValue0.
    (block280097fcValue1) numColumns: (2).
    block280097fcValue2 := block280097fcValue0.
    (block280097fcValue2) adjustLast: (true).
    block280097fcValue3 := block280097fcValue0.
    block280097fcValue4 := XmPACKCOLUMN.
    (block280097fcValue3) packing: (block280097fcValue4).
    block280097fcValue5 := XmVERTICAL.
    block280097fcValue6 := (block280097fcValue0) orientation: (block280097fcValue5).
    block280097fcValue6
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'searchStatic'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:block28009820Arg1 | 
    | block28009820Value0 block28009820Value1 block28009820Value2 |
    block28009820Value0 := block28009820Arg1.
    block28009820Value1 := MxESTa27.
    block28009820Value2 := (block28009820Value0) labelString: (block28009820Value1).
    block28009820Value2
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'replaceStatic'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := [:block28009844Arg1 | 
    | block28009844Value0 block28009844Value1 block28009844Value2 |
    block28009844Value0 := block28009844Arg1.
    block28009844Value1 := MxESTa28.
    block28009844Value2 := (block28009844Value0) labelString: (block28009844Value1).
    block28009844Value2
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 'searchText'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := [:block28009868Arg1 | 
    | block28009868Value0 block28009868Value1 block28009868Value2 block28009868Value3 |
    block28009868Value0 := block28009868Arg1.
    block28009868Value1 := block28009868Value0.
    (block28009868Value1) columns: (1).
    block28009868Value2 := XmSINGLELINEEDIT.
    block28009868Value3 := (block28009868Value0) editMode: (block28009868Value2).
    block28009868Value3
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) createText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            searchText := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'replaceText'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := [:block2800988cArg1 | 
    | block2800988cValue0 block2800988cValue1 block2800988cValue2 block2800988cValue3 |
    block2800988cValue0 := block2800988cArg1.
    block2800988cValue1 := block2800988cValue0.
    (block2800988cValue1) columns: (1).
    block2800988cValue2 := XmSINGLELINEEDIT.
    block2800988cValue3 := (block2800988cValue0) editMode: (block2800988cValue2).
    block2800988cValue3
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) createText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            replaceText := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := 'options'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:block280098b0Arg1 | 
    | block280098b0Value0 block280098b0Value1 block280098b0Value2 block280098b0Value3 block280098b0Value4 block280098b0Value5 block280098b0Value6 block280098b0Value7 |
    block280098b0Value0 := block280098b0Arg1.
    block280098b0Value1 := block280098b0Value0.
    (block280098b0Value1) numColumns: (2).
    block280098b0Value2 := block280098b0Value0.
    (block280098b0Value2) spacing: (10).
    block280098b0Value3 := block280098b0Value0.
    (block280098b0Value3) adjustLast: (false).
    block280098b0Value4 := block280098b0Value0.
    block280098b0Value5 := XmPACKCOLUMN.
    (block280098b0Value4) packing: (block280098b0Value5).
    block280098b0Value6 := XmVERTICAL.
    block280098b0Value7 := (block280098b0Value0) orientation: (block280098b0Value6).
    block280098b0Value7
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := 'frameWidget'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := [:block280098d4Arg1 | 
    | block280098d4Value0 block280098d4Value1 block280098d4Value2 |
    block280098d4Value0 := block280098d4Arg1.
    block280098d4Value1 := MxESTa29.
    block280098d4Value2 := (block280098d4Value0) labelString: (block280098d4Value1).
    block280098d4Value2
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := 'directionBox'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := [:block280098f8Arg1 | 
    | block280098f8Value0 block280098f8Value1 block280098f8Value2 |
    block280098f8Value0 := block280098f8Arg1.
    block280098f8Value1 := XmVERTICAL.
    block280098f8Value2 := (block280098f8Value0) orientation: (block280098f8Value1).
    block280098f8Value2
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRadioBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 'forwardToggle'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := [:block2800991cArg1 | 
    | block2800991cValue0 block2800991cValue1 block2800991cValue2 block2800991cValue3 |
    block2800991cValue0 := block2800991cArg1.
    block2800991cValue1 := block2800991cValue0.
    block2800991cValue2 := MxESTa30.
    (block2800991cValue1) labelString: (block2800991cValue2).
    block2800991cValue3 := (block2800991cValue0) set: (true).
    block2800991cValue3
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            forwardToggle := recoveredStack0.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := 'backToggle'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := [:block28009940Arg1 | 
    | block28009940Value0 block28009940Value1 block28009940Value2 |
    block28009940Value0 := block28009940Arg1.
    block28009940Value1 := MxESTa31.
    block28009940Value2 := (block28009940Value0) labelString: (block28009940Value1).
    block28009940Value2
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            backToggle := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := 'caseAndWrap'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := [:block28009964Arg1 | 
    | block28009964Value0 block28009964Value1 block28009964Value2 block28009964Value3 block28009964Value4 block28009964Value5 block28009964Value6 |
    block28009964Value0 := block28009964Arg1.
    block28009964Value1 := block28009964Value0.
    (block28009964Value1) numColumns: (2).
    block28009964Value2 := block28009964Value0.
    block28009964Value3 := XmPACKTIGHT.
    (block28009964Value2) packing: (block28009964Value3).
    block28009964Value4 := block28009964Value0.
    (block28009964Value4) adjustLast: (false).
    block28009964Value5 := XmVERTICAL.
    block28009964Value6 := (block28009964Value0) orientation: (block28009964Value5).
    block28009964Value6
].
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := 'caseToggle'.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := [:block28009988Arg1 | 
    | block28009988Value0 block28009988Value1 block28009988Value2 |
    block28009988Value0 := block28009988Arg1.
    block28009988Value1 := MxESTa32.
    block28009988Value2 := (block28009988Value0) labelString: (block28009988Value1).
    block28009988Value2
].
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            caseToggle := recoveredStack0.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := 'wrapToggle'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := [:block280099acArg1 | 
    | block280099acValue0 block280099acValue1 block280099acValue2 |
    block280099acValue0 := block280099acArg1.
    block280099acValue1 := MxESTa33.
    block280099acValue2 := (block280099acValue0) labelString: (block280099acValue1).
    block280099acValue2
].
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            wrapToggle := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := 'buttons'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := [:block280099d0Arg1 | 
    | block280099d0Value0 block280099d0Value1 block280099d0Value2 block280099d0Value3 block280099d0Value4 block280099d0Value5 block280099d0Value6 block280099d0Value7 block280099d0Value8 block280099d0Value9 |
    block280099d0Value0 := block280099d0Arg1.
    block280099d0Value1 := block280099d0Value0.
    (block280099d0Value1) numColumns: (2).
    block280099d0Value2 := block280099d0Value0.
    (block280099d0Value2) marginWidth: (0).
    block280099d0Value3 := block280099d0Value0.
    (block280099d0Value3) marginHeight: (0).
    block280099d0Value4 := block280099d0Value0.
    (block280099d0Value4) adjustLast: (false).
    block280099d0Value5 := block280099d0Value0.
    (block280099d0Value5) spacing: (10).
    block280099d0Value6 := block280099d0Value0.
    block280099d0Value7 := XmPACKCOLUMN.
    (block280099d0Value6) packing: (block280099d0Value7).
    block280099d0Value8 := XmVERTICAL.
    block280099d0Value9 := (block280099d0Value0) orientation: (block280099d0Value8).
    block280099d0Value9
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := 'searchButton'.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := [:block280099f4Arg1 | 
    | block280099f4Value0 block280099f4Value1 block280099f4Value2 |
    block280099f4Value0 := block280099f4Arg1.
    block280099f4Value1 := MxESTa34.
    block280099f4Value2 := (block280099f4Value0) labelString: (block280099f4Value1).
    block280099f4Value2
].
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            searchButton := recoveredStack0.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := searchButton.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack3 := 'search:clientData:callData:'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := 'replaceButton'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack2 := [:block28009a18Arg1 | 
    | block28009a18Value0 block28009a18Value1 block28009a18Value2 block28009a18Value3 |
    block28009a18Value0 := block28009a18Arg1.
    block28009a18Value1 := block28009a18Value0.
    (block28009a18Value1) sensitive: (false).
    block28009a18Value2 := MxESTa35.
    block28009a18Value3 := (block28009a18Value0) labelString: (block28009a18Value2).
    block28009a18Value3
].
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            replaceButton := recoveredStack0.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack3 := 'replace:clientData:callData:'.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := 'replaceSearchButton'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := [:block28009a3cArg1 | 
    | block28009a3cValue0 block28009a3cValue1 block28009a3cValue2 block28009a3cValue3 |
    block28009a3cValue0 := block28009a3cArg1.
    block28009a3cValue1 := block28009a3cValue0.
    (block28009a3cValue1) sensitive: (false).
    block28009a3cValue2 := MxESTa36.
    block28009a3cValue3 := (block28009a3cValue0) labelString: (block28009a3cValue2).
    block28009a3cValue3
].
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            replaceSearchButton := recoveredStack0.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack3 := 'replaceSearch:clientData:callData:'.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := 'replaceAllButton'.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack2 := [:block28009a60Arg1 | 
    | block28009a60Value0 block28009a60Value1 block28009a60Value2 |
    block28009a60Value0 := block28009a60Arg1.
    block28009a60Value1 := MxESTa37.
    block28009a60Value2 := (block28009a60Value0) labelString: (block28009a60Value1).
    block28009a60Value2
].
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            replaceAllButton := recoveredStack0.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack3 := 'replaceAll:clientData:callData:'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := (recoveredStack1) editable.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := [:block28009a84Arg1 | 
    | block28009a84Value0 block28009a84Value1 block28009a84Value2 |
    block28009a84Value0 := block28009a84Arg1.
    block28009a84Value1 := MxESTa38.
    block28009a84Value2 := (block28009a84Value0) labelString: (block28009a84Value1).
    block28009a84Value2
].
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            closeButton := recoveredStack0.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack0 := closeButton.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack3 := 'close:clientData:callData:'.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack1 := 'indicatorLabel'.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack2 := [:block28009aa8Arg1 | 
    | block28009aa8Value0 block28009aa8Value1 block28009aa8Value2 block28009aa8Value3 block28009aa8Value4 |
    block28009aa8Value0 := block28009aa8Arg1.
    block28009aa8Value1 := block28009aa8Value0.
    block28009aa8Value2 := XmALIGNMENTBEGINNING.
    (block28009aa8Value1) alignment: (block28009aa8Value2).
    block28009aa8Value3 := MxESTa39.
    block28009aa8Value4 := (block28009aa8Value0) labelString: (block28009aa8Value3).
    block28009aa8Value4
].
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            indicatorLabel := recoveredStack0.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := [:block28009accArg1 | 
    | block28009accValue0 block28009accValue1 block28009accValue2 block28009accValue3 block28009accValue4 block28009accValue5 block28009accValue6 |
    block28009accValue0 := block28009accArg1.
    block28009accValue1 := block28009accValue0.
    block28009accValue2 := XmATTACHFORM.
    (block28009accValue1) topAttachment: (block28009accValue2).
    block28009accValue3 := block28009accValue0.
    block28009accValue4 := XmATTACHFORM.
    (block28009accValue3) leftAttachment: (block28009accValue4).
    block28009accValue5 := XmATTACHFORM.
    block28009accValue6 := (block28009accValue0) rightAttachment: (block28009accValue5).
    block28009accValue6
].
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := [:recoveredBlock798Arg1 | 
    | recoveredBlock798Value0 recoveredBlock798Value1 recoveredBlock798Value2 recoveredBlock798Value3 recoveredBlock798Value4 recoveredBlock798Value5 recoveredBlock798Value6 recoveredBlock798Value7 recoveredBlock798Value8 |
    recoveredBlock798Value0 := recoveredBlock798Arg1.
    recoveredBlock798Value1 := recoveredBlock798Value0.
    recoveredBlock798Value2 := XmATTACHWIDGET.
    (recoveredBlock798Value1) topAttachment: (recoveredBlock798Value2).
    recoveredBlock798Value3 := recoveredBlock798Value0.
    recoveredBlock798Value4 := recoveredLocal11.
    (recoveredBlock798Value3) topWidget: (recoveredBlock798Value4).
    recoveredBlock798Value5 := recoveredBlock798Value0.
    recoveredBlock798Value6 := XmATTACHFORM.
    (recoveredBlock798Value5) leftAttachment: (recoveredBlock798Value6).
    recoveredBlock798Value7 := XmATTACHFORM.
    recoveredBlock798Value8 := (recoveredBlock798Value0) rightAttachment: (recoveredBlock798Value7).
    recoveredBlock798Value8
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack1 := [:recoveredBlock848Arg1 | 
    | recoveredBlock848Value0 recoveredBlock848Value1 recoveredBlock848Value2 recoveredBlock848Value3 recoveredBlock848Value4 recoveredBlock848Value5 recoveredBlock848Value6 recoveredBlock848Value7 recoveredBlock848Value8 |
    recoveredBlock848Value0 := recoveredBlock848Arg1.
    recoveredBlock848Value1 := recoveredBlock848Value0.
    recoveredBlock848Value2 := XmATTACHWIDGET.
    (recoveredBlock848Value1) topAttachment: (recoveredBlock848Value2).
    recoveredBlock848Value3 := recoveredBlock848Value0.
    recoveredBlock848Value4 := recoveredLocal7.
    (recoveredBlock848Value3) topWidget: (recoveredBlock848Value4).
    recoveredBlock848Value5 := recoveredBlock848Value0.
    recoveredBlock848Value6 := XmATTACHFORM.
    (recoveredBlock848Value5) leftAttachment: (recoveredBlock848Value6).
    recoveredBlock848Value7 := XmATTACHFORM.
    recoveredBlock848Value8 := (recoveredBlock848Value0) rightAttachment: (recoveredBlock848Value7).
    recoveredBlock848Value8
].
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack1 := [:recoveredBlock898Arg1 | 
    | recoveredBlock898Value0 recoveredBlock898Value1 recoveredBlock898Value2 recoveredBlock898Value3 recoveredBlock898Value4 recoveredBlock898Value5 recoveredBlock898Value6 recoveredBlock898Value7 recoveredBlock898Value8 |
    recoveredBlock898Value0 := recoveredBlock898Arg1.
    recoveredBlock898Value1 := recoveredBlock898Value0.
    recoveredBlock898Value2 := XmATTACHWIDGET.
    (recoveredBlock898Value1) topAttachment: (recoveredBlock898Value2).
    recoveredBlock898Value3 := recoveredBlock898Value0.
    recoveredBlock898Value4 := recoveredLocal6.
    (recoveredBlock898Value3) topWidget: (recoveredBlock898Value4).
    recoveredBlock898Value5 := recoveredBlock898Value0.
    recoveredBlock898Value6 := XmATTACHFORM.
    (recoveredBlock898Value5) leftAttachment: (recoveredBlock898Value6).
    recoveredBlock898Value7 := XmATTACHFORM.
    recoveredBlock898Value8 := (recoveredBlock898Value0) rightAttachment: (recoveredBlock898Value7).
    recoveredBlock898Value8
].
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack0 := closeButton.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack1 := [:recoveredBlock947Arg1 | 
    | recoveredBlock947Value0 recoveredBlock947Value1 recoveredBlock947Value2 recoveredBlock947Value3 recoveredBlock947Value4 recoveredBlock947Value5 recoveredBlock947Value6 recoveredBlock947Value7 recoveredBlock947Value8 |
    recoveredBlock947Value0 := recoveredBlock947Arg1.
    recoveredBlock947Value1 := recoveredBlock947Value0.
    recoveredBlock947Value2 := XmATTACHWIDGET.
    (recoveredBlock947Value1) topAttachment: (recoveredBlock947Value2).
    recoveredBlock947Value3 := recoveredBlock947Value0.
    recoveredBlock947Value4 := recoveredLocal4.
    (recoveredBlock947Value3) topWidget: (recoveredBlock947Value4).
    recoveredBlock947Value5 := recoveredBlock947Value0.
    recoveredBlock947Value6 := XmATTACHFORM.
    (recoveredBlock947Value5) rightAttachment: (recoveredBlock947Value6).
    recoveredBlock947Value7 := XmATTACHFORM.
    recoveredBlock947Value8 := (recoveredBlock947Value0) bottomAttachment: (recoveredBlock947Value7).
    recoveredBlock947Value8
].
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack0 := indicatorLabel.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack1 := [:recoveredBlock997Arg1 | 
    | recoveredBlock997Value0 recoveredBlock997Value1 recoveredBlock997Value2 recoveredBlock997Value3 recoveredBlock997Value4 recoveredBlock997Value5 recoveredBlock997Value6 recoveredBlock997Value7 recoveredBlock997Value8 recoveredBlock997Value9 recoveredBlock997Value10 recoveredBlock997Value11 recoveredBlock997Value12 |
    recoveredBlock997Value0 := recoveredBlock997Arg1.
    recoveredBlock997Value1 := recoveredBlock997Value0.
    recoveredBlock997Value2 := XmATTACHWIDGET.
    (recoveredBlock997Value1) topAttachment: (recoveredBlock997Value2).
    recoveredBlock997Value3 := recoveredBlock997Value0.
    recoveredBlock997Value4 := recoveredLocal4.
    (recoveredBlock997Value3) topWidget: (recoveredBlock997Value4).
    recoveredBlock997Value5 := recoveredBlock997Value0.
    recoveredBlock997Value6 := XmATTACHFORM.
    (recoveredBlock997Value5) leftAttachment: (recoveredBlock997Value6).
    recoveredBlock997Value7 := recoveredBlock997Value0.
    recoveredBlock997Value8 := XmATTACHWIDGET.
    (recoveredBlock997Value7) rightAttachment: (recoveredBlock997Value8).
    recoveredBlock997Value9 := recoveredBlock997Value0.
    recoveredBlock997Value10 := closeButton.
    (recoveredBlock997Value9) rightWidget: (recoveredBlock997Value10).
    recoveredBlock997Value11 := XmATTACHFORM.
    recoveredBlock997Value12 := (recoveredBlock997Value0) bottomAttachment: (recoveredBlock997Value11).
    recoveredBlock997Value12
].
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelection.
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1113] ifFalse: [recoveredPC := 1076].
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1098] ifFalse: [recoveredPC := 1113].
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack0 := forwardToggle.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack0 := backToggle.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack0 := caseToggle.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack0 := wrapToggle.
            recoveredPC := 1175.
        ].
        recoveredStep = 1175 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack0 := searchButton.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            recoveredStack0 := closeButton.
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack0 := indicatorLabel.
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack1 := searchButton.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack3 := 'ownerChanged:clientData:callData:'.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

