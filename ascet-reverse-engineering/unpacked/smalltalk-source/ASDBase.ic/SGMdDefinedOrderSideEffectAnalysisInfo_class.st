"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d1bc; bytecode file offset 0x92209c"
!SGMdDefinedOrderSideEffectAnalysisInfo class methodsFor: 'recovered'!
xmlValueName
    ^'value'
! !

"ASDBase.ic method 0x2001ddd4; bytecode file offset 0x92209c"
!SGMdDefinedOrderSideEffectAnalysisInfo class methodsFor: 'recovered'!
xmlName
    ^'definedOrderSideEffect'
! !

"ASDBase.ic method 0x20023d38; bytecode file offset 0x92209c"
!SGMdDefinedOrderSideEffectAnalysisInfo class methodsFor: 'recovered'!
xmlDefinedOrderName
    ^'definedOrder'
! !

"ASDBase.ic method 0x2049ca90; bytecode file offset 0xd9939c"
!SGMdDefinedOrderSideEffectAnalysisInfo class methodsFor: 'recovered'!
create: recoveredArg1 source: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block281043d4Arg1 | 
    | block281043d4Value0 block281043d4Value1 |
    block281043d4Value0 := block281043d4Arg1.
    block281043d4Value1 := (block281043d4Value0) isMdlNoSideEffectAnalysisInfo.
    block281043d4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGMdNoSideEffectAnalysisInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Arg1.
            recoveredBlock62PC := 69.
        ].
        recoveredBlock62Step = 69 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) isMdlDefinedOrderSideEffectAccess.
            recoveredBlock62PC := 71.
        ].
        recoveredBlock62Step = 71 ifTrue: [
            (recoveredBlock62Stack1) ifTrue: [recoveredBlock62PC := 74] ifFalse: [recoveredBlock62PC := 112].
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal1.
            recoveredBlock62PC := 77.
        ].
        recoveredBlock62Step = 77 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 78.
        ].
        recoveredBlock62Step = 78 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) conditional.
            recoveredBlock62PC := 80.
        ].
        recoveredBlock62Step = 80 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 84] ifFalse: [recoveredBlock62PC := 104].
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) definedOrder.
            recoveredBlock62PC := 87.
        ].
        recoveredBlock62Step = 87 ifTrue: [
            recoveredBlock62Stack3 := [:block281043f8Arg1 | 
    | block281043f8Value0 block281043f8Value1 |
    block281043f8Value0 := block281043f8Arg1.
    (block281043f8Value0) conditional: (true).
    block281043f8Value1 := block281043f8Arg1.
    block281043f8Value1
].
            recoveredBlock62PC := 89.
        ].
        recoveredBlock62Step = 89 ifTrue: [
            recoveredBlock62PC := 98.
        ].
        recoveredBlock62Step = 98 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) collect: (recoveredBlock62Stack3).
            recoveredBlock62PC := 100.
        ].
        recoveredBlock62Step = 100 ifTrue: [
            recoveredBlock62PC := 107.
        ].
        recoveredBlock62Step = 104 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 105.
        ].
        recoveredBlock62Step = 105 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) definedOrder.
            recoveredBlock62PC := 107.
        ].
        recoveredBlock62Step = 107 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) addAll: (recoveredBlock62Stack2).
            recoveredBlock62PC := 109.
        ].
        recoveredBlock62Step = 109 ifTrue: [
            recoveredBlock62PC := 118.
        ].
        recoveredBlock62Step = 112 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal1.
            recoveredBlock62PC := 115.
        ].
        recoveredBlock62Step = 115 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 116.
        ].
        recoveredBlock62Step = 116 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) add: (recoveredBlock62Stack2).
            recoveredBlock62PC := 118.
        ].
        recoveredBlock62Step = 118 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) addAllDefinedOrder: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

