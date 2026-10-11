"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d8a4; bytecode file offset 0x934580"
!EtasComboBox methodsFor: 'recovered'!
isComboBoxPoppedDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := (recoveredValue0) isDropped.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b028; bytecode file offset 0x957a6c"
!EtasComboBox methodsFor: 'recovered'!
comboBoxPopdown: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) clearComboBoxPoppedDown.
    ^self
! !

"ASDBase.ic method 0x200716b0; bytecode file offset 0x96df6c"
!EtasComboBox methodsFor: 'recovered'!
selectionAtPopup
    | recoveredValue0 |
    recoveredValue0 := selectionAtPopup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072338; bytecode file offset 0x96ee04"
!EtasComboBox methodsFor: 'recovered'!
bitComboBoxPoppedDown
    ^1
! !

"ASDBase.ic method 0x200c7aa0; bytecode file offset 0x9c4354"
!EtasComboBox methodsFor: 'recovered'!
selectionAtPopup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectionAtPopup := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7ab4; bytecode file offset 0x9c4370"
!EtasComboBox methodsFor: 'recovered'!
ownerDrawn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerDrawn := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9908; bytecode file offset 0x9c61c8"
!EtasComboBox methodsFor: 'recovered'!
comboBoxPopup: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) selectedIndex.
    recoveredValue2 := (recoveredValue1) copy.
    (self) selectionAtPopup: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200cfc90; bytecode file offset 0x9cc548"
!EtasComboBox methodsFor: 'recovered'!
clearComboBoxPoppedDown
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (0).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cfcac; bytecode file offset 0x9cc564"
!EtasComboBox methodsFor: 'recovered'!
setComboBoxPoppedDown
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20117114; bytecode file offset 0xa139d0"
!EtasComboBox methodsFor: 'recovered'!
osWidgetClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ownerDrawn.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasOSComboBox.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OSComboBox.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011f12c; bytecode file offset 0xa1ba58"
!EtasComboBox methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isComboBoxPoppedDown.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isComboBoxPoppedDown: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20120f58; bytecode file offset 0xa1d818"
!EtasComboBox methodsFor: 'recovered'!
callSingleSelectionCallback: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComboBoxPoppedDown.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super callSingleSelectionCallback: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201522b0; bytecode file offset 0xa4eb6c"
!EtasComboBox methodsFor: 'recovered'!
initializeResources
    super initializeResources.
    state := 0.
    selectionAtPopup := nil.
    ownerDrawn := false.
    ^self
! !

"ASDBase.ic method 0x2016b8b0; bytecode file offset 0xa68174"
!EtasComboBox methodsFor: 'recovered'!
osWidgetStyle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super osWidgetStyle.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := ownerDrawn.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CbsOwnerdrawfixed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020d6e4; bytecode file offset 0xb09fb8"
!EtasComboBox methodsFor: 'recovered'!
items: recoveredArg1
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
            recoveredStack2 := [:block280da5f8Arg1 | 
    | block280da5f8Value0 block280da5f8Value1 block280da5f8Value2 |
    block280da5f8Value0 := block280da5f8Arg1.
    block280da5f8Value1 := (block280da5f8Value0) isString.
    block280da5f8Value2 := (block280da5f8Value1) not.
    block280da5f8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ownerDrawn: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super items: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) adjustWidthOfList.
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

"ASDBase.ic method 0x2026019c; bytecode file offset 0xb5ca70"
!EtasComboBox methodsFor: 'recovered'!
osCreateWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            (recoveredStack0) setExtendedDropDownBehavior.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := XmNpopupCallback.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := 'comboBoxPopup:clientData:callData:'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := XmNpopdownCallback.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'comboBoxPopdown:clientData:callData:'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ac30c; bytecode file offset 0xba8c28"
!EtasComboBox methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setComboBoxPoppedDown.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setComboBoxPoppedDown--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) clearComboBoxPoppedDown.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------clearComboBoxPoppedDown--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    (recoveredValue9) edit.
    ^self
! !

"ASDBase.ic method 0x205c339c; bytecode file offset 0xebfcec"
!EtasComboBox methodsFor: 'recovered'!
keyPress: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := XKF2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) dropDown: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := XKCancel.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectionAtPopup.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 |
    recoveredBlock47Value0 := (self) selectionAtPopup.
    (self) selectPos: (recoveredBlock47Value0) notify: (true).
    recoveredBlock47Value1 := (self) selectionAtPopup: (nil).
    recoveredBlock47Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            keyInput := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) editable.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := osWidget.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedIndex.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) selectPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) selectionAtPopup: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := XKBackSpace.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := keyInput.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := keyInput.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := keyInput.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := keyInput.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            keyInput := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAlphaNumeric.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPunctuation.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWhiteSpace.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 329] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := [:recoveredBlock227Arg1 | 
    | recoveredBlock227Stack0 recoveredBlock227Stack1 recoveredBlock227Stack2 recoveredBlock227Stack3 recoveredBlock227Stack4 recoveredBlock227PC recoveredBlock227Step recoveredBlock227Done recoveredBlock227Result |
    recoveredBlock227Stack0 := self.
    recoveredBlock227PC := 234.
    recoveredBlock227Done := false.
    [recoveredBlock227Done not] whileTrue: [
        recoveredBlock227Step := recoveredBlock227PC.
        recoveredBlock227Step = 234 ifTrue: [
            recoveredBlock227Stack1 := Time.
            recoveredBlock227PC := 236.
        ].
        recoveredBlock227Step = 236 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) millisecondClockValue.
            recoveredBlock227PC := 238.
        ].
        recoveredBlock227Step = 238 ifTrue: [
            recoveredBlock227Stack2 := keytimeMillis.
            recoveredBlock227PC := 240.
        ].
        recoveredBlock227Step = 240 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) asInteger.
            recoveredBlock227PC := 242.
        ].
        recoveredBlock227Step = 242 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) - (recoveredBlock227Stack2).
            recoveredBlock227PC := 243.
        ].
        recoveredBlock227Step = 243 ifTrue: [
            recoveredBlock227Stack2 := 2000.
            recoveredBlock227PC := 246.
        ].
        recoveredBlock227Step = 246 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) > (recoveredBlock227Stack2).
            recoveredBlock227PC := 247.
        ].
        recoveredBlock227Step = 247 ifTrue: [
            (recoveredBlock227Stack1) ifTrue: [recoveredBlock227PC := 250] ifFalse: [recoveredBlock227PC := 260].
        ].
        recoveredBlock227Step = 250 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal1.
            recoveredBlock227PC := 253.
        ].
        recoveredBlock227Step = 253 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) asString.
            recoveredBlock227PC := 255.
        ].
        recoveredBlock227Step = 255 ifTrue: [
            keyInput := recoveredBlock227Stack1.
            recoveredBlock227PC := 257.
        ].
        recoveredBlock227Step = 257 ifTrue: [
            recoveredBlock227PC := 273.
        ].
        recoveredBlock227Step = 260 ifTrue: [
            recoveredBlock227Stack1 := keyInput.
            recoveredBlock227PC := 262.
        ].
        recoveredBlock227Step = 262 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) asString.
            recoveredBlock227PC := 264.
        ].
        recoveredBlock227Step = 264 ifTrue: [
            recoveredBlock227Stack2 := recoveredLocal1.
            recoveredBlock227PC := 267.
        ].
        recoveredBlock227Step = 267 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) asString.
            recoveredBlock227PC := 269.
        ].
        recoveredBlock227Step = 269 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) , (recoveredBlock227Stack2).
            recoveredBlock227PC := 271.
        ].
        recoveredBlock227Step = 271 ifTrue: [
            keyInput := recoveredBlock227Stack1.
            recoveredBlock227PC := 273.
        ].
        recoveredBlock227Step = 273 ifTrue: [
            recoveredBlock227Stack1 := Time.
            recoveredBlock227PC := 275.
        ].
        recoveredBlock227Step = 275 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) millisecondClockValue.
            recoveredBlock227PC := 277.
        ].
        recoveredBlock227Step = 277 ifTrue: [
            keytimeMillis := recoveredBlock227Stack1.
            recoveredBlock227PC := 279.
        ].
        recoveredBlock227Step = 279 ifTrue: [
            recoveredBlock227Stack1 := nil.
            recoveredBlock227PC := 280.
        ].
        recoveredBlock227Step = 280 ifTrue: [
            recoveredBlock227Stack2 := recoveredBlock227Arg1.
            recoveredBlock227PC := 281.
        ].
        recoveredBlock227Step = 281 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) asLowercase.
            recoveredBlock227PC := 283.
        ].
        recoveredBlock227Step = 283 ifTrue: [
            recoveredBlock227Stack3 := keyInput.
            recoveredBlock227PC := 285.
        ].
        recoveredBlock227Step = 285 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) startsWith: (recoveredBlock227Stack3).
            recoveredBlock227PC := 287.
        ].
        recoveredBlock227Step = 287 ifTrue: [
            (recoveredBlock227Stack2) ifTrue: [recoveredBlock227PC := 326] ifFalse: [recoveredBlock227PC := 290].
        ].
        recoveredBlock227Step = 290 ifTrue: [
            recoveredBlock227PC := 291.
        ].
        recoveredBlock227Step = 291 ifTrue: [
            recoveredBlock227Stack1 := self.
            recoveredBlock227PC := 292.
        ].
        recoveredBlock227Step = 292 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) items.
            recoveredBlock227PC := 294.
        ].
        recoveredBlock227Step = 294 ifTrue: [
            recoveredBlock227Stack2 := [:recoveredBlock227Block294Arg1 | 
    | recoveredBlock227Block294Value0 recoveredBlock227Block294Value1 recoveredBlock227Block294Value2 recoveredBlock227Block294Value3 |
    recoveredBlock227Block294Value0 := keyInput.
    recoveredBlock227Block294Value1 := (recoveredBlock227Block294Value0) , ('*').
    recoveredBlock227Block294Value2 := recoveredBlock227Block294Arg1.
    recoveredBlock227Block294Value3 := (recoveredBlock227Block294Value1) match: (recoveredBlock227Block294Value2).
    recoveredBlock227Block294Value3
].
            recoveredBlock227PC := 310.
        ].
        recoveredBlock227Step = 310 ifTrue: [
            recoveredBlock227Stack3 := [].
            recoveredBlock227PC := 312.
        ].
        recoveredBlock227Step = 312 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) detect: (recoveredBlock227Stack2) ifNone: (recoveredBlock227Stack3).
            recoveredBlock227PC := 314.
        ].
        recoveredBlock227Step = 314 ifTrue: [
            recoveredBlock227Stack2 := [:recoveredBlock227Block314Arg1 | 
    | recoveredBlock227Block314Value0 recoveredBlock227Block314Value1 |
    recoveredBlock227Block314Value0 := recoveredBlock227Block314Arg1.
    recoveredBlock227Block314Value1 := (self) setString: (recoveredBlock227Block314Value0).
    recoveredBlock227Block314Value1
].
            recoveredBlock227PC := 324.
        ].
        recoveredBlock227Step = 324 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) ifNotNil: (recoveredBlock227Stack2).
            recoveredBlock227PC := 326.
        ].
        recoveredBlock227Step = 326 ifTrue: [
            recoveredBlock227Result := recoveredBlock227Stack1.
            recoveredBlock227Done := true.
        ].
    ].
    recoveredBlock227Result
].
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

