"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000828; bytecode file offset 0x138bc"
!SciError methodsFor: 'recovered'!
errorCode
    | recoveredValue0 |
    recoveredValue0 := super errorCode.
    ^recoveredValue0
! !

"sci.ic method 0x20000a30; bytecode file offset 0x13ab4"
!SciError methodsFor: 'recovered'!
isSciError
    ^true
! !

"sci.ic method 0x200020e8; bytecode file offset 0x15178"
!SciError methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SciSocketErrorCodes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    'E???'
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20002198; bytecode file offset 0x1522c"
!SciError methodsFor: 'recovered'!
message
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    'Unknown error'
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002f98; bytecode file offset 0x16034"
!SciError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) identifier.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) errorCode.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := (' (') , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('): ').
    (recoveredValue3) nextPutAll: (recoveredValue7).
    recoveredValue8 := (self) message.
    (recoveredValue0) nextPutAll: (recoveredValue8).
    ^self
! !

