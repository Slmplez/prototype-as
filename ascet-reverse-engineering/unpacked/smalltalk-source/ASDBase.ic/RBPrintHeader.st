"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065cb4; bytecode file offset 0x963428"
!RBPrintHeader methodsFor: 'recovered'!
font
    | recoveredValue0 |
    recoveredValue0 := font.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067e04; bytecode file offset 0x9646f8"
!RBPrintHeader methodsFor: 'recovered'!
columns
    | recoveredValue0 |
    recoveredValue0 := columns.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006872c; bytecode file offset 0x965b90"
!RBPrintHeader methodsFor: 'recovered'!
frameProportion
    | recoveredValue0 |
    recoveredValue0 := frameProportion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069718; bytecode file offset 0x966bdc"
!RBPrintHeader methodsFor: 'recovered'!
headerProportion
    | recoveredValue0 |
    recoveredValue0 := headerProportion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be7b4; bytecode file offset 0x9bb178"
!RBPrintHeader methodsFor: 'recovered'!
font: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    font := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c015c; bytecode file offset 0x9bd228"
!RBPrintHeader methodsFor: 'recovered'!
frameProportion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    frameProportion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1570; bytecode file offset 0x9bdf14"
!RBPrintHeader methodsFor: 'recovered'!
headerProportion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    headerProportion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2018c8c8; bytecode file offset 0xa89198"
!RBPrintHeader methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) columns: (recoveredValue1).
    recoveredValue2 := (1) @ (1).
    (self) frameProportion: (recoveredValue2).
    (self) headerProportion: (#[154 153 153 153 153 153 185 63]).
    ^self
! !

"ASDBase.ic method 0x2031f8c0; bytecode file offset 0xc1c190"
!RBPrintHeader methodsFor: 'recovered'!
columns: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) proportion.
    recoveredBlock12Value3 := (recoveredBlock12Value0) + (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'The sum of the proportions is greater than 1.0.'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            columns := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

