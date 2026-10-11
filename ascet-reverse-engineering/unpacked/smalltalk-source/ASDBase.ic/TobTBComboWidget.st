"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200017a0; bytecode file offset 0x8ffcfc"
!TobTBComboWidget methodsFor: 'recovered'!
activity
    ^self
! !

"ASDBase.ic method 0x20006094; bytecode file offset 0x902de8"
!TobTBComboWidget methodsFor: 'recovered'!
buttonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006274; bytecode file offset 0x902de8"
!TobTBComboWidget methodsFor: 'recovered'!
buttonReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000ab08; bytecode file offset 0x908be4"
!TobTBComboWidget methodsFor: 'recovered'!
getWidget
    | recoveredValue0 |
    recoveredValue0 := (self) getComboBox.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070d18; bytecode file offset 0x96d6a4"
!TobTBComboWidget methodsFor: 'recovered'!
getComboBox
    | recoveredValue0 |
    recoveredValue0 := combo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c7498; bytecode file offset 0x9c3d64"
!TobTBComboWidget methodsFor: 'recovered'!
comboBox: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    combo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015df38; bytecode file offset 0xa5a7fc"
!TobTBComboWidget methodsFor: 'recovered'!
children
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := combo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := combo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c491c; bytecode file offset 0xbc11f4"
!TobTBComboWidget methodsFor: 'recovered'!
draw
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Local3 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 |
    recoveredBlock5Value0 := (self) parent.
    recoveredBlock5Value1 := (recoveredBlock5Value0) height.
    recoveredBlock5Local3 := recoveredBlock5Value1.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) height.
    recoveredBlock5Local2 := recoveredBlock5Value3.
    recoveredBlock5Value4 := recoveredBlock5Local3.
    recoveredBlock5Value5 := recoveredBlock5Local2.
    recoveredBlock5Value6 := (recoveredBlock5Value4) - (recoveredBlock5Value5).
    recoveredBlock5Value7 := (recoveredBlock5Value6) - (4).
    recoveredBlock5Value8 := (recoveredBlock5Value7) // (2).
    recoveredBlock5Value9 := (recoveredBlock5Value8) max: (0).
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Arg1.
    recoveredBlock5Value11 := recoveredBlock5Arg1.
    recoveredBlock5Value12 := (recoveredBlock5Value11) x.
    recoveredBlock5Value13 := recoveredBlock5Local1.
    recoveredBlock5Value14 := (recoveredBlock5Value10) moveWidget: (recoveredBlock5Value12) y: (recoveredBlock5Value13).
    recoveredBlock5Value14
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    super draw.
    ^self
! !

"ASDBase.ic method 0x202ff5a0; bytecode file offset 0xbfbe78"
!TobTBComboWidget methodsFor: 'recovered'!
basicCalculateSizes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super basicCalculateSizes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) yGutter.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) yGutter.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

