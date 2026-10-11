"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000504; bytecode file offset 0x5132c"
!EwTextEditPolicy methodsFor: 'recovered'!
widgetType
    | recoveredValue0 |
    recoveredValue0 := (self) editMode.
    ^recoveredValue0
! !

"extwid.ic method 0x20001400; bytecode file offset 0x52228"
!EwTextEditPolicy methodsFor: 'recovered'!
widgetValueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"extwid.ic method 0x200027ec; bytecode file offset 0x53678"
!EwTextEditPolicy methodsFor: 'recovered'!
editMode
    | recoveredValue0 |
    recoveredValue0 := editMode.
    ^recoveredValue0
! !

"extwid.ic method 0x20002994; bytecode file offset 0x53810"
!EwTextEditPolicy methodsFor: 'recovered'!
maxLength
    | recoveredValue0 |
    recoveredValue0 := maxLength.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b04; bytecode file offset 0x53998"
!EwTextEditPolicy methodsFor: 'recovered'!
selection
    | recoveredValue0 |
    recoveredValue0 := selection.
    ^recoveredValue0
! !

"extwid.ic method 0x20002c7c; bytecode file offset 0x53ae8"
!EwTextEditPolicy methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"extwid.ic method 0x20005b44; bytecode file offset 0x56930"
!EwTextEditPolicy methodsFor: 'recovered'!
hookPermanentCallbacksOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super hookPermanentCallbacksOn: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x200064b8; bytecode file offset 0x57284"
!EwTextEditPolicy methodsFor: 'recovered'!
editMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editMode := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200065f8; bytecode file offset 0x57404"
!EwTextEditPolicy methodsFor: 'recovered'!
maxLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxLength := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200067dc; bytecode file offset 0x576a8"
!EwTextEditPolicy methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000e970; bytecode file offset 0x5f738"
!EwTextEditPolicy methodsFor: 'recovered'!
selection: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            selection := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            selection := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000fd0c; bytecode file offset 0x60ae0"
!EwTextEditPolicy methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmSINGLELINEEDIT.
    editMode := recoveredValue0.
    maxLength := 32767.
    recoveredValue1 := (0) @ (0).
    selection := recoveredValue1.
    value := ''.
    ^self
! !

"extwid.ic method 0x20013a98; bytecode file offset 0x64878"
!EwTextEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := (self) widget.
    recoveredBlock7Value3 := (recoveredBlock7Value2) fontList.
    (recoveredBlock7Value1) fontList: (recoveredBlock7Value3).
    recoveredBlock7Value4 := (self) editMode.
    recoveredBlock7Value5 := (recoveredBlock7Value0) editMode: (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    recoveredValue2 := (recoveredValue0) createText: ('text') argBlock: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20015698; bytecode file offset 0x66470"
!EwTextEditPolicy methodsFor: 'recovered'!
positionWidget: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super positionWidget: (recoveredValue0) x: (recoveredValue1) y: (recoveredValue2) width: (recoveredValue3) height: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getSelectionPosition.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) cursorPosition: (0).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) setSelection: (recoveredValue9).
    ^self
! !

"extwid.ic method 0x20025e3c; bytecode file offset 0x76c34"
!EwTextEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('PR') = ('1E7ZUOA').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) maxLength.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 59] ifFalse: [recoveredBlock13PC := 24].
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) editMode.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := XmMULTILINEEDIT.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) = (recoveredBlock13Stack1).
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 52].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack0 := recoveredArg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := XmSINGLELINEEDIT.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            (recoveredBlock13Stack1) editMode: (recoveredBlock13Stack2).
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) maxLength.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            (recoveredBlock13Stack1) maxLength: (recoveredBlock13Stack2).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := XmMULTILINEEDIT.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            (recoveredBlock13Stack0) editMode: (recoveredBlock13Stack1).
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack0 := recoveredArg1.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) maxLength.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            (recoveredBlock13Stack0) maxLength: (recoveredBlock13Stack1).
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack0 := recoveredArg1.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) value.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            (recoveredBlock13Stack1) setString: (recoveredBlock13Stack2).
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) selection.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) setSelection: (recoveredBlock13Stack1).
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) deferRedraw: (recoveredValue2).
    ^self
! !

