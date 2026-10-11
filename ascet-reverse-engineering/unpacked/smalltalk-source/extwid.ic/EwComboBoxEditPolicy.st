"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000714; bytecode file offset 0x516bc"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
widgetType
    | recoveredValue0 |
    recoveredValue0 := XmCOMBOBOX.
    ^recoveredValue0
! !

"extwid.ic method 0x200013b8; bytecode file offset 0x52228"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
widgetValueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getString.
    ^recoveredValue1
! !

"extwid.ic method 0x20002814; bytecode file offset 0x53678"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
editable
    | recoveredValue0 |
    recoveredValue0 := editable.
    ^recoveredValue0
! !

"extwid.ic method 0x20002a04; bytecode file offset 0x53810"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b7c; bytecode file offset 0x53998"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
maxLength
    | recoveredValue0 |
    recoveredValue0 := maxLength.
    ^recoveredValue0
! !

"extwid.ic method 0x20002ca4; bytecode file offset 0x53ae8"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"extwid.ic method 0x20004fb8; bytecode file offset 0x55d84"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
startActionsOnEditWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) dropDown: (true).
    ^self
! !

"extwid.ic method 0x20006418; bytecode file offset 0x57284"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
editable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editable := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006598; bytecode file offset 0x57404"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    items := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000676c; bytecode file offset 0x57568"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
maxLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxLength := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200067fc; bytecode file offset 0x576a8"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000ba94; bytecode file offset 0x5c860"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
initialize
    editable := false.
    items := #().
    maxLength := 32767.
    value := nil.
    ^self
! !

"extwid.ic method 0x2000df68; bytecode file offset 0x5ed64"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) items.
    (recoveredValue1) items: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) editable.
    (recoveredValue3) editable: (recoveredValue4).
    recoveredValue5 := (self) value.
    (recoveredValue0) setString: (recoveredValue5).
    ^self
! !

"extwid.ic method 0x2000f4fc; bytecode file offset 0x602f0"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) widget.
    recoveredBlock7Value2 := (recoveredBlock7Value1) fontList.
    recoveredBlock7Value3 := (recoveredBlock7Value0) fontList: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) createComboBox: ('combo') argBlock: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x2001dc28; bytecode file offset 0x6ea08"
!EwComboBoxEditPolicy methodsFor: 'recovered'!
positionWidget: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) manageChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) mapWidget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            super positionWidget: (recoveredStack2) x: (recoveredStack3) y: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

