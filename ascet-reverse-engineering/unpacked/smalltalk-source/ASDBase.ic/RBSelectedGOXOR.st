"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20177fe8; bytecode file offset 0xa7490c"
!RBSelectedGOXOR methodsFor: 'recovered'!
displaySensitivePointObjectsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sensitivePointObjects.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) displayOn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201aa640; bytecode file offset 0xaa6f24"
!RBSelectedGOXOR methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitivePointObjects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d35c0Arg1 | 
    | block280d35c0Value0 block280d35c0Value1 block280d35c0Value2 |
    block280d35c0Value0 := block280d35c0Arg1.
    block280d35c0Value1 := GXhighlight.
    block280d35c0Value2 := (block280d35c0Value0) mixingRule: (block280d35c0Value1).
    block280d35c0Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

