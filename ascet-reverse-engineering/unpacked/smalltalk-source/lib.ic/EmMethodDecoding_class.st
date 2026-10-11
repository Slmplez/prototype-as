"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000088; bytecode file offset 0x3c0a8"
!EmMethodDecoding class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMgsES
    ^self
! !

"lib.ic method 0x20003940; bytecode file offset 0x3f96c"
!EmMethodDecoding class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatEMgsES.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20005f84; bytecode file offset 0x41fb8"
!EmMethodDecoding class methodsFor: 'recovered'!
raiseDecodeExceptionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) decodeErrorException.
    recoveredValue1 := (self) decodeErrorException.
    recoveredValue2 := (recoveredValue1) description.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue2) bindWith: (recoveredValue4).
    (recoveredValue0) signalWith: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000a2dc; bytecode file offset 0x46318"
!EmMethodDecoding class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) globalNamespace.
    recoveredValue3 := [
    ^self
].
    recoveredValue4 := (recoveredValue2) classAt: ('EmMethodEdition') ifAbsent: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) decoder: (nil).
    (recoveredValue4) useLinker: (false).
    ^self
! !

"lib.ic method 0x2000a850; bytecode file offset 0x4688c"
!EmMethodDecoding class methodsFor: 'recovered'!
decodeErrorException
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DecodeErrorException.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            DecodeErrorException := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := DecodeErrorException.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := NlsCatEMgsES.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'MxEMgsES1'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := DecodeErrorException.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000c764; bytecode file offset 0x487ac"
!EmMethodDecoding class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) localize.
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) globalNamespace.
    recoveredValue3 := [
    ^self
].
    recoveredValue4 := (recoveredValue2) classAt: ('EmMethodEdition') ifAbsent: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := EmMethodDecoder.
    recoveredValue7 := (recoveredValue6) new.
    (recoveredValue5) decoder: (recoveredValue7).
    (recoveredValue4) useLinker: (true).
    ^self
! !

