"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2018a4cc; bytecode file offset 0xa86d90"
!CwAppContext methodsFor: 'recovered'!
asyncExecFirstInUI: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) enableAsyncMessages: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := bgGraphicRequests.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addFirst: (recoveredValue3).
    recoveredValue4 := Processor.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) enableAsyncMessages: (recoveredValue5).
    (self) wake.
    ^self
! !

"ASDBase.ic method 0x2028daec; bytecode file offset 0xb8a3c0"
!CwAppContext methodsFor: 'recovered'!
readAndDispatchAndSleepWhile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_60223'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DisableReadAndDispatch.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) readAndDispatch.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) sleep.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Call_69233'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ad144; bytecode file offset 0xca9a08"
!CwAppContext methodsFor: 'recovered'!
readAndDispatchAndSleepWhile: recoveredArg1 timeoutMilliSeconds: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Time.
    recoveredValue1 := (recoveredValue0) millisecondClockValue.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := recoveredValue1.
    recoveredValue3 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) value.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 63].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := Time.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) millisecondClockValue.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) < (recoveredBlock14Stack2).
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 46] ifFalse: [recoveredBlock14PC := 52].
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) < (recoveredBlock14Stack2).
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) readAndDispatchAndSleepWhile: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) - (recoveredValue5).
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) >= (recoveredValue7).
    ^recoveredValue8
! !

