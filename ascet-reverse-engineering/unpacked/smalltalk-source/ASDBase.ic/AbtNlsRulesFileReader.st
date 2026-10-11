"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2033dc3c; bytecode file offset 0xc3a51c"
!AbtNlsRulesFileReader methodsFor: 'recovered'!
nlsFileParseParms: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) subStrings.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) first.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack3 := $:.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 55] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := ReadStream.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) on: (recoveredBlock14Stack2).
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack3 := $=.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) upTo: (recoveredBlock14Stack3).
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) asLowercase.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) upToEnd.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20349634; bytecode file offset 0xc45f10"
!AbtNlsRulesFileReader methodsFor: 'recovered'!
abtParseLocaleString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := AbtNlsKrnCfsLocaleElementCount.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) skipSeparators.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := $-.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) upTo: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimBlanks.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 60]] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037f2f4; bytecode file offset 0xc7bbb4"
!AbtNlsRulesFileReader methodsFor: 'recovered'!
hexToInt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := 16.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) * (recoveredBlock12Stack2).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isDigit.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 36] ifFalse: [recoveredBlock12PC := 48].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack3 := $0.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) value.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) - (recoveredBlock12Stack3).
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack3 := $a.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) value.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) - (recoveredBlock12Stack3).
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack3 := 10.
            recoveredBlock12PC := 58.
        ].
        recoveredBlock12Step = 58 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (recoveredBlock12Stack3).
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) + (recoveredBlock12Stack2).
            recoveredBlock12PC := 60.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 64.
        ].
        recoveredBlock12Step = 64 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2051aac0; bytecode file offset 0xe173e4"
!AbtNlsRulesFileReader methodsFor: 'recovered'!
processSingleLocaleLine: recoveredArg1 nlsManager: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractQuotedStringFrom: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractTokenFrom: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtParseLocaleString: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := AbtNlsKrnCfsLocaleMappingKeyTemplate.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupLocaleMappingChar: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := MsgBaseNlsCoordMultLocaleMappings.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMRI: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) logWith: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) localeMappingCharacters.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Stack0 recoveredBlock129Stack1 recoveredBlock129Stack2 recoveredBlock129Stack3 recoveredBlock129Stack4 recoveredBlock129PC recoveredBlock129Step recoveredBlock129Done recoveredBlock129Result |
    recoveredBlock129Stack0 := self.
    recoveredBlock129PC := 136.
    recoveredBlock129Done := false.
    [recoveredBlock129Done not] whileTrue: [
        recoveredBlock129Step := recoveredBlock129PC.
        recoveredBlock129Step = 136 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 137.
        ].
        recoveredBlock129Step = 137 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 138.
        ].
        recoveredBlock129Step = 138 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) value.
            recoveredBlock129PC := 140.
        ].
        recoveredBlock129Step = 140 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) last.
            recoveredBlock129PC := 142.
        ].
        recoveredBlock129Step = 142 ifTrue: [
            recoveredBlock129Stack3 := recoveredLocal4.
            recoveredBlock129PC := 145.
        ].
        recoveredBlock129Step = 145 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) = (recoveredBlock129Stack3).
            recoveredBlock129PC := 146.
        ].
        recoveredBlock129Step = 146 ifTrue: [
            (recoveredBlock129Stack2) ifTrue: [recoveredBlock129PC := 150] ifFalse: [recoveredBlock129PC := 161].
        ].
        recoveredBlock129Step = 150 ifTrue: [
            recoveredBlock129PC := 151.
        ].
        recoveredBlock129Step = 151 ifTrue: [
            recoveredBlock129Stack1 := self.
            recoveredBlock129PC := 152.
        ].
        recoveredBlock129Step = 152 ifTrue: [
            recoveredBlock129Stack2 := MsgBaseNlsCoordUsesOfLocaleChar.
            recoveredBlock129PC := 154.
        ].
        recoveredBlock129Step = 154 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) getMRI: (recoveredBlock129Stack2).
            recoveredBlock129PC := 156.
        ].
        recoveredBlock129Step = 156 ifTrue: [
            recoveredBlock129Stack2 := recoveredLocal4.
            recoveredBlock129PC := 159.
        ].
        recoveredBlock129Step = 159 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) logWith: (recoveredBlock129Stack2).
            recoveredBlock129PC := 161.
        ].
        recoveredBlock129Step = 161 ifTrue: [
            recoveredBlock129Result := recoveredBlock129Stack1.
            recoveredBlock129Done := true.
        ].
    ].
    recoveredBlock129Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) localeMappingCharacters.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20625998; bytecode file offset 0xf222f4"
!AbtNlsRulesFileReader methodsFor: 'recovered'!
readNlsFile: recoveredArg1 translatorManager: recoveredArg2 nlsManager: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFileSpec.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) resetState.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) localeMappingCharacters: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := AbtNlsKrnCfsXlateTableSize.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := Character.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 64] ifFalse: [recoveredPC := 111]] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Local1 recoveredBlock121Local2 recoveredBlock121Local3 recoveredBlock121Local4 recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 recoveredBlock121Value3 recoveredBlock121Value4 |
    recoveredBlock121Local1 := nil.
    recoveredBlock121Local2 := nil.
    recoveredBlock121Local3 := nil.
    recoveredBlock121Local4 := nil.
    recoveredBlock121Value0 := AbtStreamLineReader.
    recoveredBlock121Value1 := recoveredBlock121Arg1.
    recoveredBlock121Value2 := (recoveredBlock121Value0) on: (recoveredBlock121Value1).
    recoveredBlock121Value3 := [:recoveredBlock121Block151Arg1 | 
    | recoveredBlock121Block151Local1 recoveredBlock121Block151Local2 recoveredBlock121Block151Local3 recoveredBlock121Block151Local4 recoveredBlock121Block151Stack0 recoveredBlock121Block151Stack1 recoveredBlock121Block151Stack2 recoveredBlock121Block151Stack3 recoveredBlock121Block151Stack4 recoveredBlock121Block151Stack5 recoveredBlock121Block151Stack6 recoveredBlock121Block151Stack7 recoveredBlock121Block151PC recoveredBlock121Block151Step recoveredBlock121Block151Done recoveredBlock121Block151Result |
    recoveredBlock121Block151Stack0 := self.
    recoveredBlock121Block151PC := 158.
    recoveredBlock121Block151Done := false.
    [recoveredBlock121Block151Done not] whileTrue: [
        recoveredBlock121Block151Step := recoveredBlock121Block151PC.
        recoveredBlock121Block151Step = 158 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Arg1.
            recoveredBlock121Block151PC := 160.
        ].
        recoveredBlock121Block151Step = 160 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) trimSeparators.
            recoveredBlock121Block151PC := 162.
        ].
        recoveredBlock121Block151Step = 162 ifTrue: [
            recoveredBlock121Block151Local4 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 163.
        ].
        recoveredBlock121Block151Step = 163 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 164.
        ].
        recoveredBlock121Block151Step = 164 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local4.
            recoveredBlock121Block151PC := 165.
        ].
        recoveredBlock121Block151Step = 165 ifTrue: [
            recoveredBlock121Block151Stack2 := (recoveredBlock121Block151Stack2) notEmpty.
            recoveredBlock121Block151PC := 167.
        ].
        recoveredBlock121Block151Step = 167 ifTrue: [
            (recoveredBlock121Block151Stack2) ifTrue: [recoveredBlock121Block151PC := 170] ifFalse: [recoveredBlock121Block151PC := 179].
        ].
        recoveredBlock121Block151Step = 170 ifTrue: [
            recoveredBlock121Block151PC := 171.
        ].
        recoveredBlock121Block151Step = 171 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local4.
            recoveredBlock121Block151PC := 172.
        ].
        recoveredBlock121Block151Step = 172 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) first.
            recoveredBlock121Block151PC := 174.
        ].
        recoveredBlock121Block151Step = 174 ifTrue: [
            recoveredBlock121Block151Stack2 := $*.
            recoveredBlock121Block151PC := 178.
        ].
        recoveredBlock121Block151Step = 178 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) ~= (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 179.
        ].
        recoveredBlock121Block151Step = 179 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 180.
        ].
        recoveredBlock121Block151Step = 180 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 181.
        ].
        recoveredBlock121Block151Step = 181 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 184] ifFalse: [recoveredBlock121Block151PC := 188].
        ].
        recoveredBlock121Block151Step = 184 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local4.
            recoveredBlock121Block151PC := 185.
        ].
        recoveredBlock121Block151Step = 185 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) asLowercase.
            recoveredBlock121Block151PC := 187.
        ].
        recoveredBlock121Block151Step = 187 ifTrue: [
            recoveredBlock121Block151Local3 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 188.
        ].
        recoveredBlock121Block151Step = 188 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 189.
        ].
        recoveredBlock121Block151Step = 189 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 192] ifFalse: [recoveredBlock121Block151PC := 252].
        ].
        recoveredBlock121Block151Step = 192 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 193.
        ].
        recoveredBlock121Block151Step = 193 ifTrue: [
            recoveredBlock121Block151Stack2 := ':alias'.
            recoveredBlock121Block151PC := 195.
        ].
        recoveredBlock121Block151Step = 195 ifTrue: [
            recoveredBlock121Block151Stack3 := 1.
            recoveredBlock121Block151PC := 197.
        ].
        recoveredBlock121Block151Step = 197 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) indexOfSubCollection: (recoveredBlock121Block151Stack2) startingAt: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 199.
        ].
        recoveredBlock121Block151Step = 199 ifTrue: [
            recoveredBlock121Block151Stack2 := 1.
            recoveredBlock121Block151PC := 201.
        ].
        recoveredBlock121Block151Step = 201 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) = (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 202.
        ].
        recoveredBlock121Block151Step = 202 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 206] ifFalse: [recoveredBlock121Block151PC := 252].
        ].
        recoveredBlock121Block151Step = 206 ifTrue: [
            recoveredBlock121Block151Stack1 := self.
            recoveredBlock121Block151PC := 207.
        ].
        recoveredBlock121Block151Step = 207 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 208.
        ].
        recoveredBlock121Block151Step = 208 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) nlsFileParseParms: (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 210.
        ].
        recoveredBlock121Block151Step = 210 ifTrue: [
            recoveredBlock121Block151Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 211.
        ].
        recoveredBlock121Block151Step = 211 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredArg2.
            recoveredBlock121Block151PC := 214.
        ].
        recoveredBlock121Block151Step = 214 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local1.
            recoveredBlock121Block151PC := 215.
        ].
        recoveredBlock121Block151Step = 215 ifTrue: [
            recoveredBlock121Block151Stack3 := 'alias'.
            recoveredBlock121Block151PC := 217.
        ].
        recoveredBlock121Block151Step = 217 ifTrue: [
            recoveredBlock121Block151Stack4 := [
    | recoveredBlock121Block151Block217Value0 |
    recoveredBlock121Block151Block217Value0 := recoveredLocal2.
    recoveredBlock121Block151Block217Value0
].
            recoveredBlock121Block151PC := 228.
        ].
        recoveredBlock121Block151Step = 228 ifTrue: [
            recoveredBlock121Block151Stack2 := (recoveredBlock121Block151Stack2) at: (recoveredBlock121Block151Stack3) ifAbsent: (recoveredBlock121Block151Stack4).
            recoveredBlock121Block151PC := 230.
        ].
        recoveredBlock121Block151Step = 230 ifTrue: [
            recoveredBlock121Block151Stack3 := recoveredBlock121Block151Local1.
            recoveredBlock121Block151PC := 231.
        ].
        recoveredBlock121Block151Step = 231 ifTrue: [
            recoveredBlock121Block151Stack4 := 'base'.
            recoveredBlock121Block151PC := 233.
        ].
        recoveredBlock121Block151Step = 233 ifTrue: [
            recoveredBlock121Block151Stack5 := [
    | recoveredBlock121Block151Block233Value0 |
    recoveredBlock121Block151Block233Value0 := recoveredLocal2.
    recoveredBlock121Block151Block233Value0
].
            recoveredBlock121Block151PC := 244.
        ].
        recoveredBlock121Block151Step = 244 ifTrue: [
            recoveredBlock121Block151Stack3 := (recoveredBlock121Block151Stack3) at: (recoveredBlock121Block151Stack4) ifAbsent: (recoveredBlock121Block151Stack5).
            recoveredBlock121Block151PC := 246.
        ].
        recoveredBlock121Block151Step = 246 ifTrue: [
            (recoveredBlock121Block151Stack1) addAlias: (recoveredBlock121Block151Stack2) of: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 248.
        ].
        recoveredBlock121Block151Step = 248 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 249.
        ].
        recoveredBlock121Block151Step = 249 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 250.
        ].
        recoveredBlock121Block151Step = 250 ifTrue: [
            recoveredBlock121Block151Stack1 := nil.
            recoveredBlock121Block151PC := 251.
        ].
        recoveredBlock121Block151Step = 251 ifTrue: [
            recoveredBlock121Block151Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 252.
        ].
        recoveredBlock121Block151Step = 252 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 253.
        ].
        recoveredBlock121Block151Step = 253 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 256] ifFalse: [recoveredBlock121Block151PC := 280].
        ].
        recoveredBlock121Block151Step = 256 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 257.
        ].
        recoveredBlock121Block151Step = 257 ifTrue: [
            recoveredBlock121Block151Stack2 := ':locales'.
            recoveredBlock121Block151PC := 259.
        ].
        recoveredBlock121Block151Step = 259 ifTrue: [
            recoveredBlock121Block151Stack3 := 1.
            recoveredBlock121Block151PC := 261.
        ].
        recoveredBlock121Block151Step = 261 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) indexOfSubCollection: (recoveredBlock121Block151Stack2) startingAt: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 263.
        ].
        recoveredBlock121Block151Step = 263 ifTrue: [
            recoveredBlock121Block151Stack2 := 1.
            recoveredBlock121Block151PC := 265.
        ].
        recoveredBlock121Block151Step = 265 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) = (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 266.
        ].
        recoveredBlock121Block151Step = 266 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 270] ifFalse: [recoveredBlock121Block151PC := 280].
        ].
        recoveredBlock121Block151Step = 270 ifTrue: [
            recoveredBlock121Block151Stack1 := true.
            recoveredBlock121Block151PC := 271.
        ].
        recoveredBlock121Block151Step = 271 ifTrue: [
            recoveredLocal5 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 274.
        ].
        recoveredBlock121Block151Step = 274 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 275.
        ].
        recoveredBlock121Block151Step = 275 ifTrue: [
            recoveredLocal4 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 278.
        ].
        recoveredBlock121Block151Step = 278 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 279.
        ].
        recoveredBlock121Block151Step = 279 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 280.
        ].
        recoveredBlock121Block151Step = 280 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 281.
        ].
        recoveredBlock121Block151Step = 281 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 284] ifFalse: [recoveredBlock121Block151PC := 364].
        ].
        recoveredBlock121Block151Step = 284 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 285.
        ].
        recoveredBlock121Block151Step = 285 ifTrue: [
            recoveredBlock121Block151Stack2 := ':table'.
            recoveredBlock121Block151PC := 287.
        ].
        recoveredBlock121Block151Step = 287 ifTrue: [
            recoveredBlock121Block151Stack3 := 1.
            recoveredBlock121Block151PC := 289.
        ].
        recoveredBlock121Block151Step = 289 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) indexOfSubCollection: (recoveredBlock121Block151Stack2) startingAt: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 291.
        ].
        recoveredBlock121Block151Step = 291 ifTrue: [
            recoveredBlock121Block151Stack2 := 1.
            recoveredBlock121Block151PC := 293.
        ].
        recoveredBlock121Block151Step = 293 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) = (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 294.
        ].
        recoveredBlock121Block151Step = 294 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 298] ifFalse: [recoveredBlock121Block151PC := 364].
        ].
        recoveredBlock121Block151Step = 298 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 299.
        ].
        recoveredBlock121Block151Step = 299 ifTrue: [
            recoveredLocal5 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 302.
        ].
        recoveredBlock121Block151Step = 302 ifTrue: [
            recoveredBlock121Block151Stack1 := true.
            recoveredBlock121Block151PC := 303.
        ].
        recoveredBlock121Block151Step = 303 ifTrue: [
            recoveredLocal4 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 306.
        ].
        recoveredBlock121Block151Step = 306 ifTrue: [
            recoveredBlock121Block151Stack1 := 0.
            recoveredBlock121Block151PC := 308.
        ].
        recoveredBlock121Block151Step = 308 ifTrue: [
            recoveredBlock121Local3 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 311.
        ].
        recoveredBlock121Block151Step = 311 ifTrue: [
            recoveredBlock121Block151Stack1 := self.
            recoveredBlock121Block151PC := 312.
        ].
        recoveredBlock121Block151Step = 312 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 313.
        ].
        recoveredBlock121Block151Step = 313 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) nlsFileParseParms: (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 315.
        ].
        recoveredBlock121Block151Step = 315 ifTrue: [
            recoveredBlock121Block151Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 316.
        ].
        recoveredBlock121Block151Step = 316 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local1.
            recoveredBlock121Block151PC := 317.
        ].
        recoveredBlock121Block151Step = 317 ifTrue: [
            recoveredBlock121Block151Stack2 := 'from'.
            recoveredBlock121Block151PC := 319.
        ].
        recoveredBlock121Block151Step = 319 ifTrue: [
            recoveredBlock121Block151Stack3 := [
    | recoveredBlock121Block151Block319Value0 |
    recoveredBlock121Block151Block319Value0 := recoveredLocal2.
    recoveredBlock121Block151Block319Value0
].
            recoveredBlock121Block151PC := 330.
        ].
        recoveredBlock121Block151Step = 330 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) at: (recoveredBlock121Block151Stack2) ifAbsent: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 332.
        ].
        recoveredBlock121Block151Step = 332 ifTrue: [
            recoveredBlock121Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 335.
        ].
        recoveredBlock121Block151Step = 335 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local1.
            recoveredBlock121Block151PC := 336.
        ].
        recoveredBlock121Block151Step = 336 ifTrue: [
            recoveredBlock121Block151Stack2 := 'to'.
            recoveredBlock121Block151PC := 338.
        ].
        recoveredBlock121Block151Step = 338 ifTrue: [
            recoveredBlock121Block151Stack3 := [
    | recoveredBlock121Block151Block338Value0 |
    recoveredBlock121Block151Block338Value0 := recoveredLocal2.
    recoveredBlock121Block151Block338Value0
].
            recoveredBlock121Block151PC := 348.
        ].
        recoveredBlock121Block151Step = 348 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) at: (recoveredBlock121Block151Stack2) ifAbsent: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 350.
        ].
        recoveredBlock121Block151Step = 350 ifTrue: [
            recoveredBlock121Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 353.
        ].
        recoveredBlock121Block151Step = 353 ifTrue: [
            recoveredBlock121Block151Stack1 := OrderedCollection.
            recoveredBlock121Block151PC := 355.
        ].
        recoveredBlock121Block151Step = 355 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) new.
            recoveredBlock121Block151PC := 357.
        ].
        recoveredBlock121Block151Step = 357 ifTrue: [
            recoveredBlock121Local4 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 360.
        ].
        recoveredBlock121Block151Step = 360 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 361.
        ].
        recoveredBlock121Block151Step = 361 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 362.
        ].
        recoveredBlock121Block151Step = 362 ifTrue: [
            recoveredBlock121Block151Stack1 := nil.
            recoveredBlock121Block151PC := 363.
        ].
        recoveredBlock121Block151Step = 363 ifTrue: [
            recoveredBlock121Block151Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 364.
        ].
        recoveredBlock121Block151Step = 364 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 365.
        ].
        recoveredBlock121Block151Step = 365 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 368] ifFalse: [recoveredBlock121Block151PC := 435].
        ].
        recoveredBlock121Block151Step = 368 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 369.
        ].
        recoveredBlock121Block151Step = 369 ifTrue: [
            recoveredBlock121Block151Stack2 := ':nulltable'.
            recoveredBlock121Block151PC := 371.
        ].
        recoveredBlock121Block151Step = 371 ifTrue: [
            recoveredBlock121Block151Stack3 := 1.
            recoveredBlock121Block151PC := 373.
        ].
        recoveredBlock121Block151Step = 373 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) indexOfSubCollection: (recoveredBlock121Block151Stack2) startingAt: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 375.
        ].
        recoveredBlock121Block151Step = 375 ifTrue: [
            recoveredBlock121Block151Stack2 := 1.
            recoveredBlock121Block151PC := 377.
        ].
        recoveredBlock121Block151Step = 377 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) = (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 378.
        ].
        recoveredBlock121Block151Step = 378 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 382] ifFalse: [recoveredBlock121Block151PC := 435].
        ].
        recoveredBlock121Block151Step = 382 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 383.
        ].
        recoveredBlock121Block151Step = 383 ifTrue: [
            recoveredLocal5 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 386.
        ].
        recoveredBlock121Block151Step = 386 ifTrue: [
            recoveredBlock121Block151Stack1 := self.
            recoveredBlock121Block151PC := 387.
        ].
        recoveredBlock121Block151Step = 387 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 388.
        ].
        recoveredBlock121Block151Step = 388 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) nlsFileParseParms: (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 390.
        ].
        recoveredBlock121Block151Step = 390 ifTrue: [
            recoveredBlock121Block151Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 391.
        ].
        recoveredBlock121Block151Step = 391 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredArg2.
            recoveredBlock121Block151PC := 394.
        ].
        recoveredBlock121Block151Step = 394 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredLocal3.
            recoveredBlock121Block151PC := 397.
        ].
        recoveredBlock121Block151Step = 397 ifTrue: [
            recoveredBlock121Block151Stack3 := recoveredBlock121Block151Local1.
            recoveredBlock121Block151PC := 398.
        ].
        recoveredBlock121Block151Step = 398 ifTrue: [
            recoveredBlock121Block151Stack4 := 'from'.
            recoveredBlock121Block151PC := 400.
        ].
        recoveredBlock121Block151Step = 400 ifTrue: [
            recoveredBlock121Block151Stack5 := [
    | recoveredBlock121Block151Block400Value0 |
    recoveredBlock121Block151Block400Value0 := recoveredLocal2.
    recoveredBlock121Block151Block400Value0
].
            recoveredBlock121Block151PC := 410.
        ].
        recoveredBlock121Block151Step = 410 ifTrue: [
            recoveredBlock121Block151Stack3 := (recoveredBlock121Block151Stack3) at: (recoveredBlock121Block151Stack4) ifAbsent: (recoveredBlock121Block151Stack5).
            recoveredBlock121Block151PC := 412.
        ].
        recoveredBlock121Block151Step = 412 ifTrue: [
            recoveredBlock121Block151Stack4 := recoveredBlock121Block151Local1.
            recoveredBlock121Block151PC := 413.
        ].
        recoveredBlock121Block151Step = 413 ifTrue: [
            recoveredBlock121Block151Stack5 := 'to'.
            recoveredBlock121Block151PC := 415.
        ].
        recoveredBlock121Block151Step = 415 ifTrue: [
            recoveredBlock121Block151Stack6 := [
    | recoveredBlock121Block151Block415Value0 |
    recoveredBlock121Block151Block415Value0 := recoveredLocal2.
    recoveredBlock121Block151Block415Value0
].
            recoveredBlock121Block151PC := 426.
        ].
        recoveredBlock121Block151Step = 426 ifTrue: [
            recoveredBlock121Block151Stack4 := (recoveredBlock121Block151Stack4) at: (recoveredBlock121Block151Stack5) ifAbsent: (recoveredBlock121Block151Stack6).
            recoveredBlock121Block151PC := 428.
        ].
        recoveredBlock121Block151Step = 428 ifTrue: [
            (recoveredBlock121Block151Stack1) addTable: (recoveredBlock121Block151Stack2) from: (recoveredBlock121Block151Stack3) to: (recoveredBlock121Block151Stack4).
            recoveredBlock121Block151PC := 431.
        ].
        recoveredBlock121Block151Step = 431 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 432.
        ].
        recoveredBlock121Block151Step = 432 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 433.
        ].
        recoveredBlock121Block151Step = 433 ifTrue: [
            recoveredBlock121Block151Stack1 := nil.
            recoveredBlock121Block151PC := 434.
        ].
        recoveredBlock121Block151Step = 434 ifTrue: [
            recoveredBlock121Block151Local1 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 435.
        ].
        recoveredBlock121Block151Step = 435 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 436.
        ].
        recoveredBlock121Block151Step = 436 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 440] ifFalse: [recoveredBlock121Block151PC := 455].
        ].
        recoveredBlock121Block151Step = 440 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredLocal5.
            recoveredBlock121Block151PC := 443.
        ].
        recoveredBlock121Block151Step = 443 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 446] ifFalse: [recoveredBlock121Block151PC := 455].
        ].
        recoveredBlock121Block151Step = 446 ifTrue: [
            recoveredBlock121Block151Stack1 := self.
            recoveredBlock121Block151PC := 447.
        ].
        recoveredBlock121Block151Step = 447 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local4.
            recoveredBlock121Block151PC := 448.
        ].
        recoveredBlock121Block151Step = 448 ifTrue: [
            recoveredBlock121Block151Stack3 := recoveredArg3.
            recoveredBlock121Block151PC := 451.
        ].
        recoveredBlock121Block151Step = 451 ifTrue: [
            (recoveredBlock121Block151Stack1) processSingleLocaleLine: (recoveredBlock121Block151Stack2) nlsManager: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 453.
        ].
        recoveredBlock121Block151Step = 453 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 454.
        ].
        recoveredBlock121Block151Step = 454 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 455.
        ].
        recoveredBlock121Block151Step = 455 ifTrue: [
            recoveredBlock121Block151Stack1 := nil.
            recoveredBlock121Block151PC := 456.
        ].
        recoveredBlock121Block151Step = 456 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Local2.
            recoveredBlock121Block151PC := 457.
        ].
        recoveredBlock121Block151Step = 457 ifTrue: [
            (recoveredBlock121Block151Stack2) ifTrue: [recoveredBlock121Block151PC := 460] ifFalse: [recoveredBlock121Block151PC := 558].
        ].
        recoveredBlock121Block151Step = 460 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredLocal4.
            recoveredBlock121Block151PC := 463.
        ].
        recoveredBlock121Block151Step = 463 ifTrue: [
            (recoveredBlock121Block151Stack2) ifTrue: [recoveredBlock121Block151PC := 466] ifFalse: [recoveredBlock121Block151PC := 558].
        ].
        recoveredBlock121Block151Step = 466 ifTrue: [
            recoveredBlock121Block151PC := 467.
        ].
        recoveredBlock121Block151Step = 467 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 468.
        ].
        recoveredBlock121Block151Step = 468 ifTrue: [
            recoveredBlock121Block151Stack2 := ':endtable'.
            recoveredBlock121Block151PC := 470.
        ].
        recoveredBlock121Block151Step = 470 ifTrue: [
            recoveredBlock121Block151Stack3 := 1.
            recoveredBlock121Block151PC := 472.
        ].
        recoveredBlock121Block151Step = 472 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) indexOfSubCollection: (recoveredBlock121Block151Stack2) startingAt: (recoveredBlock121Block151Stack3).
            recoveredBlock121Block151PC := 474.
        ].
        recoveredBlock121Block151Step = 474 ifTrue: [
            recoveredBlock121Block151Stack2 := 1.
            recoveredBlock121Block151PC := 476.
        ].
        recoveredBlock121Block151Step = 476 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) = (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 477.
        ].
        recoveredBlock121Block151Step = 477 ifTrue: [
            (recoveredBlock121Block151Stack1) ifTrue: [recoveredBlock121Block151PC := 480] ifFalse: [recoveredBlock121Block151PC := 504].
        ].
        recoveredBlock121Block151Step = 480 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 481.
        ].
        recoveredBlock121Block151Step = 481 ifTrue: [
            recoveredLocal4 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 484.
        ].
        recoveredBlock121Block151Step = 484 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredArg2.
            recoveredBlock121Block151PC := 487.
        ].
        recoveredBlock121Block151Step = 487 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Local4.
            recoveredBlock121Block151PC := 490.
        ].
        recoveredBlock121Block151Step = 490 ifTrue: [
            recoveredBlock121Block151Stack2 := (recoveredBlock121Block151Stack2) asArray.
            recoveredBlock121Block151PC := 492.
        ].
        recoveredBlock121Block151Step = 492 ifTrue: [
            recoveredBlock121Block151Stack3 := recoveredBlock121Local2.
            recoveredBlock121Block151PC := 495.
        ].
        recoveredBlock121Block151Step = 495 ifTrue: [
            recoveredBlock121Block151Stack4 := recoveredBlock121Local1.
            recoveredBlock121Block151PC := 498.
        ].
        recoveredBlock121Block151Step = 498 ifTrue: [
            (recoveredBlock121Block151Stack1) addTable: (recoveredBlock121Block151Stack2) from: (recoveredBlock121Block151Stack3) to: (recoveredBlock121Block151Stack4).
            recoveredBlock121Block151PC := 501.
        ].
        recoveredBlock121Block151Step = 501 ifTrue: [
            recoveredBlock121Block151PC := 555.
        ].
        recoveredBlock121Block151Step = 504 ifTrue: [
            recoveredBlock121Block151Stack1 := recoveredBlock121Block151Local3.
            recoveredBlock121Block151PC := 505.
        ].
        recoveredBlock121Block151Step = 505 ifTrue: [
            recoveredBlock121Block151Stack1 := (recoveredBlock121Block151Stack1) subStrings.
            recoveredBlock121Block151PC := 507.
        ].
        recoveredBlock121Block151Step = 507 ifTrue: [
            recoveredBlock121Block151Stack2 := [:recoveredBlock121Block151Block507Arg1 | 
    | recoveredBlock121Block151Block507Stack0 recoveredBlock121Block151Block507Stack1 recoveredBlock121Block151Block507Stack2 recoveredBlock121Block151Block507Stack3 recoveredBlock121Block151Block507Stack4 recoveredBlock121Block151Block507Stack5 recoveredBlock121Block151Block507PC recoveredBlock121Block151Block507Step recoveredBlock121Block151Block507Done recoveredBlock121Block151Block507Result |
    recoveredBlock121Block151Block507Stack0 := self.
    recoveredBlock121Block151Block507PC := 514.
    recoveredBlock121Block151Block507Done := false.
    [recoveredBlock121Block151Block507Done not] whileTrue: [
        recoveredBlock121Block151Block507Step := recoveredBlock121Block151Block507PC.
        recoveredBlock121Block151Block507Step = 514 ifTrue: [
            recoveredBlock121Block151Block507Stack1 := recoveredBlock121Local4.
            recoveredBlock121Block151Block507PC := 517.
        ].
        recoveredBlock121Block151Block507Step = 517 ifTrue: [
            recoveredBlock121Block151Block507Stack2 := Character.
            recoveredBlock121Block151Block507PC := 519.
        ].
        recoveredBlock121Block151Block507Step = 519 ifTrue: [
            recoveredBlock121Block151Block507Stack3 := recoveredBlock121Block151Block507Arg1.
            recoveredBlock121Block151Block507PC := 520.
        ].
        recoveredBlock121Block151Block507Step = 520 ifTrue: [
            recoveredBlock121Block151Block507Stack3 := (recoveredBlock121Block151Block507Stack3) first.
            recoveredBlock121Block151Block507PC := 522.
        ].
        recoveredBlock121Block151Block507Step = 522 ifTrue: [
            recoveredBlock121Block151Block507Stack4 := $@.
            recoveredBlock121Block151Block507PC := 526.
        ].
        recoveredBlock121Block151Block507Step = 526 ifTrue: [
            recoveredBlock121Block151Block507Stack3 := (recoveredBlock121Block151Block507Stack3) = (recoveredBlock121Block151Block507Stack4).
            recoveredBlock121Block151Block507PC := 527.
        ].
        recoveredBlock121Block151Block507Step = 527 ifTrue: [
            (recoveredBlock121Block151Block507Stack3) ifTrue: [recoveredBlock121Block151Block507PC := 530] ifFalse: [recoveredBlock121Block151Block507PC := 536].
        ].
        recoveredBlock121Block151Block507Step = 530 ifTrue: [
            recoveredBlock121Block151Block507Stack3 := recoveredBlock121Local3.
            recoveredBlock121Block151Block507PC := 533.
        ].
        recoveredBlock121Block151Block507Step = 533 ifTrue: [
            recoveredBlock121Block151Block507PC := 540.
        ].
        recoveredBlock121Block151Block507Step = 536 ifTrue: [
            recoveredBlock121Block151Block507Stack3 := self.
            recoveredBlock121Block151Block507PC := 537.
        ].
        recoveredBlock121Block151Block507Step = 537 ifTrue: [
            recoveredBlock121Block151Block507Stack4 := recoveredBlock121Block151Block507Arg1.
            recoveredBlock121Block151Block507PC := 538.
        ].
        recoveredBlock121Block151Block507Step = 538 ifTrue: [
            recoveredBlock121Block151Block507Stack3 := (recoveredBlock121Block151Block507Stack3) hexToInt: (recoveredBlock121Block151Block507Stack4).
            recoveredBlock121Block151Block507PC := 540.
        ].
        recoveredBlock121Block151Block507Step = 540 ifTrue: [
            recoveredBlock121Block151Block507Stack2 := (recoveredBlock121Block151Block507Stack2) value: (recoveredBlock121Block151Block507Stack3).
            recoveredBlock121Block151Block507PC := 542.
        ].
        recoveredBlock121Block151Block507Step = 542 ifTrue: [
            (recoveredBlock121Block151Block507Stack1) add: (recoveredBlock121Block151Block507Stack2).
            recoveredBlock121Block151Block507PC := 544.
        ].
        recoveredBlock121Block151Block507Step = 544 ifTrue: [
            recoveredBlock121Block151Block507Stack1 := recoveredBlock121Local3.
            recoveredBlock121Block151Block507PC := 547.
        ].
        recoveredBlock121Block151Block507Step = 547 ifTrue: [
            recoveredBlock121Block151Block507Stack1 := (recoveredBlock121Block151Block507Stack1) + (1).
            recoveredBlock121Block151Block507PC := 548.
        ].
        recoveredBlock121Block151Block507Step = 548 ifTrue: [
            recoveredBlock121Block151Block507Stack2 := recoveredBlock121Block151Block507Stack1.
            recoveredBlock121Block151Block507PC := 549.
        ].
        recoveredBlock121Block151Block507Step = 549 ifTrue: [
            recoveredBlock121Local3 := recoveredBlock121Block151Block507Stack2.
            recoveredBlock121Block151Block507PC := 552.
        ].
        recoveredBlock121Block151Block507Step = 552 ifTrue: [
            recoveredBlock121Block151Block507Result := recoveredBlock121Block151Block507Stack1.
            recoveredBlock121Block151Block507Done := true.
        ].
    ].
    recoveredBlock121Block151Block507Result
].
            recoveredBlock121Block151PC := 553.
        ].
        recoveredBlock121Block151Step = 553 ifTrue: [
            (recoveredBlock121Block151Stack1) do: (recoveredBlock121Block151Stack2).
            recoveredBlock121Block151PC := 555.
        ].
        recoveredBlock121Block151Step = 555 ifTrue: [
            recoveredBlock121Block151Stack1 := false.
            recoveredBlock121Block151PC := 556.
        ].
        recoveredBlock121Block151Step = 556 ifTrue: [
            recoveredBlock121Block151Stack2 := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151PC := 557.
        ].
        recoveredBlock121Block151Step = 557 ifTrue: [
            recoveredBlock121Block151Local2 := recoveredBlock121Block151Stack2.
            recoveredBlock121Block151PC := 558.
        ].
        recoveredBlock121Block151Step = 558 ifTrue: [
            recoveredBlock121Block151Result := recoveredBlock121Block151Stack1.
            recoveredBlock121Block151Done := true.
        ].
    ].
    recoveredBlock121Block151Result
].
    recoveredBlock121Value4 := (recoveredBlock121Value2) do: (recoveredBlock121Value3).
    recoveredBlock121Value4
].
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack3 := [:recoveredBlock562Arg1 | 
    ^self
].
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) withCfsStreamReadOnlyDo: (recoveredStack2) ifOpenError: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

