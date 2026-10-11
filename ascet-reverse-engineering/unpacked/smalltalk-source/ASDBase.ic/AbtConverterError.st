"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ca30; bytecode file offset 0x969c04"
!AbtConverterError methodsFor: 'recovered'!
offendingInput
    | recoveredValue0 |
    recoveredValue0 := offendingInput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3840; bytecode file offset 0x9c058c"
!AbtConverterError methodsFor: 'recovered'!
offendingInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offendingInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015d350; bytecode file offset 0xa59c08"
!AbtConverterError methodsFor: 'recovered'!
direction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := direction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            direction := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := direction.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20164bfc; bytecode file offset 0xa614bc"
!AbtConverterError methodsFor: 'recovered'!
direction: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('displayToObject' 'objectToDisplay').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            direction := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284964; bytecode file offset 0xb8123c"
!AbtConverterError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: ('  conversion: ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) direction.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPutAll: ('  input: ''').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) offendingInput.
    recoveredValue7 := (recoveredValue6) convertToPrint.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) nextPut: ($').
    ^self
! !

