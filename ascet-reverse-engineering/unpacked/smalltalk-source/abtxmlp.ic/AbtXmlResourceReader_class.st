"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x2000089c; bytecode file offset 0x19084"
!AbtXmlResourceReader class methodsFor: 'recovered'!
reset
    recoveredLegacyIvar15 := nil.
    ^self
! !

"abtxmlp.ic method 0x2000362c; bytecode file offset 0x1be18"
!AbtXmlResourceReader class methodsFor: 'recovered'!
current
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar15.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 14] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := self.
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) new.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredLegacyIvar15 := recoveredXStack1.
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar15.
            recoveredXPC := 16.
        ].
        recoveredXStep = 16 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

