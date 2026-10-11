"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20062d98; bytecode file offset 0x95f8b0"
!EtasPathTokenFileOption methodsFor: 'recovered'!
currentFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (self) pathTokens.
    recoveredValue2 := (recoveredValue0) asFilename: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7344; bytecode file offset 0x9c3c10"
!EtasPathTokenFileOption methodsFor: 'recovered'!
pathTokenField: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pathTokenField := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2014df3c; bytecode file offset 0xa4a7fc"
!EtasPathTokenFileOption methodsFor: 'recovered'!
pathTokens
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pathTokenField.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super pathTokens.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := pathTokenField.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

