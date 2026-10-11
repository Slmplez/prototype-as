"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a2f8; bytecode file offset 0x956bac"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
comboBoxPopdown: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    variableListPoppedUp := false.
    ^self
! !

"ASDBase.ic method 0x2005a338; bytecode file offset 0x956bec"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
comboBoxPopup: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    variableListPoppedUp := true.
    ^self
! !

"ASDBase.ic method 0x2006c414; bytecode file offset 0x9692b0"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
visibleItemCount
    | recoveredValue0 |
    recoveredValue0 := visibleItemCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200875ac; bytecode file offset 0x983f38"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
comboBoxSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) widget.
    (recoveredValue0) endEdit.
    ^self
! !

"ASDBase.ic method 0x200c2c8c; bytecode file offset 0x9bfde0"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
visibleItemCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleItemCount := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5a60; bytecode file offset 0x9d231c"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
initialize
    super initialize.
    variableListPoppedUp := false.
    ^self
! !

"ASDBase.ic method 0x200e8810; bytecode file offset 0x9e50d0"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
startActionsOnEditWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) dropDown: (true).
    recoveredValue2 := (self) value.
    (recoveredValue0) setString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010e80c; bytecode file offset 0xa0b0d0"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
endEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) dropDown: (false).
    recoveredValue2 := recoveredArg1.
    super endEditOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201585dc; bytecode file offset 0xa54e9c"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
positionWidget: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super positionWidget: (recoveredValue0) x: (recoveredValue1) y: (recoveredValue2) width: (recoveredValue3) height: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) adjustWidthOfList.
    ^self
! !

"ASDBase.ic method 0x20166afc; bytecode file offset 0xa633c0"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
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
            super beginEditOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleItemCount.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleItemCount.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) visibleItemCount: (recoveredStack1).
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

"ASDBase.ic method 0x202413e4; bytecode file offset 0xb3dcb4"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
updateEdit: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := XmCRLOSINGFOCUS.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CwBasicWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) editWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) updateEdit.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026cd70; bytecode file offset 0xb69648"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
unhookPermanentCallbacksOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super unhookPermanentCallbacksOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmNpopdownCallback.
    (recoveredValue2) removeCallback: (recoveredValue3) receiver: (self) selector: ('comboBoxPopdown:clientData:callData:') clientData: (nil).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := XmNpopupCallback.
    (recoveredValue4) removeCallback: (recoveredValue5) receiver: (self) selector: ('comboBoxPopup:clientData:callData:') clientData: (nil).
    recoveredValue6 := XmNsingleSelectionCallback.
    (recoveredValue1) removeCallback: (recoveredValue6) receiver: (self) selector: ('comboBoxSingle:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x202a9cb8; bytecode file offset 0xba6598"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) widget.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) fontList.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) fontList: (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) items.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := [:block280e4504Arg1 | 
    | block280e4504Value0 block280e4504Value1 block280e4504Value2 |
    block280e4504Value0 := block280e4504Arg1.
    block280e4504Value1 := (block280e4504Value0) isString.
    block280e4504Value2 := (block280e4504Value1) not.
    block280e4504Value2
].
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack4 := [].
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) detect: (recoveredBlock7Stack3) ifNone: (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) notNil.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ownerDrawn: (recoveredBlock7Stack2).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) createEtasComboBox: ('combo') argBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202d95cc; bytecode file offset 0xbd5eac"
!RBComboBoxEditPolicy methodsFor: 'recovered'!
hookPermanentCallbacksOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super hookPermanentCallbacksOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := XmNsingleSelectionCallback.
    (recoveredValue1) removeCallback: (recoveredValue2) receiver: (self) selector: ('updateEdit:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := XmNpopdownCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('comboBoxPopdown:clientData:callData:') clientData: (nil).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := XmNpopupCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('comboBoxPopup:clientData:callData:') clientData: (nil).
    recoveredValue8 := XmNsingleSelectionCallback.
    (recoveredValue3) addCallback: (recoveredValue8) receiver: (self) selector: ('comboBoxSingle:clientData:callData:') clientData: (nil).
    ^self
! !

