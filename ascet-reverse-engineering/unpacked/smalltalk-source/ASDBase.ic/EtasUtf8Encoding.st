"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204d41d8; bytecode file offset 0xdd0ac8"
!EtasUtf8Encoding methodsFor: 'recovered'!
createFileStreamOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := codePage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 65001.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := EsLeadEncodedBytes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) utf8FileMark.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) utf8FileMark.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) utf8FileMark.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) asDBString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeCCommentAndWhiteSpacesFromDBReturnStream: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := codePage.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86Stack4 recoveredBlock86Stack5 recoveredBlock86Stack6 recoveredBlock86Stack7 recoveredBlock86Stack8 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := EsLeadEncodedBytes.
            recoveredBlock86PC := 94.
        ].
        recoveredBlock86Step = 94 ifTrue: [
            recoveredBlock86Stack2 := recoveredLocal1.
            recoveredBlock86PC := 97.
        ].
        recoveredBlock86Step = 97 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) isEncoded: (recoveredBlock86Stack2).
            recoveredBlock86PC := 99.
        ].
        recoveredBlock86Step = 99 ifTrue: [
            (recoveredBlock86Stack1) ifTrue: [recoveredBlock86PC := 102] ifFalse: [recoveredBlock86PC := 138].
        ].
        recoveredBlock86Step = 102 ifTrue: [
            recoveredBlock86Stack1 := RBBcrtl32DLL.
            recoveredBlock86PC := 104.
        ].
        recoveredBlock86Step = 104 ifTrue: [
            recoveredBlock86Stack2 := EsLeadEncodedBytes.
            recoveredBlock86PC := 106.
        ].
        recoveredBlock86Step = 106 ifTrue: [
            recoveredBlock86Stack3 := recoveredLocal1.
            recoveredBlock86PC := 109.
        ].
        recoveredBlock86Step = 109 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) size.
            recoveredBlock86PC := 110.
        ].
        recoveredBlock86Step = 110 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) new: (recoveredBlock86Stack3).
            recoveredBlock86PC := 112.
        ].
        recoveredBlock86Step = 112 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Stack2.
            recoveredBlock86PC := 113.
        ].
        recoveredBlock86Step = 113 ifTrue: [
            recoveredBlock86Stack4 := 1.
            recoveredBlock86PC := 115.
        ].
        recoveredBlock86Step = 115 ifTrue: [
            recoveredBlock86Stack5 := recoveredLocal1.
            recoveredBlock86PC := 118.
        ].
        recoveredBlock86Step = 118 ifTrue: [
            recoveredBlock86Stack5 := (recoveredBlock86Stack5) size.
            recoveredBlock86PC := 119.
        ].
        recoveredBlock86Step = 119 ifTrue: [
            recoveredBlock86Stack6 := recoveredLocal1.
            recoveredBlock86PC := 122.
        ].
        recoveredBlock86Step = 122 ifTrue: [
            recoveredBlock86Stack7 := 1.
            recoveredBlock86PC := 124.
        ].
        recoveredBlock86Step = 124 ifTrue: [
            (recoveredBlock86Stack3) replaceFrom: (recoveredBlock86Stack4) to: (recoveredBlock86Stack5) with: (recoveredBlock86Stack6) startingAt: (recoveredBlock86Stack7).
            recoveredBlock86PC := 127.
        ].
        recoveredBlock86Step = 127 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) asString.
            recoveredBlock86PC := 129.
        ].
        recoveredBlock86Step = 129 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) removeCCommentAndWhiteSpacesFromDBReturnStream: (recoveredBlock86Stack2).
            recoveredBlock86PC := 131.
        ].
        recoveredBlock86Step = 131 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 132.
        ].
        recoveredBlock86Step = 132 ifTrue: [
            recoveredLocal1 := recoveredBlock86Stack2.
            recoveredBlock86PC := 135.
        ].
        recoveredBlock86Step = 135 ifTrue: [
            recoveredBlock86PC := 150.
        ].
        recoveredBlock86Step = 138 ifTrue: [
            recoveredBlock86Stack1 := self.
            recoveredBlock86PC := 139.
        ].
        recoveredBlock86Step = 139 ifTrue: [
            recoveredBlock86Stack2 := recoveredLocal1.
            recoveredBlock86PC := 142.
        ].
        recoveredBlock86Step = 142 ifTrue: [
            recoveredBlock86Stack1 := super createFileStreamOn: (recoveredBlock86Stack2).
            recoveredBlock86PC := 146.
        ].
        recoveredBlock86Step = 146 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 147.
        ].
        recoveredBlock86Step = 147 ifTrue: [
            recoveredLocal1 := recoveredBlock86Stack2.
            recoveredBlock86PC := 150.
        ].
        recoveredBlock86Step = 150 ifTrue: [
            recoveredBlock86Result := recoveredBlock86Stack1.
            recoveredBlock86Done := true.
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) in: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

