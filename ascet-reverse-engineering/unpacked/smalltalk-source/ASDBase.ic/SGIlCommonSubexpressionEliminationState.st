"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004a918; bytecode file offset 0x9471ec"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
unknownSideEffects
    hasUnknownSideEffects := true.
    ^self
! !

"ASDBase.ic method 0x20065b74; bytecode file offset 0x963428"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
infoSet
    | recoveredValue0 |
    recoveredValue0 := infoSet.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067214; bytecode file offset 0x9646f8"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
changedVarDecls
    | recoveredValue0 |
    recoveredValue0 := changedVarDecls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f84; bytecode file offset 0x965b90"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
hasUnknownSideEffects
    | recoveredValue0 |
    recoveredValue0 := hasUnknownSideEffects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098c44; bytecode file offset 0x995850"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
writeTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) changedVarDecls.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c88f8; bytecode file offset 0x9c51bc"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
withExpression: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) withExpression: (recoveredValue0) createNewInfo: (true) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011e9fc; bytecode file offset 0xa1b2bc"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
analyzeExpression: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasIleNoSideEffects.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCostsOfTempVar.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128db4; bytecode file offset 0xa25688"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
markAsBranchOnly
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := infoSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9450Arg1 | 
    | block280c9450Value0 block280c9450Value1 |
    block280c9450Value0 := block280c9450Arg1.
    block280c9450Value1 := (block280c9450Value0) markAsBranchOnly.
    block280c9450Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20150b1c; bytecode file offset 0xa4d3dc"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
repeatedlyExecuted
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) infoSet.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) isInfoExpressionUnchanged: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    infoSet := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20186ad8; bytecode file offset 0xa83398"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
findEquivalentInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := infoSet.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) isIleIdenticalInfo: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020f4bc; bytecode file offset 0xb0bd84"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
useTempAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := OrderedCollection.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := (recoveredBlock8Value3) expr.
    recoveredBlock8Value5 := (recoveredBlock8Value1) with: (recoveredBlock8Value2) with: (recoveredBlock8Value4).
    recoveredBlock8Value6 := (recoveredBlock8Value0) incCounter: (recoveredBlock8Value5).
    recoveredBlock8Value6
].
    (self) withExpression: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2024995c; bytecode file offset 0xb46230"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            changedVarDecls := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280de99cArg1 :block280de99cArg2 | 
    | block280de99cValue0 block280de99cValue1 block280de99cValue2 block280de99cValue3 block280de99cValue4 |
    block280de99cValue0 := block280de99cArg1.
    block280de99cValue1 := (block280de99cValue0) ileCosts.
    block280de99cValue2 := block280de99cArg2.
    block280de99cValue3 := (block280de99cValue2) ileCosts.
    block280de99cValue4 := (block280de99cValue1) > (block280de99cValue3).
    block280de99cValue4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            infoSet := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            hasUnknownSideEffects := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026ca7c; bytecode file offset 0xb69348"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
isInfoExpressionUnchanged: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDependsOnRuntimeConstantsOnly.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) example.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDependsOnRuntimeConstantsAndLocalsOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) changedVarDecls.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDependsOnAccesses: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasUnknownSideEffects.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) changedVarDecls.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDependsOnAccesses: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ea154; bytecode file offset 0xce6a2c"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
combineBranch: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoSet.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) findEquivalentInfo: (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) markAsBranchOnly.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) combineBranch: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoSet.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) findEquivalentInfo: (recoveredBlock38Stack3).
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            (recoveredBlock38Stack2 ~~ nil) ifTrue: [recoveredBlock38PC := 59] ifFalse: [recoveredBlock38PC := 52].
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) infoSet.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) markAsBranchOnly.
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) add: (recoveredBlock38Stack2).
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedVarDecls.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedVarDecls.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasUnknownSideEffects.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUnknownSideEffects.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            hasUnknownSideEffects := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ed5bc; bytecode file offset 0xce9e9c"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
combineAfter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) infoSet.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
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
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isInfoExpressionUnchanged: (recoveredBlock14Stack3).
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 54].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) findEquivalentInfo: (recoveredBlock14Stack2).
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 50] ifFalse: [recoveredBlock14PC := 38].
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) combineAfter: (recoveredBlock14Stack2).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := infoSet.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedVarDecls.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedVarDecls.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasUnknownSideEffects.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUnknownSideEffects.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            hasUnknownSideEffects := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20462af0; bytecode file offset 0xd5f3e8"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
withExpression: recoveredArg1 createNewInfo: recoveredArg2 do: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempAssignedExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeForCommonSubexpressionElimination.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleImplCastAssign.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyzeExpression: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) infoSet.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) example.
    recoveredBlock66Value2 := recoveredArg1.
    recoveredBlock66Value3 := (recoveredBlock66Value1) isIleIdentical: (recoveredBlock66Value2).
    recoveredBlock66Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81Stack4 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
    recoveredBlock81Stack0 := self.
    recoveredBlock81PC := 88.
    recoveredBlock81Done := false.
    [recoveredBlock81Done not] whileTrue: [
        recoveredBlock81Step := recoveredBlock81PC.
        recoveredBlock81Step = 88 ifTrue: [
            recoveredBlock81Stack1 := recoveredArg2.
            recoveredBlock81PC := 91.
        ].
        recoveredBlock81Step = 91 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 96] ifFalse: [recoveredBlock81PC := 94].
        ].
        recoveredBlock81Step = 94 ifTrue: [
            recoveredBlock81Stack1 := self.
            recoveredBlock81PC := 95.
        ].
        recoveredBlock81Step = 95 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 96 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) infoSet.
            recoveredBlock81PC := 98.
        ].
        recoveredBlock81Step = 98 ifTrue: [
            recoveredBlock81Stack1 := SGIlCommonSubexpressionEliminationInfo.
            recoveredBlock81PC := 100.
        ].
        recoveredBlock81Step = 100 ifTrue: [
            recoveredBlock81Stack2 := recoveredArg1.
            recoveredBlock81PC := 103.
        ].
        recoveredBlock81Step = 103 ifTrue: [
            recoveredBlock81Stack3 := self.
            recoveredBlock81PC := 104.
        ].
        recoveredBlock81Step = 104 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) generator.
            recoveredBlock81PC := 106.
        ].
        recoveredBlock81Step = 106 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) expressionContext.
            recoveredBlock81PC := 108.
        ].
        recoveredBlock81Step = 108 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) create: (recoveredBlock81Stack2) context: (recoveredBlock81Stack3).
            recoveredBlock81PC := 110.
        ].
        recoveredBlock81Step = 110 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) add: (recoveredBlock81Stack1).
            recoveredBlock81PC := 112.
        ].
        recoveredBlock81Step = 112 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack0.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204942c4; bytecode file offset 0xd90bc4"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) nextPutAll: ('Expression able to extract: ').
    (recoveredValue1) cr.
    recoveredValue5 := (self) infoSet.
    recoveredValue6 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 recoveredBlock30Value7 recoveredBlock30Value8 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value1) paths.
    recoveredBlock30Value3 := (recoveredBlock30Value2) size.
    recoveredBlock30Value4 := (recoveredBlock30Value3) asString.
    recoveredBlock30Value5 := (recoveredBlock30Value4) , (' # ').
    (recoveredBlock30Value0) nextPutAll: (recoveredBlock30Value5).
    recoveredBlock30Value6 := recoveredBlock30Arg1.
    recoveredBlock30Value7 := recoveredArg1.
    recoveredBlock30Value8 := (recoveredBlock30Value6) printOn: (recoveredBlock30Value7).
    recoveredBlock30Value8
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) nextPutAll: ('Variables changed: ').
    (recoveredValue7) cr.
    recoveredValue10 := (self) changedVarDecls.
    recoveredValue11 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 |
    recoveredBlock76Value0 := recoveredArg1.
    recoveredBlock76Value1 := recoveredBlock76Arg1.
    recoveredBlock76Value2 := (recoveredBlock76Value1) debugCode.
    recoveredBlock76Value3 := (recoveredBlock76Value0) nextPutAll: (recoveredBlock76Value2).
    recoveredBlock76Value3
].
    recoveredValue12 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := recoveredArg1.
    recoveredBlock91Value1 := (recoveredBlock91Value0) nextPutAll: (', ').
    recoveredBlock91Value1
].
    (recoveredValue10) do: (recoveredValue11) separatedBy: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredValue13.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue13.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue13.
    (recoveredValue16) nextPutAll: ('Unknown side effects: ').
    recoveredValue17 := recoveredValue13.
    recoveredValue18 := (self) hasUnknownSideEffects.
    recoveredValue19 := (recoveredValue18) asString.
    (recoveredValue17) nextPutAll: (recoveredValue19).
    (recoveredValue13) cr.
    ^self
! !

"ASDBase.ic method 0x205134b4; bytecode file offset 0xe0fdc0"
!SGIlCommonSubexpressionEliminationState methodsFor: 'recovered'!
checkForOptimizations: recoveredArg1 addTempVariableBefore: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := infoSet.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Local2 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isValidOptimization.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 20] ifFalse: [recoveredBlock6PC := 183].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) tempAssignIdentifier.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) paths.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block32Arg1 | 
    | recoveredBlock6Block32Stack0 recoveredBlock6Block32Stack1 recoveredBlock6Block32Stack2 recoveredBlock6Block32Stack3 recoveredBlock6Block32Stack4 recoveredBlock6Block32Stack5 recoveredBlock6Block32PC recoveredBlock6Block32Step recoveredBlock6Block32Done recoveredBlock6Block32Result |
    recoveredBlock6Block32Stack0 := nil.
    recoveredBlock6Block32PC := 38.
    recoveredBlock6Block32Done := false.
    [recoveredBlock6Block32Done not] whileTrue: [
        recoveredBlock6Block32Step := recoveredBlock6Block32PC.
        recoveredBlock6Block32Step = 38 ifTrue: [
            recoveredBlock6Block32Stack1 := nil.
            recoveredBlock6Block32PC := 39.
        ].
        recoveredBlock6Block32Step = 39 ifTrue: [
            recoveredBlock6Block32Stack2 := recoveredBlock6Block32Arg1.
            recoveredBlock6Block32PC := 40.
        ].
        recoveredBlock6Block32Step = 40 ifTrue: [
            recoveredBlock6Block32Stack2 := (recoveredBlock6Block32Stack2) first.
            recoveredBlock6Block32PC := 41.
        ].
        recoveredBlock6Block32Step = 41 ifTrue: [
            recoveredBlock6Block32Stack3 := recoveredBlock6Local2.
            recoveredBlock6Block32PC := 44.
        ].
        recoveredBlock6Block32Step = 44 ifTrue: [
            recoveredBlock6Block32Stack3 := (recoveredBlock6Block32Stack3) tempAssign.
            recoveredBlock6Block32PC := 46.
        ].
        recoveredBlock6Block32Step = 46 ifTrue: [
            (recoveredBlock6Block32Stack2 == recoveredBlock6Block32Stack3) ifTrue: [recoveredBlock6Block32PC := 64] ifFalse: [recoveredBlock6Block32PC := 50].
        ].
        recoveredBlock6Block32Step = 50 ifTrue: [
            recoveredBlock6Block32PC := 51.
        ].
        recoveredBlock6Block32Step = 51 ifTrue: [
            recoveredBlock6Block32Stack1 := recoveredArg1.
            recoveredBlock6Block32PC := 54.
        ].
        recoveredBlock6Block32Step = 54 ifTrue: [
            recoveredBlock6Block32Stack2 := recoveredBlock6Block32Arg1.
            recoveredBlock6Block32PC := 55.
        ].
        recoveredBlock6Block32Step = 55 ifTrue: [
            recoveredBlock6Block32Stack3 := OrderedCollection.
            recoveredBlock6Block32PC := 57.
        ].
        recoveredBlock6Block32Step = 57 ifTrue: [
            recoveredBlock6Block32Stack4 := recoveredBlock6Local2.
            recoveredBlock6Block32PC := 60.
        ].
        recoveredBlock6Block32Step = 60 ifTrue: [
            recoveredBlock6Block32Stack3 := (recoveredBlock6Block32Stack3) with: (recoveredBlock6Block32Stack4).
            recoveredBlock6Block32PC := 62.
        ].
        recoveredBlock6Block32Step = 62 ifTrue: [
            recoveredBlock6Block32Stack1 := (recoveredBlock6Block32Stack1) at: (recoveredBlock6Block32Stack2) put: (recoveredBlock6Block32Stack3).
            recoveredBlock6Block32PC := 64.
        ].
        recoveredBlock6Block32Step = 64 ifTrue: [
            recoveredBlock6Block32Result := recoveredBlock6Block32Stack1.
            recoveredBlock6Block32Done := true.
        ].
    ].
    recoveredBlock6Block32Result
].
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) example.
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack1 := SGIlAnyStructureVisitor.
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) create.
            recoveredBlock6PC := 79.
        ].
        recoveredBlock6Step = 79 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local1.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Stack3 := [:recoveredBlock6Block82Arg1 | 
    | recoveredBlock6Block82Stack0 recoveredBlock6Block82Stack1 recoveredBlock6Block82Stack2 recoveredBlock6Block82Stack3 recoveredBlock6Block82Stack4 recoveredBlock6Block82Stack5 recoveredBlock6Block82PC recoveredBlock6Block82Step recoveredBlock6Block82Done recoveredBlock6Block82Result |
    recoveredBlock6Block82Stack0 := self.
    recoveredBlock6Block82PC := 88.
    recoveredBlock6Block82Done := false.
    [recoveredBlock6Block82Done not] whileTrue: [
        recoveredBlock6Block82Step := recoveredBlock6Block82PC.
        recoveredBlock6Block82Step = 88 ifTrue: [
            recoveredBlock6Block82Stack1 := nil.
            recoveredBlock6Block82PC := 89.
        ].
        recoveredBlock6Block82Step = 89 ifTrue: [
            recoveredBlock6Block82Stack2 := recoveredBlock6Block82Arg1.
            recoveredBlock6Block82PC := 90.
        ].
        recoveredBlock6Block82Step = 90 ifTrue: [
            recoveredBlock6Block82Stack3 := recoveredBlock6Local1.
            recoveredBlock6Block82PC := 93.
        ].
        recoveredBlock6Block82Step = 93 ifTrue: [
            (recoveredBlock6Block82Stack2 == recoveredBlock6Block82Stack3) ifTrue: [recoveredBlock6Block82PC := 116] ifFalse: [recoveredBlock6Block82PC := 96].
        ].
        recoveredBlock6Block82Step = 96 ifTrue: [
            recoveredBlock6Block82PC := 97.
        ].
        recoveredBlock6Block82Step = 97 ifTrue: [
            recoveredBlock6Block82Stack1 := self.
            recoveredBlock6Block82PC := 98.
        ].
        recoveredBlock6Block82Step = 98 ifTrue: [
            recoveredBlock6Block82Stack2 := recoveredBlock6Block82Arg1.
            recoveredBlock6Block82PC := 99.
        ].
        recoveredBlock6Block82Step = 99 ifTrue: [
            recoveredBlock6Block82Stack3 := false.
            recoveredBlock6Block82PC := 100.
        ].
        recoveredBlock6Block82Step = 100 ifTrue: [
            recoveredBlock6Block82Stack4 := [:recoveredBlock6Block82Block100Arg1 | 
    | recoveredBlock6Block82Block100Value0 recoveredBlock6Block82Block100Value1 recoveredBlock6Block82Block100Value2 |
    recoveredBlock6Block82Block100Value0 := recoveredBlock6Block82Block100Arg1.
    recoveredBlock6Block82Block100Value1 := recoveredArg1.
    recoveredBlock6Block82Block100Value2 := (recoveredBlock6Block82Block100Value0) optimizePaths: (recoveredBlock6Block82Block100Value1).
    recoveredBlock6Block82Block100Value2
].
            recoveredBlock6Block82PC := 113.
        ].
        recoveredBlock6Block82Step = 113 ifTrue: [
            recoveredBlock6Block82Stack1 := (recoveredBlock6Block82Stack1) withExpression: (recoveredBlock6Block82Stack2) createNewInfo: (recoveredBlock6Block82Stack3) do: (recoveredBlock6Block82Stack4).
            recoveredBlock6Block82PC := 116.
        ].
        recoveredBlock6Block82Step = 116 ifTrue: [
            recoveredBlock6Block82Result := recoveredBlock6Block82Stack1.
            recoveredBlock6Block82Done := true.
        ].
    ].
    recoveredBlock6Block82Result
].
            recoveredBlock6PC := 117.
        ].
        recoveredBlock6Step = 117 ifTrue: [
            (recoveredBlock6Stack1) visitNode: (recoveredBlock6Stack2) check: (recoveredBlock6Stack3).
            recoveredBlock6PC := 119.
        ].
        recoveredBlock6Step = 119 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 122.
        ].
        recoveredBlock6Step = 122 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg2.
            recoveredBlock6PC := 125.
        ].
        recoveredBlock6Step = 125 ifTrue: [
            recoveredBlock6Stack3 := [
    | recoveredBlock6Block125Value0 recoveredBlock6Block125Value1 recoveredBlock6Block125Value2 recoveredBlock6Block125Value3 |
    recoveredBlock6Block125Value0 := OrderedCollection.
    recoveredBlock6Block125Value1 := recoveredArg2.
    recoveredBlock6Block125Value2 := (recoveredBlock6Block125Value1) last.
    recoveredBlock6Block125Value3 := (recoveredBlock6Block125Value0) with: (recoveredBlock6Block125Value2).
    recoveredBlock6Block125Value3
].
            recoveredBlock6PC := 142.
        ].
        recoveredBlock6Step = 142 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) ifAbsentPut: (recoveredBlock6Stack3).
            recoveredBlock6PC := 144.
        ].
        recoveredBlock6Step = 144 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local2.
            recoveredBlock6PC := 147.
        ].
        recoveredBlock6Step = 147 ifTrue: [
            (recoveredBlock6Stack1) add: (recoveredBlock6Stack2).
            recoveredBlock6PC := 149.
        ].
        recoveredBlock6Step = 149 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 152.
        ].
        recoveredBlock6Step = 152 ifTrue: [
            (recoveredBlock6Stack1) resetInfo.
            recoveredBlock6PC := 154.
        ].
        recoveredBlock6Step = 154 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 157.
        ].
        recoveredBlock6Step = 157 ifTrue: [
            recoveredBlock6Stack2 := OrderedCollection.
            recoveredBlock6PC := 159.
        ].
        recoveredBlock6Step = 159 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Local2.
            recoveredBlock6PC := 162.
        ].
        recoveredBlock6Step = 162 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) tempAssign.
            recoveredBlock6PC := 164.
        ].
        recoveredBlock6Step = 164 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Local2.
            recoveredBlock6PC := 167.
        ].
        recoveredBlock6Step = 167 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) tempAssign.
            recoveredBlock6PC := 169.
        ].
        recoveredBlock6Step = 169 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) expr.
            recoveredBlock6PC := 171.
        ].
        recoveredBlock6Step = 171 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) with: (recoveredBlock6Stack3) with: (recoveredBlock6Stack4).
            recoveredBlock6PC := 173.
        ].
        recoveredBlock6Step = 173 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) incCounter: (recoveredBlock6Stack2).
            recoveredBlock6PC := 175.
        ].
        recoveredBlock6Step = 175 ifTrue: [
            recoveredBlock6Stack2 := nil.
            recoveredBlock6PC := 176.
        ].
        recoveredBlock6Step = 176 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 177.
        ].
        recoveredBlock6Step = 177 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack3.
            recoveredBlock6PC := 180.
        ].
        recoveredBlock6Step = 180 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 183.
        ].
        recoveredBlock6Step = 183 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

