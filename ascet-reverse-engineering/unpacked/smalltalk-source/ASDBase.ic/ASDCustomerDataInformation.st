"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2015e5ec; bytecode file offset 0xa5aeb8"
!ASDCustomerDataInformation methodsFor: 'recovered'!
asLookupTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_63666').
    recoveredValue1 := LookupTable.
    recoveredValue2 := (self) size.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) addAll: (self).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201de30c; bytecode file offset 0xadabd8"
!ASDCustomerDataInformation methodsFor: 'recovered'!
userDataKey
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) CurrentUserDataKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Call_63666'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super userDataKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285770; bytecode file offset 0xb82044"
!ASDCustomerDataInformation methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keysArray.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) asString.
    (recoveredBlock5Value1) nextPutAll: (recoveredBlock5Value3).
    (recoveredBlock5Value0) nextPutAll: (' -> ').
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (self) at: (recoveredBlock5Value4).
    recoveredBlock5Value6 := recoveredArg1.
    (recoveredBlock5Value5) printOn: (recoveredBlock5Value6).
    recoveredBlock5Value7 := recoveredArg1.
    recoveredBlock5Value8 := (recoveredBlock5Value7) cr.
    recoveredBlock5Value8
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

