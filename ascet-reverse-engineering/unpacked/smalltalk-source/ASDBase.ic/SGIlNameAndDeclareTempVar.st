"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016760; bytecode file offset 0x92209c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
labelKey
    ^'label'
! !

"ASDBase.ic method 0x20016eb0; bytecode file offset 0x92209c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
userDefinedKey
    ^'userDefined'
! !

"ASDBase.ic method 0x2001cba4; bytecode file offset 0x92209c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
complexBaseKey
    ^'ComBase'
! !

"ASDBase.ic method 0x2001d7a4; bytecode file offset 0x92209c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
namedTempPoolKey
    ^'named.'
! !

"ASDBase.ic method 0x20025238; bytecode file offset 0x92209c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
baseKeyANSIC
    ^'ANSIC'
! !

"ASDBase.ic method 0x20048fe4; bytecode file offset 0x9458c0"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
resetTempVarWrite
    tempVarWrite := nil.
    ^self
! !

"ASDBase.ic method 0x20057dc8; bytecode file offset 0x956284"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
namedTempPoolKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) namedTempPoolKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006840c; bytecode file offset 0x965b90"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
pool
    | recoveredValue0 |
    recoveredValue0 := tempVarManagerPool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bf4c; bytecode file offset 0x9692b0"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
exprInStmnt
    | recoveredValue0 |
    recoveredValue0 := exprInStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d010; bytecode file offset 0x969c04"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
blockVarNameMap
    | recoveredValue0 |
    recoveredValue0 := blockVarNameMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3364; bytecode file offset 0x9bfde0"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
exprInStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exprInStmnt := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c81cc; bytecode file offset 0x9c4a84"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
nameAndDeclareTempVar: recoveredArg1 count: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    activeTempVars := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200f7d94; bytecode file offset 0x9f4e38"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
isTempVarManagerError
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c525cArg1 | 
    | block280c525cValue0 block280c525cValue1 |
    block280c525cValue0 := block280c525cArg1.
    block280c525cValue1 := (block280c525cValue0) notClear.
    block280c525cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20120408; bytecode file offset 0xa1ccc8"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempIdentifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasAlreadyBeenDeclared.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) isIleReference.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) declare: (recoveredStack2) asReference: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129d98; bytecode file offset 0xa26694"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempVarWrite
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tempVarWrite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            tempVarWrite := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := tempVarWrite.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132d00; bytecode file offset 0xa2f5c4"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    (self) visitNode: (recoveredValue1).
    (self) sequencePoint.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightExpr.
    (self) visitNode: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20132d2c; bytecode file offset 0xa2f5f0"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    (self) visitNode: (recoveredValue3).
    (self) sequencePointEndStmnt.
    ^self
! !

"ASDBase.ic method 0x2014527c; bytecode file offset 0xa41b44"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    super exprStmnt: (recoveredValue2).
    (self) sequencePointEndStmnt.
    ^self
! !

"ASDBase.ic method 0x20156388; bytecode file offset 0xa52c48"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) firstOperand.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) undefinedOrderDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20164520; bytecode file offset 0xa60de0"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
decTempVarUsageCount: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            decTempVarUsageCount := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20175700; bytecode file offset 0xa71fc8"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) loopBlock: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) exprInStmnt: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) expr.
    (self) visitNode: (recoveredValue4).
    (self) sequencePointEndStmnt.
    ^self
! !

"ASDBase.ic method 0x201762fc; bytecode file offset 0xa72bc4"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    (self) visitNode: (recoveredValue3).
    (self) sequencePointEndStmnt.
    recoveredValue4 := recoveredArg1.
    (self) loopBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2017e1a4; bytecode file offset 0xa7aa6c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
freeTempIdentifier: recoveredArg1 asReference: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) tempPoolKeyForTempId: (recoveredValue0) asReference: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) tempName.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) pool.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue7) freeTempId: (recoveredValue8) key: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20194924; bytecode file offset 0xa911ec"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) condExpr.
    (self) visitNode: (recoveredValue1).
    (self) sequencePoint.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) leftExpr.
    (self) visitNode: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rightExpr.
    (self) visitNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20194958; bytecode file offset 0xa9123c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    (self) visitNode: (recoveredValue3).
    (self) sequencePointEndStmnt.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) thenStmnt.
    (self) visitNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20194974; bytecode file offset 0xa9123c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    (self) visitNode: (recoveredValue3).
    (self) sequencePointEndStmnt.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) stmnt.
    (self) visitNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2019d4f4; bytecode file offset 0xa99dbc"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
freeTempIdentifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) isIleReference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) freeTempIdentifier: (recoveredStack2) asReference: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) freeTempIdentifier: (recoveredStack1) asReference: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6770; bytecode file offset 0xaa303c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
varBlockedStatementList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) variables.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) generator.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) visitMdlNode: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    super varBlockedStatementList: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a6d40; bytecode file offset 0xaa360c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
prePostIncDec: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super prePostIncDec: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleTempIdentifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarWrite.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ccf80; bytecode file offset 0xac9844"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) args.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue3 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) sequencePoint.
    recoveredBlock15Value0
].
    (recoveredValue1) do: (recoveredValue2) separatedBy: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e8c68; bytecode file offset 0xae5530"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) tempVar.
    recoveredBlock4Value2 := (recoveredBlock4Value1) hasAlreadyBeenDeclared.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'Undeclared temporary variable'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f0938; bytecode file offset 0xaed1f8"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
sequencePointEndStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) countTempVarIdentifierUsage: (recoveredBlock12Value0).
    recoveredBlock12Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            decTempVarUsageCount := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) resetTempVarWrite.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f5264; bytecode file offset 0xaf1b30"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    (self) visitNode: (recoveredValue3).
    (self) sequencePointEndStmnt.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) thenStmnt.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) elseStmnt.
    (self) visitNode: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201f5408; bytecode file offset 0xaf1cd8"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVar.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasAlreadyBeenDeclared.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) isIleReference.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) declare: (recoveredStack2) asReference: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) decTempVarUsageCount: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6394; bytecode file offset 0xaf2c70"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) args.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := [
    | recoveredBlock8Block14Value0 recoveredBlock8Block14Value1 |
    recoveredBlock8Block14Value0 := recoveredBlock8Arg1.
    recoveredBlock8Block14Value1 := (self) visitNode: (recoveredBlock8Block14Value0).
    recoveredBlock8Block14Value1
].
    recoveredBlock8Value1 := (self) undefinedOrderDo: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201f63ac; bytecode file offset 0xaf2c70"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) args.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := [
    | recoveredBlock8Block14Value0 recoveredBlock8Block14Value1 |
    recoveredBlock8Block14Value0 := recoveredBlock8Arg1.
    recoveredBlock8Block14Value1 := (self) visitNode: (recoveredBlock8Block14Value0).
    recoveredBlock8Block14Value1
].
    recoveredBlock8Value1 := (self) undefinedOrderDo: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201fb410; bytecode file offset 0xaf7cdc"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempPoolKeyForTempId: recoveredArg1 asReference: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNamedTempIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) namedTempPoolKey: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempPoolKeyForType: (recoveredStack2) asReference: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) tempPoolCreateIfAbsent: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20225398; bytecode file offset 0xb21c94"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
freeTempScope
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) userDefinedKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) reserveScope.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) reserveScope.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280dc23cArg1 | 
    | block280dc23cValue0 block280dc23cValue1 |
    block280dc23cValue0 := block280dc23cArg1.
    block280dc23cValue1 := (block280dc23cValue0) freeScope.
    block280dc23cValue1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202253c0; bytecode file offset 0xb21c94"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
freeTemps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) userDefinedKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) reserveTemps.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) reserveTemps.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280dc260Arg1 | 
    | block280dc260Value0 block280dc260Value1 |
    block280dc260Value0 := block280dc260Arg1.
    block280dc260Value1 := (block280dc260Value0) freeTemps.
    block280dc260Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20230a80; bytecode file offset 0xb2d37c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
reserveTempScope
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dcfe0Arg1 | 
    | block280dcfe0Value0 block280dcfe0Value1 |
    block280dcfe0Value0 := block280dcfe0Arg1.
    block280dcfe0Value1 := (block280dcfe0Value0) reserveScope.
    block280dcfe0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) userDefinedKey.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) freeScope.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelKey.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) freeScope.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20230aa8; bytecode file offset 0xb2d37c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
reserveTemps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dd004Arg1 | 
    | block280dd004Value0 block280dd004Value1 |
    block280dd004Value0 := block280dd004Arg1.
    block280dd004Value1 := (block280dd004Value0) reserveTemps.
    block280dd004Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) userDefinedKey.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) freeTemps.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelKey.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) freeTemps.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fb84; bytecode file offset 0xb3c460"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) firstOperand.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) undefinedOrderDo: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) secondOperand.
    recoveredBlock19Value2 := (self) visitNode: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    (self) undefinedOrderDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2023fb9c; bytecode file offset 0xb3c460"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) leftExpr.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) undefinedOrderDo: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) rightExpr.
    recoveredBlock19Value2 := (self) visitNode: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    (self) undefinedOrderDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20288c7c; bytecode file offset 0xb8554c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempVarTypeForIleType: recoveredArg1 charTableScope: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkType: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleEnumType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgApplicationErrorType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAUTOSARReturnType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArithmeticType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028b5ec; bytecode file offset 0xb87eb4"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
checkTempVars
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := activeTempVars.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := [
    | recoveredBlock6Block12Value0 recoveredBlock6Block12Value1 recoveredBlock6Block12Value2 |
    recoveredBlock6Block12Value0 := recoveredBlock6Arg2.
    recoveredBlock6Block12Value1 := (recoveredBlock6Block12Value0) at: (1).
    recoveredBlock6Block12Value2 := (recoveredBlock6Block12Value1) = (0).
    recoveredBlock6Block12Value2
].
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := [
    'Temporary variables are not freed'
].
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) ileAssert: (recoveredBlock6Stack1) message: (recoveredBlock6Stack2).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202a2154; bytecode file offset 0xb9ea1c"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) baseExpr.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) undefinedOrderDo: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) args.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := [
    | recoveredBlock22Block28Value0 recoveredBlock22Block28Value1 |
    recoveredBlock22Block28Value0 := recoveredBlock22Arg1.
    recoveredBlock22Block28Value1 := (self) visitNode: (recoveredBlock22Block28Value0).
    recoveredBlock22Block28Value1
].
    recoveredBlock22Value1 := (self) undefinedOrderDo: (recoveredBlock22Value0).
    recoveredBlock22Value1
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202a4ee0; bytecode file offset 0xba17b4"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
loopBlock: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGIlExtractLoopTempVarsVisitor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) doStmnt.
    recoveredValue3 := (recoveredValue0) extract: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) incTempVarUsageCount: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) doStmnt.
    (self) visitNode: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (self) decTempVarUsageCount: (recoveredBlock28Value0).
    recoveredBlock28Value1
].
    (recoveredValue8) do: (recoveredValue9).
    (self) sequencePointEndStmnt.
    ^self
! !

"ASDBase.ic method 0x202eb890; bytecode file offset 0xbe8160"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) firstExpr.
    (self) exprInStmnt: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) firstExpr.
    (self) visitNode: (recoveredValue3).
    (self) sequencePointEndStmnt.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) expr.
    (self) exprInStmnt: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) expr.
    (self) visitNode: (recoveredValue7).
    (self) sequencePointEndStmnt.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) lastExpr.
    (self) exprInStmnt: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) lastExpr.
    (self) visitNode: (recoveredValue11).
    (self) sequencePointEndStmnt.
    recoveredValue12 := recoveredArg1.
    (self) loopBlock: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x202f5b8c; bytecode file offset 0xbf2454"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) firstOperand.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) undefinedOrderDo: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) secondOperand.
    recoveredBlock19Value2 := (self) visitNode: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    (self) undefinedOrderDo: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredArg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) thirdOperand.
    recoveredBlock35Value2 := (self) visitNode: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
    (self) undefinedOrderDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202f5fec; bytecode file offset 0xbf28cc"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
declare: recoveredArg1 asReference: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNamedTempIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEnumType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) tempPoolKeyForTempId: (recoveredStack4) asReference: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := (recoveredStack5) charTableScope.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempDecl: (recoveredStack3) type: (recoveredStack4) charTableScope: (recoveredStack5) asReference: (recoveredStack6).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) tempName: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := activeTempVars.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) decTempVarUsageCount: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20315588; bytecode file offset 0xc11e68"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reserveTempScope.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) reserveTemps.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    super methodBody: (recoveredBlock9Value0).
    recoveredBlock9Value1 := (self) checkTempVars.
    recoveredBlock9Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock27Value0 |
    (self) freeTemps.
    recoveredBlock27Value0 := (self) freeTempScope.
    recoveredBlock27Value0
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTempVarManagerError.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ileFatalNo: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203273ac; bytecode file offset 0xc23c70"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
undefinedOrderDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            decTempVarUsageCount := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := decTempVarUsageCount.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            (recoveredBlock30Stack1 == nil) ifTrue: [recoveredBlock30PC := 49] ifFalse: [recoveredBlock30PC := 42].
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := decTempVarUsageCount.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            (recoveredBlock30Stack1) addAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            decTempVarUsageCount := recoveredBlock30Stack2.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bfafc; bytecode file offset 0xcbc3ec"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempPoolCreateIfAbsent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) namedTempPoolKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) startsWith: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := SGCgNamedTempVarManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) namedTempPoolKey.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) copyFrom: (recoveredStack5) to: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack3) baseName: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := SGCgTempVarManager.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseKeyANSIC.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) pool.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) reserveTemps.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 62] ifFalse: [recoveredPC := 79]] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c0f08; bytecode file offset 0xcbd7e8"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
sequencePoint
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isIleTempIdentifier.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 40].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) tempVarWrite.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includes: (recoveredBlock18Stack2).
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) tempVarWrite.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) tempAssign.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) tempVar.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includes: (recoveredBlock18Stack2).
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 67] ifFalse: [recoveredBlock18PC := 56].
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            (recoveredBlock18Stack1) countTempVarIdentifierUsage: (recoveredBlock18Stack2).
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := decTempVarUsageCount.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040a268; bytecode file offset 0xd06b54"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
incTempVarUsageCount: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := activeTempVars.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := [
    false
].
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := [
    '#incTempVarUsageCounter: should not be called for inactive temp variables.'
].
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            (recoveredBlock11Stack0) ileAssert: (recoveredBlock11Stack1) message: (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack0 := Array.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := 0.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) with: (recoveredBlock11Stack1).
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := [
    'remaining count should be positive.'
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := activeTempVars.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20424e80; bytecode file offset 0xd21764"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempDecl: recoveredArg1 type: recoveredArg2 charTableScope: recoveredArg3 asReference: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := (self) expander.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := ('Missing key ') , (recoveredBlock8Value1).
    recoveredBlock8Value3 := (recoveredBlock8Value2) , (' for temp var declaration').
    recoveredBlock8Value4 := (recoveredBlock8Value0) ileFatalExpect: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) newTempVarName: (recoveredStack1) type: (recoveredStack2) charTableScope: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) varNameNotYetUsed.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarTypeForIleType: (recoveredStack1) charTableScope: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) expander.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) varAttributesFromType: (recoveredStack4) asReference: (recoveredStack5).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) tempVarDecl: (recoveredStack1) type: (recoveredStack2) attributes: (recoveredStack3) charTableScope: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046de64; bytecode file offset 0xd6a764"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
tempPoolKeyForType: recoveredArg1 asReference: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempPoolKeyForType: (recoveredStack2) asReference: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkType: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleComplexClassType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleComplexClassNoEnumType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asModuleName: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleANSICType.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseKeyANSIC.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArrayReferenceType.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMatrix.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := '_ASCET_matrix_ref_'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := '_ASCET_array_ref_'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := '_instance'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCType.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) tempPoolCreateIfAbsent: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048ce6c; bytecode file offset 0xd89764"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
countTempVarIdentifierUsage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := activeTempVars.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) freeTempIdentifier: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := activeTempVars.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := [
    false
].
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack2 := [
    '#countTempVarIdentifierUsage: should not be called for inactive temp variables.'
].
            recoveredBlock35PC := 52.
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            (recoveredBlock35Stack0) ileAssert: (recoveredBlock35Stack1) message: (recoveredBlock35Stack2).
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Stack0 := Array.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack1 := 0.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) with: (recoveredBlock35Stack1).
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack0.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := [
    'remaingCount should be positive.'
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := activeTempVars.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) freeTempIdentifier: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20506898; bytecode file offset 0xe031c0"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleModelIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockVarNameMap.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock55Local1 recoveredBlock55Local2 recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 recoveredBlock55Value9 recoveredBlock55Value10 recoveredBlock55Value11 recoveredBlock55Value12 recoveredBlock55Value13 recoveredBlock55Value14 recoveredBlock55Value15 recoveredBlock55Value16 recoveredBlock55Value17 recoveredBlock55Value18 recoveredBlock55Value19 |
    recoveredBlock55Value0 := recoveredLocal1.
    recoveredBlock55Value1 := (recoveredBlock55Value0) mdlNode.
    recoveredBlock55Value2 := (recoveredBlock55Value1) varDecl.
    recoveredBlock55Value3 := (recoveredBlock55Value2) ileName.
    recoveredBlock55Value4 := (self) namedTempPoolKey: (recoveredBlock55Value3).
    recoveredBlock55Local2 := recoveredBlock55Value4.
    recoveredBlock55Value5 := recoveredBlock55Local2.
    (self) tempPoolCreateIfAbsent: (recoveredBlock55Value5).
    recoveredBlock55Value6 := (self) pool.
    recoveredBlock55Value7 := recoveredBlock55Local2.
    recoveredBlock55Value8 := (recoveredBlock55Value6) at: (recoveredBlock55Value7).
    recoveredBlock55Local1 := recoveredBlock55Value8.
    recoveredBlock55Value9 := recoveredLocal1.
    recoveredBlock55Value10 := (recoveredBlock55Value9) mdlNode.
    recoveredBlock55Value11 := (recoveredBlock55Value10) varDecl.
    recoveredBlock55Value12 := SGCgName.
    recoveredBlock55Value13 := (recoveredBlock55Value12) create.
    recoveredBlock55Value14 := recoveredBlock55Local1.
    recoveredBlock55Value15 := recoveredBlock55Local2.
    recoveredBlock55Value16 := recoveredLocal1.
    recoveredBlock55Value17 := (recoveredBlock55Value16) type.
    recoveredBlock55Value18 := (recoveredBlock55Value14) newTempVarName: (recoveredBlock55Value15) type: (recoveredBlock55Value17) charTableScope: (nil).
    recoveredBlock55Value19 := (recoveredBlock55Value13) label: (recoveredBlock55Value18).
    (recoveredBlock55Value11) mdlName: (recoveredBlock55Value19).
    nil
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) genIleLazy.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleTempIdentifier.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprInStmnt.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarWrite.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) sequencePointEndStmnt.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleTempIdentifier.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarWrite.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20537674; bytecode file offset 0xe33f90"
!SGIlNameAndDeclareTempVar methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    blockVarNameMap := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new: (40).
    tempVarManagerPool := recoveredValue3.
    recoveredValue4 := tempVarManagerPool.
    recoveredValue5 := SGCgTempVarManager.
    recoveredValue6 := (recoveredValue5) create.
    (recoveredValue4) at: ('bit') put: (recoveredValue6).
    recoveredValue7 := tempVarManagerPool.
    recoveredValue8 := SGCgTempVarManager.
    recoveredValue9 := (recoveredValue8) create.
    (recoveredValue7) at: ('uint8') put: (recoveredValue9).
    recoveredValue10 := tempVarManagerPool.
    recoveredValue11 := SGCgTempVarManager.
    recoveredValue12 := (recoveredValue11) create.
    (recoveredValue10) at: ('sint8') put: (recoveredValue12).
    recoveredValue13 := tempVarManagerPool.
    recoveredValue14 := SGCgTempVarManager.
    recoveredValue15 := (recoveredValue14) create.
    (recoveredValue13) at: ('uint16') put: (recoveredValue15).
    recoveredValue16 := tempVarManagerPool.
    recoveredValue17 := SGCgTempVarManager.
    recoveredValue18 := (recoveredValue17) create.
    (recoveredValue16) at: ('sint16') put: (recoveredValue18).
    recoveredValue19 := tempVarManagerPool.
    recoveredValue20 := SGCgTempVarManager.
    recoveredValue21 := (recoveredValue20) create.
    (recoveredValue19) at: ('uint32') put: (recoveredValue21).
    recoveredValue22 := tempVarManagerPool.
    recoveredValue23 := SGCgTempVarManager.
    recoveredValue24 := (recoveredValue23) create.
    (recoveredValue22) at: ('sint32') put: (recoveredValue24).
    recoveredValue25 := tempVarManagerPool.
    recoveredValue26 := SGCgTempVarManager.
    recoveredValue27 := (recoveredValue26) create.
    (recoveredValue25) at: ('real32') put: (recoveredValue27).
    recoveredValue28 := tempVarManagerPool.
    recoveredValue29 := SGCgTempVarManager.
    recoveredValue30 := (recoveredValue29) create.
    (recoveredValue28) at: ('real64') put: (recoveredValue30).
    recoveredValue31 := tempVarManagerPool.
    recoveredValue32 := SGCgTempVarManager.
    recoveredValue33 := (recoveredValue32) create.
    (recoveredValue31) at: ('bool') put: (recoveredValue33).
    recoveredValue34 := tempVarManagerPool.
    recoveredValue35 := SGCgTempVarManager.
    recoveredValue36 := (recoveredValue35) create.
    (recoveredValue34) at: ('Vec_sint16') put: (recoveredValue36).
    recoveredValue37 := tempVarManagerPool.
    recoveredValue38 := SGCgTempVarManager.
    recoveredValue39 := (recoveredValue38) create.
    (recoveredValue37) at: ('Vec_uint32') put: (recoveredValue39).
    recoveredValue40 := tempVarManagerPool.
    recoveredValue41 := SGCgTempVarManager.
    recoveredValue42 := (recoveredValue41) create.
    (recoveredValue40) at: ('Vec_sint32') put: (recoveredValue42).
    recoveredValue43 := tempVarManagerPool.
    recoveredValue44 := SGCgTempVarManager.
    recoveredValue45 := (recoveredValue44) create.
    (recoveredValue43) at: ('Vec_real64') put: (recoveredValue45).
    recoveredValue46 := tempVarManagerPool.
    recoveredValue47 := (self) baseKeyANSIC.
    recoveredValue48 := SGCgTempVarManager.
    recoveredValue49 := (recoveredValue48) create.
    (recoveredValue46) at: (recoveredValue47) put: (recoveredValue49).
    recoveredValue50 := tempVarManagerPool.
    recoveredValue51 := (self) labelKey.
    recoveredValue52 := SGCgTempVarManager.
    recoveredValue53 := (recoveredValue52) create.
    (recoveredValue50) at: (recoveredValue51) put: (recoveredValue53).
    recoveredValue54 := tempVarManagerPool.
    recoveredValue55 := (self) userDefinedKey.
    recoveredValue56 := SGCgTempVarManager.
    recoveredValue57 := (recoveredValue56) create.
    (recoveredValue54) at: (recoveredValue55) put: (recoveredValue57).
    recoveredValue58 := tempVarManagerPool.
    recoveredValue59 := (self) complexBaseKey.
    recoveredValue60 := SGCgTempVarManager.
    recoveredValue61 := (recoveredValue60) create.
    (recoveredValue58) at: (recoveredValue59) put: (recoveredValue61).
    ^self
! !

