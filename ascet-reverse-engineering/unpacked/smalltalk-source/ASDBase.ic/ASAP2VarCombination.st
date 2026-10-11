"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201f62d8; bytecode file offset 0xaf2b94"
!ASAP2VarCombination methodsFor: 'recovered'!
includesCombination: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includes: (recoveredBlock7Stack3).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 25] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := false.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x2035cb04; bytecode file offset 0xc593dc"
!ASAP2VarCombination methodsFor: 'recovered'!
name
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 34] ifFalse: [recoveredBlock12PC := 22].
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := $*.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            (recoveredBlock12Stack1) nextPut: (recoveredBlock12Stack2).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            (recoveredBlock12Stack1) nextPutAll: (recoveredBlock12Stack2).
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack2 := $..
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) nextPut: (recoveredBlock12Stack2).
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (self) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) collection.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) position.
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := (recoveredValue4) copyFrom: (1) to: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x203c0030; bytecode file offset 0xcbc90c"
!ASAP2VarCombination methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredArg1.
    super printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            (recoveredBlock30Stack1 ~~ nil) ifTrue: [recoveredBlock30PC := 52] ifFalse: [recoveredBlock30PC := 40].
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack2 := $*.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            (recoveredBlock30Stack1) nextPut: (recoveredBlock30Stack2).
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            (recoveredBlock30Stack1) nextPutAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack2 := $..
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) nextPut: (recoveredBlock30Stack2).
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (self) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) position.
    recoveredValue10 := (recoveredValue9) + (-1).
    (recoveredValue7) position: (recoveredValue10).
    ^self
! !

