"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20081edc; bytecode file offset 0x97e9b0"
!SGIlRebuildWithNewChildren methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := map.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081fe4; bytecode file offset 0x97e9b0"
!SGIlRebuildWithNewChildren methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := map.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200968f4; bytecode file offset 0x9932f0"
!SGIlRebuildWithNewChildren methodsFor: 'recovered'!
rebuildNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super visitNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ac90c; bytecode file offset 0x9a91c4"
!SGIlRebuildWithNewChildren methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := map.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f9edc; bytecode file offset 0x9f6878"
!SGIlRebuildWithNewChildren methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    map := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x203a9238; bytecode file offset 0xca5b10"
!SGIlRebuildWithNewChildren methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := map.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isIleBlockedStmntList.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 36].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := super visitNode: (recoveredBlock9Stack2).
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack2 := [
    | recoveredBlock9Block37Stack0 recoveredBlock9Block37Stack1 recoveredBlock9Block37Stack2 recoveredBlock9Block37Stack3 recoveredBlock9Block37PC recoveredBlock9Block37Step recoveredBlock9Block37Done recoveredBlock9Block37Result |
    recoveredBlock9Block37Stack0 := nil.
    recoveredBlock9Block37PC := 44.
    recoveredBlock9Block37Done := false.
    [recoveredBlock9Block37Done not] whileTrue: [
        recoveredBlock9Block37Step := recoveredBlock9Block37PC.
        recoveredBlock9Block37Step = 44 ifTrue: [
            recoveredBlock9Block37Stack1 := false.
            recoveredBlock9Block37PC := 45.
        ].
        recoveredBlock9Block37Step = 45 ifTrue: [
            recoveredBlock9Block37Stack2 := recoveredArg1.
            recoveredBlock9Block37PC := 48.
        ].
        recoveredBlock9Block37Step = 48 ifTrue: [
            recoveredBlock9Block37Stack2 := (recoveredBlock9Block37Stack2) isIleTempVarIdentifier.
            recoveredBlock9Block37PC := 49.
        ].
        recoveredBlock9Block37Step = 49 ifTrue: [
            (recoveredBlock9Block37Stack2) ifTrue: [recoveredBlock9Block37PC := 59] ifFalse: [recoveredBlock9Block37PC := 52].
        ].
        recoveredBlock9Block37Step = 52 ifTrue: [
            recoveredBlock9Block37PC := 53.
        ].
        recoveredBlock9Block37Step = 53 ifTrue: [
            recoveredBlock9Block37Stack1 := recoveredArg1.
            recoveredBlock9Block37PC := 56.
        ].
        recoveredBlock9Block37Step = 56 ifTrue: [
            recoveredBlock9Block37Stack1 := (recoveredBlock9Block37Stack1) isIleTempAssignedExpr.
            recoveredBlock9Block37PC := 58.
        ].
        recoveredBlock9Block37Step = 58 ifTrue: [
            recoveredBlock9Block37Stack1 := (recoveredBlock9Block37Stack1) not.
            recoveredBlock9Block37PC := 59.
        ].
        recoveredBlock9Block37Step = 59 ifTrue: [
            recoveredBlock9Block37Result := recoveredBlock9Block37Stack1.
            recoveredBlock9Block37Done := true.
        ].
    ].
    recoveredBlock9Block37Result
].
            recoveredBlock9PC := 60.
        ].
        recoveredBlock9Step = 60 ifTrue: [
            recoveredBlock9Stack3 := [
    'Node should be known.'
].
            recoveredBlock9PC := 62.
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9PC := 69.
        ].
        recoveredBlock9Step = 69 ifTrue: [
            (recoveredBlock9Stack1) ileAssert: (recoveredBlock9Stack2) message: (recoveredBlock9Stack3).
            recoveredBlock9PC := 71.
        ].
        recoveredBlock9Step = 71 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

