"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c8e8; bytecode file offset 0x9391ac"
!SGMdAbstractSideEffectInfo class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdAbstractSideEffectInfo.
    recoveredValue1 := (self) == (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048c54; bytecode file offset 0x945728"
!SGMdAbstractSideEffectInfo class methodsFor: 'recovered'!
resetClassMapping
    ClassMapping := nil.
    ^self
! !

"ASDBase.ic method 0x203c47a0; bytecode file offset 0xcc1088"
!SGMdAbstractSideEffectInfo class methodsFor: 'recovered'!
classMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ClassMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ClassMapping := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SGMdAbstractSideEffectInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isAbstract.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 77] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack2 := [
    | recoveredBlock19Block38Value0 recoveredBlock19Block38Value1 recoveredBlock19Block38Value2 recoveredBlock19Block38Value3 recoveredBlock19Block38Value4 |
    recoveredBlock19Block38Value0 := ClassMapping.
    recoveredBlock19Block38Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block38Value2 := (recoveredBlock19Block38Value1) xmlName.
    recoveredBlock19Block38Value3 := (recoveredBlock19Block38Value0) includesKey: (recoveredBlock19Block38Value2).
    recoveredBlock19Block38Value4 := (recoveredBlock19Block38Value3) not.
    recoveredBlock19Block38Value4
].
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack3 := [
    'Duplicate xml name'
].
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            (recoveredBlock19Stack1) ileAssert: (recoveredBlock19Stack2) message: (recoveredBlock19Stack3).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := ClassMapping.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) xmlName.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) put: (recoveredBlock19Stack3).
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := ClassMapping.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

