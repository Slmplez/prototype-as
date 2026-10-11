"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aa570; bytecode file offset 0x9a6e3c"
!DBIdentityHashDictionary methodsFor: 'recovered'!
hashIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) basicHash.
    recoveredValue2 := (self) basicSize.
    recoveredValue3 := (recoveredValue1) \\ (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20410e8c; bytecode file offset 0xd0d74c"
!DBIdentityHashDictionary methodsFor: 'recovered'!
includesKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hashIndex: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 22].
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2 == recoveredBlock11Stack3) ifTrue: [recoveredBlock11PC := 43] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            (recoveredBlock11Stack2 ~~ recoveredBlock11Stack3) ifTrue: [recoveredBlock11PC := 43] ifFalse: [recoveredBlock11PC := 40].
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := true.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) basicSize.
    (recoveredValue2) apply: (self) from: (recoveredValue3) to: (recoveredValue4).
    recoveredValue5 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            (recoveredBlock53Stack1 ~~ nil) ifTrue: [recoveredBlock53PC := 66] ifFalse: [recoveredBlock53PC := 64].
        ].
        recoveredBlock53Step = 64 ifTrue: [
            recoveredBlock53Stack1 := false.
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            ^recoveredBlock53Stack1
        ].
        recoveredBlock53Step = 66 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 68.
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack3 := self.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            (recoveredBlock53Stack2 == recoveredBlock53Stack3) ifTrue: [recoveredBlock53PC := 85] ifFalse: [recoveredBlock53PC := 72].
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53PC := 73.
        ].
        recoveredBlock53Step = 73 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack3 := recoveredArg1.
            recoveredBlock53PC := 78.
        ].
        recoveredBlock53Step = 78 ifTrue: [
            (recoveredBlock53Stack2 ~~ recoveredBlock53Stack3) ifTrue: [recoveredBlock53PC := 85] ifFalse: [recoveredBlock53PC := 82].
        ].
        recoveredBlock53Step = 82 ifTrue: [
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            recoveredBlock53Stack1 := true.
            recoveredBlock53PC := 84.
        ].
        recoveredBlock53Step = 84 ifTrue: [
            ^recoveredBlock53Stack1
        ].
        recoveredBlock53Step = 85 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) + (-1).
    (recoveredValue5) apply: (self) from: (1) to: (recoveredValue7).
    ^false
! !

"ASDBase.ic method 0x20413128; bytecode file offset 0xd0f9e8"
!DBIdentityHashDictionary methodsFor: 'recovered'!
returnIfAbsent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 51]] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 60] ifFalse: [recoveredLocal1 := nil. recoveredPC := 95]] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20424c1c; bytecode file offset 0xd214e0"
!DBIdentityHashDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifPresent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 53]] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 62] ifFalse: [recoveredLocal1 := nil. recoveredPC := 99]] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20428d9c; bytecode file offset 0xd25660"
!DBIdentityHashDictionary methodsFor: 'recovered'!
return: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 53]] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 62] ifFalse: [recoveredLocal1 := nil. recoveredPC := 99]] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204488a0; bytecode file offset 0xd45168"
!DBIdentityHashDictionary methodsFor: 'recovered'!
return: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 56]] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 66] ifFalse: [recoveredLocal1 := nil. recoveredPC := 106]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20503dc4; bytecode file offset 0xe00694"
!DBIdentityHashDictionary methodsFor: 'recovered'!
at: recoveredArg1 putObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicSize.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 89]] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicSize.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 98] ifFalse: [recoveredLocal1 := nil. recoveredPC := 171]] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'Not enough room'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059b398; bytecode file offset 0xe97c70"
!DBIdentityHashDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'cannot add an imp. set to itself'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicSize.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 126]] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 193] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicSize.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 136] ifFalse: [recoveredLocal1 := nil. recoveredPC := 234]] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 245] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := 'Not enough room'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := elementCount.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            elementCount := recoveredStack0.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := elementCount.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicSize.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 285].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) expand.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a3d60; bytecode file offset 0xea063c"
!DBIdentityHashDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2 ifPresent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'cannot add an imp. set to itself'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashIndex: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicSize.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 130]] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicSize.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 140] ifFalse: [recoveredLocal1 := nil. recoveredPC := 242]] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 253] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := 'Not enough room'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := elementCount.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            elementCount := recoveredStack0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := elementCount.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicSize.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 293].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) expand.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

