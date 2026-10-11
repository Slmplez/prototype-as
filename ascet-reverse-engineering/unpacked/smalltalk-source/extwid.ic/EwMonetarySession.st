"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20005b14; bytecode file offset 0x568e4"
!EwMonetarySession methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asScaledDecimal.
    recoveredValue2 := super value: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x2002ea38; bytecode file offset 0x7f820"
!EwMonetarySession methodsFor: 'recovered'!
buildNumber: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) format.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) decimalChar.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack1 ~~ recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 40] ifFalse: [recoveredBlock21PC := 36].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack1 := false.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isDigit.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 46] ifFalse: [recoveredBlock21PC := 94].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 54] ifFalse: [recoveredBlock21PC := 70].
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack2 := 10.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) * (recoveredBlock21Stack2).
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) digitValue.
            recoveredBlock21PC := 62.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) + (recoveredBlock21Stack2).
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredLocal3 := recoveredBlock21Stack2.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21PC := 94.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 73.
        ].
        recoveredBlock21Step = 73 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) digitValue.
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal1.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) / (recoveredBlock21Stack3).
            recoveredBlock21PC := 80.
        ].
        recoveredBlock21Step = 80 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) + (recoveredBlock21Stack2).
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredLocal3 := recoveredBlock21Stack1.
            recoveredBlock21PC := 84.
        ].
        recoveredBlock21Step = 84 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack2 := 10.
            recoveredBlock21PC := 89.
        ].
        recoveredBlock21Step = 89 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) * (recoveredBlock21Stack2).
            recoveredBlock21PC := 90.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 91.
        ].
        recoveredBlock21Step = 91 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 94.
        ].
        recoveredBlock21Step = 94 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) negative.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

