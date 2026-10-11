"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20007528; bytecode file offset 0x19024"
!LookupTable methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) species.
    recoveredValue2 := (recoveredValue1) basicNew.
    recoveredValue3 := (recoveredValue0) at: (self) put: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := keys.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := recoveredValue7.
    recoveredLocal3 := recoveredValue8.
    (recoveredValue5) initialize: (recoveredValue7).
    recoveredValue9 := elementCount.
    (recoveredValue4) elementCount: (recoveredValue9).
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) keyArray.
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := (recoveredValue12) valueArray.
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := [:recoveredBlock49Arg1 :recoveredBlock49Arg2 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 95] ifFalse: [recoveredBlock49PC := 62].
        ].
        recoveredBlock49Step = 62 ifTrue: [
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack3 := keys.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack4 := recoveredBlock49Arg2.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) at: (recoveredBlock49Stack4).
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg1.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) abtCloneWithRecursionSet: (recoveredBlock49Stack4).
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 79.
        ].
        recoveredBlock49Step = 79 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 82.
        ].
        recoveredBlock49Step = 82 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack3 := values.
            recoveredBlock49PC := 85.
        ].
        recoveredBlock49Step = 85 ifTrue: [
            recoveredBlock49Stack4 := recoveredBlock49Arg2.
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) at: (recoveredBlock49Stack4).
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg1.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) abtCloneWithRecursionSet: (recoveredBlock49Stack4).
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
    recoveredValue15 := keys.
    recoveredValue16 := recoveredLocal3.
    (recoveredValue14) applyWithIndex: (recoveredValue15) from: (1) to: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

