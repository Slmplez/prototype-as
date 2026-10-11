"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002aa34; bytecode file offset 0x934580"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
usedRcvMsgs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedRcvMsgsTable.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002adf4; bytecode file offset 0x934580"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
usedSndMsgs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedSndMsgsTable.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055e6c; bytecode file offset 0x952a9c"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractProcessContainer: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200696a0; bytecode file offset 0x966bdc"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a72c; bytecode file offset 0x967a18"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
processList
    | recoveredValue0 |
    recoveredValue0 := processSeq.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b09c; bytecode file offset 0x967a18"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
processSeq
    | recoveredValue0 |
    recoveredValue0 := processSeq.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c1258; bytecode file offset 0x9bdf14"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
mdlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1efc; bytecode file offset 0x9beac8"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
processList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processSeq := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20129d68; bytecode file offset 0xa26694"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
usedRcvMsgsTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := usedRcvMsgs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            usedRcvMsgs := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := usedRcvMsgs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129fbc; bytecode file offset 0xa26878"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
usedSndMsgsTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := usedSndMsgs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            usedSndMsgs := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := usedSndMsgs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b0918; bytecode file offset 0xcad1ec"
!SGMdAbstractProcessContainer methodsFor: 'recovered'!
usedMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) usedRcvMsgs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) mdlKey.
    recoveredBlock11Value3 := [
    | recoveredBlock11Block25Value0 |
    recoveredBlock11Block25Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value0
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) ifAbsentPut: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) usedSndMsgs.
    recoveredValue5 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) mdlKey.
    recoveredBlock44Value3 := [
    | recoveredBlock44Block57Value0 |
    recoveredBlock44Block57Value0 := recoveredBlock44Arg1.
    recoveredBlock44Block57Value0
].
    recoveredBlock44Value4 := (recoveredBlock44Value0) at: (recoveredBlock44Value2) ifAbsentPut: (recoveredBlock44Value3).
    recoveredBlock44Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) values.
    ^recoveredValue7
! !

