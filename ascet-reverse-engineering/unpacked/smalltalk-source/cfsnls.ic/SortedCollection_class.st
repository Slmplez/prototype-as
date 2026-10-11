"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200117b0; bytecode file offset 0x34a1c"
!SortedCollection class methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17Stack8 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
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
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := 2.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) basicNew.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            (recoveredBlock17Stack1) size: (recoveredBlock17Stack2).
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack3 := 1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            (recoveredBlock17Stack1) sortBlock: (recoveredBlock17Stack2).
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack2 := Array.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) size.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local2.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack5 := 3.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) at: (recoveredBlock17Stack5).
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) - (recoveredBlock17Stack4).
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) + (1).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) new: (recoveredBlock17Stack3).
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack3 := 1.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local2.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local2.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack7 := 3.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) at: (recoveredBlock17Stack7).
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) replaceFrom: (recoveredBlock17Stack3) to: (recoveredBlock17Stack4) with: (recoveredBlock17Stack5) startingAt: (recoveredBlock17Stack6).
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            (recoveredBlock17Stack1) elements: (recoveredBlock17Stack2).
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            (recoveredBlock17Stack1) size: (recoveredBlock17Stack2).
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack2 := 3.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack2 := 5.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            (recoveredBlock17Stack1 ~~ recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 100] ifFalse: [recoveredBlock17PC := 92].
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17Stack2 := 4.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 96.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack1 := true.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            (recoveredBlock17Stack0) isSorted: (recoveredBlock17Stack1).
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal2.
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Local1 recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113Stack3 recoveredBlock113Stack4 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := [:block28004d24Arg1 :block28004d24Arg2 | 
    false
].
            recoveredBlock113PC := 122.
        ].
        recoveredBlock113Step = 122 ifTrue: [
            recoveredBlock113PC := 128.
        ].
        recoveredBlock113Step = 128 ifTrue: [
            recoveredBlock113Stack0 := (recoveredBlock113Stack0) sortBlock: (recoveredBlock113Stack1).
            recoveredBlock113PC := 130.
        ].
        recoveredBlock113Step = 130 ifTrue: [
            recoveredLocal2 := recoveredBlock113Stack0.
            recoveredBlock113PC := 133.
        ].
        recoveredBlock113Step = 133 ifTrue: [
            recoveredBlock113Stack0 := recoveredBlock113Arg1.
            recoveredBlock113PC := 134.
        ].
        recoveredBlock113Step = 134 ifTrue: [
            recoveredBlock113Stack1 := 3.
            recoveredBlock113PC := 136.
        ].
        recoveredBlock113Step = 136 ifTrue: [
            recoveredBlock113Stack0 := (recoveredBlock113Stack0) instVarAt: (recoveredBlock113Stack1).
            recoveredBlock113PC := 138.
        ].
        recoveredBlock113Step = 138 ifTrue: [
            recoveredLocal1 := recoveredBlock113Stack0.
            recoveredBlock113PC := 141.
        ].
        recoveredBlock113Step = 141 ifTrue: [
            recoveredBlock113Stack0 := recoveredBlock113Arg1.
            recoveredBlock113PC := 142.
        ].
        recoveredBlock113Step = 142 ifTrue: [
            recoveredBlock113Stack1 := 1.
            recoveredBlock113PC := 144.
        ].
        recoveredBlock113Step = 144 ifTrue: [
            recoveredBlock113Stack0 := (recoveredBlock113Stack0) instVarAt: (recoveredBlock113Stack1).
            recoveredBlock113PC := 146.
        ].
        recoveredBlock113Step = 146 ifTrue: [
            recoveredBlock113Stack0 := (recoveredBlock113Stack0) + (-1).
            recoveredBlock113PC := 147.
        ].
        recoveredBlock113Step = 147 ifTrue: [
            recoveredBlock113Local1 := recoveredBlock113Stack0.
            recoveredBlock113PC := 148.
        ].
        recoveredBlock113Step = 148 ifTrue: [
            recoveredBlock113Stack0 := recoveredBlock113Arg1.
            recoveredBlock113PC := 149.
        ].
        recoveredBlock113Step = 149 ifTrue: [
            recoveredBlock113Stack1 := 2.
            recoveredBlock113PC := 151.
        ].
        recoveredBlock113Step = 151 ifTrue: [
            recoveredBlock113Stack0 := (recoveredBlock113Stack0) instVarAt: (recoveredBlock113Stack1).
            recoveredBlock113PC := 153.
        ].
        recoveredBlock113Step = 153 ifTrue: [
            recoveredBlock113PC := 166.
        ].
        recoveredBlock113Step = 156 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal2.
            recoveredBlock113PC := 159.
        ].
        recoveredBlock113Step = 159 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal1.
            recoveredBlock113PC := 162.
        ].
        recoveredBlock113Step = 162 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Local1.
            recoveredBlock113PC := 163.
        ].
        recoveredBlock113Step = 163 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) at: (recoveredBlock113Stack3).
            recoveredBlock113PC := 164.
        ].
        recoveredBlock113Step = 164 ifTrue: [
            (recoveredBlock113Stack1) add: (recoveredBlock113Stack2).
            recoveredBlock113PC := 166.
        ].
        recoveredBlock113Step = 166 ifTrue: [
            (recoveredBlock113Stack0 isInteger and: [recoveredBlock113Local1 isInteger]) ifTrue: [(recoveredBlock113Local1 + 1 <= recoveredBlock113Stack0) ifTrue: [recoveredBlock113Local1 := recoveredBlock113Local1 + 1. recoveredBlock113PC := 156] ifFalse: [recoveredBlock113Local1 := nil. recoveredBlock113PC := 180]] ifFalse: [recoveredBlock113PC := 170].
        ].
        recoveredBlock113Step = 170 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Stack0.
            recoveredBlock113PC := 171.
        ].
        recoveredBlock113Step = 171 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Local1.
            recoveredBlock113PC := 172.
        ].
        recoveredBlock113Step = 172 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) + (1).
            recoveredBlock113PC := 173.
        ].
        recoveredBlock113Step = 173 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Stack2.
            recoveredBlock113PC := 174.
        ].
        recoveredBlock113Step = 174 ifTrue: [
            recoveredBlock113Local1 := recoveredBlock113Stack3.
            recoveredBlock113PC := 175.
        ].
        recoveredBlock113Step = 175 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) < (recoveredBlock113Stack2).
            recoveredBlock113PC := 176.
        ].
        recoveredBlock113Step = 176 ifTrue: [
            (recoveredBlock113Stack1) ifTrue: [recoveredBlock113PC := 178] ifFalse: [recoveredBlock113PC := 156].
        ].
        recoveredBlock113Step = 178 ifTrue: [
            recoveredBlock113Stack1 := nil.
            recoveredBlock113PC := 179.
        ].
        recoveredBlock113Step = 179 ifTrue: [
            recoveredBlock113Local1 := recoveredBlock113Stack1.
            recoveredBlock113PC := 180.
        ].
        recoveredBlock113Step = 180 ifTrue: [
            recoveredBlock113PC := 181.
        ].
        recoveredBlock113Step = 181 ifTrue: [
            recoveredBlock113Stack0 := recoveredLocal2.
            recoveredBlock113PC := 184.
        ].
        recoveredBlock113Step = 184 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack0.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

