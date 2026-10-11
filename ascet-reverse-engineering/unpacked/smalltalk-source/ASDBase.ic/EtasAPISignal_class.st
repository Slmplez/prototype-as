"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202eec70; bytecode file offset 0xbeb560"
!EtasAPISignal class methodsFor: 'recovered'!
getWriteSymbol: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('ASCII') put: ('ETASAscii').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('FAMOSChannel') put: ('FamosChannel').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('FAMOSRecord') put: ('FamosRecord').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('MATLAB') put: ('ETASMATLABMFILE').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('MDF') put: ('ETASMDF').
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [].
    recoveredValue11 := (recoveredValue8) at: (recoveredValue9) ifAbsent: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20451c00; bytecode file offset 0xd4e514"
!EtasAPISignal class methodsFor: 'recovered'!
getReadBlockForFormat: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'ASCII'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := [:block280ff610Arg1 | 
    | block280ff610Value0 block280ff610Value1 block280ff610Value2 |
    block280ff610Value0 := ETASItemFile.
    block280ff610Value1 := block280ff610Arg1.
    block280ff610Value2 := (block280ff610Value0) createETASAsciiFrom: (block280ff610Value1).
    block280ff610Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'ETAS'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [:block280ff634Arg1 | 
    | block280ff634Value0 block280ff634Value1 block280ff634Value2 |
    block280ff634Value0 := ETASItemFile.
    block280ff634Value1 := block280ff634Arg1.
    block280ff634Value2 := (block280ff634Value0) createETASBinaryFrom: (block280ff634Value1).
    block280ff634Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'FAMOSChannel'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := [:block280ff658Arg1 | 
    | block280ff658Value0 block280ff658Value1 block280ff658Value2 |
    block280ff658Value0 := ETASItemFile.
    block280ff658Value1 := block280ff658Arg1.
    block280ff658Value2 := (block280ff658Value0) createFamosChannelFrom: (block280ff658Value1).
    block280ff658Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'FAMOSRecord'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := [:block280ff67cArg1 | 
    | block280ff67cValue0 block280ff67cValue1 block280ff67cValue2 |
    block280ff67cValue0 := ETASItemFile.
    block280ff67cValue1 := block280ff67cArg1.
    block280ff67cValue2 := (block280ff67cValue0) createFamosRecordFrom: (block280ff67cValue1).
    block280ff67cValue2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'MATLAB'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := [:block280ff6a0Arg1 | 
    | block280ff6a0Value0 block280ff6a0Value1 block280ff6a0Value2 |
    block280ff6a0Value0 := ETASItemFile.
    block280ff6a0Value1 := block280ff6a0Arg1.
    block280ff6a0Value2 := (block280ff6a0Value0) createMatlabMFrom: (block280ff6a0Value1).
    block280ff6a0Value2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'MDF'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := [:block280ff6c4Arg1 | 
    | block280ff6c4Value0 block280ff6c4Value1 block280ff6c4Value2 |
    block280ff6c4Value0 := ETASItemFile.
    block280ff6c4Value1 := block280ff6c4Arg1.
    block280ff6c4Value2 := (block280ff6c4Value0) createMDFFrom: (block280ff6c4Value1).
    block280ff6c4Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

