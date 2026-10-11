"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002e6d4; bytecode file offset 0x934580"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
ileDependsOnRuntimeConstantsOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) example.
    recoveredValue1 := (recoveredValue0) ileDependsOnRuntimeConstantsOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034d14; bytecode file offset 0x934580"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
ileCosts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) example.
    recoveredValue1 := (recoveredValue0) ileCosts.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a950; bytecode file offset 0x94721c"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
markAsBranchOnly
    branchOnly := true.
    ^self
! !

"ASDBase.ic method 0x20058e18; bytecode file offset 0x956284"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
isIleIdentical: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) example.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isIleIdentical: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200661ec; bytecode file offset 0x963428"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
example
    | recoveredValue0 |
    recoveredValue0 := example.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c6c; bytecode file offset 0x9646f8"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
tempAssignIdentifierOrNil
    | recoveredValue0 |
    recoveredValue0 := tempAssignIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200680bc; bytecode file offset 0x965b90"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
expressionContext
    | recoveredValue0 |
    recoveredValue0 := expressionContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a060; bytecode file offset 0x966bdc"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
branchOnly
    | recoveredValue0 |
    recoveredValue0 := branchOnly.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aeb4; bytecode file offset 0x967a18"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
paths
    | recoveredValue0 |
    recoveredValue0 := paths.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085ee4; bytecode file offset 0x9827b0"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
isIleIdenticalInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) example.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) example.
    recoveredValue3 := (recoveredValue0) isIleIdentical: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008980c; bytecode file offset 0x9860d8"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
resetInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    paths := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a2f70; bytecode file offset 0x99f82c"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
combineExamples: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := paths.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) paths.
    (recoveredValue0) addAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200abce8; bytecode file offset 0x9a85bc"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
incCounter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) paths.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) copy.
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be8b4; bytecode file offset 0x9bb178"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
example: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    example := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c056c; bytecode file offset 0x9bd228"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
expressionContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expressionContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e87e8; bytecode file offset 0x9e50ac"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) example.
    recoveredValue3 := (recoveredValue2) debugCode.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200f73ec; bytecode file offset 0x9f4e38"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
examples
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paths.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c43e0Arg1 | 
    | block280c43e0Value0 block280c43e0Value1 |
    block280c43e0Value0 := block280c43e0Arg1.
    block280c43e0Value1 := (block280c43e0Value0) last.
    block280c43e0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010be6c; bytecode file offset 0xa0872c"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetInfo.
    branchOnly := false.
    ^self
! !

"ASDBase.ic method 0x2011577c; bytecode file offset 0xa12034"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
tempAssignIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tempAssignIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTempAssignIdentifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            tempAssignIdentifier := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := tempAssignIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b974; bytecode file offset 0xa2822c"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
isValidOptimization
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
            recoveredStack2 := branchOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := paths.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20144b54; bytecode file offset 0xa41414"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
ileDependsOnAccesses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) example.
    recoveredBlock5Value2 := (recoveredBlock5Value0) ileMayChangeResultOfExpr: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) anySatisfy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20150aec; bytecode file offset 0xa4d3b4"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
createTempAssignIdentifier
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expressionContext.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) ileBuilder.
    recoveredBlock5Value1 := (self) example.
    recoveredBlock5Value2 := (recoveredBlock5Value0) tempAssign: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) executeInContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20153524; bytecode file offset 0xa4fde0"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
combineAfter: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) branchOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchOnly.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            branchOnly := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) combineExamples: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153784; bytecode file offset 0xa50040"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
combineBranch: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) branchOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchOnly.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            branchOnly := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) combineExamples: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202551fc; bytecode file offset 0xb51ac0"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
joinWithTempAssign: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tempAssignIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignIdentifier: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            tempAssignIdentifier := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := tempAssignIdentifier.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := tempAssignIdentifier.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044353c; bytecode file offset 0xd3fe0c"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
searchPrefixOf: recoveredArg1 in: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) copyFrom: (recoveredStack5) to: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30Stack6 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) first.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) isIleTempVarIdentifier.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 44] ifFalse: [recoveredBlock30PC := 75].
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg3.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Stack2 := recoveredArg1.
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) at: (recoveredBlock30Stack3).
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack3 := recoveredArg1.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack4 := recoveredLocal1.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) + (1).
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack5 := recoveredArg1.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack5 := (recoveredBlock30Stack5) size.
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) copyFrom: (recoveredBlock30Stack4) to: (recoveredBlock30Stack5).
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            (recoveredBlock30Stack1) value: (recoveredBlock30Stack2) value: (recoveredBlock30Stack3) value: (recoveredBlock30Stack4).
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredBlock30Stack1 := false.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            ^recoveredBlock30Stack1
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) ifPresent: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 14] ifFalse: [recoveredPC := 107]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b0e60; bytecode file offset 0xdad764"
!SGIlCommonSubexpressionEliminationInfo methodsFor: 'recovered'!
optimizePaths: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paths.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
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
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) paths.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := [:recoveredBlock16Block26Arg1 :recoveredBlock16Block26Arg2 :recoveredBlock16Block26Arg3 | 
    | recoveredBlock16Block26Local1 recoveredBlock16Block26Stack0 recoveredBlock16Block26Stack1 recoveredBlock16Block26Stack2 recoveredBlock16Block26Stack3 recoveredBlock16Block26Stack4 recoveredBlock16Block26Stack5 recoveredBlock16Block26Stack6 recoveredBlock16Block26PC recoveredBlock16Block26Step recoveredBlock16Block26Done recoveredBlock16Block26Result |
    recoveredBlock16Block26Stack0 := self.
    recoveredBlock16Block26PC := 32.
    recoveredBlock16Block26Done := false.
    [recoveredBlock16Block26Done not] whileTrue: [
        recoveredBlock16Block26Step := recoveredBlock16Block26PC.
        recoveredBlock16Block26Step = 32 ifTrue: [
            recoveredBlock16Block26Stack1 := [
    | recoveredBlock16Block26Block32Value0 recoveredBlock16Block26Block32Value1 recoveredBlock16Block26Block32Value2 |
    recoveredBlock16Block26Block32Value0 := recoveredBlock16Block26Arg3.
    recoveredBlock16Block26Block32Value1 := (recoveredBlock16Block26Block32Value0) first.
    recoveredBlock16Block26Block32Value2 := (recoveredBlock16Block26Block32Value1) isIleTempVarIdentifier.
    recoveredBlock16Block26Block32Value2
].
            recoveredBlock16Block26PC := 45.
        ].
        recoveredBlock16Block26Step = 45 ifTrue: [
            recoveredBlock16Block26Stack2 := [
    'Do not take added tempvariables before statement into account!!'
].
            recoveredBlock16Block26PC := 47.
        ].
        recoveredBlock16Block26Step = 47 ifTrue: [
            recoveredBlock16Block26PC := 53.
        ].
        recoveredBlock16Block26Step = 53 ifTrue: [
            (recoveredBlock16Block26Stack0) ileAssert: (recoveredBlock16Block26Stack1) message: (recoveredBlock16Block26Stack2).
            recoveredBlock16Block26PC := 55.
        ].
        recoveredBlock16Block26Step = 55 ifTrue: [
            recoveredBlock16Block26Stack0 := recoveredBlock16Block26Arg3.
            recoveredBlock16Block26PC := 58.
        ].
        recoveredBlock16Block26Step = 58 ifTrue: [
            recoveredBlock16Block26Stack0 := (recoveredBlock16Block26Stack0) first.
            recoveredBlock16Block26PC := 59.
        ].
        recoveredBlock16Block26Step = 59 ifTrue: [
            recoveredBlock16Block26Stack0 := (recoveredBlock16Block26Stack0) tempAssign.
            recoveredBlock16Block26PC := 61.
        ].
        recoveredBlock16Block26Step = 61 ifTrue: [
            recoveredBlock16Block26Local1 := recoveredBlock16Block26Stack0.
            recoveredBlock16Block26PC := 64.
        ].
        recoveredBlock16Block26Step = 64 ifTrue: [
            recoveredBlock16Block26Stack0 := nil.
            recoveredBlock16Block26PC := 65.
        ].
        recoveredBlock16Block26Step = 65 ifTrue: [
            recoveredBlock16Block26Stack1 := recoveredBlock16Block26Arg1.
            recoveredBlock16Block26PC := 68.
        ].
        recoveredBlock16Block26Step = 68 ifTrue: [
            recoveredBlock16Block26Stack2 := recoveredBlock16Block26Local1.
            recoveredBlock16Block26PC := 71.
        ].
        recoveredBlock16Block26Step = 71 ifTrue: [
            recoveredBlock16Block26Stack2 := (recoveredBlock16Block26Stack2) expr.
            recoveredBlock16Block26PC := 73.
        ].
        recoveredBlock16Block26Step = 73 ifTrue: [
            (recoveredBlock16Block26Stack1 ~~ recoveredBlock16Block26Stack2) ifTrue: [recoveredBlock16Block26PC := 102] ifFalse: [recoveredBlock16Block26PC := 76].
        ].
        recoveredBlock16Block26Step = 76 ifTrue: [
            recoveredBlock16Block26PC := 77.
        ].
        recoveredBlock16Block26Step = 77 ifTrue: [
            recoveredBlock16Block26Stack0 := recoveredLocal1.
            recoveredBlock16Block26PC := 80.
        ].
        recoveredBlock16Block26Step = 80 ifTrue: [
            recoveredBlock16Block26Stack1 := recoveredBlock16Block26Arg2.
            recoveredBlock16Block26PC := 83.
        ].
        recoveredBlock16Block26Step = 83 ifTrue: [
            recoveredBlock16Block26Stack2 := recoveredBlock16Block26Stack1.
            recoveredBlock16Block26PC := 84.
        ].
        recoveredBlock16Block26Step = 84 ifTrue: [
            recoveredBlock16Block26Stack3 := OrderedCollection.
            recoveredBlock16Block26PC := 86.
        ].
        recoveredBlock16Block26Step = 86 ifTrue: [
            recoveredBlock16Block26Stack4 := recoveredBlock16Block26Local1.
            recoveredBlock16Block26PC := 89.
        ].
        recoveredBlock16Block26Step = 89 ifTrue: [
            recoveredBlock16Block26Stack5 := recoveredBlock16Block26Local1.
            recoveredBlock16Block26PC := 92.
        ].
        recoveredBlock16Block26Step = 92 ifTrue: [
            recoveredBlock16Block26Stack5 := (recoveredBlock16Block26Stack5) expr.
            recoveredBlock16Block26PC := 94.
        ].
        recoveredBlock16Block26Step = 94 ifTrue: [
            recoveredBlock16Block26Stack3 := (recoveredBlock16Block26Stack3) with: (recoveredBlock16Block26Stack4) with: (recoveredBlock16Block26Stack5).
            recoveredBlock16Block26PC := 96.
        ].
        recoveredBlock16Block26Step = 96 ifTrue: [
            recoveredBlock16Block26Stack4 := 1.
            recoveredBlock16Block26PC := 98.
        ].
        recoveredBlock16Block26Step = 98 ifTrue: [
            (recoveredBlock16Block26Stack2) addAll: (recoveredBlock16Block26Stack3) beforeIndex: (recoveredBlock16Block26Stack4).
            recoveredBlock16Block26PC := 100.
        ].
        recoveredBlock16Block26Step = 100 ifTrue: [
            recoveredBlock16Block26Stack0 := (recoveredBlock16Block26Stack0) add: (recoveredBlock16Block26Stack1).
            recoveredBlock16Block26PC := 102.
        ].
        recoveredBlock16Block26Step = 102 ifTrue: [
            recoveredBlock16Block26Result := recoveredBlock16Block26Stack0.
            recoveredBlock16Block26Done := true.
        ].
    ].
    recoveredBlock16Block26Result
].
    recoveredBlock16Value3 := (self) searchPrefixOf: (recoveredBlock16Value0) in: (recoveredBlock16Value1) do: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            paths := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := paths.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock119Value0 recoveredBlock119Value1 |
    recoveredBlock119Value0 := paths.
    recoveredBlock119Value1 := (recoveredBlock119Value0) notEmpty.
    recoveredBlock119Value1
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := [
    'there should be at least one path'
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

