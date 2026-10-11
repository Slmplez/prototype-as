"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200fe408; bytecode file offset 0x9facfc"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) standaloneExpr: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super exprStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cd0d4; bytecode file offset 0xac99a0"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
implCast: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsDisc: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) varDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) assign: (recoveredStack2) toDecl: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addUnitTest: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) mdlAcceptNodeVisitor: (recoveredStack1).
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

"ASDBase.ic method 0x202846f0; bytecode file offset 0xb80fcc"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSDiscOrUDisc.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsDisc: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) child.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodDecl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) assign: (recoveredStack3) toDecl: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addUnitTest: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            super returnStmnt: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20298ca0; bytecode file offset 0xb9556c"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) exprChild.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack4 := 2.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) at: (recoveredBlock8Stack4).
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ~= (recoveredBlock8Stack3).
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 28] ifFalse: [recoveredBlock8PC := 32].
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) standaloneExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    super forStmnt: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202cffe4; bytecode file offset 0xbcc8c0"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSDiscOrUDisc.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsDisc: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) varDecl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) assign: (recoveredStack3) toDecl: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) addUnitTest: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cf294; bytecode file offset 0xdcbba8"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stmntChild.
    recoveredValue2 := (recoveredValue1) children.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9Stack6 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isMdlCaseStmnt.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 22] ifFalse: [recoveredBlock9PC := 143].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) exprChild.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) containsDisc: (recoveredBlock9Stack3).
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 44] ifFalse: [recoveredBlock9PC := 34].
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) literal.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) containsDisc: (recoveredBlock9Stack3).
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 44] ifFalse: [recoveredBlock9PC := 143].
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) literal.
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isMdlLiteral.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 98] ifFalse: [recoveredBlock9PC := 54].
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 55.
        ].
        recoveredBlock9Step = 55 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) literal.
            recoveredBlock9PC := 57.
        ].
        recoveredBlock9Step = 57 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isMdlConstant.
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 98] ifFalse: [recoveredBlock9PC := 62].
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9Stack1 := SGMdRelOpExpr.
            recoveredBlock9PC := 64.
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) create.
            recoveredBlock9PC := 66.
        ].
        recoveredBlock9Step = 66 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack3 := 'eq'.
            recoveredBlock9PC := 69.
        ].
        recoveredBlock9Step = 69 ifTrue: [
            (recoveredBlock9Stack2) operator: (recoveredBlock9Stack3).
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 72.
        ].
        recoveredBlock9Step = 72 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 75.
        ].
        recoveredBlock9Step = 75 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) exprChild.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            (recoveredBlock9Stack2) leftChild: (recoveredBlock9Stack3).
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 79.
        ].
        recoveredBlock9Step = 79 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 80.
        ].
        recoveredBlock9Step = 80 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) literal.
            recoveredBlock9PC := 82.
        ].
        recoveredBlock9Step = 82 ifTrue: [
            (recoveredBlock9Stack2) rightChild: (recoveredBlock9Stack3).
            recoveredBlock9PC := 84.
        ].
        recoveredBlock9Step = 84 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 85 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 86.
        ].
        recoveredBlock9Step = 86 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 87.
        ].
        recoveredBlock9Step = 87 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local1.
            recoveredBlock9PC := 88.
        ].
        recoveredBlock9Step = 88 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) createLogAssign: (recoveredBlock9Stack3).
            recoveredBlock9PC := 90.
        ].
        recoveredBlock9Step = 90 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) addUnitTest: (recoveredBlock9Stack2).
            recoveredBlock9PC := 92.
        ].
        recoveredBlock9Step = 92 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 94.
        ].
        recoveredBlock9Step = 94 ifTrue: [
            recoveredBlock9PC := 143.
        ].
        recoveredBlock9Step = 98 ifTrue: [
            recoveredBlock9Stack1 := SGMdRelOpExpr.
            recoveredBlock9PC := 100.
        ].
        recoveredBlock9Step = 100 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) create.
            recoveredBlock9PC := 102.
        ].
        recoveredBlock9Step = 102 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 103.
        ].
        recoveredBlock9Step = 103 ifTrue: [
            recoveredBlock9Stack3 := 'eq'.
            recoveredBlock9PC := 105.
        ].
        recoveredBlock9Step = 105 ifTrue: [
            (recoveredBlock9Stack2) operator: (recoveredBlock9Stack3).
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 108 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 111.
        ].
        recoveredBlock9Step = 111 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) exprChild.
            recoveredBlock9PC := 112.
        ].
        recoveredBlock9Step = 112 ifTrue: [
            (recoveredBlock9Stack2) leftChild: (recoveredBlock9Stack3).
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 115.
        ].
        recoveredBlock9Step = 115 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 116.
        ].
        recoveredBlock9Step = 116 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) literal.
            recoveredBlock9PC := 118.
        ].
        recoveredBlock9Step = 118 ifTrue: [
            (recoveredBlock9Stack2) rightChild: (recoveredBlock9Stack3).
            recoveredBlock9PC := 120.
        ].
        recoveredBlock9Step = 120 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 121.
        ].
        recoveredBlock9Step = 121 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 122.
        ].
        recoveredBlock9Step = 122 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 123.
        ].
        recoveredBlock9Step = 123 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local1.
            recoveredBlock9PC := 124.
        ].
        recoveredBlock9Step = 124 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) createLogAssign: (recoveredBlock9Stack3).
            recoveredBlock9PC := 126.
        ].
        recoveredBlock9Step = 126 ifTrue: [
            recoveredBlock9Stack3 := 'switch_'.
            recoveredBlock9PC := 128.
        ].
        recoveredBlock9Step = 128 ifTrue: [
            recoveredBlock9Stack4 := self.
            recoveredBlock9PC := 129.
        ].
        recoveredBlock9Step = 129 ifTrue: [
            recoveredBlock9Stack5 := recoveredArg1.
            recoveredBlock9PC := 132.
        ].
        recoveredBlock9Step = 132 ifTrue: [
            recoveredBlock9Stack5 := (recoveredBlock9Stack5) exprChild.
            recoveredBlock9PC := 133.
        ].
        recoveredBlock9Step = 133 ifTrue: [
            recoveredBlock9Stack5 := (recoveredBlock9Stack5) mdlClass.
            recoveredBlock9PC := 135.
        ].
        recoveredBlock9Step = 135 ifTrue: [
            recoveredBlock9Stack4 := (recoveredBlock9Stack4) typeKey: (recoveredBlock9Stack5).
            recoveredBlock9PC := 137.
        ].
        recoveredBlock9Step = 137 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) , (recoveredBlock9Stack4).
            recoveredBlock9PC := 139.
        ].
        recoveredBlock9Step = 139 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) templateTest: (recoveredBlock9Stack2) key: (recoveredBlock9Stack3).
            recoveredBlock9PC := 141.
        ].
        recoveredBlock9Step = 141 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 142.
        ].
        recoveredBlock9Step = 142 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 143.
        ].
        recoveredBlock9Step = 143 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    super switchStmnt: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x204f0eb0; bytecode file offset 0xded7a8"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsDisc: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModelTypedExpression.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConstantValue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModelTypedExpression.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConstantValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLogAssign: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) addUnitTest: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModelTypedExpression.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModelTypedExpression.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLogAssign: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'cmp_'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeKey: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := '_'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeKey: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) templateTest: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLogAssign: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'cmp_'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeKey: (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := '_Const'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) templateTest: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModelTypedExpression.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLogAssign: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'cmp_'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeKey: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := '_Const'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) templateTest: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLogAssign: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 'cmp_Const_Const'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) templateTest: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            super binaryEqualityExpr: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205384c0; bytecode file offset 0xe34dd4"
!SGMdCollectAllDiscVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSDiscOrUDisc.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsDisc: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMuxExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlModelTypedExpression.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlModelTypedExpression.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysInterval.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysInterval.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := 'assignMux'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 'NoLimit_'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := 'Limit_'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack5 := (recoveredStack5) variable.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlClass.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := (recoveredStack4) typeKeyLHS: (recoveredStack5).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := '_'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlClass.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := (recoveredStack4) typeKey: (recoveredStack5).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) templateTest: (recoveredStack2) key: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := super assignExpr: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) addUnitTest: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            super assignExpr: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

