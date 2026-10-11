"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2020ccec; bytecode file offset 0xb095b0"
!AbtXmlOrderedGroup methodsFor: 'recovered'!
abtIsRequired
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) required.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) abtIsRequired.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 27].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := true.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042b764; bytecode file offset 0xd2804c"
!AbtXmlOrderedGroup methodsFor: 'recovered'!
checkSyntax: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := false.
    recoveredValue0 := (self) contents.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) checkSyntax: (recoveredBlock9Stack2).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 52].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isRepeatable.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 49].
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) atEnd.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 49] ifFalse: [recoveredBlock9PC := 42].
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) checkSyntax: (recoveredBlock9Stack2).
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 49].
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) required.
            recoveredBlock9PC := 55.
        ].
        recoveredBlock9Step = 55 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 58] ifFalse: [recoveredBlock9PC := 85].
        ].
        recoveredBlock9Step = 58 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isTagReference.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 64] ifFalse: [recoveredBlock9PC := 85].
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isRequired.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 70] ifFalse: [recoveredBlock9PC := 85].
        ].
        recoveredBlock9Step = 70 ifTrue: [
            recoveredBlock9Stack1 := SgmlSyntaxError.
            recoveredBlock9PC := 72.
        ].
        recoveredBlock9Step = 72 ifTrue: [
            recoveredBlock9Stack2 := 'TagRequired'.
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9Stack3 := '%1 is required '.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Arg1.
            recoveredBlock9PC := 77.
        ].
        recoveredBlock9Step = 77 ifTrue: [
            recoveredBlock9Stack4 := (recoveredBlock9Stack4) contents.
            recoveredBlock9PC := 78.
        ].
        recoveredBlock9Step = 78 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) code: (recoveredBlock9Stack2) text: (recoveredBlock9Stack3) with: (recoveredBlock9Stack4).
            recoveredBlock9PC := 81.
        ].
        recoveredBlock9Step = 81 ifTrue: [
            (recoveredBlock9Stack1) signalException.
            recoveredBlock9PC := 83.
        ].
        recoveredBlock9Step = 83 ifTrue: [
            recoveredBlock9Stack1 := false.
            recoveredBlock9PC := 84.
        ].
        recoveredBlock9Step = 84 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 85 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 86.
        ].
        recoveredBlock9Step = 86 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 89 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) atEnd.
            recoveredBlock9PC := 90.
        ].
        recoveredBlock9Step = 90 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 94] ifFalse: [recoveredBlock9PC := 97].
        ].
        recoveredBlock9Step = 94 ifTrue: [
            recoveredBlock9PC := 95.
        ].
        recoveredBlock9Step = 95 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 96.
        ].
        recoveredBlock9Step = 96 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 97 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204c6d0c; bytecode file offset 0xdc35e4"
!AbtXmlOrderedGroup methodsFor: 'recovered'!
finalSyntaxCheck: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) finalSyntaxCheck: (recoveredBlock9Stack2).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 52].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isRepeatable.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 49].
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) atEnd.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 49] ifFalse: [recoveredBlock9PC := 42].
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) finalSyntaxCheck: (recoveredBlock9Stack2).
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 49].
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9PC := 66.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) required.
            recoveredBlock9PC := 55.
        ].
        recoveredBlock9Step = 55 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 58] ifFalse: [recoveredBlock9PC := 66].
        ].
        recoveredBlock9Step = 58 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) abtIsRequired.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 64] ifFalse: [recoveredBlock9PC := 66].
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack1 := false.
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 66 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 70.
        ].
        recoveredBlock9Step = 70 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) atEnd.
            recoveredBlock9PC := 71.
        ].
        recoveredBlock9Step = 71 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 74] ifFalse: [recoveredBlock9PC := 119].
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9PC := 75.
        ].
        recoveredBlock9Step = 75 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg2.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) + (1).
            recoveredBlock9PC := 77.
        ].
        recoveredBlock9Step = 77 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) + (-1).
            recoveredBlock9PC := 78.
        ].
        recoveredBlock9Step = 78 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 79.
        ].
        recoveredBlock9Step = 79 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 80.
        ].
        recoveredBlock9Step = 80 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) contents.
            recoveredBlock9PC := 81.
        ].
        recoveredBlock9Step = 81 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) size.
            recoveredBlock9PC := 83.
        ].
        recoveredBlock9Step = 83 ifTrue: [
            recoveredBlock9PC := 102.
        ].
        recoveredBlock9Step = 86 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 87.
        ].
        recoveredBlock9Step = 87 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) contents.
            recoveredBlock9PC := 88.
        ].
        recoveredBlock9Step = 88 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local2.
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 89 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) at: (recoveredBlock9Stack3).
            recoveredBlock9PC := 91.
        ].
        recoveredBlock9Step = 91 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Stack2.
            recoveredBlock9PC := 92.
        ].
        recoveredBlock9Step = 92 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack3.
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) abtIsRequired.
            recoveredBlock9PC := 95.
        ].
        recoveredBlock9Step = 95 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 98] ifFalse: [recoveredBlock9PC := 100].
        ].
        recoveredBlock9Step = 98 ifTrue: [
            recoveredBlock9Stack2 := false.
            recoveredBlock9PC := 99.
        ].
        recoveredBlock9Step = 99 ifTrue: [
            ^recoveredBlock9Stack2
        ].
        recoveredBlock9Step = 100 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 101.
        ].
        recoveredBlock9Step = 101 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 102.
        ].
        recoveredBlock9Step = 102 ifTrue: [
            (recoveredBlock9Stack1 isInteger and: [recoveredBlock9Local2 isInteger]) ifTrue: [(recoveredBlock9Local2 + 1 <= recoveredBlock9Stack1) ifTrue: [recoveredBlock9Local2 := recoveredBlock9Local2 + 1. recoveredBlock9PC := 86] ifFalse: [recoveredBlock9Local2 := nil. recoveredBlock9PC := 116]] ifFalse: [recoveredBlock9PC := 106].
        ].
        recoveredBlock9Step = 106 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 107.
        ].
        recoveredBlock9Step = 107 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local2.
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 108 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) + (1).
            recoveredBlock9PC := 109.
        ].
        recoveredBlock9Step = 109 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Stack3.
            recoveredBlock9PC := 110.
        ].
        recoveredBlock9Step = 110 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack4.
            recoveredBlock9PC := 111.
        ].
        recoveredBlock9Step = 111 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) < (recoveredBlock9Stack3).
            recoveredBlock9PC := 112.
        ].
        recoveredBlock9Step = 112 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 114] ifFalse: [recoveredBlock9PC := 86].
        ].
        recoveredBlock9Step = 114 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 115.
        ].
        recoveredBlock9Step = 115 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack2.
            recoveredBlock9PC := 116.
        ].
        recoveredBlock9Step = 116 ifTrue: [
            recoveredBlock9PC := 117.
        ].
        recoveredBlock9Step = 117 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 118.
        ].
        recoveredBlock9Step = 118 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 119 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRepeatable.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) finalSyntaxCheck: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

