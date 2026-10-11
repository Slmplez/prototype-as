"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066394; bytecode file offset 0x963428"
!ASDBuildResultContext methodsFor: 'recovered'!
sourceObject
    | recoveredValue0 |
    recoveredValue0 := sourceObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200916b0; bytecode file offset 0x98e0cc"
!ASDBuildResultContext methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200be53c; bytecode file offset 0x9bb178"
!ASDBuildResultContext methodsFor: 'recovered'!
sourceObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20129368; bytecode file offset 0xa25c54"
!ASDBuildResultContext methodsFor: 'recovered'!
userFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userFiles.
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
            userFiles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := userFiles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129690; bytecode file offset 0xa25f5c"
!ASDBuildResultContext methodsFor: 'recovered'!
userFileNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userFileNames.
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
            userFileNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := userFileNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202014c0; bytecode file offset 0xafdd88"
!ASDBuildResultContext methodsFor: 'recovered'!
userFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    userFiles := recoveredValue0.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    userFileNames := recoveredValue2.
    recoveredValue3 := userFiles.
    recoveredValue4 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := userFileNames.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) fileName.
    recoveredBlock14Value3 := recoveredBlock14Arg2.
    recoveredBlock14Value4 := (recoveredBlock14Value0) at: (recoveredBlock14Value2) put: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    ^self
! !

