"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20094390; bytecode file offset 0x990cac"
!StringConverter class methodsFor: 'recovered'!
buildValidANSICIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Replacements.
    recoveredValue2 := (self) buildValidANSICIdentifier: (recoveredValue0) replaceTable: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20386eb8; bytecode file offset 0xc83790"
!StringConverter class methodsFor: 'recovered'!
isValidANSICIdentifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVarName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) companyName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCIdentifier.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCIdentifier.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCIdentifier.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2046c914; bytecode file offset 0xd691ec"
!StringConverter class methodsFor: 'recovered'!
isValidAutosarIdentifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLetter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack3 := 64.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) > (recoveredBlock39Stack3).
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 56] ifFalse: [recoveredBlock39PC := 66].
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack3 := 91.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) < (recoveredBlock39Stack3).
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 117] ifFalse: [recoveredBlock39PC := 66].
        ].
        recoveredBlock39Step = 66 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 68.
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39Stack3 := 96.
            recoveredBlock39PC := 72.
        ].
        recoveredBlock39Step = 72 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) > (recoveredBlock39Stack3).
            recoveredBlock39PC := 73.
        ].
        recoveredBlock39Step = 73 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 76] ifFalse: [recoveredBlock39PC := 86].
        ].
        recoveredBlock39Step = 76 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Stack3 := 123.
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) < (recoveredBlock39Stack3).
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 117] ifFalse: [recoveredBlock39PC := 86].
        ].
        recoveredBlock39Step = 86 ifTrue: [
            recoveredBlock39PC := 87.
        ].
        recoveredBlock39Step = 87 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 88.
        ].
        recoveredBlock39Step = 88 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 89.
        ].
        recoveredBlock39Step = 89 ifTrue: [
            recoveredBlock39Stack3 := $_.
            recoveredBlock39PC := 92.
        ].
        recoveredBlock39Step = 92 ifTrue: [
            (recoveredBlock39Stack2 == recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 117] ifFalse: [recoveredBlock39PC := 96].
        ].
        recoveredBlock39Step = 96 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 97.
        ].
        recoveredBlock39Step = 97 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) isDigit.
            recoveredBlock39PC := 99.
        ].
        recoveredBlock39Step = 99 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 117] ifFalse: [recoveredBlock39PC := 102].
        ].
        recoveredBlock39Step = 102 ifTrue: [
            recoveredBlock39PC := 103.
        ].
        recoveredBlock39Step = 103 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 104.
        ].
        recoveredBlock39Step = 104 ifTrue: [
            recoveredBlock39Stack2 := SpecialChars.
            recoveredBlock39PC := 106.
        ].
        recoveredBlock39Step = 106 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 107.
        ].
        recoveredBlock39Step = 107 ifTrue: [
            recoveredBlock39Stack4 := [].
            recoveredBlock39PC := 109.
        ].
        recoveredBlock39Step = 109 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) indexOf: (recoveredBlock39Stack3) ifAbsent: (recoveredBlock39Stack4).
            recoveredBlock39PC := 111.
        ].
        recoveredBlock39Step = 111 ifTrue: [
            (recoveredBlock39Stack2 == nil) ifTrue: [recoveredBlock39PC := 117] ifFalse: [recoveredBlock39PC := 114].
        ].
        recoveredBlock39Step = 114 ifTrue: [
            recoveredBlock39PC := 115.
        ].
        recoveredBlock39Step = 115 ifTrue: [
            recoveredBlock39Stack1 := false.
            recoveredBlock39PC := 116.
        ].
        recoveredBlock39Step = 116 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 117 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049dff8; bytecode file offset 0xd9a90c"
!StringConverter class methodsFor: 'recovered'!
prepareTables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (15).
    Replacements := recoveredValue1.
    recoveredValue2 := Replacements.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (Character value: 223).
    (recoveredValue3) at: (recoveredValue4) put: ('ss').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (Character value: 228).
    (recoveredValue5) at: (recoveredValue6) put: ('ae').
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (Character value: 246).
    (recoveredValue7) at: (recoveredValue8) put: ('oe').
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (Character value: 252).
    (recoveredValue9) at: (recoveredValue10) put: ('ue').
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := (Character value: 196).
    (recoveredValue11) at: (recoveredValue12) put: ('Ae').
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := (Character value: 214).
    (recoveredValue13) at: (recoveredValue14) put: ('Oe').
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := (Character value: 220).
    (recoveredValue15) at: (recoveredValue16) put: ('Ue').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ($ ) put: ('_').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ($-) put: ('_').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ($.) put: ('_').
    (recoveredValue2) at: ($_) put: ('_').
    recoveredValue20 := EsString.
    recoveredValue21 := (recoveredValue20) keywordsAnsiC.
    recoveredValue22 := EsString.
    recoveredValue23 := (recoveredValue22) keywordsASD.
    recoveredValue24 := (recoveredValue21) , (recoveredValue23).
    recoveredValue25 := (recoveredValue24) asSet.
    Keywords := recoveredValue25.
    StandardChars := 'abcdefghijklmnoprstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_'.
    recoveredValue26 := (String new: 41) at: 1 put: (Character value: 196); at: 2 put: (Character value: 214); at: 3 put: (Character value: 220); at: 4 put: (Character value: 228); at: 5 put: (Character value: 246); at: 6 put: (Character value: 252); at: 7 put: (Character value: 223); at: 8 put: (Character value: 46); at: 9 put: (Character value: 92); at: 10 put: (Character value: 58); at: 11 put: (Character value: 94); at: 12 put: (Character value: 176); at: 13 put: (Character value: 33); at: 14 put: (Character value: 34); at: 15 put: (Character value: 167); at: 16 put: (Character value: 38); at: 17 put: (Character value: 47); at: 18 put: (Character value: 123); at: 19 put: (Character value: 40); at: 20 put: (Character value: 91); at: 21 put: (Character value: 41); at: 22 put: (Character value: 93); at: 23 put: (Character value: 61); at: 24 put: (Character value: 125); at: 25 put: (Character value: 63); at: 26 put: (Character value: 180); at: 27 put: (Character value: 96); at: 28 put: (Character value: 43); at: 29 put: (Character value: 64); at: 30 put: (Character value: 42); at: 31 put: (Character value: 126); at: 32 put: (Character value: 35); at: 33 put: (Character value: 62); at: 34 put: (Character value: 60); at: 35 put: (Character value: 124); at: 36 put: (Character value: 181); at: 37 put: (Character value: 59); at: 38 put: (Character value: 44); at: 39 put: (Character value: 32); at: 40 put: (Character value: 45); at: 41 put: (Character value: 37); yourself.
    recoveredValue27 := ($') asString.
    recoveredValue28 := (recoveredValue26) , (recoveredValue27).
    recoveredValue29 := (String new: 3) at: 1 put: (Character value: 36); at: 2 put: (Character value: 178); at: 3 put: (Character value: 179); yourself.
    recoveredValue30 := (recoveredValue28) , (recoveredValue29).
    SpecialChars := recoveredValue30.
    ^self
! !

"ASDBase.ic method 0x204b7680; bytecode file offset 0xdb3f58"
!StringConverter class methodsFor: 'recovered'!
isValidASAM2MCIdentifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLetter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack3 := 64.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) > (recoveredBlock39Stack3).
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 56] ifFalse: [recoveredBlock39PC := 66].
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack3 := 91.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) < (recoveredBlock39Stack3).
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 66].
        ].
        recoveredBlock39Step = 66 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 68.
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39Stack3 := 96.
            recoveredBlock39PC := 72.
        ].
        recoveredBlock39Step = 72 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) > (recoveredBlock39Stack3).
            recoveredBlock39PC := 73.
        ].
        recoveredBlock39Step = 73 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 76] ifFalse: [recoveredBlock39PC := 86].
        ].
        recoveredBlock39Step = 76 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) value.
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Stack3 := 123.
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) < (recoveredBlock39Stack3).
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 86].
        ].
        recoveredBlock39Step = 86 ifTrue: [
            recoveredBlock39PC := 87.
        ].
        recoveredBlock39Step = 87 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 88.
        ].
        recoveredBlock39Step = 88 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 89.
        ].
        recoveredBlock39Step = 89 ifTrue: [
            recoveredBlock39Stack3 := $_.
            recoveredBlock39PC := 92.
        ].
        recoveredBlock39Step = 92 ifTrue: [
            (recoveredBlock39Stack2 == recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 96].
        ].
        recoveredBlock39Step = 96 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 97.
        ].
        recoveredBlock39Step = 97 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) isDigit.
            recoveredBlock39PC := 99.
        ].
        recoveredBlock39Step = 99 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 102].
        ].
        recoveredBlock39Step = 102 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 103.
        ].
        recoveredBlock39Step = 103 ifTrue: [
            recoveredBlock39Stack3 := $..
            recoveredBlock39PC := 106.
        ].
        recoveredBlock39Step = 106 ifTrue: [
            (recoveredBlock39Stack2 == recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 110].
        ].
        recoveredBlock39Step = 110 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 111.
        ].
        recoveredBlock39Step = 111 ifTrue: [
            recoveredBlock39Stack3 := $[.
            recoveredBlock39PC := 114.
        ].
        recoveredBlock39Step = 114 ifTrue: [
            (recoveredBlock39Stack2 == recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 118].
        ].
        recoveredBlock39Step = 118 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 119.
        ].
        recoveredBlock39Step = 119 ifTrue: [
            recoveredBlock39Stack3 := $].
            recoveredBlock39PC := 122.
        ].
        recoveredBlock39Step = 122 ifTrue: [
            (recoveredBlock39Stack2 == recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 126].
        ].
        recoveredBlock39Step = 126 ifTrue: [
            recoveredBlock39PC := 127.
        ].
        recoveredBlock39Step = 127 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 128.
        ].
        recoveredBlock39Step = 128 ifTrue: [
            recoveredBlock39Stack2 := SpecialChars.
            recoveredBlock39PC := 130.
        ].
        recoveredBlock39Step = 130 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 131.
        ].
        recoveredBlock39Step = 131 ifTrue: [
            recoveredBlock39Stack4 := [].
            recoveredBlock39PC := 133.
        ].
        recoveredBlock39Step = 133 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) indexOf: (recoveredBlock39Stack3) ifAbsent: (recoveredBlock39Stack4).
            recoveredBlock39PC := 135.
        ].
        recoveredBlock39Step = 135 ifTrue: [
            (recoveredBlock39Stack2 == nil) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 138].
        ].
        recoveredBlock39Step = 138 ifTrue: [
            recoveredBlock39PC := 139.
        ].
        recoveredBlock39Step = 139 ifTrue: [
            recoveredBlock39Stack1 := false.
            recoveredBlock39PC := 140.
        ].
        recoveredBlock39Step = 140 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 141 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2055d3e0; bytecode file offset 0xe59cd8"
!StringConverter class methodsFor: 'recovered'!
buildValidANSICIdentifier: recoveredArg1 replaceTable: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isDigit.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 36] ifFalse: [recoveredBlock24PC := 70].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isEmpty.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 44] ifFalse: [recoveredBlock24PC := 56].
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack1 := '_'.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) copyWith: (recoveredBlock24Stack2).
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) copyWith: (recoveredBlock24Stack2).
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 63.
        ].
        recoveredBlock24Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24PC := 174.
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) includesKey: (recoveredBlock24Stack2).
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 80] ifFalse: [recoveredBlock24PC := 98].
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg2.
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) at: (recoveredBlock24Stack3).
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) , (recoveredBlock24Stack2).
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24PC := 174.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 99.
        ].
        recoveredBlock24Step = 99 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 100.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isLetter.
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 106] ifFalse: [recoveredBlock24PC := 174].
        ].
        recoveredBlock24Step = 106 ifTrue: [
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 108.
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) value.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack2 := 64.
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) > (recoveredBlock24Stack2).
            recoveredBlock24PC := 115.
        ].
        recoveredBlock24Step = 115 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 118] ifFalse: [recoveredBlock24PC := 128].
        ].
        recoveredBlock24Step = 118 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 119.
        ].
        recoveredBlock24Step = 119 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) value.
            recoveredBlock24PC := 121.
        ].
        recoveredBlock24Step = 121 ifTrue: [
            recoveredBlock24Stack2 := 91.
            recoveredBlock24PC := 124.
        ].
        recoveredBlock24Step = 124 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) < (recoveredBlock24Stack2).
            recoveredBlock24PC := 125.
        ].
        recoveredBlock24Step = 125 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 148] ifFalse: [recoveredBlock24PC := 128].
        ].
        recoveredBlock24Step = 128 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) value.
            recoveredBlock24PC := 131.
        ].
        recoveredBlock24Step = 131 ifTrue: [
            recoveredBlock24Stack2 := 96.
            recoveredBlock24PC := 134.
        ].
        recoveredBlock24Step = 134 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) > (recoveredBlock24Stack2).
            recoveredBlock24PC := 135.
        ].
        recoveredBlock24Step = 135 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 138] ifFalse: [recoveredBlock24PC := 162].
        ].
        recoveredBlock24Step = 138 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 139.
        ].
        recoveredBlock24Step = 139 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) value.
            recoveredBlock24PC := 141.
        ].
        recoveredBlock24Step = 141 ifTrue: [
            recoveredBlock24Stack2 := 123.
            recoveredBlock24PC := 144.
        ].
        recoveredBlock24Step = 144 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) < (recoveredBlock24Stack2).
            recoveredBlock24PC := 145.
        ].
        recoveredBlock24Step = 145 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 148] ifFalse: [recoveredBlock24PC := 162].
        ].
        recoveredBlock24Step = 148 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 151.
        ].
        recoveredBlock24Step = 151 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 152.
        ].
        recoveredBlock24Step = 152 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) copyWith: (recoveredBlock24Stack2).
            recoveredBlock24PC := 154.
        ].
        recoveredBlock24Step = 154 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 155.
        ].
        recoveredBlock24Step = 155 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 158.
        ].
        recoveredBlock24Step = 158 ifTrue: [
            recoveredBlock24PC := 174.
        ].
        recoveredBlock24Step = 162 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 165.
        ].
        recoveredBlock24Step = 165 ifTrue: [
            recoveredBlock24Stack2 := $_.
            recoveredBlock24PC := 168.
        ].
        recoveredBlock24Step = 168 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) copyWith: (recoveredBlock24Stack2).
            recoveredBlock24PC := 170.
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 171.
        ].
        recoveredBlock24Step = 171 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 174.
        ].
        recoveredBlock24Step = 174 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCIdentifier.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205819f8; bytecode file offset 0xe7e2f8"
!StringConverter class methodsFor: 'recovered'!
asCIdentifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := 64.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) > (recoveredBlock21Stack2).
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 38] ifFalse: [recoveredBlock21PC := 48].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := 91.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) < (recoveredBlock21Stack2).
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 68] ifFalse: [recoveredBlock21PC := 48].
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack2 := 96.
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) > (recoveredBlock21Stack2).
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 58] ifFalse: [recoveredBlock21PC := 78].
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack2 := 123.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) < (recoveredBlock21Stack2).
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 68] ifFalse: [recoveredBlock21PC := 78].
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) nextPut: (recoveredBlock21Stack2).
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21PC := 181.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 79.
        ].
        recoveredBlock21Step = 79 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredBlock21Stack2 := 47.
            recoveredBlock21PC := 83.
        ].
        recoveredBlock21Step = 83 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) > (recoveredBlock21Stack2).
            recoveredBlock21PC := 84.
        ].
        recoveredBlock21Step = 84 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 88] ifFalse: [recoveredBlock21PC := 108].
        ].
        recoveredBlock21Step = 88 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 89.
        ].
        recoveredBlock21Step = 89 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 91.
        ].
        recoveredBlock21Step = 91 ifTrue: [
            recoveredBlock21Stack2 := 58.
            recoveredBlock21PC := 93.
        ].
        recoveredBlock21Step = 93 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) < (recoveredBlock21Stack2).
            recoveredBlock21PC := 94.
        ].
        recoveredBlock21Step = 94 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 98] ifFalse: [recoveredBlock21PC := 108].
        ].
        recoveredBlock21Step = 98 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 101.
        ].
        recoveredBlock21Step = 101 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 102.
        ].
        recoveredBlock21Step = 102 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) nextPut: (recoveredBlock21Stack2).
            recoveredBlock21PC := 104.
        ].
        recoveredBlock21Step = 104 ifTrue: [
            recoveredBlock21PC := 181.
        ].
        recoveredBlock21Step = 108 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 109.
        ].
        recoveredBlock21Step = 109 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 111.
        ].
        recoveredBlock21Step = 111 ifTrue: [
            recoveredBlock21Stack2 := 95.
            recoveredBlock21PC := 114.
        ].
        recoveredBlock21Step = 114 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) = (recoveredBlock21Stack2).
            recoveredBlock21PC := 115.
        ].
        recoveredBlock21Step = 115 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 118] ifFalse: [recoveredBlock21PC := 130].
        ].
        recoveredBlock21Step = 118 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 121.
        ].
        recoveredBlock21Step = 121 ifTrue: [
            recoveredBlock21Stack2 := $_.
            recoveredBlock21PC := 124.
        ].
        recoveredBlock21Step = 124 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) nextPut: (recoveredBlock21Stack2).
            recoveredBlock21PC := 126.
        ].
        recoveredBlock21Step = 126 ifTrue: [
            recoveredBlock21PC := 181.
        ].
        recoveredBlock21Step = 130 ifTrue: [
            recoveredBlock21Stack1 := SpecialChars.
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 132 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 133.
        ].
        recoveredBlock21Step = 133 ifTrue: [
            recoveredBlock21Stack3 := [].
            recoveredBlock21PC := 135.
        ].
        recoveredBlock21Step = 135 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) indexOf: (recoveredBlock21Stack2) ifAbsent: (recoveredBlock21Stack3).
            recoveredBlock21PC := 137.
        ].
        recoveredBlock21Step = 137 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 140.
        ].
        recoveredBlock21Step = 140 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 143.
        ].
        recoveredBlock21Step = 143 ifTrue: [
            (recoveredBlock21Stack1 ~~ nil) ifTrue: [recoveredBlock21PC := 156] ifFalse: [recoveredBlock21PC := 146].
        ].
        recoveredBlock21Step = 146 ifTrue: [
            recoveredBlock21Stack1 := $Q.
            recoveredBlock21PC := 150.
        ].
        recoveredBlock21Step = 150 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 153.
        ].
        recoveredBlock21Step = 153 ifTrue: [
            recoveredBlock21PC := 166.
        ].
        recoveredBlock21Step = 156 ifTrue: [
            recoveredBlock21Stack1 := StandardChars.
            recoveredBlock21PC := 158.
        ].
        recoveredBlock21Step = 158 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal2.
            recoveredBlock21PC := 161.
        ].
        recoveredBlock21Step = 161 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 163.
        ].
        recoveredBlock21Step = 163 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 166.
        ].
        recoveredBlock21Step = 166 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 169.
        ].
        recoveredBlock21Step = 169 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 170.
        ].
        recoveredBlock21Step = 170 ifTrue: [
            recoveredBlock21Stack3 := $q.
            recoveredBlock21PC := 174.
        ].
        recoveredBlock21Step = 174 ifTrue: [
            (recoveredBlock21Stack2) nextPut: (recoveredBlock21Stack3).
            recoveredBlock21PC := 176.
        ].
        recoveredBlock21Step = 176 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal1.
            recoveredBlock21PC := 179.
        ].
        recoveredBlock21Step = 179 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) nextPut: (recoveredBlock21Stack2).
            recoveredBlock21PC := 181.
        ].
        recoveredBlock21Step = 181 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 47.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 58.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := 'qx'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := Keywords.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := 'qx'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

