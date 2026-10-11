"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200066e0; bytecode file offset 0x908be4"
!EtasTextDialog methodsFor: 'recovered'!
topWidget
    | recoveredValue0 |
    recoveredValue0 := (self) scrolledText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001473c; bytecode file offset 0x912098"
!EtasTextDialog methodsFor: 'recovered'!
decorations
    | recoveredValue0 |
    recoveredValue0 := MWMDECORALL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044b9c; bytecode file offset 0x9451f8"
!EtasTextDialog methodsFor: 'recovered'!
scrolledText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aScrolledText1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047dbc; bytecode file offset 0x9451f8"
!EtasTextDialog methodsFor: 'recovered'!
contentsText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('contentsText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098324; bytecode file offset 0x995850"
!EtasTextDialog methodsFor: 'recovered'!
setMessageString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contentsText.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200f8f1c; bytecode file offset 0x9f57e0"
!EtasTextDialog methodsFor: 'recovered'!
selectAll
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) contentsText.
    recoveredValue1 := (self) contentsText.
    recoveredValue2 := (recoveredValue1) getLastPosition.
    recoveredValue3 := (0) @ (recoveredValue2).
    (recoveredValue0) setSelection: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201357f8; bytecode file offset 0xa320dc"
!EtasTextDialog methodsFor: 'recovered'!
button1Activate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) buttonAnswers.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    (self) result: (recoveredValue3).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x201a34dc; bytecode file offset 0xa9fda8"
!EtasTextDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStrings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) button: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setTabItemFocus.
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

"ASDBase.ic method 0x202a783c; bytecode file offset 0xba411c"
!EtasTextDialog methodsFor: 'recovered'!
createTopWidgetParent: recoveredArg1 widgetDictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'contentsText'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280e4114Arg1 | 
    | block280e4114Value0 block280e4114Value1 block280e4114Value2 block280e4114Value3 |
    block280e4114Value0 := block280e4114Arg1.
    block280e4114Value1 := block280e4114Value0.
    (block280e4114Value1) editable: (false).
    block280e4114Value2 := XmMULTILINEEDIT.
    block280e4114Value3 := (block280e4114Value0) editMode: (block280e4114Value2).
    block280e4114Value3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'contentsText'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202fac04; bytecode file offset 0xbf74f8"
!EtasTextDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super installActionKeys.
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) primaryWidget.
    recoveredValue2 := (self) getActionDictForWidget: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := DirectedMessageWithText.
    recoveredValue6 := (self) contentsText.
    recoveredValue7 := MPCopy.
    recoveredValue8 := (recoveredValue5) selector: ('copySelection') arguments: (#()) receiver: (recoveredValue6) text: (recoveredValue7).
    (recoveredValue4) at: ('Ctrl-c') put: (recoveredValue8).
    recoveredValue9 := DirectedMessageWithText.
    recoveredValue10 := MPSelectAll.
    recoveredValue11 := (recoveredValue9) selector: ('selectAll') arguments: (#()) receiver: (self) text: (recoveredValue10).
    (recoveredValue3) at: ('Ctrl-a') put: (recoveredValue11).
    ^self
! !

