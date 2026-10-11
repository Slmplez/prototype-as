"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdol.ic method 0x20000144; bytecode file offset 0x1da8"
!AbtOleControlObject methodsFor: 'recovered'!
releaseObject
    (self) releaseObjectInterfaces.
    (self) releaseInterfaces.
    ^self
! !

"abtdol.ic method 0x20000268; bytecode file offset 0x1ed0"
!AbtOleControlObject methodsFor: 'recovered'!
initializeObject
    | recoveredXLocal1 recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack0 := (recoveredXStack0) connectNotificationSinks.
            recoveredXPC := 5.
        ].
        recoveredXStep = 5 ifTrue: [
            (recoveredXStack0) ifTrue: [recoveredXPC := 10] ifFalse: [recoveredXPC := 8].
        ].
        recoveredXStep = 8 ifTrue: [
            recoveredXStack0 := false.
            recoveredXPC := 9.
        ].
        recoveredXStep = 9 ifTrue: [
            ^recoveredXStack0
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack0 := self.
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredXStack1 := self.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) lcid.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredXStack0 := (recoveredXStack0) createAutomationObject: (recoveredXStack1).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredLegacyIvar31 := recoveredXStack0.
            recoveredXPC := 16.
        ].
        recoveredXStep = 16 ifTrue: [
            recoveredXStack0 := true.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

