"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20122c90; bytecode file offset 0xa1f6a4"
!ASDElementTargetAdapter class methodsFor: 'recovered'!
createForElement: recoveredArg1 platform: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) element: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) platform: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20355a38; bytecode file offset 0xc52308"
!ASDElementTargetAdapter class methodsFor: 'recovered'!
combineMemoryLocationLists: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('hw') == ('call_2007402198').
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := [:recoveredBlock19Block27Arg1 | 
    | recoveredBlock19Block27Stack0 recoveredBlock19Block27Stack1 recoveredBlock19Block27Stack2 recoveredBlock19Block27Stack3 recoveredBlock19Block27Stack4 recoveredBlock19Block27PC recoveredBlock19Block27Step recoveredBlock19Block27Done recoveredBlock19Block27Result |
    recoveredBlock19Block27Stack0 := nil.
    recoveredBlock19Block27PC := 34.
    recoveredBlock19Block27Done := false.
    [recoveredBlock19Block27Done not] whileTrue: [
        recoveredBlock19Block27Step := recoveredBlock19Block27PC.
        recoveredBlock19Block27Step = 34 ifTrue: [
            recoveredBlock19Block27Stack1 := nil.
            recoveredBlock19Block27PC := 35.
        ].
        recoveredBlock19Block27Step = 35 ifTrue: [
            recoveredBlock19Block27Stack2 := recoveredLocal1.
            recoveredBlock19Block27PC := 38.
        ].
        recoveredBlock19Block27Step = 38 ifTrue: [
            recoveredBlock19Block27Stack3 := recoveredBlock19Block27Arg1.
            recoveredBlock19Block27PC := 39.
        ].
        recoveredBlock19Block27Step = 39 ifTrue: [
            recoveredBlock19Block27Stack2 := (recoveredBlock19Block27Stack2) includes: (recoveredBlock19Block27Stack3).
            recoveredBlock19Block27PC := 41.
        ].
        recoveredBlock19Block27Step = 41 ifTrue: [
            (recoveredBlock19Block27Stack2) ifTrue: [recoveredBlock19Block27PC := 55] ifFalse: [recoveredBlock19Block27PC := 44].
        ].
        recoveredBlock19Block27Step = 44 ifTrue: [
            recoveredBlock19Block27PC := 45.
        ].
        recoveredBlock19Block27Step = 45 ifTrue: [
            recoveredBlock19Block27Stack1 := recoveredLocal1.
            recoveredBlock19Block27PC := 48.
        ].
        recoveredBlock19Block27Step = 48 ifTrue: [
            recoveredBlock19Block27Stack2 := recoveredBlock19Block27Arg1.
            recoveredBlock19Block27PC := 49.
        ].
        recoveredBlock19Block27Step = 49 ifTrue: [
            recoveredBlock19Block27Stack1 := (recoveredBlock19Block27Stack1) copyWith: (recoveredBlock19Block27Stack2).
            recoveredBlock19Block27PC := 51.
        ].
        recoveredBlock19Block27Step = 51 ifTrue: [
            recoveredBlock19Block27Stack2 := recoveredBlock19Block27Stack1.
            recoveredBlock19Block27PC := 52.
        ].
        recoveredBlock19Block27Step = 52 ifTrue: [
            recoveredLocal1 := recoveredBlock19Block27Stack2.
            recoveredBlock19Block27PC := 55.
        ].
        recoveredBlock19Block27Step = 55 ifTrue: [
            recoveredBlock19Block27Result := recoveredBlock19Block27Stack1.
            recoveredBlock19Block27Done := true.
        ].
    ].
    recoveredBlock19Block27Result
].
    recoveredBlock19Value2 := (recoveredBlock19Value0) do: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

