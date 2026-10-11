"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015588; bytecode file offset 0x912098"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
widgetType
    | recoveredValue0 |
    recoveredValue0 := EwSpinButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20038c64; bytecode file offset 0x935c54"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
widgetValueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005e534; bytecode file offset 0x95adf8"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
initialize
    items := #().
    ^self
! !

"ASDBase.ic method 0x200675cc; bytecode file offset 0x9646f8"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068314; bytecode file offset 0x965b90"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200699a0; bytecode file offset 0x966bdc"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
increment
    | recoveredValue0 |
    recoveredValue0 := increment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b154; bytecode file offset 0x967a18"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
maximum
    | recoveredValue0 |
    recoveredValue0 := maximum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd50; bytecode file offset 0x96873c"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
minimum
    | recoveredValue0 |
    recoveredValue0 := minimum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ca20; bytecode file offset 0x969c04"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
itemType
    | recoveredValue0 |
    recoveredValue0 := itemType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084d74; bytecode file offset 0x981ca4"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
abtValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200beca0; bytecode file offset 0x9bc0b4"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf984; bytecode file offset 0x9bd228"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    items := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1630; bytecode file offset 0x9bdf14"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
increment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    increment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1d44; bytecode file offset 0x9beac8"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
maximum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maximum := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2958; bytecode file offset 0x9bf474"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
minimum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minimum := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2e44; bytecode file offset 0x9bfde0"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
editable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c37a0; bytecode file offset 0x9c058c"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
itemType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itemType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010608c; bytecode file offset 0xa02940"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
editable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := editable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            editable := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := editable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020fdf8; bytecode file offset 0xb0c6c0"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
abtValue: recoveredArg1 converter: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertToDisplay.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) acceptsAsObjectToDisplayInput: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectToDisplay: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
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

"ASDBase.ic method 0x203bae7c; bytecode file offset 0xcb7764"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            (recoveredBlock7Stack2) value: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) editable.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack2) editable: (recoveredBlock7Stack3).
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) itemType.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            (recoveredBlock7Stack1) itemType: (recoveredBlock7Stack2).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) increment.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            (recoveredBlock7Stack0 == nil) ifTrue: [recoveredBlock7PC := 46] ifFalse: [recoveredBlock7PC := 38].
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) increment.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack0) increment: (recoveredBlock7Stack1).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) maximum.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            (recoveredBlock7Stack0 == nil) ifTrue: [recoveredBlock7PC := 60] ifFalse: [recoveredBlock7PC := 52].
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) maximum.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            (recoveredBlock7Stack0) maximum: (recoveredBlock7Stack1).
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) minimum.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 77] ifFalse: [recoveredBlock7PC := 68].
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) minimum.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) minimum: (recoveredBlock7Stack1).
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203dabe4; bytecode file offset 0xcd74e4"
!AbtSpinButtonEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack2) value: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) items.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            (recoveredBlock7Stack2) items: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) editable.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            (recoveredBlock7Stack2) editable: (recoveredBlock7Stack3).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) itemType.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            (recoveredBlock7Stack1) itemType: (recoveredBlock7Stack2).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) increment.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            (recoveredBlock7Stack0 == nil) ifTrue: [recoveredBlock7PC := 56] ifFalse: [recoveredBlock7PC := 50].
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) increment.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            (recoveredBlock7Stack0) increment: (recoveredBlock7Stack1).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) maximum.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            (recoveredBlock7Stack0 == nil) ifTrue: [recoveredBlock7PC := 68] ifFalse: [recoveredBlock7PC := 62].
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) increment.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            (recoveredBlock7Stack0) maximum: (recoveredBlock7Stack1).
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) minimum.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 83] ifFalse: [recoveredBlock7PC := 76].
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) increment.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) minimum: (recoveredBlock7Stack1).
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) createEwSpinButton: ('SpinButton') argBlock: (recoveredValue1).
    ^recoveredValue2
! !

