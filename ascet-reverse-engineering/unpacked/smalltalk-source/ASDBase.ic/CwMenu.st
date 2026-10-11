"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014d90; bytecode file offset 0x912098"
!CwMenu methodsFor: 'recovered'!
separatorClass
    | recoveredValue0 |
    recoveredValue0 := CwMenuSeparator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002644c; bytecode file offset 0x923928"
!CwMenu methodsFor: 'recovered'!
toolboxCallbackSelector
    ^'callToolboxFromMenu:'
! !

"ASDBase.ic method 0x2006b5c8; bytecode file offset 0x96873c"
!CwMenu methodsFor: 'recovered'!
menuBarWidget
    | recoveredValue0 |
    recoveredValue0 := menuBarWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077acc; bytecode file offset 0x9757c8"
!CwMenu methodsFor: 'recovered'!
isCwMenu
    ^true
! !

"ASDBase.ic method 0x200af508; bytecode file offset 0x9abdc0"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 icon: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) add: (recoveredValue0) label: (recoveredValue1) enable: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200defd4; bytecode file offset 0x9db88c"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 toggle: recoveredArg4 icon: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) add: (recoveredValue0) label: (recoveredValue1) enable: (recoveredValue2) toggle: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e0d08; bytecode file offset 0x9dd5c8"
!CwMenu methodsFor: 'recovered'!
addSingleLineDevelopmentImage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) addSingleLine.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f77dc; bytecode file offset 0x9f4e38"
!CwMenu methodsFor: 'recovered'!
isValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) entries.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c49c8Arg1 | 
    | block280c49c8Value0 block280c49c8Value1 |
    block280c49c8Value0 := block280c49c8Arg1.
    block280c49c8Value1 := (block280c49c8Value0) isButton.
    block280c49c8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010725c; bytecode file offset 0xa03b18"
!CwMenu methodsFor: 'recovered'!
addSingleLine
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) addSingleLineVisible: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201492c0; bytecode file offset 0xa45b78"
!CwMenu methodsFor: 'recovered'!
addWithID: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 visible: recoveredArg4 for: recoveredArg5 accelerator: recoveredArg6 acceleratorText: recoveredArg7 icon: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := recoveredArg7.
    recoveredValue7 := (self) addWithID: (recoveredValue0) label: (recoveredValue1) enable: (recoveredValue2) visible: (recoveredValue3) for: (recoveredValue4) accelerator: (recoveredValue5) acceleratorText: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2016a518; bytecode file offset 0xa66dd0"
!CwMenu methodsFor: 'recovered'!
addWithID: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 toggle: recoveredArg4 visible: recoveredArg5 for: recoveredArg6 accelerator: recoveredArg7 acceleratorText: recoveredArg8 icon: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := recoveredArg7.
    recoveredValue7 := recoveredArg8.
    recoveredValue8 := (self) addWithID: (recoveredValue0) label: (recoveredValue1) enable: (recoveredValue2) toggle: (recoveredValue3) visible: (recoveredValue4) for: (recoveredValue5) accelerator: (recoveredValue6) acceleratorText: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201791a0; bytecode file offset 0xa75a64"
!CwMenu methodsFor: 'recovered'!
wbMenuRequest: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwDragAndDropManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInProgress.
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) menuRequest: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
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

"ASDBase.ic method 0x201ad0b4; bytecode file offset 0xaa9978"
!CwMenu methodsFor: 'recovered'!
addSubMenuWithID: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 visible: recoveredArg4 for: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwMenuCascadeButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) manage: (recoveredValue7).
    recoveredLocal1 := recoveredValue5.
    recoveredValue8 := recoveredLocal1.
    (self) addEntry: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201f6d20; bytecode file offset 0xaf35e8"
!CwMenu methodsFor: 'recovered'!
wbRegisterPopupFor: recoveredArg1 owner: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CreatePopupOnDemand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPopupMenuFor: (recoveredStack2) parent: (recoveredStack3) isPopup: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            popupWidget := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ButtonMenuMask.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 'wbMenuRequest:clientData:event:'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204b4c; bytecode file offset 0xb01418"
!CwMenu methodsFor: 'recovered'!
openPopupOn: recoveredArg1 owner: recoveredArg2 position: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createPopupMenuFor: (recoveredValue0) parent: (recoveredValue1) isPopup: (true).
    popupWidget := recoveredValue2.
    (self) configureEntries: (true).
    recoveredValue3 := popupWidget.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) y.
    (recoveredValue3) moveWidget: (recoveredValue5) y: (recoveredValue7).
    recoveredValue8 := popupWidget.
    (recoveredValue8) manageChild.
    recoveredValue9 := popupWidget.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20249e14; bytecode file offset 0xb466d8"
!CwMenu methodsFor: 'recovered'!
lastVisibleButtonEntry
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entries.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isButton.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 33].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) manage.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) manage.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) value.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 33].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2027610c; bytecode file offset 0xb729d4"
!CwMenu methodsFor: 'recovered'!
lastVisibleEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := entries.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isSeparator.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) manage.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) manage.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) value.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 33].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    recoveredValue2 := entries.
    recoveredValue3 := (recoveredValue2) last.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202b036c; bytecode file offset 0xbacc38"
!CwMenu methodsFor: 'recovered'!
addWithID: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 visible: recoveredArg4 for: recoveredArg5 accelerator: recoveredArg6 acceleratorText: recoveredArg7
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasAccelerators.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            hasAccelerators := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CwMenuPushButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack7 := recoveredArg7.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) owner: (recoveredStack5) accelerator: (recoveredStack6) acceleratorText: (recoveredStack7).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) manage: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) menuIDForSelector: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) userData: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) addEntry: (recoveredStack1).
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

"ASDBase.ic method 0x202cb714; bytecode file offset 0xbc7fe0"
!CwMenu methodsFor: 'recovered'!
addWithID: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 toggle: recoveredArg4 visible: recoveredArg5 for: recoveredArg6 accelerator: recoveredArg7 acceleratorText: recoveredArg8
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasAccelerators.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg7.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            hasAccelerators := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CwMenuToggleButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack7 := recoveredArg7.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack8 := recoveredArg8.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) etasSelector: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5) owner: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) manage: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) menuIDForSelector: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) userData: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addEntry: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d9c98; bytecode file offset 0xbd656c"
!CwMenu methodsFor: 'recovered'!
setOwnerOfAllEntries: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) entries.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) class.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := CwMenuSeparator.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            (recoveredBlock5Stack1) owner: (recoveredBlock5Stack2).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) class.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack3 := CwMenuCascadeButton.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 36] ifFalse: [recoveredBlock5PC := 45].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) subMenu.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) setOwnerOfAllEntries: (recoveredBlock5Stack2).
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203211e8; bytecode file offset 0xc1dac8"
!CwMenu methodsFor: 'recovered'!
addSingleLineVisible: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280eb9bcArg1 | 
    | block280eb9bcStack0 block280eb9bcStack1 block280eb9bcStack2 block280eb9bcStack3 block280eb9bcPC block280eb9bcStep block280eb9bcDone block280eb9bcResult |
    block280eb9bcStack0 := self.
    block280eb9bcPC := 4.
    block280eb9bcDone := false.
    [block280eb9bcDone not] whileTrue: [
        block280eb9bcStep := block280eb9bcPC.
        block280eb9bcStep = 4 ifTrue: [
            block280eb9bcStack1 := true.
            block280eb9bcPC := 5.
        ].
        block280eb9bcStep = 5 ifTrue: [
            block280eb9bcStack2 := block280eb9bcArg1.
            block280eb9bcPC := 6.
        ].
        block280eb9bcStep = 6 ifTrue: [
            block280eb9bcStack2 := (block280eb9bcStack2) manage.
            block280eb9bcPC := 7.
        ].
        block280eb9bcStep = 7 ifTrue: [
            (block280eb9bcStack2 == nil) ifTrue: [block280eb9bcPC := 14] ifFalse: [block280eb9bcPC := 10].
        ].
        block280eb9bcStep = 10 ifTrue: [
            block280eb9bcPC := 11.
        ].
        block280eb9bcStep = 11 ifTrue: [
            block280eb9bcStack1 := block280eb9bcArg1.
            block280eb9bcPC := 12.
        ].
        block280eb9bcStep = 12 ifTrue: [
            block280eb9bcStack1 := (block280eb9bcStack1) manage.
            block280eb9bcPC := 13.
        ].
        block280eb9bcStep = 13 ifTrue: [
            block280eb9bcStack1 := (block280eb9bcStack1) value.
            block280eb9bcPC := 14.
        ].
        block280eb9bcStep = 14 ifTrue: [
            block280eb9bcStack2 := true.
            block280eb9bcPC := 15.
        ].
        block280eb9bcStep = 15 ifTrue: [
            block280eb9bcStack1 := (block280eb9bcStack1) == (block280eb9bcStack2).
            block280eb9bcPC := 16.
        ].
        block280eb9bcStep = 16 ifTrue: [
            block280eb9bcResult := block280eb9bcStack1.
            block280eb9bcDone := true.
        ].
    ].
    block280eb9bcResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) separatorClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) manage: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20362084; bytecode file offset 0xc5e950"
!CwMenu methodsFor: 'recovered'!
removeTrailingSeparators
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isSeparator.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 62].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack3 := 1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack2 == recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 56] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack3 := entries.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) size.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            (recoveredBlock10Stack2 == recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 56] ifFalse: [recoveredBlock10PC := 38].
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack3 := entries.
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) size.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) < (recoveredBlock10Stack3).
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 46] ifFalse: [recoveredBlock10PC := 62].
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack2 := entries.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg2.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) + (1).
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) at: (recoveredBlock10Stack3).
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isSeparator.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 56] ifFalse: [recoveredBlock10PC := 62].
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10PC := 57.
        ].
        recoveredBlock10Step = 57 ifTrue: [
            recoveredBlock10Stack1 := entries.
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) removeAtIndex: (recoveredBlock10Stack2).
            recoveredBlock10PC := 62.
        ].
        recoveredBlock10Step = 62 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) abtReverseDoWithIndex: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d7a50; bytecode file offset 0xcd432c"
!CwMenu methodsFor: 'recovered'!
menuRequestRB: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := 3.
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
            recoveredStack1 := popupWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPopupMenuFor: (recoveredStack2) parent: (recoveredStack3) isPopup: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            popupWidget := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) configureEntries: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) translateCoords: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) menuPosition: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053a938; bytecode file offset 0xe37258"
!CwMenu methodsFor: 'recovered'!
addToolboxMenuItemsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBToolboxManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue0) menuCallsFrom: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack3 := self.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) title.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) = (recoveredBlock18Stack3).
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 34] ifFalse: [recoveredBlock18PC := 205].
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block36Arg1 | 
    | recoveredBlock18Block36Value0 recoveredBlock18Block36Value1 recoveredBlock18Block36Value2 recoveredBlock18Block36Value3 |
    (self) addLine.
    recoveredBlock18Block36Value0 := recoveredBlock18Block36Arg1.
    recoveredBlock18Block36Value1 := (recoveredBlock18Block36Value0) value.
    recoveredBlock18Block36Value2 := [:recoveredBlock18Block36Block47Arg1 | 
    | recoveredBlock18Block36Block47Stack0 recoveredBlock18Block36Block47Stack1 recoveredBlock18Block36Block47Stack2 recoveredBlock18Block36Block47Stack3 recoveredBlock18Block36Block47Stack4 recoveredBlock18Block36Block47PC recoveredBlock18Block36Block47Step recoveredBlock18Block36Block47Done recoveredBlock18Block36Block47Result |
    recoveredBlock18Block36Block47Stack0 := self.
    recoveredBlock18Block36Block47PC := 54.
    recoveredBlock18Block36Block47Done := false.
    [recoveredBlock18Block36Block47Done not] whileTrue: [
        recoveredBlock18Block36Block47Step := recoveredBlock18Block36Block47PC.
        recoveredBlock18Block36Block47Step = 54 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 55.
        ].
        recoveredBlock18Block36Block47Step = 55 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) isCollection.
            recoveredBlock18Block36Block47PC := 57.
        ].
        recoveredBlock18Block36Block47Step = 57 ifTrue: [
            (recoveredBlock18Block36Block47Stack1) ifTrue: [recoveredBlock18Block36Block47PC := 60] ifFalse: [recoveredBlock18Block36Block47PC := 174].
        ].
        recoveredBlock18Block36Block47Step = 60 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 61.
        ].
        recoveredBlock18Block36Block47Step = 61 ifTrue: [
            recoveredBlock18Block36Block47Stack2 := [:recoveredBlock18Block36Block47Block61Arg1 | 
    | recoveredBlock18Block36Block47Block61Local1 recoveredBlock18Block36Block47Block61Stack0 recoveredBlock18Block36Block47Block61Stack1 recoveredBlock18Block36Block47Block61Stack2 recoveredBlock18Block36Block47Block61Stack3 recoveredBlock18Block36Block47Block61PC recoveredBlock18Block36Block47Block61Step recoveredBlock18Block36Block47Block61Done recoveredBlock18Block36Block47Block61Result |
    recoveredBlock18Block36Block47Block61Stack0 := self.
    recoveredBlock18Block36Block47Block61PC := 68.
    recoveredBlock18Block36Block47Block61Done := false.
    [recoveredBlock18Block36Block47Block61Done not] whileTrue: [
        recoveredBlock18Block36Block47Block61Step := recoveredBlock18Block36Block47Block61PC.
        recoveredBlock18Block36Block47Block61Step = 68 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := (recoveredBlock18Block36Block47Block61Stack0) entries.
            recoveredBlock18Block36Block47Block61PC := 70.
        ].
        recoveredBlock18Block36Block47Block61Step = 70 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack1 := [:recoveredBlock18Block36Block47Block61Block70Arg1 | 
    | recoveredBlock18Block36Block47Block61Block70Value0 recoveredBlock18Block36Block47Block61Block70Value1 recoveredBlock18Block36Block47Block61Block70Value2 recoveredBlock18Block36Block47Block61Block70Value3 recoveredBlock18Block36Block47Block61Block70Value4 recoveredBlock18Block36Block47Block61Block70Value5 recoveredBlock18Block36Block47Block61Block70Value6 recoveredBlock18Block36Block47Block61Block70Value7 |
    recoveredBlock18Block36Block47Block61Block70Value0 := recoveredBlock18Block36Block47Block61Block70Arg1.
    recoveredBlock18Block36Block47Block61Block70Value1 := (recoveredBlock18Block36Block47Block61Block70Value0) label.
    recoveredBlock18Block36Block47Block61Block70Value2 := recoveredBlock18Block36Block47Block61Arg1.
    recoveredBlock18Block36Block47Block61Block70Value3 := (recoveredBlock18Block36Block47Block61Block70Value2) submenu.
    recoveredBlock18Block36Block47Block61Block70Value4 := (recoveredBlock18Block36Block47Block61Block70Value1) = (recoveredBlock18Block36Block47Block61Block70Value3).
    recoveredBlock18Block36Block47Block61Block70Value5 := recoveredBlock18Block36Block47Block61Block70Arg1.
    recoveredBlock18Block36Block47Block61Block70Value6 := (recoveredBlock18Block36Block47Block61Block70Value5) isCascadeButton.
    recoveredBlock18Block36Block47Block61Block70Value7 := (recoveredBlock18Block36Block47Block61Block70Value4) & (recoveredBlock18Block36Block47Block61Block70Value6).
    recoveredBlock18Block36Block47Block61Block70Value7
].
            recoveredBlock18Block36Block47Block61PC := 91.
        ].
        recoveredBlock18Block36Block47Block61Step = 91 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack2 := [
    | recoveredBlock18Block36Block47Block61Block91Local1 recoveredBlock18Block36Block47Block61Block91Stack0 recoveredBlock18Block36Block47Block61Block91Stack1 recoveredBlock18Block36Block47Block61Block91Stack2 recoveredBlock18Block36Block47Block61Block91Stack3 recoveredBlock18Block36Block47Block61Block91Stack4 recoveredBlock18Block36Block47Block61Block91Stack5 recoveredBlock18Block36Block47Block61Block91PC recoveredBlock18Block36Block47Block61Block91Step recoveredBlock18Block36Block47Block61Block91Done recoveredBlock18Block36Block47Block61Block91Result |
    recoveredBlock18Block36Block47Block61Block91Stack0 := self.
    recoveredBlock18Block36Block47Block61Block91PC := 98.
    recoveredBlock18Block36Block47Block61Block91Done := false.
    [recoveredBlock18Block36Block47Block61Block91Done not] whileTrue: [
        recoveredBlock18Block36Block47Block61Block91Step := recoveredBlock18Block36Block47Block61Block91PC.
        recoveredBlock18Block36Block47Block61Block91Step = 98 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack1 := CwMenu.
            recoveredBlock18Block36Block47Block61Block91PC := 100.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 100 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack1 := (recoveredBlock18Block36Block47Block61Block91Stack1) defaultMenuClass.
            recoveredBlock18Block36Block47Block61Block91PC := 102.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 102 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack1 := (recoveredBlock18Block36Block47Block61Block91Stack1) new.
            recoveredBlock18Block36Block47Block61Block91PC := 104.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 104 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack2 := recoveredBlock18Block36Block47Block61Arg1.
            recoveredBlock18Block36Block47Block61Block91PC := 107.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 107 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack2 := (recoveredBlock18Block36Block47Block61Block91Stack2) submenu.
            recoveredBlock18Block36Block47Block61Block91PC := 109.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 109 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack1 := (recoveredBlock18Block36Block47Block61Block91Stack1) title: (recoveredBlock18Block36Block47Block61Block91Stack2).
            recoveredBlock18Block36Block47Block61Block91PC := 111.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 111 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Local1 := recoveredBlock18Block36Block47Block61Block91Stack1.
            recoveredBlock18Block36Block47Block61Block91PC := 112.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 112 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack1 := recoveredBlock18Block36Block47Block61Block91Local1.
            recoveredBlock18Block36Block47Block61Block91PC := 113.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 113 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack2 := recoveredBlock18Block36Block47Block61Block91Local1.
            recoveredBlock18Block36Block47Block61Block91PC := 114.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 114 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack2 := (recoveredBlock18Block36Block47Block61Block91Stack2) title.
            recoveredBlock18Block36Block47Block61Block91PC := 116.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 116 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack3 := [
    true
].
            recoveredBlock18Block36Block47Block61Block91PC := 118.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 118 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91PC := 124.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 124 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack4 := recoveredBlock18Block36Block47Block61Block91Local1.
            recoveredBlock18Block36Block47Block61Block91PC := 125.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 125 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack4 := (recoveredBlock18Block36Block47Block61Block91Stack4) owner.
            recoveredBlock18Block36Block47Block61Block91PC := 127.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 127 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Stack0 := (recoveredBlock18Block36Block47Block61Block91Stack0) addSubMenuSpecial: (recoveredBlock18Block36Block47Block61Block91Stack1) label: (recoveredBlock18Block36Block47Block61Block91Stack2) enable: (recoveredBlock18Block36Block47Block61Block91Stack3) for: (recoveredBlock18Block36Block47Block61Block91Stack4).
            recoveredBlock18Block36Block47Block61Block91PC := 130.
        ].
        recoveredBlock18Block36Block47Block61Block91Step = 130 ifTrue: [
            recoveredBlock18Block36Block47Block61Block91Result := recoveredBlock18Block36Block47Block61Block91Stack0.
            recoveredBlock18Block36Block47Block61Block91Done := true.
        ].
    ].
    recoveredBlock18Block36Block47Block61Block91Result
].
            recoveredBlock18Block36Block47Block61PC := 131.
        ].
        recoveredBlock18Block36Block47Block61Step = 131 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := (recoveredBlock18Block36Block47Block61Stack0) detect: (recoveredBlock18Block36Block47Block61Stack1) ifNone: (recoveredBlock18Block36Block47Block61Stack2).
            recoveredBlock18Block36Block47Block61PC := 133.
        ].
        recoveredBlock18Block36Block47Block61Step = 133 ifTrue: [
            recoveredBlock18Block36Block47Block61Local1 := recoveredBlock18Block36Block47Block61Stack0.
            recoveredBlock18Block36Block47Block61PC := 136.
        ].
        recoveredBlock18Block36Block47Block61Step = 136 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := recoveredBlock18Block36Block47Block61Arg1.
            recoveredBlock18Block36Block47Block61PC := 139.
        ].
        recoveredBlock18Block36Block47Block61Step = 139 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := (recoveredBlock18Block36Block47Block61Stack0) item.
            recoveredBlock18Block36Block47Block61PC := 141.
        ].
        recoveredBlock18Block36Block47Block61Step = 141 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := (recoveredBlock18Block36Block47Block61Stack0) notEmpty.
            recoveredBlock18Block36Block47Block61PC := 143.
        ].
        recoveredBlock18Block36Block47Block61Step = 143 ifTrue: [
            (recoveredBlock18Block36Block47Block61Stack0) ifTrue: [recoveredBlock18Block36Block47Block61PC := 146] ifFalse: [recoveredBlock18Block36Block47Block61PC := 162].
        ].
        recoveredBlock18Block36Block47Block61Step = 146 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := recoveredBlock18Block36Block47Block61Arg1.
            recoveredBlock18Block36Block47Block61PC := 149.
        ].
        recoveredBlock18Block36Block47Block61Step = 149 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack1 := recoveredBlock18Block36Block47Block61Local1.
            recoveredBlock18Block36Block47Block61PC := 152.
        ].
        recoveredBlock18Block36Block47Block61Step = 152 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack1 := (recoveredBlock18Block36Block47Block61Stack1) subMenu.
            recoveredBlock18Block36Block47Block61PC := 154.
        ].
        recoveredBlock18Block36Block47Block61Step = 154 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack2 := recoveredArg1.
            recoveredBlock18Block36Block47Block61PC := 157.
        ].
        recoveredBlock18Block36Block47Block61Step = 157 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := (recoveredBlock18Block36Block47Block61Stack0) appendToMenu: (recoveredBlock18Block36Block47Block61Stack1) window: (recoveredBlock18Block36Block47Block61Stack2).
            recoveredBlock18Block36Block47Block61PC := 159.
        ].
        recoveredBlock18Block36Block47Block61Step = 159 ifTrue: [
            recoveredBlock18Block36Block47Block61PC := 167.
        ].
        recoveredBlock18Block36Block47Block61Step = 162 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := recoveredBlock18Block36Block47Block61Local1.
            recoveredBlock18Block36Block47Block61PC := 165.
        ].
        recoveredBlock18Block36Block47Block61Step = 165 ifTrue: [
            recoveredBlock18Block36Block47Block61Stack0 := (recoveredBlock18Block36Block47Block61Stack0) addLine.
            recoveredBlock18Block36Block47Block61PC := 167.
        ].
        recoveredBlock18Block36Block47Block61Step = 167 ifTrue: [
            recoveredBlock18Block36Block47Block61Result := recoveredBlock18Block36Block47Block61Stack0.
            recoveredBlock18Block36Block47Block61Done := true.
        ].
    ].
    recoveredBlock18Block36Block47Block61Result
].
            recoveredBlock18Block36Block47PC := 168.
        ].
        recoveredBlock18Block36Block47Step = 168 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) do: (recoveredBlock18Block36Block47Stack2).
            recoveredBlock18Block36Block47PC := 170.
        ].
        recoveredBlock18Block36Block47Step = 170 ifTrue: [
            recoveredBlock18Block36Block47PC := 199.
        ].
        recoveredBlock18Block36Block47Step = 174 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 175.
        ].
        recoveredBlock18Block36Block47Step = 175 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) item.
            recoveredBlock18Block36Block47PC := 177.
        ].
        recoveredBlock18Block36Block47Step = 177 ifTrue: [
            (recoveredBlock18Block36Block47Stack1 == nil) ifTrue: [recoveredBlock18Block36Block47PC := 198] ifFalse: [recoveredBlock18Block36Block47PC := 180].
        ].
        recoveredBlock18Block36Block47Step = 180 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 181.
        ].
        recoveredBlock18Block36Block47Step = 181 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) item.
            recoveredBlock18Block36Block47PC := 183.
        ].
        recoveredBlock18Block36Block47Step = 183 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) notEmpty.
            recoveredBlock18Block36Block47PC := 185.
        ].
        recoveredBlock18Block36Block47Step = 185 ifTrue: [
            (recoveredBlock18Block36Block47Stack1) ifTrue: [recoveredBlock18Block36Block47PC := 188] ifFalse: [recoveredBlock18Block36Block47PC := 198].
        ].
        recoveredBlock18Block36Block47Step = 188 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := recoveredBlock18Block36Block47Arg1.
            recoveredBlock18Block36Block47PC := 189.
        ].
        recoveredBlock18Block36Block47Step = 189 ifTrue: [
            recoveredBlock18Block36Block47Stack2 := self.
            recoveredBlock18Block36Block47PC := 190.
        ].
        recoveredBlock18Block36Block47Step = 190 ifTrue: [
            recoveredBlock18Block36Block47Stack3 := recoveredArg1.
            recoveredBlock18Block36Block47PC := 193.
        ].
        recoveredBlock18Block36Block47Step = 193 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := (recoveredBlock18Block36Block47Stack1) appendToMenu: (recoveredBlock18Block36Block47Stack2) window: (recoveredBlock18Block36Block47Stack3).
            recoveredBlock18Block36Block47PC := 195.
        ].
        recoveredBlock18Block36Block47Step = 195 ifTrue: [
            recoveredBlock18Block36Block47PC := 199.
        ].
        recoveredBlock18Block36Block47Step = 198 ifTrue: [
            recoveredBlock18Block36Block47Stack1 := nil.
            recoveredBlock18Block36Block47PC := 199.
        ].
        recoveredBlock18Block36Block47Step = 199 ifTrue: [
            recoveredBlock18Block36Block47Result := recoveredBlock18Block36Block47Stack1.
            recoveredBlock18Block36Block47Done := true.
        ].
    ].
    recoveredBlock18Block36Block47Result
].
    recoveredBlock18Block36Value3 := (recoveredBlock18Block36Value1) do: (recoveredBlock18Block36Value2).
    recoveredBlock18Block36Value3
].
            recoveredBlock18PC := 203.
        ].
        recoveredBlock18Step = 203 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 205.
        ].
        recoveredBlock18Step = 205 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    ^self
! !

