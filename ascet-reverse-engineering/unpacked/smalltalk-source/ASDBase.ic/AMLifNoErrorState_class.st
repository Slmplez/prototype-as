"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d644; bytecode file offset 0x90a4b8"
!AMLifNoErrorState class methodsFor: 'recovered'!
and: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f67c; bytecode file offset 0x92209c"
!AMLifNoErrorState class methodsFor: 'recovered'!
stringRepresentation
    ^'ifNoError'
! !

"ASDBase.ic method 0x2002201c; bytecode file offset 0x92209c"
!AMLifNoErrorState class methodsFor: 'recovered'!
keyWord
    ^'useAMLifNoError'
! !

"ASDBase.ic method 0x201e8b7c; bytecode file offset 0xae5460"
!AMLifNoErrorState class methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280d7574Arg1 | 
    | block280d7574Value0 block280d7574Value1 |
    block280d7574Value0 := block280d7574Arg1.
    block280d7574Value1 := (block280d7574Value0) exitWith: (nil).
    block280d7574Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e8b98; bytecode file offset 0xae5460"
!AMLifNoErrorState class methodsFor: 'recovered'!
doNot: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280d7598Arg1 | 
    | block280d7598Value0 block280d7598Value1 |
    block280d7598Value0 := block280d7598Arg1.
    block280d7598Value1 := (block280d7598Value0) exitWith: (nil).
    block280d7598Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202c67a8; bytecode file offset 0xbc3080"
!AMLifNoErrorState class methodsFor: 'recovered'!
parseFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := Smalltalk.
    recoveredBlock4Value1 := [].
    recoveredBlock4Value2 := [:recoveredBlock4Block16Arg1 | 
    | recoveredBlock4Block16Value0 recoveredBlock4Block16Value1 recoveredBlock4Block16Value2 |
    recoveredBlock4Block16Value0 := recoveredBlock4Block16Arg1.
    recoveredBlock4Block16Value1 := recoveredArg1.
    recoveredBlock4Block16Value2 := (recoveredBlock4Block16Value0) createFromString: (recoveredBlock4Block16Value1).
    recoveredBlock4Block16Value2
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: ('AMLDeclaration') ifAbsent: (recoveredBlock4Value1) ifPresent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [:block280e5674Arg1 | 
    | block280e5674Value0 block280e5674Value1 |
    block280e5674Value0 := block280e5674Arg1.
    block280e5674Value1 := (block280e5674Value0) exitWith: (nil).
    block280e5674Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

