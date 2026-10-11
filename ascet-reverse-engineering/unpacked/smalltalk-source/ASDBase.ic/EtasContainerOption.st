"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007709c; bytecode file offset 0x9757c8"
!EtasContainerOption methodsFor: 'recovered'!
isContainerOption
    ^true
! !

"ASDBase.ic method 0x2007c3d4; bytecode file offset 0x97c330"
!EtasContainerOption methodsFor: 'recovered'!
defaultValue
    ^false
! !

"ASDBase.ic method 0x200c6394; bytecode file offset 0x9c2dd0"
!EtasContainerOption methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6680; bytecode file offset 0x9c3164"
!EtasContainerOption methodsFor: 'recovered'!
changeable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    changeable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010a1cc; bytecode file offset 0xa06ab8"
!EtasContainerOption methodsFor: 'recovered'!
widgetOptionCheckBox
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a28c; bytecode file offset 0xa06b68"
!EtasContainerOption methodsFor: 'recovered'!
widgetOptionFrame
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20116a9c; bytecode file offset 0xa13360"
!EtasContainerOption methodsFor: 'recovered'!
changeable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := changeable.
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
            recoveredStack1 := (recoveredStack1) defaultValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            changeable := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := changeable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ac38; bytecode file offset 0xa274f4"
!EtasContainerOption methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            options := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20135a40; bytecode file offset 0xa3231c"
!EtasContainerOption methodsFor: 'recovered'!
valueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) value: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super valueChanged: (recoveredValue2) clientData: (recoveredValue3) callData: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201a33a8; bytecode file offset 0xa9fd34"
!EtasContainerOption methodsFor: 'recovered'!
resetOriginalValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super resetOriginalValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d2b7cArg1 | 
    | block280d2b7cValue0 block280d2b7cValue1 block280d2b7cValue2 |
    block280d2b7cValue0 := block280d2b7cArg1.
    block280d2b7cValue1 := (block280d2b7cValue0) optionClass.
    block280d2b7cValue2 := (block280d2b7cValue1) resetOriginalValue.
    block280d2b7cValue2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20227c90; bytecode file offset 0xb24590"
!EtasContainerOption methodsFor: 'recovered'!
value: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkOptionValue: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := super value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := super value: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202332f0; bytecode file offset 0xb2fc28"
!EtasContainerOption methodsFor: 'recovered'!
default: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkOptionValue: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            super default: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            super default: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20260d64; bytecode file offset 0xb5d680"
!EtasContainerOption methodsFor: 'recovered'!
checkOptionValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('true' 'false').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Wrong value for Option [%1] detected. Value ''%2'' is not a boolean.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) group.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := '>'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20265378; bytecode file offset 0xb61c44"
!EtasContainerOption methodsFor: 'recovered'!
filterString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super filterString.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) options.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) optionClass.
    recoveredBlock13Value3 := (recoveredBlock13Value2) filterString.
    recoveredBlock13Value4 := (recoveredBlock13Value0) , (recoveredBlock13Value3).
    recoveredBlock13Value5 := recoveredBlock13Value4.
    recoveredLocal1 := recoveredBlock13Value5.
    recoveredBlock13Value4
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2031b744; bytecode file offset 0xc18028"
!EtasContainerOption methodsFor: 'recovered'!
updateValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
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
            recoveredStack0 := (recoveredStack0) needsUpdate.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:block280eb5a8Arg1 | 
    | block280eb5a8Value0 block280eb5a8Value1 block280eb5a8Value2 block280eb5a8Value3 |
    block280eb5a8Value0 := block280eb5a8Arg1.
    block280eb5a8Value1 := (block280eb5a8Value0) optionClass.
    block280eb5a8Value2 := block280eb5a8Value1.
    (block280eb5a8Value2) needsUpdate: (true).
    block280eb5a8Value3 := (block280eb5a8Value1) updateValue.
    block280eb5a8Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041cc60; bytecode file offset 0xd19564"
!EtasContainerOption methodsFor: 'recovered'!
updateOptionWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super updateOptionWidget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOptionCheckBox.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) updateOptionWidgetLabel: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOptionCheckBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) updateOptionWidgetLabelFont: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitive.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) visible.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeable.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionCheckBox.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionFrame.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) needsUpdate: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:block280fbf94Arg1 | 
    | block280fbf94Value0 block280fbf94Value1 block280fbf94Value2 |
    block280fbf94Value0 := block280fbf94Arg1.
    block280fbf94Value1 := (block280fbf94Value0) optionClass.
    block280fbf94Value2 := (block280fbf94Value1) updateOptionWidget.
    block280fbf94Value2
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x205eb648; bytecode file offset 0xee7fb8"
!EtasContainerOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'optionIcon'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredBlock13Value2 := XmICON.
    (recoveredBlock13Value1) labelType: (recoveredBlock13Value2).
    recoveredBlock13Value3 := recoveredBlock13Value0.
    recoveredBlock13Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock13Value3) alignment: (recoveredBlock13Value4).
    recoveredBlock13Value5 := recoveredBlock13Value0.
    (recoveredBlock13Value5) width: (20).
    recoveredBlock13Value6 := (self) optionIcon.
    recoveredBlock13Value7 := (recoveredBlock13Value0) labelIcon: (recoveredBlock13Value6).
    recoveredBlock13Value7
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'toggleButton'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 recoveredBlock54Value11 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := recoveredBlock54Value0.
    recoveredBlock54Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock54Value1) alignment: (recoveredBlock54Value2).
    recoveredBlock54Value3 := recoveredBlock54Value0.
    recoveredBlock54Value4 := (self) value.
    (recoveredBlock54Value3) set: (recoveredBlock54Value4).
    recoveredBlock54Value5 := recoveredBlock54Value0.
    (recoveredBlock54Value5) height: (20).
    recoveredBlock54Value6 := recoveredBlock54Value0.
    recoveredBlock54Value7 := (self) label.
    recoveredBlock54Value8 := (recoveredBlock54Value7) , ('   ').
    (recoveredBlock54Value6) labelString: (recoveredBlock54Value8).
    recoveredBlock54Value9 := recoveredBlock54Value0.
    recoveredBlock54Value10 := (self) sensitive.
    (recoveredBlock54Value9) sensitive: (recoveredBlock54Value10).
    recoveredBlock54Value11 := recoveredBlock54Value0.
    (recoveredBlock54Value11) recomputeSize: (false).
    recoveredBlock54Value0
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'optionFrame'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Stack0 recoveredBlock110Stack1 recoveredBlock110Stack2 recoveredBlock110Stack3 recoveredBlock110Stack4 recoveredBlock110Stack5 recoveredBlock110PC recoveredBlock110Step recoveredBlock110Done recoveredBlock110Result |
    recoveredBlock110Stack0 := self.
    recoveredBlock110PC := 116.
    recoveredBlock110Done := false.
    [recoveredBlock110Done not] whileTrue: [
        recoveredBlock110Step := recoveredBlock110PC.
        recoveredBlock110Step = 116 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Arg1.
            recoveredBlock110PC := 117.
        ].
        recoveredBlock110Step = 117 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Stack1.
            recoveredBlock110PC := 118.
        ].
        recoveredBlock110Step = 118 ifTrue: [
            recoveredBlock110Stack3 := self.
            recoveredBlock110PC := 119.
        ].
        recoveredBlock110Step = 119 ifTrue: [
            recoveredBlock110Stack3 := (recoveredBlock110Stack3) changeable.
            recoveredBlock110PC := 120.
        ].
        recoveredBlock110Step = 120 ifTrue: [
            (recoveredBlock110Stack3) ifTrue: [recoveredBlock110PC := 124] ifFalse: [recoveredBlock110PC := 130].
        ].
        recoveredBlock110Step = 124 ifTrue: [
            recoveredBlock110Stack3 := ''.
            recoveredBlock110PC := 126.
        ].
        recoveredBlock110Step = 126 ifTrue: [
            recoveredBlock110PC := 137.
        ].
        recoveredBlock110Step = 130 ifTrue: [
            recoveredBlock110Stack3 := self.
            recoveredBlock110PC := 131.
        ].
        recoveredBlock110Step = 131 ifTrue: [
            recoveredBlock110Stack3 := (recoveredBlock110Stack3) label.
            recoveredBlock110PC := 133.
        ].
        recoveredBlock110Step = 133 ifTrue: [
            recoveredBlock110Stack4 := '   '.
            recoveredBlock110PC := 135.
        ].
        recoveredBlock110Step = 135 ifTrue: [
            recoveredBlock110Stack3 := (recoveredBlock110Stack3) , (recoveredBlock110Stack4).
            recoveredBlock110PC := 137.
        ].
        recoveredBlock110Step = 137 ifTrue: [
            (recoveredBlock110Stack2) labelString: (recoveredBlock110Stack3).
            recoveredBlock110PC := 139.
        ].
        recoveredBlock110Step = 139 ifTrue: [
            recoveredBlock110Result := recoveredBlock110Stack1.
            recoveredBlock110Done := true.
        ].
    ].
    recoveredBlock110Result
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 'optionForm'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeable.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := [:block2811b324Arg1 | 
    | block2811b324Value0 block2811b324Value1 block2811b324Value2 block2811b324Value3 block2811b324Value4 block2811b324Value5 block2811b324Value6 block2811b324Value7 block2811b324Value8 |
    block2811b324Value0 := block2811b324Arg1.
    block2811b324Value1 := block2811b324Value0.
    block2811b324Value2 := XmATTACHFORM.
    (block2811b324Value1) topAttachment: (block2811b324Value2).
    block2811b324Value3 := block2811b324Value0.
    block2811b324Value4 := XmATTACHFORM.
    (block2811b324Value3) leftAttachment: (block2811b324Value4).
    block2811b324Value5 := block2811b324Value0.
    block2811b324Value6 := XmATTACHNONE.
    (block2811b324Value5) rightAttachment: (block2811b324Value6).
    block2811b324Value7 := XmATTACHNONE.
    block2811b324Value8 := (block2811b324Value0) bottomAttachment: (block2811b324Value7).
    block2811b324Value8
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := recoveredBlock200Arg1.
            recoveredBlock200PC := 207.
        ].
        recoveredBlock200Step = 207 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 208.
        ].
        recoveredBlock200Step = 208 ifTrue: [
            recoveredBlock200Stack3 := XmATTACHFORM.
            recoveredBlock200PC := 210.
        ].
        recoveredBlock200Step = 210 ifTrue: [
            (recoveredBlock200Stack2) topAttachment: (recoveredBlock200Stack3).
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 213.
        ].
        recoveredBlock200Step = 213 ifTrue: [
            recoveredBlock200Stack3 := self.
            recoveredBlock200PC := 214.
        ].
        recoveredBlock200Step = 214 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) changeable.
            recoveredBlock200PC := 215.
        ].
        recoveredBlock200Step = 215 ifTrue: [
            (recoveredBlock200Stack3) ifTrue: [recoveredBlock200PC := 218] ifFalse: [recoveredBlock200PC := 224].
        ].
        recoveredBlock200Step = 218 ifTrue: [
            recoveredBlock200Stack3 := XmATTACHWIDGET.
            recoveredBlock200PC := 220.
        ].
        recoveredBlock200Step = 220 ifTrue: [
            recoveredBlock200PC := 226.
        ].
        recoveredBlock200Step = 224 ifTrue: [
            recoveredBlock200Stack3 := XmATTACHFORM.
            recoveredBlock200PC := 226.
        ].
        recoveredBlock200Step = 226 ifTrue: [
            (recoveredBlock200Stack2) leftAttachment: (recoveredBlock200Stack3).
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 229.
        ].
        recoveredBlock200Step = 229 ifTrue: [
            recoveredBlock200Stack3 := recoveredLocal1.
            recoveredBlock200PC := 232.
        ].
        recoveredBlock200Step = 232 ifTrue: [
            (recoveredBlock200Stack2) leftWidget: (recoveredBlock200Stack3).
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 235.
        ].
        recoveredBlock200Step = 235 ifTrue: [
            recoveredBlock200Stack3 := self.
            recoveredBlock200PC := 236.
        ].
        recoveredBlock200Step = 236 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) changeable.
            recoveredBlock200PC := 237.
        ].
        recoveredBlock200Step = 237 ifTrue: [
            (recoveredBlock200Stack3) ifTrue: [recoveredBlock200PC := 240] ifFalse: [recoveredBlock200PC := 246].
        ].
        recoveredBlock200Step = 240 ifTrue: [
            recoveredBlock200Stack3 := 5.
            recoveredBlock200PC := 242.
        ].
        recoveredBlock200Step = 242 ifTrue: [
            recoveredBlock200PC := 248.
        ].
        recoveredBlock200Step = 246 ifTrue: [
            recoveredBlock200Stack3 := 22.
            recoveredBlock200PC := 248.
        ].
        recoveredBlock200Step = 248 ifTrue: [
            (recoveredBlock200Stack2) leftOffset: (recoveredBlock200Stack3).
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 251.
        ].
        recoveredBlock200Step = 251 ifTrue: [
            recoveredBlock200Stack3 := XmATTACHNONE.
            recoveredBlock200PC := 253.
        ].
        recoveredBlock200Step = 253 ifTrue: [
            (recoveredBlock200Stack2) rightAttachment: (recoveredBlock200Stack3).
            recoveredBlock200PC := 255.
        ].
        recoveredBlock200Step = 255 ifTrue: [
            recoveredBlock200Stack2 := XmATTACHNONE.
            recoveredBlock200PC := 257.
        ].
        recoveredBlock200Step = 257 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) bottomAttachment: (recoveredBlock200Stack2).
            recoveredBlock200PC := 259.
        ].
        recoveredBlock200Step = 259 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := [:recoveredBlock265Arg1 | 
    | recoveredBlock265Stack0 recoveredBlock265Stack1 recoveredBlock265Stack2 recoveredBlock265Stack3 recoveredBlock265Stack4 recoveredBlock265PC recoveredBlock265Step recoveredBlock265Done recoveredBlock265Result |
    recoveredBlock265Stack0 := self.
    recoveredBlock265PC := 272.
    recoveredBlock265Done := false.
    [recoveredBlock265Done not] whileTrue: [
        recoveredBlock265Step := recoveredBlock265PC.
        recoveredBlock265Step = 272 ifTrue: [
            recoveredBlock265Stack1 := recoveredBlock265Arg1.
            recoveredBlock265PC := 273.
        ].
        recoveredBlock265Step = 273 ifTrue: [
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 274.
        ].
        recoveredBlock265Step = 274 ifTrue: [
            recoveredBlock265Stack3 := self.
            recoveredBlock265PC := 275.
        ].
        recoveredBlock265Step = 275 ifTrue: [
            recoveredBlock265Stack3 := (recoveredBlock265Stack3) changeable.
            recoveredBlock265PC := 276.
        ].
        recoveredBlock265Step = 276 ifTrue: [
            (recoveredBlock265Stack3) ifTrue: [recoveredBlock265PC := 280] ifFalse: [recoveredBlock265PC := 286].
        ].
        recoveredBlock265Step = 280 ifTrue: [
            recoveredBlock265Stack3 := XmATTACHWIDGET.
            recoveredBlock265PC := 282.
        ].
        recoveredBlock265Step = 282 ifTrue: [
            recoveredBlock265PC := 288.
        ].
        recoveredBlock265Step = 286 ifTrue: [
            recoveredBlock265Stack3 := XmATTACHFORM.
            recoveredBlock265PC := 288.
        ].
        recoveredBlock265Step = 288 ifTrue: [
            (recoveredBlock265Stack2) topAttachment: (recoveredBlock265Stack3).
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 291.
        ].
        recoveredBlock265Step = 291 ifTrue: [
            recoveredBlock265Stack3 := self.
            recoveredBlock265PC := 292.
        ].
        recoveredBlock265Step = 292 ifTrue: [
            recoveredBlock265Stack3 := (recoveredBlock265Stack3) changeable.
            recoveredBlock265PC := 293.
        ].
        recoveredBlock265Step = 293 ifTrue: [
            (recoveredBlock265Stack3) ifTrue: [recoveredBlock265PC := 296] ifFalse: [recoveredBlock265PC := 302].
        ].
        recoveredBlock265Step = 296 ifTrue: [
            recoveredBlock265Stack3 := recoveredLocal4.
            recoveredBlock265PC := 299.
        ].
        recoveredBlock265Step = 299 ifTrue: [
            recoveredBlock265PC := 303.
        ].
        recoveredBlock265Step = 302 ifTrue: [
            recoveredBlock265Stack3 := nil.
            recoveredBlock265PC := 303.
        ].
        recoveredBlock265Step = 303 ifTrue: [
            (recoveredBlock265Stack2) topWidget: (recoveredBlock265Stack3).
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 306.
        ].
        recoveredBlock265Step = 306 ifTrue: [
            recoveredBlock265Stack3 := XmATTACHFORM.
            recoveredBlock265PC := 308.
        ].
        recoveredBlock265Step = 308 ifTrue: [
            (recoveredBlock265Stack2) bottomAttachment: (recoveredBlock265Stack3).
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 311.
        ].
        recoveredBlock265Step = 311 ifTrue: [
            recoveredBlock265Stack3 := XmATTACHFORM.
            recoveredBlock265PC := 313.
        ].
        recoveredBlock265Step = 313 ifTrue: [
            (recoveredBlock265Stack2) leftAttachment: (recoveredBlock265Stack3).
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 316.
        ].
        recoveredBlock265Step = 316 ifTrue: [
            recoveredBlock265Stack3 := self.
            recoveredBlock265PC := 317.
        ].
        recoveredBlock265Step = 317 ifTrue: [
            recoveredBlock265Stack3 := (recoveredBlock265Stack3) changeable.
            recoveredBlock265PC := 318.
        ].
        recoveredBlock265Step = 318 ifTrue: [
            (recoveredBlock265Stack3) ifTrue: [recoveredBlock265PC := 322] ifFalse: [recoveredBlock265PC := 328].
        ].
        recoveredBlock265Step = 322 ifTrue: [
            recoveredBlock265Stack3 := recoveredLocal4.
            recoveredBlock265PC := 325.
        ].
        recoveredBlock265Step = 325 ifTrue: [
            recoveredBlock265PC := 329.
        ].
        recoveredBlock265Step = 328 ifTrue: [
            recoveredBlock265Stack3 := nil.
            recoveredBlock265PC := 329.
        ].
        recoveredBlock265Step = 329 ifTrue: [
            (recoveredBlock265Stack2) leftWidget: (recoveredBlock265Stack3).
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 332.
        ].
        recoveredBlock265Step = 332 ifTrue: [
            recoveredBlock265Stack3 := self.
            recoveredBlock265PC := 333.
        ].
        recoveredBlock265Step = 333 ifTrue: [
            recoveredBlock265Stack3 := (recoveredBlock265Stack3) changeable.
            recoveredBlock265PC := 334.
        ].
        recoveredBlock265Step = 334 ifTrue: [
            (recoveredBlock265Stack3) ifTrue: [recoveredBlock265PC := 338] ifFalse: [recoveredBlock265PC := 344].
        ].
        recoveredBlock265Step = 338 ifTrue: [
            recoveredBlock265Stack3 := 22.
            recoveredBlock265PC := 340.
        ].
        recoveredBlock265Step = 340 ifTrue: [
            recoveredBlock265PC := 346.
        ].
        recoveredBlock265Step = 344 ifTrue: [
            recoveredBlock265Stack3 := 5.
            recoveredBlock265PC := 346.
        ].
        recoveredBlock265Step = 346 ifTrue: [
            (recoveredBlock265Stack2) leftOffset: (recoveredBlock265Stack3).
            recoveredBlock265Stack2 := recoveredBlock265Stack1.
            recoveredBlock265PC := 349.
        ].
        recoveredBlock265Step = 349 ifTrue: [
            recoveredBlock265Stack3 := XmATTACHFORM.
            recoveredBlock265PC := 351.
        ].
        recoveredBlock265Step = 351 ifTrue: [
            (recoveredBlock265Stack2) rightAttachment: (recoveredBlock265Stack3).
            recoveredBlock265PC := 353.
        ].
        recoveredBlock265Step = 353 ifTrue: [
            recoveredBlock265Result := recoveredBlock265Stack1.
            recoveredBlock265Done := true.
        ].
    ].
    recoveredBlock265Result
].
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeable.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 379].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := 'valueChanged:clientData:callData:'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

