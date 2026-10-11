"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200124cc; bytecode file offset 0x35728"
!OrderedCollection class methodsFor: 'recovered'!
mutateObjects: recoveredArg1 fromPlatform: recoveredArg2 named: recoveredArg3 withDefinition: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ES'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17Stack8 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := 3.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local3.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack3 := 2.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) < (recoveredBlock17Stack2).
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 42] ifFalse: [recoveredBlock17PC := 98].
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack2 := 3.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local3.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) size.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack3 := 3.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) - (recoveredBlock17Stack3).
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local3.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack4 := 2.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) at: (recoveredBlock17Stack4).
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) - (recoveredBlock17Stack3).
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack3.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) + (recoveredBlock17Stack2).
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new: (recoveredBlock17Stack2).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) elements.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack3 := 1.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local3.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local3.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack7 := 2.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) at: (recoveredBlock17Stack7).
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack7 := 4.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) + (recoveredBlock17Stack7).
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            (recoveredBlock17Stack2) replaceFrom: (recoveredBlock17Stack3) to: (recoveredBlock17Stack4) with: (recoveredBlock17Stack5) startingAt: (recoveredBlock17Stack6).
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) + (1).
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local3.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack5 := 4.
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            (recoveredBlock17Stack1) replaceFrom: (recoveredBlock17Stack2) to: (recoveredBlock17Stack3) with: (recoveredBlock17Stack4) startingAt: (recoveredBlock17Stack5).
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17PC := 133.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack2 := 3.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 102.
        ].
        recoveredBlock17Step = 102 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local3.
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack3 := 2.
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) - (recoveredBlock17Stack2).
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 110.
        ].
        recoveredBlock17Step = 110 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new: (recoveredBlock17Stack2).
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) elements.
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 122.
        ].
        recoveredBlock17Step = 122 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local3.
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local3.
            recoveredBlock17PC := 124.
        ].
        recoveredBlock17Step = 124 ifTrue: [
            recoveredBlock17Stack6 := 2.
            recoveredBlock17PC := 126.
        ].
        recoveredBlock17Step = 126 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) at: (recoveredBlock17Stack6).
            recoveredBlock17PC := 127.
        ].
        recoveredBlock17Step = 127 ifTrue: [
            recoveredBlock17Stack6 := 4.
            recoveredBlock17PC := 129.
        ].
        recoveredBlock17Step = 129 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) + (recoveredBlock17Stack6).
            recoveredBlock17PC := 130.
        ].
        recoveredBlock17Step = 130 ifTrue: [
            (recoveredBlock17Stack1) replaceFrom: (recoveredBlock17Stack2) to: (recoveredBlock17Stack3) with: (recoveredBlock17Stack4) startingAt: (recoveredBlock17Stack5).
            recoveredBlock17PC := 133.
        ].
        recoveredBlock17Step = 133 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 136.
        ].
        recoveredBlock17Step = 136 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 137.
        ].
        recoveredBlock17Step = 137 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 138.
        ].
        recoveredBlock17Step = 138 ifTrue: [
            (recoveredBlock17Stack2) lastIndex: (recoveredBlock17Stack3).
            recoveredBlock17PC := 140.
        ].
        recoveredBlock17Step = 140 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Local1 recoveredBlock147Stack0 recoveredBlock147Stack1 recoveredBlock147Stack2 recoveredBlock147Stack3 recoveredBlock147Stack4 recoveredBlock147PC recoveredBlock147Step recoveredBlock147Done recoveredBlock147Result |
    recoveredBlock147Stack0 := self.
    recoveredBlock147PC := 154.
    recoveredBlock147Done := false.
    [recoveredBlock147Done not] whileTrue: [
        recoveredBlock147Step := recoveredBlock147PC.
        recoveredBlock147Step = 154 ifTrue: [
            recoveredBlock147Stack0 := (recoveredBlock147Stack0) new.
            recoveredBlock147PC := 156.
        ].
        recoveredBlock147Step = 156 ifTrue: [
            recoveredLocal2 := recoveredBlock147Stack0.
            recoveredBlock147PC := 159.
        ].
        recoveredBlock147Step = 159 ifTrue: [
            recoveredBlock147Stack0 := recoveredBlock147Arg1.
            recoveredBlock147PC := 160.
        ].
        recoveredBlock147Step = 160 ifTrue: [
            recoveredBlock147Stack1 := 3.
            recoveredBlock147PC := 162.
        ].
        recoveredBlock147Step = 162 ifTrue: [
            recoveredBlock147Stack0 := (recoveredBlock147Stack0) instVarAt: (recoveredBlock147Stack1).
            recoveredBlock147PC := 164.
        ].
        recoveredBlock147Step = 164 ifTrue: [
            recoveredLocal1 := recoveredBlock147Stack0.
            recoveredBlock147PC := 167.
        ].
        recoveredBlock147Step = 167 ifTrue: [
            recoveredBlock147Stack0 := recoveredBlock147Arg1.
            recoveredBlock147PC := 168.
        ].
        recoveredBlock147Step = 168 ifTrue: [
            recoveredBlock147Stack1 := 1.
            recoveredBlock147PC := 170.
        ].
        recoveredBlock147Step = 170 ifTrue: [
            recoveredBlock147Stack0 := (recoveredBlock147Stack0) instVarAt: (recoveredBlock147Stack1).
            recoveredBlock147PC := 172.
        ].
        recoveredBlock147Step = 172 ifTrue: [
            recoveredBlock147Stack0 := (recoveredBlock147Stack0) + (-1).
            recoveredBlock147PC := 173.
        ].
        recoveredBlock147Step = 173 ifTrue: [
            recoveredBlock147Local1 := recoveredBlock147Stack0.
            recoveredBlock147PC := 174.
        ].
        recoveredBlock147Step = 174 ifTrue: [
            recoveredBlock147Stack0 := recoveredBlock147Arg1.
            recoveredBlock147PC := 175.
        ].
        recoveredBlock147Step = 175 ifTrue: [
            recoveredBlock147Stack1 := 2.
            recoveredBlock147PC := 177.
        ].
        recoveredBlock147Step = 177 ifTrue: [
            recoveredBlock147Stack0 := (recoveredBlock147Stack0) instVarAt: (recoveredBlock147Stack1).
            recoveredBlock147PC := 179.
        ].
        recoveredBlock147Step = 179 ifTrue: [
            recoveredBlock147PC := 192.
        ].
        recoveredBlock147Step = 182 ifTrue: [
            recoveredBlock147Stack1 := recoveredLocal2.
            recoveredBlock147PC := 185.
        ].
        recoveredBlock147Step = 185 ifTrue: [
            recoveredBlock147Stack2 := recoveredLocal1.
            recoveredBlock147PC := 188.
        ].
        recoveredBlock147Step = 188 ifTrue: [
            recoveredBlock147Stack3 := recoveredBlock147Local1.
            recoveredBlock147PC := 189.
        ].
        recoveredBlock147Step = 189 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) at: (recoveredBlock147Stack3).
            recoveredBlock147PC := 190.
        ].
        recoveredBlock147Step = 190 ifTrue: [
            (recoveredBlock147Stack1) add: (recoveredBlock147Stack2).
            recoveredBlock147PC := 192.
        ].
        recoveredBlock147Step = 192 ifTrue: [
            (recoveredBlock147Stack0 isInteger and: [recoveredBlock147Local1 isInteger]) ifTrue: [(recoveredBlock147Local1 + 1 <= recoveredBlock147Stack0) ifTrue: [recoveredBlock147Local1 := recoveredBlock147Local1 + 1. recoveredBlock147PC := 182] ifFalse: [recoveredBlock147Local1 := nil. recoveredBlock147PC := 206]] ifFalse: [recoveredBlock147PC := 196].
        ].
        recoveredBlock147Step = 196 ifTrue: [
            recoveredBlock147Stack1 := recoveredBlock147Stack0.
            recoveredBlock147PC := 197.
        ].
        recoveredBlock147Step = 197 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Local1.
            recoveredBlock147PC := 198.
        ].
        recoveredBlock147Step = 198 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) + (1).
            recoveredBlock147PC := 199.
        ].
        recoveredBlock147Step = 199 ifTrue: [
            recoveredBlock147Stack3 := recoveredBlock147Stack2.
            recoveredBlock147PC := 200.
        ].
        recoveredBlock147Step = 200 ifTrue: [
            recoveredBlock147Local1 := recoveredBlock147Stack3.
            recoveredBlock147PC := 201.
        ].
        recoveredBlock147Step = 201 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) < (recoveredBlock147Stack2).
            recoveredBlock147PC := 202.
        ].
        recoveredBlock147Step = 202 ifTrue: [
            (recoveredBlock147Stack1) ifTrue: [recoveredBlock147PC := 204] ifFalse: [recoveredBlock147PC := 182].
        ].
        recoveredBlock147Step = 204 ifTrue: [
            recoveredBlock147Stack1 := nil.
            recoveredBlock147PC := 205.
        ].
        recoveredBlock147Step = 205 ifTrue: [
            recoveredBlock147Local1 := recoveredBlock147Stack1.
            recoveredBlock147PC := 206.
        ].
        recoveredBlock147Step = 206 ifTrue: [
            recoveredBlock147PC := 207.
        ].
        recoveredBlock147Step = 207 ifTrue: [
            recoveredBlock147Stack0 := recoveredLocal2.
            recoveredBlock147PC := 210.
        ].
        recoveredBlock147Step = 210 ifTrue: [
            recoveredBlock147Result := recoveredBlock147Stack0.
            recoveredBlock147Done := true.
        ].
    ].
    recoveredBlock147Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

