"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20115acc; bytecode file offset 0xa123c8"
!ASDSimCTGSLVarStepSolver methodsFor: 'recovered'!
fieldNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isOnline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #('Initial h' 'Relative error').
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := #('dT' 'Initial h' 'Minimum h' 'Maximum h' 'Absolute error' 'Relative error').
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115afc; bytecode file offset 0xa123c8"
!ASDSimCTGSLVarStepSolver methodsFor: 'recovered'!
characterMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isOnline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #('checkFloat:' 'checkFloat:' 'checkFloat:' 'checkFloat:' 'checkFloat:').
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := #('checkFloat:' 'checkFloat:' 'checkFloat:' 'checkFloat:' 'checkFloat:' 'checkFloat:').
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c3770; bytecode file offset 0xdc0050"
!ASDSimCTGSLVarStepSolver methodsFor: 'recovered'!
initializeSpecificFields
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := fieldGetters.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := ctParams.
    recoveredBlock6Value1 := (recoveredBlock6Value0) startH.
    recoveredBlock6Value1
].
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := fieldSetters.
    recoveredValue3 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (self) setInitialH: (recoveredBlock20Value0).
    recoveredBlock20Value1
].
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := fieldGetters.
    recoveredValue5 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := ctParams.
    recoveredBlock33Value1 := (recoveredBlock33Value0) hMin.
    recoveredBlock33Value1
].
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := fieldSetters.
    recoveredValue7 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := (self) setHMin: (recoveredBlock48Value0).
    recoveredBlock48Value1
].
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := fieldGetters.
    recoveredValue9 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 |
    recoveredBlock62Value0 := ctParams.
    recoveredBlock62Value1 := (recoveredBlock62Value0) hMax.
    recoveredBlock62Value1
].
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := fieldSetters.
    recoveredValue11 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 |
    recoveredBlock77Value0 := recoveredBlock77Arg1.
    recoveredBlock77Value1 := (self) setHMax: (recoveredBlock77Value0).
    recoveredBlock77Value1
].
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := fieldGetters.
    recoveredValue13 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 |
    recoveredBlock92Value0 := ctParams.
    recoveredBlock92Value1 := (recoveredBlock92Value0) absError.
    recoveredBlock92Value1
].
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := fieldSetters.
    recoveredValue15 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 |
    recoveredBlock107Value0 := recoveredBlock107Arg1.
    recoveredBlock107Value1 := (self) setAbsError: (recoveredBlock107Value0).
    recoveredBlock107Value1
].
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := fieldGetters.
    recoveredValue17 := [
    | recoveredBlock122Value0 recoveredBlock122Value1 |
    recoveredBlock122Value0 := ctParams.
    recoveredBlock122Value1 := (recoveredBlock122Value0) relError.
    recoveredBlock122Value1
].
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := fieldSetters.
    recoveredValue19 := [:recoveredBlock137Arg1 | 
    | recoveredBlock137Value0 recoveredBlock137Value1 |
    recoveredBlock137Value0 := recoveredBlock137Arg1.
    recoveredBlock137Value1 := (self) setRelError: (recoveredBlock137Value0).
    recoveredBlock137Value1
].
    (recoveredValue18) add: (recoveredValue19).
    ^self
! !

