"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c8a64; bytecode file offset 0x9c5380"
!ETASDosBox class methodsFor: 'recovered'!
executeCmdLine: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (self) executeCmdLine: (recoveredValue0) description: (recoveredValue1) intermediate: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b6cf8; bytecode file offset 0xab35b8"
!ETASDosBox class methodsFor: 'recovered'!
executeCmdLine: recoveredArg1 description: recoveredArg2 intermediate: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IsWin95.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IsWinNT.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeCmdLine: (recoveredStack1) description: (recoveredStack2) showMinimized: (recoveredStack3) intermediate: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202441e4; bytecode file offset 0xb40ab4"
!ETASDosBox class methodsFor: 'recovered'!
SetEnvironment: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) key.
    recoveredBlock13Value3 := (recoveredBlock13Value2) asPSZ.
    recoveredBlock13Value4 := recoveredBlock13Arg1.
    recoveredBlock13Value5 := (recoveredBlock13Value4) value.
    recoveredBlock13Value6 := (recoveredBlock13Value5) asPSZ.
    recoveredBlock13Value7 := (recoveredBlock13Value0) setEnvironmentVariable: (recoveredBlock13Value3) lpszValue: (recoveredBlock13Value6).
    recoveredBlock13Value7
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20496e04; bytecode file offset 0xd936e8"
!ETASDosBox class methodsFor: 'recovered'!
executeCmdLine: recoveredArg1 description: recoveredArg2 showMinimized: recoveredArg3 intermediate: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SwShowminnoactive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SwShow.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnvironmentStrings.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock35Local1 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal3.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack4 := recoveredLocal1.
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createProcess: (recoveredBlock35Stack2) showWindow: (recoveredBlock35Stack3) environment: (recoveredBlock35Stack4).
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isInteger.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 68] ifFalse: [recoveredBlock35PC := 74].
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35PC := 114.
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 77.
        ].
        recoveredBlock35Step = 77 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local1.
            recoveredBlock35PC := 80.
        ].
        recoveredBlock35Step = 80 ifTrue: [
            (recoveredBlock35Stack1) setProcessAffinityAll: (recoveredBlock35Stack2).
            recoveredBlock35PC := 82.
        ].
        recoveredBlock35Step = 82 ifTrue: [
            recoveredBlock35Stack1 := [
    | recoveredBlock35Block82Value0 recoveredBlock35Block82Value1 recoveredBlock35Block82Value2 recoveredBlock35Block82Value3 |
    recoveredBlock35Block82Value0 := recoveredLocal2.
    recoveredBlock35Block82Value1 := recoveredBlock35Local1.
    recoveredBlock35Block82Value2 := recoveredArg4.
    recoveredBlock35Block82Value3 := (recoveredBlock35Block82Value0) waitUntilTerminates: (recoveredBlock35Block82Value1) intermediate: (recoveredBlock35Block82Value2).
    recoveredBlock35Block82Value3
].
            recoveredBlock35PC := 100.
        ].
        recoveredBlock35Step = 100 ifTrue: [
            recoveredBlock35Stack2 := [
    | recoveredBlock35Block100Value0 recoveredBlock35Block100Value1 |
    recoveredBlock35Block100Value0 := recoveredBlock35Local1.
    recoveredBlock35Block100Value1 := (recoveredBlock35Block100Value0) free.
    recoveredBlock35Block100Value1
].
            recoveredBlock35PC := 112.
        ].
        recoveredBlock35Step = 112 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) ensure: (recoveredBlock35Stack2).
            recoveredBlock35PC := 114.
        ].
        recoveredBlock35Step = 114 ifTrue: [
            ^recoveredBlock35Stack1
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 |
    recoveredBlock115Value0 := recoveredLocal2.
    recoveredBlock115Value1 := recoveredLocal1.
    recoveredBlock115Value2 := (recoveredBlock115Value0) freeEnvironmentStrings: (recoveredBlock115Value1).
    recoveredBlock115Value2
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

