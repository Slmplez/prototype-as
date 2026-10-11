"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003da28; bytecode file offset 0x93bf94"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052cd4; bytecode file offset 0x9505d0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    (self) fail.
    ^self
! !

"ASDBase.ic method 0x20052e6c; bytecode file offset 0x9505d0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    (self) fail.
    ^self
! !

"ASDBase.ic method 0x20053bb0; bytecode file offset 0x9505d0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    (self) fail.
    ^self
! !

"ASDBase.ic method 0x20053c64; bytecode file offset 0x9505d0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    (self) fail.
    ^self
! !

"ASDBase.ic method 0x20060058; bytecode file offset 0x95c90c"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarExpectIncrement
    expectedIncrementDecrement := 1.
    ^self
! !

"ASDBase.ic method 0x20060234; bytecode file offset 0x95caf0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarExpectDecrement
    expectedIncrementDecrement := -1.
    ^self
! !

"ASDBase.ic method 0x200678e4; bytecode file offset 0x9646f8"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarDecl
    | recoveredValue0 |
    recoveredValue0 := loopVarDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006800c; bytecode file offset 0x965b90"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarLowerBound
    | recoveredValue0 |
    recoveredValue0 := loopVarLowerBound.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c38; bytecode file offset 0x966bdc"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarUpperBound
    | recoveredValue0 |
    recoveredValue0 := loopVarUpperBound.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab44; bytecode file offset 0x967a18"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
incrementDecrementFound
    | recoveredValue0 |
    recoveredValue0 := incrementDecrementFound.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b238; bytecode file offset 0x96873c"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
expectedIncrementDecrement
    | recoveredValue0 |
    recoveredValue0 := expectedIncrementDecrement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c9e4; bytecode file offset 0x9692b0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
indexedExprUsage
    | recoveredValue0 |
    recoveredValue0 := indexedExprUsage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf1d0; bytecode file offset 0x9bc0b4"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loopVarDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0944; bytecode file offset 0x9bd228"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarLowerBound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loopVarLowerBound := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1600; bytecode file offset 0x9bdf14"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarUpperBound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loopVarUpperBound := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20118568; bytecode file offset 0xa14e28"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
fail
    (self) loopVarDecl: (nil).
    (self) loopVarLowerBound: (nil).
    (self) loopVarUpperBound: (nil).
    ^self
! !

"ASDBase.ic method 0x2011e9b0; bytecode file offset 0xa1b270"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
isLoopVariableIdentifier: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) isMdlIdentifier.
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
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) loopVarDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201460b0; bytecode file offset 0xa42970"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incrementDecrementFound.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoopVariableIdentifier: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) fail.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016a8a0; bytecode file offset 0xa6718c"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
generator
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGGeneratorFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SGIleBuilder.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) createIleExpander.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c723c; bytecode file offset 0xac3b0c"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarIndexRange
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) uintContext.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := SGIlIndexRange.
    recoveredBlock7Value1 := (self) loopVarLowerBound.
    recoveredBlock7Value2 := (self) loopVarUpperBound.
    recoveredBlock7Value3 := (recoveredBlock7Value0) createLeft: (recoveredBlock7Value1) right: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201c91c4; bytecode file offset 0xac5a84"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarIncrement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incrementDecrementFound.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            incrementDecrementFound := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expectedIncrementDecrement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) fail.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c91f4; bytecode file offset 0xac5ab4"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
loopVarDecrement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incrementDecrementFound.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            incrementDecrementFound := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expectedIncrementDecrement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20261bf8; bytecode file offset 0xb5e4cc"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
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
            super unaryArithmeticExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoopVariableIdentifier: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIncrement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) loopVarIncrement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDecrement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) loopVarDecrement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026cfc0; bytecode file offset 0xb69894"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
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
            super parmAssign: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArgumentUsageOut.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArgumentUsageInOut.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 38].
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
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoopVariableIdentifier: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032ce44; bytecode file offset 0xc29710"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
mdlEquals: recoveredArg1 and: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isMdlConvertSpecialCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConvertSpecialCall.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
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
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlEquals: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConstantExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConstantExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b5074; bytecode file offset 0xcb1950"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) varDecl.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := (self) indexedExprUsage.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := [
    | recoveredBlock8Block16Value0 recoveredBlock8Block16Value1 |
    recoveredBlock8Block16Value0 := recoveredArg1.
    recoveredBlock8Block16Value1 := (recoveredBlock8Block16Value0) indexChild.
    recoveredBlock8Block16Value1
].
    recoveredBlock8Value3 := [:recoveredBlock8Block27Arg1 | 
    | recoveredBlock8Block27Value0 recoveredBlock8Block27Value1 recoveredBlock8Block27Value2 recoveredBlock8Block27Value3 recoveredBlock8Block27Value4 |
    recoveredBlock8Block27Value0 := recoveredBlock8Block27Arg1.
    recoveredBlock8Block27Value1 := recoveredArg1.
    recoveredBlock8Block27Value2 := (recoveredBlock8Block27Value1) indexChild.
    recoveredBlock8Block27Value3 := [:recoveredBlock8Block27Block39Arg1 :recoveredBlock8Block27Block39Arg2 | 
    | recoveredBlock8Block27Block39Stack0 recoveredBlock8Block27Block39Stack1 recoveredBlock8Block27Block39Stack2 recoveredBlock8Block27Block39Stack3 recoveredBlock8Block27Block39Stack4 recoveredBlock8Block27Block39Stack5 recoveredBlock8Block27Block39PC recoveredBlock8Block27Block39Step recoveredBlock8Block27Block39Done recoveredBlock8Block27Block39Result |
    recoveredBlock8Block27Block39Stack0 := self.
    recoveredBlock8Block27Block39PC := 46.
    recoveredBlock8Block27Block39Done := false.
    [recoveredBlock8Block27Block39Done not] whileTrue: [
        recoveredBlock8Block27Block39Step := recoveredBlock8Block27Block39PC.
        recoveredBlock8Block27Block39Step = 46 ifTrue: [
            recoveredBlock8Block27Block39Stack1 := nil.
            recoveredBlock8Block27Block39PC := 47.
        ].
        recoveredBlock8Block27Block39Step = 47 ifTrue: [
            recoveredBlock8Block27Block39Stack2 := self.
            recoveredBlock8Block27Block39PC := 48.
        ].
        recoveredBlock8Block27Block39Step = 48 ifTrue: [
            recoveredBlock8Block27Block39Stack3 := recoveredBlock8Block27Block39Arg1.
            recoveredBlock8Block27Block39PC := 49.
        ].
        recoveredBlock8Block27Block39Step = 49 ifTrue: [
            recoveredBlock8Block27Block39Stack4 := recoveredBlock8Block27Block39Arg2.
            recoveredBlock8Block27Block39PC := 50.
        ].
        recoveredBlock8Block27Block39Step = 50 ifTrue: [
            recoveredBlock8Block27Block39Stack2 := (recoveredBlock8Block27Block39Stack2) mdlEquals: (recoveredBlock8Block27Block39Stack3) and: (recoveredBlock8Block27Block39Stack4).
            recoveredBlock8Block27Block39PC := 52.
        ].
        recoveredBlock8Block27Block39Step = 52 ifTrue: [
            (recoveredBlock8Block27Block39Stack2) ifTrue: [recoveredBlock8Block27Block39PC := 61] ifFalse: [recoveredBlock8Block27Block39PC := 56].
        ].
        recoveredBlock8Block27Block39Step = 56 ifTrue: [
            recoveredBlock8Block27Block39PC := 57.
        ].
        recoveredBlock8Block27Block39Step = 57 ifTrue: [
            recoveredBlock8Block27Block39Stack1 := self.
            recoveredBlock8Block27Block39PC := 58.
        ].
        recoveredBlock8Block27Block39Step = 58 ifTrue: [
            recoveredBlock8Block27Block39Stack1 := (recoveredBlock8Block27Block39Stack1) fail.
            recoveredBlock8Block27Block39PC := 60.
        ].
        recoveredBlock8Block27Block39Step = 60 ifTrue: [
            ^recoveredBlock8Block27Block39Stack1
        ].
        recoveredBlock8Block27Block39Step = 61 ifTrue: [
            recoveredBlock8Block27Block39Result := recoveredBlock8Block27Block39Stack1.
            recoveredBlock8Block27Block39Done := true.
        ].
    ].
    recoveredBlock8Block27Block39Result
].
    recoveredBlock8Block27Value4 := (recoveredBlock8Block27Value0) with: (recoveredBlock8Block27Value2) do: (recoveredBlock8Block27Value3).
    recoveredBlock8Block27Value4
].
    recoveredBlock8Value4 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) ifAbsentPut: (recoveredBlock8Value2) ifPresent: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    super indexedExpr: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204bc56c; bytecode file offset 0xdb8e54"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super assignExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoopVariableIdentifier: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlAddExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 86].
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
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoopVariableIdentifier: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlLiteral.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftChild.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) loopVarIncrement.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) loopVarDecrement.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) loopVarIncrement.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSubExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) loopVarDecrement.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoopVariableIdentifier: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlLiteral.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) fail.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058fc64; bytecode file offset 0xe8c57c"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
analyzeLoopCondition: recoveredArg1 lookupInitValue: recoveredArg2 asIleExpr: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isMdlRelationalOperator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg3.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 54.
        ].
        recoveredBlock41Step = 54 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) rightChild.
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) value: (recoveredBlock41Stack2).
            recoveredBlock41PC := 58.
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredLocal2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 64.
        ].
        recoveredBlock41Step = 64 ifTrue: [
            (recoveredBlock41Stack1 ~~ nil) ifTrue: [recoveredBlock41PC := 70] ifFalse: [recoveredBlock41PC := 68].
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg2.
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) leftChild.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) varDecl.
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) value: (recoveredBlock41Stack2).
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            recoveredLocal1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 84.
        ].
        recoveredBlock41Step = 84 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            (recoveredBlock41Stack1 ~~ nil) ifTrue: [recoveredBlock41PC := 92] ifFalse: [recoveredBlock41PC := 90].
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 91.
        ].
        recoveredBlock41Step = 91 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 92 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 95.
        ].
        recoveredBlock41Step = 95 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) leftChild.
            recoveredBlock41PC := 96.
        ].
        recoveredBlock41Step = 96 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) varDecl.
            recoveredBlock41PC := 98.
        ].
        recoveredBlock41Step = 98 ifTrue: [
            (recoveredBlock41Stack0) loopVarDecl: (recoveredBlock41Stack1).
            recoveredBlock41PC := 100.
        ].
        recoveredBlock41Step = 100 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 103.
        ].
        recoveredBlock41Step = 103 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) operator.
            recoveredBlock41PC := 105.
        ].
        recoveredBlock41Step = 105 ifTrue: [
            recoveredBlock41Stack1 := 'lt'.
            recoveredBlock41PC := 107.
        ].
        recoveredBlock41Step = 107 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) equals: (recoveredBlock41Stack1).
            recoveredBlock41PC := 109.
        ].
        recoveredBlock41Step = 109 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 112] ifFalse: [recoveredBlock41PC := 129].
        ].
        recoveredBlock41Step = 112 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 113.
        ].
        recoveredBlock41Step = 113 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 116.
        ].
        recoveredBlock41Step = 116 ifTrue: [
            (recoveredBlock41Stack0) loopVarLowerBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 118.
        ].
        recoveredBlock41Step = 118 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 119.
        ].
        recoveredBlock41Step = 119 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 122.
        ].
        recoveredBlock41Step = 122 ifTrue: [
            (recoveredBlock41Stack0) loopVarUpperBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 124.
        ].
        recoveredBlock41Step = 124 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 125.
        ].
        recoveredBlock41Step = 125 ifTrue: [
            (recoveredBlock41Stack0) loopVarExpectIncrement.
            recoveredBlock41PC := 127.
        ].
        recoveredBlock41Step = 127 ifTrue: [
            recoveredBlock41Stack0 := nil.
            recoveredBlock41PC := 128.
        ].
        recoveredBlock41Step = 128 ifTrue: [
            ^recoveredBlock41Stack0
        ].
        recoveredBlock41Step = 129 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 132.
        ].
        recoveredBlock41Step = 132 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) operator.
            recoveredBlock41PC := 134.
        ].
        recoveredBlock41Step = 134 ifTrue: [
            recoveredBlock41Stack1 := 'le'.
            recoveredBlock41PC := 136.
        ].
        recoveredBlock41Step = 136 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) equals: (recoveredBlock41Stack1).
            recoveredBlock41PC := 138.
        ].
        recoveredBlock41Step = 138 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 142] ifFalse: [recoveredBlock41PC := 171].
        ].
        recoveredBlock41Step = 142 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 143.
        ].
        recoveredBlock41Step = 143 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 146.
        ].
        recoveredBlock41Step = 146 ifTrue: [
            (recoveredBlock41Stack0) loopVarLowerBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 148.
        ].
        recoveredBlock41Step = 148 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 149.
        ].
        recoveredBlock41Step = 149 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 152.
        ].
        recoveredBlock41Step = 152 ifTrue: [
            recoveredBlock41Stack2 := self.
            recoveredBlock41PC := 153.
        ].
        recoveredBlock41Step = 153 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) ileBuilder.
            recoveredBlock41PC := 155.
        ].
        recoveredBlock41Step = 155 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) literalOne.
            recoveredBlock41PC := 157.
        ].
        recoveredBlock41Step = 157 ifTrue: [
            recoveredBlock41Stack3 := recoveredLocal2.
            recoveredBlock41PC := 160.
        ].
        recoveredBlock41Step = 160 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) type.
            recoveredBlock41PC := 162.
        ].
        recoveredBlock41Step = 162 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2) type: (recoveredBlock41Stack3).
            recoveredBlock41PC := 164.
        ].
        recoveredBlock41Step = 164 ifTrue: [
            (recoveredBlock41Stack0) loopVarUpperBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 166.
        ].
        recoveredBlock41Step = 166 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 167.
        ].
        recoveredBlock41Step = 167 ifTrue: [
            (recoveredBlock41Stack0) loopVarExpectIncrement.
            recoveredBlock41PC := 169.
        ].
        recoveredBlock41Step = 169 ifTrue: [
            recoveredBlock41Stack0 := nil.
            recoveredBlock41PC := 170.
        ].
        recoveredBlock41Step = 170 ifTrue: [
            ^recoveredBlock41Stack0
        ].
        recoveredBlock41Step = 171 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 174.
        ].
        recoveredBlock41Step = 174 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) operator.
            recoveredBlock41PC := 176.
        ].
        recoveredBlock41Step = 176 ifTrue: [
            recoveredBlock41Stack1 := 'gt'.
            recoveredBlock41PC := 178.
        ].
        recoveredBlock41Step = 178 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) equals: (recoveredBlock41Stack1).
            recoveredBlock41PC := 180.
        ].
        recoveredBlock41Step = 180 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 184] ifFalse: [recoveredBlock41PC := 225].
        ].
        recoveredBlock41Step = 184 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 185.
        ].
        recoveredBlock41Step = 185 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 188.
        ].
        recoveredBlock41Step = 188 ifTrue: [
            recoveredBlock41Stack2 := self.
            recoveredBlock41PC := 189.
        ].
        recoveredBlock41Step = 189 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) ileBuilder.
            recoveredBlock41PC := 191.
        ].
        recoveredBlock41Step = 191 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) literalOne.
            recoveredBlock41PC := 193.
        ].
        recoveredBlock41Step = 193 ifTrue: [
            recoveredBlock41Stack3 := recoveredLocal2.
            recoveredBlock41PC := 196.
        ].
        recoveredBlock41Step = 196 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) type.
            recoveredBlock41PC := 198.
        ].
        recoveredBlock41Step = 198 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2) type: (recoveredBlock41Stack3).
            recoveredBlock41PC := 200.
        ].
        recoveredBlock41Step = 200 ifTrue: [
            (recoveredBlock41Stack0) loopVarLowerBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 202.
        ].
        recoveredBlock41Step = 202 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 203.
        ].
        recoveredBlock41Step = 203 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 206.
        ].
        recoveredBlock41Step = 206 ifTrue: [
            recoveredBlock41Stack2 := self.
            recoveredBlock41PC := 207.
        ].
        recoveredBlock41Step = 207 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) ileBuilder.
            recoveredBlock41PC := 209.
        ].
        recoveredBlock41Step = 209 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) literalOne.
            recoveredBlock41PC := 211.
        ].
        recoveredBlock41Step = 211 ifTrue: [
            recoveredBlock41Stack3 := recoveredLocal1.
            recoveredBlock41PC := 214.
        ].
        recoveredBlock41Step = 214 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) type.
            recoveredBlock41PC := 216.
        ].
        recoveredBlock41Step = 216 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2) type: (recoveredBlock41Stack3).
            recoveredBlock41PC := 218.
        ].
        recoveredBlock41Step = 218 ifTrue: [
            (recoveredBlock41Stack0) loopVarUpperBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 220.
        ].
        recoveredBlock41Step = 220 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 221.
        ].
        recoveredBlock41Step = 221 ifTrue: [
            (recoveredBlock41Stack0) loopVarExpectDecrement.
            recoveredBlock41PC := 223.
        ].
        recoveredBlock41Step = 223 ifTrue: [
            recoveredBlock41Stack0 := nil.
            recoveredBlock41PC := 224.
        ].
        recoveredBlock41Step = 224 ifTrue: [
            ^recoveredBlock41Stack0
        ].
        recoveredBlock41Step = 225 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 228.
        ].
        recoveredBlock41Step = 228 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) operator.
            recoveredBlock41PC := 230.
        ].
        recoveredBlock41Step = 230 ifTrue: [
            recoveredBlock41Stack1 := 'ge'.
            recoveredBlock41PC := 232.
        ].
        recoveredBlock41Step = 232 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) equals: (recoveredBlock41Stack1).
            recoveredBlock41PC := 234.
        ].
        recoveredBlock41Step = 234 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 238] ifFalse: [recoveredBlock41PC := 267].
        ].
        recoveredBlock41Step = 238 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 239.
        ].
        recoveredBlock41Step = 239 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 242.
        ].
        recoveredBlock41Step = 242 ifTrue: [
            (recoveredBlock41Stack0) loopVarLowerBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 244.
        ].
        recoveredBlock41Step = 244 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 245.
        ].
        recoveredBlock41Step = 245 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 248.
        ].
        recoveredBlock41Step = 248 ifTrue: [
            recoveredBlock41Stack2 := self.
            recoveredBlock41PC := 249.
        ].
        recoveredBlock41Step = 249 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) ileBuilder.
            recoveredBlock41PC := 251.
        ].
        recoveredBlock41Step = 251 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) literalOne.
            recoveredBlock41PC := 253.
        ].
        recoveredBlock41Step = 253 ifTrue: [
            recoveredBlock41Stack3 := recoveredLocal1.
            recoveredBlock41PC := 256.
        ].
        recoveredBlock41Step = 256 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) type.
            recoveredBlock41PC := 258.
        ].
        recoveredBlock41Step = 258 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2) type: (recoveredBlock41Stack3).
            recoveredBlock41PC := 260.
        ].
        recoveredBlock41Step = 260 ifTrue: [
            (recoveredBlock41Stack0) loopVarUpperBound: (recoveredBlock41Stack1).
            recoveredBlock41PC := 262.
        ].
        recoveredBlock41Step = 262 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 263.
        ].
        recoveredBlock41Step = 263 ifTrue: [
            (recoveredBlock41Stack0) loopVarExpectDecrement.
            recoveredBlock41PC := 265.
        ].
        recoveredBlock41Step = 265 ifTrue: [
            recoveredBlock41Stack0 := nil.
            recoveredBlock41PC := 266.
        ].
        recoveredBlock41Step = 266 ifTrue: [
            ^recoveredBlock41Stack0
        ].
        recoveredBlock41Step = 267 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 268.
        ].
        recoveredBlock41Step = 268 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 269.
        ].
        recoveredBlock41Step = 269 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) loopVarDecl: (recoveredBlock41Stack1).
            recoveredBlock41PC := 271.
        ].
        recoveredBlock41Step = 271 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack0.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059aad8; bytecode file offset 0xe973f0"
!SGMdDetectInitializationLoopVisitor methodsFor: 'recovered'!
analyzeLoop: recoveredArg1 lookupInitValue: recoveredArg2 asIleExpr: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isMdlLoop.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'SGMdDetectInitializationLoopVisitor should only be called for loops.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            incrementDecrementFound := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            indexedExprUsage := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlForStmnt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Local1 recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg1.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) exprChild.
            recoveredBlock52PC := 63.
        ].
        recoveredBlock52Step = 63 ifTrue: [
            recoveredBlock52Stack2 := 1.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2).
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local1.
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isMdlAssignExpr.
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 74] ifFalse: [recoveredBlock52PC := 104].
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local1.
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) variable.
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isMdlIdentifier.
            recoveredBlock52PC := 79.
        ].
        recoveredBlock52Step = 79 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 82] ifFalse: [recoveredBlock52PC := 104].
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local1.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) variable.
            recoveredBlock52PC := 85.
        ].
        recoveredBlock52Step = 85 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) varDecl.
            recoveredBlock52PC := 87.
        ].
        recoveredBlock52Step = 87 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 88.
        ].
        recoveredBlock52Step = 88 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) = (recoveredBlock52Stack2).
            recoveredBlock52PC := 89.
        ].
        recoveredBlock52Step = 89 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 92] ifFalse: [recoveredBlock52PC := 104].
        ].
        recoveredBlock52Step = 92 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg3.
            recoveredBlock52PC := 95.
        ].
        recoveredBlock52Step = 95 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local1.
            recoveredBlock52PC := 96.
        ].
        recoveredBlock52Step = 96 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) rightChild.
            recoveredBlock52PC := 98.
        ].
        recoveredBlock52Step = 98 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) value: (recoveredBlock52Stack2).
            recoveredBlock52PC := 100.
        ].
        recoveredBlock52Step = 100 ifTrue: [
            recoveredBlock52PC := 110.
        ].
        recoveredBlock52Step = 104 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg2.
            recoveredBlock52PC := 107.
        ].
        recoveredBlock52Step = 107 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 108.
        ].
        recoveredBlock52Step = 108 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) value: (recoveredBlock52Stack2).
            recoveredBlock52PC := 110.
        ].
        recoveredBlock52Step = 110 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) analyzeLoopCondition: (recoveredStack1) lookupInitValue: (recoveredStack2) asIleExpr: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlWhileStmnt.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRepeatStmnt.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) analyzeLoopCondition: (recoveredStack1) lookupInitValue: (recoveredStack2) asIleExpr: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) loopVarDecl.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlWhileStmnt.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntChild.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlForStmnt.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) incrementDecrementFound.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 219] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) fail.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRepeatStmnt.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            incrementDecrementFound := recoveredStack0.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) incrementDecrementFound.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) fail.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) loopVarDecl.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) loopVarLowerBound.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) loopVarUpperBound.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 283] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) fail.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

