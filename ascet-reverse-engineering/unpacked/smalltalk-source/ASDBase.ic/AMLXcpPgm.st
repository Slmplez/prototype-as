"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20162c60; bytecode file offset 0xa5f67c"
!AMLXcpPgm methodsFor: 'recovered'!
enum1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162eb8; bytecode file offset 0xa5f7e4"
!AMLXcpPgm methodsFor: 'recovered'!
uChar2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (2) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162fd0; bytecode file offset 0xa5f8ac"
!AMLXcpPgm methodsFor: 'recovered'!
uChar3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (3) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20163058; bytecode file offset 0xa5f964"
!AMLXcpPgm methodsFor: 'recovered'!
taggedStruct4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (4) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202ced50; bytecode file offset 0xbcb624"
!AMLXcpPgm methodsFor: 'recovered'!
taggedStruct4COMMUNICATIONMODESUPPORTED
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcptaggedStruct4COMMUNICATIONMODESUPPORTED2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := aml.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [:block280e5e78Arg1 | 
    | block280e5e78Value0 block280e5e78Value1 block280e5e78Value2 |
    block280e5e78Value0 := block280e5e78Arg1.
    block280e5e78Value1 := (block280e5e78Value0) name.
    block280e5e78Value2 := (block280e5e78Value1) = ('COMMUNICATION_MODE_SUPPORTED').
    block280e5e78Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f49f0; bytecode file offset 0xbf12c8"
!AMLXcpPgm methodsFor: 'recovered'!
taggedStruct4SECTOR
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultReturn: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280e88a8Arg1 | 
    | block280e88a8Value0 block280e88a8Value1 block280e88a8Value2 |
    block280e88a8Value0 := AMLXcptaggedStruct4SECTOR1.
    block280e88a8Value1 := block280e88a8Arg1.
    block280e88a8Value2 := (block280e88a8Value0) createFor: (block280e88a8Value1).
    block280e88a8Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033ab0c; bytecode file offset 0xc373ec"
!AMLXcpPgm methodsFor: 'recovered'!
taggedStruct4Col1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block280ed6fcArg1 | 
    | block280ed6fcStack0 block280ed6fcStack1 block280ed6fcStack2 block280ed6fcStack3 block280ed6fcPC block280ed6fcStep block280ed6fcDone block280ed6fcResult |
    block280ed6fcStack0 := self.
    block280ed6fcPC := 4.
    block280ed6fcDone := false.
    [block280ed6fcDone not] whileTrue: [
        block280ed6fcStep := block280ed6fcPC.
        block280ed6fcStep = 4 ifTrue: [
            block280ed6fcStack1 := block280ed6fcArg1.
            block280ed6fcPC := 5.
        ].
        block280ed6fcStep = 5 ifTrue: [
            block280ed6fcStack2 := [:block280ed720Arg1 | 
    | block280ed720Value0 block280ed720Value1 block280ed720Value2 |
    block280ed720Value0 := AMLXcptaggedStruct4SECTOR1.
    block280ed720Value1 := block280ed720Arg1.
    block280ed720Value2 := (block280ed720Value0) createFor: (block280ed720Value1).
    block280ed720Value2
].
            block280ed6fcPC := 7.
        ].
        block280ed6fcStep = 7 ifTrue: [
            block280ed6fcPC := 16.
        ].
        block280ed6fcStep = 16 ifTrue: [
            block280ed6fcStack1 := (block280ed6fcStack1) collect: (block280ed6fcStack2).
            block280ed6fcPC := 18.
        ].
        block280ed6fcStep = 18 ifTrue: [
            block280ed6fcResult := block280ed6fcStack1.
            block280ed6fcDone := true.
        ].
    ].
    block280ed6fcResult
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultReturn: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

