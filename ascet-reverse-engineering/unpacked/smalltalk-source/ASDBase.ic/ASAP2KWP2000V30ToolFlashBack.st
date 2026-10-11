"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000aa00; bytecode file offset 0x908be4"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
copyFrame
    | recoveredValue0 |
    recoveredValue0 := (self) copyParameter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b500; bytecode file offset 0x947ec0"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
requestRoutineResults
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b808; bytecode file offset 0x948384"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
codedResult
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bd2c; bytecode file offset 0x94877c"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
startRoutine
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bf98; bytecode file offset 0x948b80"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
noOfRoutine
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082c90; bytecode file offset 0x97f5f0"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
getCodedResult: recoveredArg1
    (self) codedResult: (true).
    ^self
! !

"ASDBase.ic method 0x20082cfc; bytecode file offset 0x97f5f0"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
getStartRoutine: recoveredArg1
    (self) startRoutine: (true).
    ^self
! !

"ASDBase.ic method 0x20084c00; bytecode file offset 0x981ca4"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
copyFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) copyParameter: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4588; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
getNoOfRoutine: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) noOfRoutine: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a6224; bytecode file offset 0x9a2b84"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
requestRoutineResults: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6518; bytecode file offset 0x9a2f38"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
codedResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6818; bytecode file offset 0x9a32e0"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
startRoutine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6b84; bytecode file offset 0x9a3694"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
noOfRoutine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a9bc4; bytecode file offset 0x9a6780"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
putNoOfRoutineIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) noOfRoutine.
    (self) putIn: (recoveredValue0) integer: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6b24; bytecode file offset 0x9d3600"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putNoOfRoutineIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d9260; bytecode file offset 0x9d5b4c"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getNoOfRoutine: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parseStruct: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201012cc; bytecode file offset 0x9fdf08"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
putIn: recoveredArg1 requestRoutineResults: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestRoutineResults.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestRoutineResults.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201264a4; bytecode file offset 0xa22d68"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
getRequestRoutineResults: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASAP2KWP2000V30RequestRoutineResult.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) getFrom: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) requestRoutineResults: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2012fa80; bytecode file offset 0xa2c3a4"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
initialize
    super initialize.
    (self) codedResult: (false).
    (self) startRoutine: (false).
    ^self
! !

"ASDBase.ic method 0x20163a50; bytecode file offset 0xa605cc"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
putInBasic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201691b8; bytecode file offset 0xa65ac8"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
putIn: recoveredArg1 startRoutine: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) startRoutine.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201691f4; bytecode file offset 0xa65ac8"
!ASAP2KWP2000V30ToolFlashBack methodsFor: 'recovered'!
putIn: recoveredArg1 codedResult: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codedResult.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

