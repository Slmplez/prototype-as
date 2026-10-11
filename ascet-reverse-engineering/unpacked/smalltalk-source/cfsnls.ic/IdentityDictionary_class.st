"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20010c9c; bytecode file offset 0x33ef4"
!IdentityDictionary class methodsFor: 'recovered'!
mutateObjects: recoveredArg1 fromPlatform: recoveredArg2 named: recoveredArg3 withDefinition: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Local4 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Local4 := recoveredBlock17Stack1.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local4.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new: (recoveredBlock17Stack1).
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack0.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local4.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack1 := 2.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) at: (recoveredBlock17Stack1).
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) + (-1).
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local4.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) size.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local4.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack2.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 72] ifFalse: [recoveredBlock17PC := 60].
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local4.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            (recoveredBlock17Stack1 == recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 72] ifFalse: [recoveredBlock17PC := 66].
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            (recoveredBlock17Stack0 isInteger and: [recoveredBlock17Local1 isInteger]) ifTrue: [(recoveredBlock17Local1 + 1 <= recoveredBlock17Stack0) ifTrue: [recoveredBlock17Local1 := recoveredBlock17Local1 + 1. recoveredBlock17PC := 52] ifFalse: [recoveredBlock17Local1 := nil. recoveredBlock17PC := 86]] ifFalse: [recoveredBlock17PC := 76].
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) + (1).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack3.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) < (recoveredBlock17Stack2).
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 84] ifFalse: [recoveredBlock17PC := 52].
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal3.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 recoveredBlock97Value3 recoveredBlock97Value4 recoveredBlock97Value5 recoveredBlock97Value6 |
    recoveredBlock97Value0 := (self) new.
    recoveredLocal3 := recoveredBlock97Value0.
    recoveredBlock97Value1 := recoveredBlock97Arg1.
    recoveredBlock97Value2 := (recoveredBlock97Value1) instVarAt: (2).
    recoveredLocal2 := recoveredBlock97Value2.
    recoveredBlock97Value3 := recoveredLocal2.
    recoveredBlock97Value4 := (recoveredBlock97Value3) size.
    recoveredBlock97Value5 := [:recoveredBlock97Block125Arg1 | 
    | recoveredBlock97Block125Stack0 recoveredBlock97Block125Stack1 recoveredBlock97Block125Stack2 recoveredBlock97Block125Stack3 recoveredBlock97Block125Stack4 recoveredBlock97Block125Stack5 recoveredBlock97Block125PC recoveredBlock97Block125Step recoveredBlock97Block125Done recoveredBlock97Block125Result |
    recoveredBlock97Block125Stack0 := nil.
    recoveredBlock97Block125PC := 132.
    recoveredBlock97Block125Done := false.
    [recoveredBlock97Block125Done not] whileTrue: [
        recoveredBlock97Block125Step := recoveredBlock97Block125PC.
        recoveredBlock97Block125Step = 132 ifTrue: [
            recoveredBlock97Block125Stack1 := nil.
            recoveredBlock97Block125PC := 133.
        ].
        recoveredBlock97Block125Step = 133 ifTrue: [
            recoveredBlock97Block125Stack2 := recoveredLocal2.
            recoveredBlock97Block125PC := 136.
        ].
        recoveredBlock97Block125Step = 136 ifTrue: [
            recoveredBlock97Block125Stack3 := recoveredBlock97Block125Arg1.
            recoveredBlock97Block125PC := 137.
        ].
        recoveredBlock97Block125Step = 137 ifTrue: [
            recoveredBlock97Block125Stack2 := (recoveredBlock97Block125Stack2) at: (recoveredBlock97Block125Stack3).
            recoveredBlock97Block125PC := 138.
        ].
        recoveredBlock97Block125Step = 138 ifTrue: [
            recoveredBlock97Block125Stack3 := recoveredBlock97Block125Stack2.
            recoveredBlock97Block125PC := 139.
        ].
        recoveredBlock97Block125Step = 139 ifTrue: [
            recoveredLocal1 := recoveredBlock97Block125Stack3.
            recoveredBlock97Block125PC := 142.
        ].
        recoveredBlock97Block125Step = 142 ifTrue: [
            (recoveredBlock97Block125Stack2 == nil) ifTrue: [recoveredBlock97Block125PC := 161] ifFalse: [recoveredBlock97Block125PC := 146].
        ].
        recoveredBlock97Block125Step = 146 ifTrue: [
            recoveredBlock97Block125PC := 147.
        ].
        recoveredBlock97Block125Step = 147 ifTrue: [
            recoveredBlock97Block125Stack1 := recoveredLocal3.
            recoveredBlock97Block125PC := 150.
        ].
        recoveredBlock97Block125Step = 150 ifTrue: [
            recoveredBlock97Block125Stack2 := recoveredLocal1.
            recoveredBlock97Block125PC := 153.
        ].
        recoveredBlock97Block125Step = 153 ifTrue: [
            recoveredBlock97Block125Stack3 := recoveredLocal2.
            recoveredBlock97Block125PC := 156.
        ].
        recoveredBlock97Block125Step = 156 ifTrue: [
            recoveredBlock97Block125Stack4 := recoveredBlock97Block125Arg1.
            recoveredBlock97Block125PC := 157.
        ].
        recoveredBlock97Block125Step = 157 ifTrue: [
            recoveredBlock97Block125Stack4 := (recoveredBlock97Block125Stack4) + (1).
            recoveredBlock97Block125PC := 158.
        ].
        recoveredBlock97Block125Step = 158 ifTrue: [
            recoveredBlock97Block125Stack3 := (recoveredBlock97Block125Stack3) at: (recoveredBlock97Block125Stack4).
            recoveredBlock97Block125PC := 159.
        ].
        recoveredBlock97Block125Step = 159 ifTrue: [
            recoveredBlock97Block125Stack1 := (recoveredBlock97Block125Stack1) at: (recoveredBlock97Block125Stack2) put: (recoveredBlock97Block125Stack3).
            recoveredBlock97Block125PC := 161.
        ].
        recoveredBlock97Block125Step = 161 ifTrue: [
            recoveredBlock97Block125Result := recoveredBlock97Block125Stack1.
            recoveredBlock97Block125Done := true.
        ].
    ].
    recoveredBlock97Block125Result
].
    (1) to: (recoveredBlock97Value4) by: (2) do: (recoveredBlock97Value5).
    recoveredBlock97Value6 := recoveredLocal3.
    recoveredBlock97Value6
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

