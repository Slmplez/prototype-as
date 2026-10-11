"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20209e88; bytecode file offset 0xb06760"
!SGIlIntegerSize8Bit class methodsFor: 'recovered'!
possibleTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PossibleTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := RBInt8Signed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := RBInt8Unsigned.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := RBInt16Signed.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := RBInt16Unsigned.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := RBInt32Signed.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack7 := RBInt32Unsigned.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            PossibleTypes := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := PossibleTypes.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

