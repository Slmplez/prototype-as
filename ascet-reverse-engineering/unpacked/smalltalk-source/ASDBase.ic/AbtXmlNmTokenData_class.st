"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2039e494; bytecode file offset 0xc9ad78"
!AbtXmlNmTokenData class methodsFor: 'recovered'!
abtValidateAttributeValue: recoveredArg1 forHandler: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrAsString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isLetter.
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 71] ifFalse: [recoveredBlock27PC := 40].
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isDigit.
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 71] ifFalse: [recoveredBlock27PC := 46].
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27Stack2 := #($_ $: $- $.).
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) includes: (recoveredBlock27Stack3).
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 71] ifFalse: [recoveredBlock27PC := 54].
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Stack1 := SgmlSyntaxError.
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack2 := 'InvalidAttributeValue'.
            recoveredBlock27PC := 59.
        ].
        recoveredBlock27Step = 59 ifTrue: [
            recoveredBlock27Stack3 := '%1 is not a valid attribute value'.
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            recoveredBlock27Stack4 := recoveredArg1.
            recoveredBlock27PC := 64.
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) code: (recoveredBlock27Stack2) text: (recoveredBlock27Stack3) with: (recoveredBlock27Stack4).
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            (recoveredBlock27Stack1) signalException.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27Stack1 := false.
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

