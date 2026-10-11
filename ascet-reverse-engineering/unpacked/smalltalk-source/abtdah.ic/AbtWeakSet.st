"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000ad8; bytecode file offset 0x10b00"
!AbtWeakSet methodsFor: 'recovered'!
owner
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar4.
    ^recoveredXValue0
! !

"abtdah.ic method 0x20000aec; bytecode file offset 0x10b1c"
!AbtWeakSet methodsFor: 'recovered'!
finalizeAction
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar5.
    ^recoveredXValue0
! !

"abtdah.ic method 0x20001a50; bytecode file offset 0x11a80"
!AbtWeakSet methodsFor: 'recovered'!
owner: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar4 := recoveredXValue0.
    ^self
! !

"abtdah.ic method 0x20001a6c; bytecode file offset 0x11aa4"
!AbtWeakSet methodsFor: 'recovered'!
finalizeAction: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar5 := recoveredXValue0.
    ^self
! !

"abtdah.ic method 0x20003640; bytecode file offset 0x13674"
!AbtWeakSet methodsFor: 'recovered'!
finalizedSlot: recoveredXArg1 removedObject: recoveredXArg2
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredXArg1.
            recoveredXPC := 5.
        ].
        recoveredXStep = 5 ifTrue: [
            recoveredXStack2 := recoveredXArg2.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            super finalizedSlot: (recoveredXStack1) removedObject: (recoveredXStack2).
            recoveredXPC := 10.
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack0 := recoveredLegacyIvar5.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            (recoveredXStack0 == nil) ifTrue: [recoveredXPC := 23] ifFalse: [recoveredXPC := 16].
        ].
        recoveredXStep = 16 ifTrue: [
            recoveredXStack0 := recoveredLegacyIvar4.
            recoveredXPC := 18.
        ].
        recoveredXStep = 18 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar5.
            recoveredXPC := 20.
        ].
        recoveredXStep = 20 ifTrue: [
            recoveredXStack2 := recoveredXArg2.
            recoveredXPC := 21.
        ].
        recoveredXStep = 21 ifTrue: [
            (recoveredXStack0) perform: (recoveredXStack1) with: (recoveredXStack2).
            recoveredXPC := 23.
        ].
        recoveredXStep = 23 ifTrue: [
            recoveredXStack0 := self.
            recoveredXPC := 24.
        ].
        recoveredXStep = 24 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

