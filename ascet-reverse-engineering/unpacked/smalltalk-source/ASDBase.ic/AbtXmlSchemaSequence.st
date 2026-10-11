"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200dc19c; bytecode file offset 0x9d8a98"
!AbtXmlSchemaSequence methodsFor: 'recovered'!
initializeObjectFor: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) deserializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) initializeObjectFor: (recoveredValue2) sequence: (self) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2049f9ec; bytecode file offset 0xd9c2d0"
!AbtXmlSchemaSequence methodsFor: 'recovered'!
matchesContents: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) position.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) elements.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) atEnd.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 26] ifFalse: [recoveredBlock12PC := 60].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isRequired.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 32] ifFalse: [recoveredBlock12PC := 56].
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) matchesContents: (recoveredBlock12Stack2).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 42] ifFalse: [recoveredBlock12PC := 46].
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := true.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            (recoveredBlock12Stack1) position: (recoveredBlock12Stack2).
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12PC := 129.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isContentContainer.
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 66] ifFalse: [recoveredBlock12PC := 76].
        ].
        recoveredBlock12Step = 66 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 67.
        ].
        recoveredBlock12Step = 67 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 70.
        ].
        recoveredBlock12Step = 70 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) matchesContents: (recoveredBlock12Stack2).
            recoveredBlock12PC := 72.
        ].
        recoveredBlock12Step = 72 ifTrue: [
            recoveredBlock12PC := 129.
        ].
        recoveredBlock12Step = 76 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 79.
        ].
        recoveredBlock12Step = 79 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) peek.
            recoveredBlock12PC := 81.
        ].
        recoveredBlock12Step = 81 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 84.
        ].
        recoveredBlock12Step = 84 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 87.
        ].
        recoveredBlock12Step = 87 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) type.
            recoveredBlock12PC := 89.
        ].
        recoveredBlock12Step = 89 ifTrue: [
            (recoveredBlock12Stack1 == nil) ifTrue: [recoveredBlock12PC := 112] ifFalse: [recoveredBlock12PC := 92].
        ].
        recoveredBlock12Step = 92 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 93.
        ].
        recoveredBlock12Step = 93 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 96.
        ].
        recoveredBlock12Step = 96 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) type.
            recoveredBlock12PC := 98.
        ].
        recoveredBlock12Step = 98 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) matches: (recoveredBlock12Stack2).
            recoveredBlock12PC := 100.
        ].
        recoveredBlock12Step = 100 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 104] ifFalse: [recoveredBlock12PC := 112].
        ].
        recoveredBlock12Step = 104 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 107.
        ].
        recoveredBlock12Step = 107 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) next.
            recoveredBlock12PC := 109.
        ].
        recoveredBlock12Step = 109 ifTrue: [
            recoveredBlock12PC := 129.
        ].
        recoveredBlock12Step = 112 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 113.
        ].
        recoveredBlock12Step = 113 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 114.
        ].
        recoveredBlock12Step = 114 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isRequired.
            recoveredBlock12PC := 115.
        ].
        recoveredBlock12Step = 115 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 118] ifFalse: [recoveredBlock12PC := 129].
        ].
        recoveredBlock12Step = 118 ifTrue: [
            recoveredBlock12PC := 119.
        ].
        recoveredBlock12Step = 119 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 122.
        ].
        recoveredBlock12Step = 122 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 125.
        ].
        recoveredBlock12Step = 125 ifTrue: [
            (recoveredBlock12Stack1) position: (recoveredBlock12Stack2).
            recoveredBlock12PC := 127.
        ].
        recoveredBlock12Step = 127 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 128.
        ].
        recoveredBlock12Step = 128 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 129 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) atEnd.
    ^recoveredValue5
! !

