"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019934; bytecode file offset 0x92209c"
!ASAP2KWP2000V30ToolFlashBack class methodsFor: 'recovered'!
keyWord
    ^'TOOLFLASHBACK'
! !

"ASDBase.ic method 0x200b67b8; bytecode file offset 0x9b39ac"
!ASAP2KWP2000V30ToolFlashBack class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('requestRoutineResults' 'codedResult' 'startRoutine' 'noOfRoutine')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7434; bytecode file offset 0x9b3da0"
!ASAP2KWP2000V30ToolFlashBack class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2045ba80; bytecode file offset 0xd583a0"
!ASAP2KWP2000V30ToolFlashBack class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeKeyWords.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'RequestRoutineResults'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'getRequestRoutineResults:'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'CodedResult'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'getCodedResult:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'StartRoutine'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'getStartRoutine:'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'COPY_FRAME'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'getCopyParameter:'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'COPY_PARA'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'COPY_FRAME'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := 'putIn:copyParameter:'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 'RequestRoutineResults'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := 'putIn:requestRoutineResults:'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'StartRoutine'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := 'putIn:startRoutine:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 'CodedResult'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := 'putIn:codedResult:'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:block28100270Arg1 | 
    | block28100270Value0 block28100270Value1 block28100270Value2 |
    block28100270Value0 := block28100270Arg1.
    block28100270Value1 := (block28100270Value0) key.
    block28100270Value2 := (block28100270Value1) = ('COPY_PARA').
    block28100270Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

