"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdol.ic method 0x200000a0; bytecode file offset 0x1cfc"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
licenseKey
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar15.
    ^recoveredXValue0
! !

"abtdol.ic method 0x200000b4; bytecode file offset 0x1d18"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
clientName
    ^nil
! !

"abtdol.ic method 0x20000160; bytecode file offset 0x1dbc"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
licenseKey: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar15 := recoveredXValue0.
    ^self
! !

"abtdol.ic method 0x200002b4; bytecode file offset 0x1f1c"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
getLicenseKey
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack0 := (recoveredXStack0) clientName.
            recoveredXPC := 5.
        ].
        recoveredXStep = 5 ifTrue: [
            (recoveredXStack0 ~~ nil) ifTrue: [recoveredXPC := 12] ifFalse: [recoveredXPC := 8].
        ].
        recoveredXStep = 8 ifTrue: [
            recoveredXStack0 := nil.
            recoveredXPC := 9.
        ].
        recoveredXStep = 9 ifTrue: [
            recoveredXPC := 17.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack0 := (Smalltalk at: #recoveredGlobal_8e998 ifAbsent: [nil]).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXStack1 := self.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) clientName.
            recoveredXPC := 16.
        ].
        recoveredXStep = 16 ifTrue: [
            recoveredXStack0 := (recoveredXStack0) getLicenseKey: (recoveredXStack1).
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            recoveredLegacyIvar15 := recoveredXStack0.
            recoveredXPC := 19.
        ].
        recoveredXStep = 19 ifTrue: [
            recoveredXStack0 := self.
            recoveredXPC := 20.
        ].
        recoveredXStep = 20 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

