"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012504; bytecode file offset 0x912098"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
widgetType
    | recoveredValue0 |
    recoveredValue0 := AbtRadioButtonSetWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005e510; bytecode file offset 0x95adc8"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
initialize
    items := #().
    ^self
! !

"ASDBase.ic method 0x2006253c; bytecode file offset 0x95f8b0"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
selectedButtonPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) items.
    recoveredValue1 := (self) value.
    recoveredValue2 := (recoveredValue0) indexOf: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006702c; bytecode file offset 0x9646f8"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069054; bytecode file offset 0x965b90"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200becd0; bytecode file offset 0x9bc0b4"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    items := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfbc4; bytecode file offset 0x9bd228"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fccd0; bytecode file offset 0x9f9594"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) items.
    (recoveredValue1) buttons: (recoveredValue2).
    recoveredValue3 := (self) selectedButtonPosition.
    (recoveredValue0) selectPos: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20188d60; bytecode file offset 0xa85624"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
positionWidget: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super positionWidget: (recoveredValue0) x: (recoveredValue1) y: (recoveredValue2) width: (recoveredValue3) height: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) unmanageChild.
    (recoveredValue5) manageChild.
    ^self
! !

"ASDBase.ic method 0x2026d7e0; bytecode file offset 0xb6a0b0"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
widgetValueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PTR') = ('PTR12606').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) primaryWidget.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) set.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 35].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) labelString.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^nil
! !

"ASDBase.ic method 0x20283a80; bytecode file offset 0xb80360"
!AbtRadioBoxEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtRadioButtonSetWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := (self) widget.
    recoveredBlock9Value3 := (recoveredBlock9Value2) fontList.
    (recoveredBlock9Value1) fontList: (recoveredBlock9Value3).
    recoveredBlock9Value4 := recoveredBlock9Value0.
    (recoveredBlock9Value4) marginHeight: (1).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    recoveredBlock9Value6 := XmHORIZONTAL.
    (recoveredBlock9Value5) orientation: (recoveredBlock9Value6).
    recoveredBlock9Value7 := XmPACKTIGHT.
    recoveredBlock9Value8 := (recoveredBlock9Value0) packing: (recoveredBlock9Value7).
    recoveredBlock9Value8
].
    recoveredValue3 := (recoveredValue0) createWidget: ('ToggleButtonGroup') parent: (recoveredValue1) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

