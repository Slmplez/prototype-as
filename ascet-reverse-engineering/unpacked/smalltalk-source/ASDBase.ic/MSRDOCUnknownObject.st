"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065fc4; bytecode file offset 0x963428"
!MSRDOCUnknownObject methodsFor: 'recovered'!
beginKeyWord
    | recoveredValue0 |
    recoveredValue0 := beginKeyWord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006713c; bytecode file offset 0x9646f8"
!MSRDOCUnknownObject methodsFor: 'recovered'!
endKeyWord
    | recoveredValue0 |
    recoveredValue0 := endKeyWord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bde64; bytecode file offset 0x9bb178"
!MSRDOCUnknownObject methodsFor: 'recovered'!
beginKeyWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    beginKeyWord := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9a0; bytecode file offset 0x9bc0b4"
!MSRDOCUnknownObject methodsFor: 'recovered'!
endKeyWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endKeyWord := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20268868; bytecode file offset 0xb6514c"
!MSRDOCUnknownObject methodsFor: 'recovered'!
upToEndKeyWord: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWord.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getEndKeyWord.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

