"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20003968; bytecode file offset 0x1038c"
!TGAccessRtioManager methodsFor: 'recovered'!
rewindHwTable
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSemaphore.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := pidNumber.
    recoveredBlock5Value2 := oidNumber.
    recoveredBlock5Value3 := CMethods.
    recoveredBlock5Value4 := (recoveredBlock5Value3) at: ('rewindHwTable()').
    recoveredBlock5Value5 := (recoveredBlock5Value0) createSmallPid: (recoveredBlock5Value1) oid: (recoveredBlock5Value2) cmd: (recoveredBlock5Value4).
    recoveredLocal3 := recoveredBlock5Value5.
    recoveredBlock5Value6 := server.
    recoveredBlock5Value7 := recoveredLocal3.
    recoveredBlock5Value8 := (recoveredBlock5Value6) sendL1MessageShortTimeout: (recoveredBlock5Value7).
    recoveredLocal2 := recoveredBlock5Value8.
    recoveredBlock5Value9 := recoveredLocal2.
    recoveredBlock5Value10 := (recoveredBlock5Value9) removeInt32Argument.
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredLocal1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1) silent: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) getErr.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 101.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'L1 Search for Hardware not supported.\Please, flash a project built with ASCET-RP 5.2 or higher.'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x2000484c; bytecode file offset 0x1127c"
!TGAccessRtioManager methodsFor: 'recovered'!
getNextHwTableEntry
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSemaphore.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9Stack6 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := SGL1Message.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := pidNumber.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack3 := oidNumber.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack4 := CMethods.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack5 := 'getNextHwTableEntry()'.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack4 := (recoveredBlock9Stack4) at: (recoveredBlock9Stack5).
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) createSmallPid: (recoveredBlock9Stack2) oid: (recoveredBlock9Stack3) cmd: (recoveredBlock9Stack4).
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredLocal3 := recoveredBlock9Stack1.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := server.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal3.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) sendL1Message: (recoveredBlock9Stack2).
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredLocal2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal2.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) hasReturnArgument.
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 52] ifFalse: [recoveredBlock9PC := 126].
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal2.
            recoveredBlock9PC := 56.
        ].
        recoveredBlock9Step = 56 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) getDataPos.
            recoveredBlock9PC := 58.
        ].
        recoveredBlock9Step = 58 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) + (-1).
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack3 := recoveredLocal2.
            recoveredBlock9PC := 62.
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) getByteLengthForHeader.
            recoveredBlock9PC := 64.
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) - (recoveredBlock9Stack3).
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            recoveredBlock9Stack3 := 4.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) > (recoveredBlock9Stack3).
            recoveredBlock9PC := 68.
        ].
        recoveredBlock9Step = 68 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 72] ifFalse: [recoveredBlock9PC := 122].
        ].
        recoveredBlock9Step = 72 ifTrue: [
            recoveredBlock9PC := 73.
        ].
        recoveredBlock9Step = 73 ifTrue: [
            recoveredBlock9Stack1 := OrderedCollection.
            recoveredBlock9PC := 75.
        ].
        recoveredBlock9Step = 75 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) new.
            recoveredBlock9PC := 77.
        ].
        recoveredBlock9Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 80.
        ].
        recoveredBlock9Step = 80 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal1.
            recoveredBlock9PC := 83.
        ].
        recoveredBlock9Step = 83 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal2.
            recoveredBlock9PC := 86.
        ].
        recoveredBlock9Step = 86 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) removeString.
            recoveredBlock9PC := 88.
        ].
        recoveredBlock9Step = 88 ifTrue: [
            (recoveredBlock9Stack1) add: (recoveredBlock9Stack2).
            recoveredBlock9PC := 90.
        ].
        recoveredBlock9Step = 90 ifTrue: [
            recoveredBlock9Stack1 := 0.
            recoveredBlock9PC := 92.
        ].
        recoveredBlock9Step = 92 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            recoveredBlock9Stack1 := 8.
            recoveredBlock9PC := 95.
        ].
        recoveredBlock9Step = 95 ifTrue: [
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 98 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal1.
            recoveredBlock9PC := 101.
        ].
        recoveredBlock9Step = 101 ifTrue: [
            recoveredBlock9Stack3 := recoveredLocal2.
            recoveredBlock9PC := 104.
        ].
        recoveredBlock9Step = 104 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) removeUInt32Argument.
            recoveredBlock9PC := 106.
        ].
        recoveredBlock9Step = 106 ifTrue: [
            (recoveredBlock9Stack2) add: (recoveredBlock9Stack3).
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 108 ifTrue: [
            (recoveredBlock9Stack1 isInteger and: [recoveredBlock9Local1 isInteger]) ifTrue: [(recoveredBlock9Local1 + 1 <= recoveredBlock9Stack1) ifTrue: [recoveredBlock9Local1 := recoveredBlock9Local1 + 1. recoveredBlock9PC := 98] ifFalse: [recoveredBlock9Local1 := nil. recoveredBlock9PC := 122]] ifFalse: [recoveredBlock9PC := 112].
        ].
        recoveredBlock9Step = 112 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 113.
        ].
        recoveredBlock9Step = 113 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local1.
            recoveredBlock9PC := 114.
        ].
        recoveredBlock9Step = 114 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) + (1).
            recoveredBlock9PC := 115.
        ].
        recoveredBlock9Step = 115 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Stack3.
            recoveredBlock9PC := 116.
        ].
        recoveredBlock9Step = 116 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack4.
            recoveredBlock9PC := 117.
        ].
        recoveredBlock9Step = 117 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) < (recoveredBlock9Stack3).
            recoveredBlock9PC := 118.
        ].
        recoveredBlock9Step = 118 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 120] ifFalse: [recoveredBlock9PC := 98].
        ].
        recoveredBlock9Step = 120 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 121.
        ].
        recoveredBlock9Step = 121 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 122.
        ].
        recoveredBlock9Step = 122 ifTrue: [
            recoveredBlock9PC := 131.
        ].
        recoveredBlock9Step = 126 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 127.
        ].
        recoveredBlock9Step = 127 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) server.
            recoveredBlock9PC := 129.
        ].
        recoveredBlock9Step = 129 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) setToActive.
            recoveredBlock9PC := 131.
        ].
        recoveredBlock9Step = 131 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1) silent: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

