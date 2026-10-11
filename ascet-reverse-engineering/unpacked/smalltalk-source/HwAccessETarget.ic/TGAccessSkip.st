"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20002cac; bytecode file offset 0xf6c0"
!TGAccessSkip methodsFor: 'recovered'!
skip: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := pidNumber.
    recoveredBlock5Value2 := oidNumber.
    recoveredBlock5Value3 := CMethods.
    recoveredBlock5Value4 := (recoveredBlock5Value3) at: ('skip()').
    recoveredBlock5Value5 := (recoveredBlock5Value0) createSmallPid: (recoveredBlock5Value1) oid: (recoveredBlock5Value2) cmd: (recoveredBlock5Value4).
    recoveredLocal2 := recoveredBlock5Value5.
    recoveredBlock5Value6 := recoveredLocal2.
    recoveredBlock5Value7 := recoveredArg1.
    (recoveredBlock5Value6) addArgument: (recoveredBlock5Value7).
    recoveredBlock5Value8 := server.
    recoveredBlock5Value9 := recoveredLocal2.
    recoveredBlock5Value10 := (recoveredBlock5Value8) sendL1Message: (recoveredBlock5Value9).
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredLocal1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := Delay.
    recoveredValue3 := (recoveredValue2) forMilliseconds: (250).
    (recoveredValue3) wait.
    ^self
! !

"HwAccessETarget.ic method 0x200036bc; bytecode file offset 0x100b8"
!TGAccessSkip methodsFor: 'recovered'!
partitionString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := Interval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) from: (recoveredStack4) to: (recoveredStack5) by: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 60]] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := Interval.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4) by: (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"HwAccessETarget.ic method 0x200041e8; bytecode file offset 0x10c00"
!TGAccessSkip methodsFor: 'recovered'!
boot: recoveredArg1 linkNo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) partitionString: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) getSemaphore.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := [
    | recoveredBlock14Block21Value0 recoveredBlock14Block21Value1 recoveredBlock14Block21Value2 recoveredBlock14Block21Value3 recoveredBlock14Block21Value4 recoveredBlock14Block21Value5 recoveredBlock14Block21Value6 recoveredBlock14Block21Value7 recoveredBlock14Block21Value8 recoveredBlock14Block21Value9 recoveredBlock14Block21Value10 recoveredBlock14Block21Value11 recoveredBlock14Block21Value12 recoveredBlock14Block21Value13 recoveredBlock14Block21Value14 recoveredBlock14Block21Value15 recoveredBlock14Block21Value16 |
    recoveredBlock14Block21Value0 := SGL1Message.
    recoveredBlock14Block21Value1 := pidNumber.
    recoveredBlock14Block21Value2 := oidNumber.
    recoveredBlock14Block21Value3 := CMethods.
    recoveredBlock14Block21Value4 := (recoveredBlock14Block21Value3) at: ('boot()').
    recoveredBlock14Block21Value5 := (recoveredBlock14Block21Value0) createLargePid: (recoveredBlock14Block21Value1) oid: (recoveredBlock14Block21Value2) cmd: (recoveredBlock14Block21Value4).
    recoveredLocal4 := recoveredBlock14Block21Value5.
    recoveredBlock14Block21Value6 := recoveredLocal4.
    recoveredBlock14Block21Value7 := recoveredArg1.
    recoveredBlock14Block21Value8 := recoveredBlock14Arg1.
    (recoveredBlock14Block21Value6) addString: (recoveredBlock14Block21Value7) interval: (recoveredBlock14Block21Value8).
    recoveredBlock14Block21Value9 := recoveredLocal4.
    recoveredBlock14Block21Value10 := recoveredArg2.
    (recoveredBlock14Block21Value9) addArgument: (recoveredBlock14Block21Value10).
    recoveredBlock14Block21Value11 := server.
    recoveredBlock14Block21Value12 := recoveredLocal4.
    recoveredBlock14Block21Value13 := (recoveredBlock14Block21Value11) sendL1Message: (recoveredBlock14Block21Value12).
    recoveredLocal3 := recoveredBlock14Block21Value13.
    recoveredBlock14Block21Value14 := recoveredLocal3.
    recoveredBlock14Block21Value15 := (recoveredBlock14Block21Value14) removeInt32Argument.
    recoveredBlock14Block21Value16 := recoveredBlock14Block21Value15.
    recoveredLocal1 := recoveredBlock14Block21Value16.
    recoveredBlock14Block21Value15
].
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            (recoveredBlock14Stack0) critical: (recoveredBlock14Stack1).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal1.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            (recoveredBlock14Stack0 ~~ nil) ifTrue: [recoveredBlock14PC := 96] ifFalse: [recoveredBlock14PC := 94].
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack2 := 1.
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) = (recoveredBlock14Stack2).
            recoveredBlock14PC := 103.
        ].
        recoveredBlock14Step = 103 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 106] ifFalse: [recoveredBlock14PC := 109].
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

