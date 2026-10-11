"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014178; bytecode file offset 0x912098"
!SGViewPaneController class methodsFor: 'recovered'!
Buffer
    | recoveredValue0 |
    recoveredValue0 := Buffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053e88; bytecode file offset 0x951190"
!SGViewPaneController class methodsFor: 'recovered'!
Buffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Buffer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2009c994; bytecode file offset 0x999628"
!SGViewPaneController class methodsFor: 'recovered'!
reinitBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) Buffer: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e5750; bytecode file offset 0x9e207c"
!SGViewPaneController class methodsFor: 'recovered'!
bufferDictionary
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) Buffer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) reinitBuffer.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) Buffer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

