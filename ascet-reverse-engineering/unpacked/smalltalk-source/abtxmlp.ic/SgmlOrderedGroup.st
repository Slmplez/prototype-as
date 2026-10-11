"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000098; bytecode file offset 0x188a8"
!SgmlOrderedGroup methodsFor: 'recovered'!
asSgmlOrderedGroup
    ^self
! !

"abtxmlp.ic method 0x200013cc; bytecode file offset 0x19bb4"
!SgmlOrderedGroup methodsFor: 'recovered'!
separatorCharacter
    ^$,
! !

"abtxmlp.ic method 0x20006514; bytecode file offset 0x1ed0c"
!SgmlOrderedGroup methodsFor: 'recovered'!
addAllPermissibleTagsOf: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addAllPermissibleTagsOf: (recoveredBlock5Stack2) to: (recoveredBlock5Stack3).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isRequired.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 35].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"abtxmlp.ic method 0x20009e54; bytecode file offset 0x22670"
!SgmlOrderedGroup methodsFor: 'recovered'!
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
            recoveredBlock9PC := 84.
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
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 58] ifFalse: [recoveredBlock9PC := 84].
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
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 64] ifFalse: [recoveredBlock9PC := 84].
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
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 70] ifFalse: [recoveredBlock9PC := 84].
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
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) signalException.
            recoveredBlock9PC := 83.
        ].
        recoveredBlock9Step = 83 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 84 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 85 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 88.
        ].
        recoveredBlock9Step = 88 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) atEnd.
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 89 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 92] ifFalse: [recoveredBlock9PC := 95].
        ].
        recoveredBlock9Step = 92 ifTrue: [
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 94.
        ].
        recoveredBlock9Step = 94 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 95 ifTrue: [
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

