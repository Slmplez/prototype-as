"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053a60; bytecode file offset 0x9505d0"
!AdditiveSequenceableCollection methodsFor: 'recovered'!
abrAdd: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2035001c; bytecode file offset 0xc4c8f0"
!AdditiveSequenceableCollection methodsFor: 'recovered'!
separate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) species.
    recoveredValue4 := (self) size.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) value: (recoveredBlock20Stack2).
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 34] ifFalse: [recoveredBlock20PC := 44].
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (self) do: (recoveredValue6).
    recoveredValue7 := Array.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9).
    ^recoveredValue10
! !

