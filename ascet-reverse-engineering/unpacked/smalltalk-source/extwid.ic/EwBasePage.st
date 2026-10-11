"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20002e1c; bytecode file offset 0x53c68"
!EwBasePage methodsFor: 'recovered'!
pageCount
    | recoveredValue0 |
    recoveredValue0 := ewPageCount.
    ^recoveredValue0
! !

"extwid.ic method 0x2000490c; bytecode file offset 0x556d0"
!EwBasePage methodsFor: 'recovered'!
decreasePageCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ewPageCount.
    recoveredValue1 := (recoveredValue0) + (-1).
    ewPageCount := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20004920; bytecode file offset 0x556e4"
!EwBasePage methodsFor: 'recovered'!
increasePageCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ewPageCount.
    recoveredValue1 := (recoveredValue0) + (1).
    ewPageCount := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20008730; bytecode file offset 0x594fc"
!EwBasePage methodsFor: 'recovered'!
initialize
    super initialize.
    ewPageCount := 1.
    ^self
! !

"extwid.ic method 0x2000f25c; bytecode file offset 0x60030"
!EwBasePage methodsFor: 'recovered'!
destroyWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageCount.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            super destroyWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) decreasePageCount.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000f7e8; bytecode file offset 0x605dc"
!EwBasePage methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('PR') = ('1EBWKGL').
    recoveredValue1 := CwForm.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) createWidget: (recoveredValue2) parent: (recoveredValue3) argBlock: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) userData: (self).
    ^recoveredValue5
! !

"extwid.ic method 0x20014bdc; bytecode file offset 0x659b8"
!EwBasePage methodsFor: 'recovered'!
primaryWidgetCreateArgBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredBlock4Value2 := XmRESIZENONE.
    (recoveredBlock4Value1) resizePolicy: (recoveredBlock4Value2).
    (recoveredBlock4Value0) mappedWhenManaged: (false).
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := super primaryWidgetCreateArgBlock: (recoveredBlock4Value3).
    recoveredBlock4Value5 := recoveredBlock4Arg1.
    recoveredBlock4Value6 := (recoveredBlock4Value4) value: (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    ^recoveredValue0
! !

