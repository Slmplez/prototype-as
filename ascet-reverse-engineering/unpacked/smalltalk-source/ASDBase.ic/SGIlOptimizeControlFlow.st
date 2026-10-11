"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2021bb50; bytecode file offset 0xb18424"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOptimizedStmntlist.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOptimizedStmntlist.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := super cppIfThenElseStmnt: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025b288; bytecode file offset 0xb57b58"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
methodBody: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) blockedStatementList: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMethodBody.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExitStmnt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cfeac; bytecode file offset 0xbcc78c"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
whileStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) doStmnt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleEndCaseStmnt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 48.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'WHILE statement'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 43.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'WHILE statement'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203025c0; bytecode file offset 0xbfeea0"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
switchStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIntegerConstant.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSymbol.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
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
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) stmnt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) onConstant: (recoveredStack2) stmntList: (recoveredStack3) expressionContext: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeDuplicateSwitchClause: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeCaseSingleEmptyStmnt: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeSwitchOneCase: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeEmptySwitch: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeSwitchIf: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20305928; bytecode file offset 0xc0220c"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
forStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Kp'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_64077'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) doStmnt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleEndCaseStmnt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 48.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'FOR statement'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 43.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'FOR statement'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstExpr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20314c74; bytecode file offset 0xc11558"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) doStmnt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleEndCaseStmnt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 48.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'REPEAT statement'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) doStmnt.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOpimizableLabeledStmnt.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 44.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'REPEAT'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'loop body'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) doStmnt.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOpimizedLabeledStmnt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20317cdc; bytecode file offset 0xc145c0"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
returnStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSingleton.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) createScalarConstant: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleStmntReplaceExpr: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20379088; bytecode file offset 0xc75964"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
removeCaseSingleEmptyStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stmnt.
    recoveredValue2 := (recoveredValue1) stmntList.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) stmnt.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) stmntList.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) last.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) ~= (recoveredBlock9Stack2).
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 28] ifFalse: [recoveredBlock9PC := 48].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) stmnt.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isIleEmptyStmnt.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 48].
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) ileBuilder.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack3 := #().
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) stmntList: (recoveredBlock9Stack3).
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) createNoOpStmnt: (recoveredBlock9Stack2).
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) stmnt.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) createNoOpStmntList: (recoveredValue8).
    recoveredValue10 := (recoveredValue5) createNoOpStmnt: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x203a3de4; bytecode file offset 0xca06c8"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
optimizeEmptySwitch: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSwitchStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280f4b00Arg1 | 
    | block280f4b00Value0 block280f4b00Value1 block280f4b00Value2 block280f4b00Value3 |
    block280f4b00Value0 := block280f4b00Arg1.
    block280f4b00Value1 := (block280f4b00Value0) stmnt.
    block280f4b00Value2 := (block280f4b00Value1) isIleEmptyStmnt.
    block280f4b00Value3 := (block280f4b00Value2) not.
    block280f4b00Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 |
    recoveredBlock59Value0 := recoveredArg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) expr.
    recoveredBlock59Value2 := (recoveredBlock59Value1) asIleExprStmnt.
    recoveredBlock59Value2
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) useStatementSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20472998; bytecode file offset 0xd6f29c"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
optimizeSwitchIf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSwitchStmnt.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCaseStmnt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDefaultStmnt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleUnconditionalEndCaseStmnt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEmptyStmnt.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOpimizableLabeledStmnt.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOpimizableLabeledStmnt.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOpimizedLabeledStmnt.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOpimizedLabeledStmnt.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) constantExpr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) equal: (recoveredStack3) expressionContext: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifExpr: (recoveredStack2) thenStmnt: (recoveredStack3) elseStmnt: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a4ba8; bytecode file offset 0xda14b0"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
optimizeSwitchOneCase: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block28104c20Arg1 | 
    | block28104c20Value0 block28104c20Value1 block28104c20Value2 block28104c20Value3 |
    block28104c20Value0 := block28104c20Arg1.
    block28104c20Value1 := (block28104c20Value0) stmnt.
    block28104c20Value2 := (block28104c20Value1) isIleEmptyStmnt.
    block28104c20Value3 := (block28104c20Value2) not.
    block28104c20Value3
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:block28104c44Arg1 | 
    | block28104c44Value0 block28104c44Value1 |
    block28104c44Value0 := block28104c44Arg1.
    block28104c44Value1 := (block28104c44Value0) isIleDefaultStmnt.
    block28104c44Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmnt.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOpimizableLabeledStmnt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 recoveredBlock105Value6 recoveredBlock105Value7 recoveredBlock105Value8 recoveredBlock105Value9 recoveredBlock105Value10 |
    recoveredBlock105Value0 := (self) ileBuilder.
    recoveredBlock105Value1 := Array.
    recoveredBlock105Value2 := recoveredArg1.
    recoveredBlock105Value3 := (recoveredBlock105Value2) expr.
    recoveredBlock105Value4 := (recoveredBlock105Value3) asIleExprStmnt.
    recoveredBlock105Value5 := recoveredLocal1.
    recoveredBlock105Value6 := (recoveredBlock105Value5) first.
    recoveredBlock105Value7 := (recoveredBlock105Value6) stmnt.
    recoveredBlock105Value8 := (recoveredBlock105Value7) asIleOpimizedLabeledStmnt.
    recoveredBlock105Value9 := (recoveredBlock105Value1) with: (recoveredBlock105Value4) with: (recoveredBlock105Value8).
    recoveredBlock105Value10 := (recoveredBlock105Value0) stmntList: (recoveredBlock105Value9).
    recoveredBlock105Value10
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) useStatementSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ee964; bytecode file offset 0xdeb278"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOptimizedStmntlist.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 43.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEmptyStmnt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := recoveredArg1.
            recoveredBlock78PC := 87.
        ].
        recoveredBlock78Step = 87 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) isIleCppIfStmnt.
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            (recoveredBlock78Stack1) ifTrue: [recoveredBlock78PC := 92] ifFalse: [recoveredBlock78PC := 100].
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78Stack1 := self.
            recoveredBlock78PC := 93.
        ].
        recoveredBlock78Step = 93 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) ileBuilder.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) emptyStmnt.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78PC := 106.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78Stack1 := recoveredArg1.
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) expr.
            recoveredBlock78PC := 104.
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) asIleExprStmnt.
            recoveredBlock78PC := 106.
        ].
        recoveredBlock78Step = 106 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) useStatementSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCppIfElseStmnt.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCommaExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) withoutLastArgument.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleExprStmnt.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack5 := (recoveredStack5) expr.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := (recoveredStack5) args.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack6 := (recoveredStack6) thenStmnt.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := (recoveredStack4) ifExpr: (recoveredStack5) thenStmnt: (recoveredStack6).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20560fa4; bytecode file offset 0xe5d8b8"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isIleStatementList.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 32] ifFalse: [recoveredBlock19PC := 102].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isIleBlockedStmntList.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 102] ifFalse: [recoveredBlock19PC := 38].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) comments.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            (recoveredBlock19Stack1 == nil) ifTrue: [recoveredBlock19PC := 92] ifFalse: [recoveredBlock19PC := 44].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) stmntList.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isEmpty.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 92] ifFalse: [recoveredBlock19PC := 52].
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal4.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) stmntList.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) first.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) comments.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) stmntList.
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) first.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) comments.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) , (recoveredBlock19Stack4).
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) createNoOpComments: (recoveredBlock19Stack3).
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal4.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) stmntList.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack3 := 2.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) stmntList.
            recoveredBlock19PC := 83.
        ].
        recoveredBlock19Step = 83 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) size.
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) copyFrom: (recoveredBlock19Stack3) to: (recoveredBlock19Stack4).
            recoveredBlock19PC := 86.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) addAll: (recoveredBlock19Stack2).
            recoveredBlock19PC := 88.
        ].
        recoveredBlock19Step = 88 ifTrue: [
            recoveredBlock19PC := 99.
        ].
        recoveredBlock19Step = 92 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal4.
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 96.
        ].
        recoveredBlock19Step = 96 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) stmntList.
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) addAll: (recoveredBlock19Stack2).
            recoveredBlock19PC := 99.
        ].
        recoveredBlock19Step = 99 ifTrue: [
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 102 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal4.
            recoveredBlock19PC := 105.
        ].
        recoveredBlock19Step = 105 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 106.
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 108 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Stack0 recoveredBlock128Stack1 recoveredBlock128Stack2 recoveredBlock128Stack3 recoveredBlock128PC recoveredBlock128Step recoveredBlock128Done recoveredBlock128Result |
    recoveredBlock128Stack0 := self.
    recoveredBlock128PC := 134.
    recoveredBlock128Done := false.
    [recoveredBlock128Done not] whileTrue: [
        recoveredBlock128Step := recoveredBlock128PC.
        recoveredBlock128Step = 134 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 135.
        ].
        recoveredBlock128Step = 135 ifTrue: [
            recoveredBlock128Stack2 := recoveredLocal3.
            recoveredBlock128PC := 138.
        ].
        recoveredBlock128Step = 138 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 176] ifFalse: [recoveredBlock128PC := 142].
        ].
        recoveredBlock128Step = 142 ifTrue: [
            recoveredBlock128PC := 143.
        ].
        recoveredBlock128Step = 143 ifTrue: [
            recoveredBlock128Stack1 := recoveredLocal1.
            recoveredBlock128PC := 146.
        ].
        recoveredBlock128Step = 146 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Arg1.
            recoveredBlock128PC := 147.
        ].
        recoveredBlock128Step = 147 ifTrue: [
            (recoveredBlock128Stack1) add: (recoveredBlock128Stack2).
            recoveredBlock128PC := 149.
        ].
        recoveredBlock128Step = 149 ifTrue: [
            recoveredBlock128Stack1 := false.
            recoveredBlock128PC := 150.
        ].
        recoveredBlock128Step = 150 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Arg1.
            recoveredBlock128PC := 151.
        ].
        recoveredBlock128Step = 151 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) isIleAbstractLabeledStmnt.
            recoveredBlock128PC := 153.
        ].
        recoveredBlock128Step = 153 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 160] ifFalse: [recoveredBlock128PC := 156].
        ].
        recoveredBlock128Step = 156 ifTrue: [
            recoveredBlock128PC := 157.
        ].
        recoveredBlock128Step = 157 ifTrue: [
            recoveredBlock128Stack1 := recoveredBlock128Arg1.
            recoveredBlock128PC := 158.
        ].
        recoveredBlock128Step = 158 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock128PC := 160.
        ].
        recoveredBlock128Step = 160 ifTrue: [
            recoveredLocal3 := recoveredBlock128Stack1.
            recoveredBlock128PC := 163.
        ].
        recoveredBlock128Step = 163 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 164.
        ].
        recoveredBlock128Step = 164 ifTrue: [
            recoveredBlock128Stack2 := recoveredLocal3.
            recoveredBlock128PC := 167.
        ].
        recoveredBlock128Step = 167 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 170] ifFalse: [recoveredBlock128PC := 176].
        ].
        recoveredBlock128Step = 170 ifTrue: [
            recoveredBlock128PC := 171.
        ].
        recoveredBlock128Step = 171 ifTrue: [
            recoveredBlock128Stack1 := recoveredBlock128Arg1.
            recoveredBlock128PC := 172.
        ].
        recoveredBlock128Step = 172 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Stack1.
            recoveredBlock128PC := 173.
        ].
        recoveredBlock128Step = 173 ifTrue: [
            recoveredLocal2 := recoveredBlock128Stack2.
            recoveredBlock128PC := 176.
        ].
        recoveredBlock128Step = 176 ifTrue: [
            recoveredBlock128Result := recoveredBlock128Stack1.
            recoveredBlock128Done := true.
        ].
    ].
    recoveredBlock128Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 50.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) ileWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := [:block28110968Arg1 | 
    | block28110968Value0 block28110968Value1 block28110968Value2 |
    block28110968Value0 := block28110968Arg1.
    block28110968Value1 := (block28110968Value0) isIleEmptyStmnt.
    block28110968Value2 := (block28110968Value1) not.
    block28110968Value2
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpStmntList: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205b94c8; bytecode file offset 0xeb5e08"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
onConstant: recoveredArg1 stmntList: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal4.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 48].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal5.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) not.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredLocal4 := recoveredBlock18Stack2.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack3 := recoveredArg1.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) value.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isIleOptimizedCase: (recoveredBlock18Stack3).
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 60] ifFalse: [recoveredBlock18PC := 81].
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal5.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18Stack1 := 'Rl'.
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Stack2 := 'Call_63111'.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) == (recoveredBlock18Stack2).
            recoveredBlock18PC := 72.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) not.
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredLocal4 := recoveredBlock18Stack2.
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := [:block281174b4Arg1 | 
    | block281174b4Value0 block281174b4Value1 |
    block281174b4Value0 := block281174b4Arg1.
    block281174b4Value1 := (block281174b4Value0) isIleDefaultStmnt.
    block281174b4Value1
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock108Value0 recoveredBlock108Value1 |
    recoveredBlock108Value0 := (self) ileBuilder.
    recoveredBlock108Value1 := (recoveredBlock108Value0) stmntList: (#()).
    recoveredBlock108Value1
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [:block281174d8Arg1 | 
    | block281174d8Value0 block281174d8Value1 |
    block281174d8Value0 := block281174d8Arg1.
    block281174d8Value1 := (block281174d8Value0) isIleOpimizableLabeledStmnt.
    block281174d8Value1
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOpimizedLabeledStmnt.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := [:block281174fcArg1 | 
    | block281174fcLocal1 block281174fcStack0 block281174fcStack1 block281174fcStack2 block281174fcPC block281174fcStep block281174fcDone block281174fcResult |
    block281174fcStack0 := self.
    block281174fcPC := 4.
    block281174fcDone := false.
    [block281174fcDone not] whileTrue: [
        block281174fcStep := block281174fcPC.
        block281174fcStep = 4 ifTrue: [
            block281174fcStack1 := block281174fcArg1.
            block281174fcPC := 5.
        ].
        block281174fcStep = 5 ifTrue: [
            block281174fcLocal1 := block281174fcStack1.
            block281174fcPC := 6.
        ].
        block281174fcStep = 6 ifTrue: [
            block281174fcPC := 14.
        ].
        block281174fcStep = 10 ifTrue: [
            block281174fcStack1 := block281174fcLocal1.
            block281174fcPC := 11.
        ].
        block281174fcStep = 11 ifTrue: [
            block281174fcStack1 := (block281174fcStack1) stmnt.
            block281174fcPC := 13.
        ].
        block281174fcStep = 13 ifTrue: [
            block281174fcLocal1 := block281174fcStack1.
            block281174fcPC := 14.
        ].
        block281174fcStep = 14 ifTrue: [
            block281174fcStack1 := block281174fcLocal1.
            block281174fcPC := 15.
        ].
        block281174fcStep = 15 ifTrue: [
            block281174fcStack1 := (block281174fcStack1) isIleAbstractLabeledStmnt.
            block281174fcPC := 17.
        ].
        block281174fcStep = 17 ifTrue: [
            (block281174fcStack1) ifTrue: [block281174fcPC := 10] ifFalse: [block281174fcPC := 19].
        ].
        block281174fcStep = 19 ifTrue: [
            block281174fcStack1 := block281174fcLocal1.
            block281174fcPC := 20.
        ].
        block281174fcStep = 20 ifTrue: [
            block281174fcResult := block281174fcStack1.
            block281174fcDone := true.
        ].
    ].
    block281174fcResult
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Stack0 recoveredBlock195Stack1 recoveredBlock195Stack2 recoveredBlock195Stack3 recoveredBlock195PC recoveredBlock195Step recoveredBlock195Done recoveredBlock195Result |
    recoveredBlock195Stack0 := self.
    recoveredBlock195PC := 202.
    recoveredBlock195Done := false.
    [recoveredBlock195Done not] whileTrue: [
        recoveredBlock195Step := recoveredBlock195PC.
        recoveredBlock195Step = 202 ifTrue: [
            recoveredBlock195Stack1 := recoveredLocal3.
            recoveredBlock195PC := 205.
        ].
        recoveredBlock195Step = 205 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 206.
        ].
        recoveredBlock195Step = 206 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) isIleBlockedStmntList.
            recoveredBlock195PC := 208.
        ].
        recoveredBlock195Step = 208 ifTrue: [
            (recoveredBlock195Stack2) ifTrue: [recoveredBlock195PC := 212] ifFalse: [recoveredBlock195PC := 218].
        ].
        recoveredBlock195Step = 212 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 213.
        ].
        recoveredBlock195Step = 213 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) stmntList.
            recoveredBlock195PC := 214.
        ].
        recoveredBlock195Step = 214 ifTrue: [
            recoveredBlock195PC := 219.
        ].
        recoveredBlock195Step = 218 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 219.
        ].
        recoveredBlock195Step = 219 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) addAll: (recoveredBlock195Stack2).
            recoveredBlock195PC := 221.
        ].
        recoveredBlock195Step = 221 ifTrue: [
            recoveredBlock195Result := recoveredBlock195Stack1.
            recoveredBlock195Done := true.
        ].
    ].
    recoveredBlock195Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockedStmntList: (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultStmnt: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := OrderedCollection.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBuilder.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := (recoveredStack5) emptyStmnt.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := (recoveredStack3) blockedStmntList: (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr: (recoveredStack2) caseStmnt: (recoveredStack3).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockedStmntList: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock293Value0 recoveredBlock293Value1 recoveredBlock293Value2 recoveredBlock293Value3 recoveredBlock293Value4 |
    recoveredBlock293Value0 := (self) ileBuilder.
    recoveredBlock293Value1 := recoveredArg1.
    recoveredBlock293Value2 := recoveredLocal3.
    recoveredBlock293Value3 := recoveredArg3.
    recoveredBlock293Value4 := (recoveredBlock293Value0) switchExpr: (recoveredBlock293Value1) stmnt: (recoveredBlock293Value2) expressionContext: (recoveredBlock293Value3).
    recoveredBlock293Value4
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableOptimizationsDo: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205e4b7c; bytecode file offset 0xee14a8"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
optimizeDuplicateSwitchClause: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmnt.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := SGIlNodeLookupTable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) createHasAlternativelySameValue.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Local1 recoveredBlock40Local2 recoveredBlock40Local3 recoveredBlock40Local4 recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 302].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) stmnt.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack3 := [].
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) ifAbsent: (recoveredBlock40Stack3).
            recoveredBlock40PC := 64.
        ].
        recoveredBlock40Step = 64 ifTrue: [
            recoveredBlock40Local4 := recoveredBlock40Stack1.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local4.
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            (recoveredBlock40Stack1 ~~ nil) ifTrue: [recoveredBlock40PC := 98] ifFalse: [recoveredBlock40PC := 70].
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            (recoveredBlock40Stack1) addAll: (recoveredBlock40Stack2).
            recoveredBlock40PC := 78.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 81 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 83.
        ].
        recoveredBlock40Step = 83 ifTrue: [
            (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 85.
        ].
        recoveredBlock40Step = 85 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 88.
        ].
        recoveredBlock40Step = 88 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 90.
        ].
        recoveredBlock40Step = 90 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) stmnt.
            recoveredBlock40PC := 91.
        ].
        recoveredBlock40Step = 91 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 93.
        ].
        recoveredBlock40Step = 93 ifTrue: [
            (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 95.
        ].
        recoveredBlock40Step = 95 ifTrue: [
            recoveredBlock40PC := 289.
        ].
        recoveredBlock40Step = 98 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 101.
        ].
        recoveredBlock40Step = 101 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local4.
            recoveredBlock40PC := 102.
        ].
        recoveredBlock40Step = 102 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) indexOf: (recoveredBlock40Stack2).
            recoveredBlock40PC := 104.
        ].
        recoveredBlock40Step = 104 ifTrue: [
            recoveredBlock40Local3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 105.
        ].
        recoveredBlock40Step = 105 ifTrue: [
            recoveredBlock40Stack1 := true.
            recoveredBlock40PC := 106.
        ].
        recoveredBlock40Step = 106 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local3.
            recoveredBlock40PC := 107.
        ].
        recoveredBlock40Step = 107 ifTrue: [
            recoveredBlock40Stack3 := 1.
            recoveredBlock40PC := 109.
        ].
        recoveredBlock40Step = 109 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) <= (recoveredBlock40Stack3).
            recoveredBlock40PC := 110.
        ].
        recoveredBlock40Step = 110 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 124] ifFalse: [recoveredBlock40PC := 114].
        ].
        recoveredBlock40Step = 114 ifTrue: [
            recoveredBlock40PC := 115.
        ].
        recoveredBlock40Step = 115 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 118.
        ].
        recoveredBlock40Step = 118 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local3.
            recoveredBlock40PC := 119.
        ].
        recoveredBlock40Step = 119 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (-1).
            recoveredBlock40PC := 120.
        ].
        recoveredBlock40Step = 120 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2).
            recoveredBlock40PC := 122.
        ].
        recoveredBlock40Step = 122 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock40PC := 124.
        ].
        recoveredBlock40Step = 124 ifTrue: [
            recoveredBlock40Local2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 125.
        ].
        recoveredBlock40Step = 125 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 128.
        ].
        recoveredBlock40Step = 128 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) last.
            recoveredBlock40PC := 130.
        ].
        recoveredBlock40Step = 130 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock40PC := 132.
        ].
        recoveredBlock40Step = 132 ifTrue: [
            recoveredBlock40Local1 := recoveredBlock40Stack1.
            recoveredBlock40PC := 133.
        ].
        recoveredBlock40Step = 133 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local1.
            recoveredBlock40PC := 134.
        ].
        recoveredBlock40Step = 134 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 138] ifFalse: [recoveredBlock40PC := 218].
        ].
        recoveredBlock40Step = 138 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 140.
        ].
        recoveredBlock40Step = 140 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isIleDefaultStmnt.
            recoveredBlock40PC := 142.
        ].
        recoveredBlock40Step = 142 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 146] ifFalse: [recoveredBlock40PC := 168].
        ].
        recoveredBlock40Step = 146 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 149.
        ].
        recoveredBlock40Step = 149 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) stmnt.
            recoveredBlock40PC := 150.
        ].
        recoveredBlock40Step = 150 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) stmntList.
            recoveredBlock40PC := 151.
        ].
        recoveredBlock40Step = 151 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) last.
            recoveredBlock40PC := 153.
        ].
        recoveredBlock40Step = 153 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 155.
        ].
        recoveredBlock40Step = 155 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 156.
        ].
        recoveredBlock40Step = 156 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 160] ifFalse: [recoveredBlock40PC := 168].
        ].
        recoveredBlock40Step = 160 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local3.
            recoveredBlock40PC := 161.
        ].
        recoveredBlock40Step = 161 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal4.
            recoveredBlock40PC := 164.
        ].
        recoveredBlock40Step = 164 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) size.
            recoveredBlock40PC := 165.
        ].
        recoveredBlock40Step = 165 ifTrue: [
            (recoveredBlock40Stack1 ~~ recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 218] ifFalse: [recoveredBlock40PC := 168].
        ].
        recoveredBlock40Step = 168 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal3.
            recoveredBlock40PC := 171.
        ].
        recoveredBlock40Step = 171 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 173.
        ].
        recoveredBlock40Step = 173 ifTrue: [
            (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 175.
        ].
        recoveredBlock40Step = 175 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 178.
        ].
        recoveredBlock40Step = 178 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 181.
        ].
        recoveredBlock40Step = 181 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Local3.
            recoveredBlock40PC := 182.
        ].
        recoveredBlock40Step = 182 ifTrue: [
            (recoveredBlock40Stack1) addAll: (recoveredBlock40Stack2) afterIndex: (recoveredBlock40Stack3).
            recoveredBlock40PC := 184.
        ].
        recoveredBlock40Step = 184 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local4.
            recoveredBlock40PC := 185.
        ].
        recoveredBlock40Step = 185 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 186.
        ].
        recoveredBlock40Step = 186 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) ileBuilder.
            recoveredBlock40PC := 188.
        ].
        recoveredBlock40Step = 188 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) emptyStmnt.
            recoveredBlock40PC := 190.
        ].
        recoveredBlock40Step = 190 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) createLabeledStmnt: (recoveredBlock40Stack2).
            recoveredBlock40PC := 192.
        ].
        recoveredBlock40Step = 192 ifTrue: [
            recoveredBlock40Local4 := recoveredBlock40Stack1.
            recoveredBlock40PC := 193.
        ].
        recoveredBlock40Step = 193 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 196.
        ].
        recoveredBlock40Step = 196 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local3.
            recoveredBlock40PC := 197.
        ].
        recoveredBlock40Step = 197 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Local4.
            recoveredBlock40PC := 198.
        ].
        recoveredBlock40Step = 198 ifTrue: [
            (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 200.
        ].
        recoveredBlock40Step = 200 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 203.
        ].
        recoveredBlock40Step = 203 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 205.
        ].
        recoveredBlock40Step = 205 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) stmnt.
            recoveredBlock40PC := 206.
        ].
        recoveredBlock40Step = 206 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 208.
        ].
        recoveredBlock40Step = 208 ifTrue: [
            (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 210.
        ].
        recoveredBlock40Step = 210 ifTrue: [
            recoveredBlock40Stack1 := true.
            recoveredBlock40PC := 211.
        ].
        recoveredBlock40Step = 211 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 214.
        ].
        recoveredBlock40Step = 214 ifTrue: [
            recoveredBlock40PC := 283.
        ].
        recoveredBlock40Step = 218 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local2.
            recoveredBlock40PC := 219.
        ].
        recoveredBlock40Step = 219 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 222] ifFalse: [recoveredBlock40PC := 276].
        ].
        recoveredBlock40Step = 222 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local4.
            recoveredBlock40PC := 223.
        ].
        recoveredBlock40Step = 223 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 224.
        ].
        recoveredBlock40Step = 224 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) ileBuilder.
            recoveredBlock40PC := 226.
        ].
        recoveredBlock40Step = 226 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) emptyStmnt.
            recoveredBlock40PC := 228.
        ].
        recoveredBlock40Step = 228 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) createLabeledStmnt: (recoveredBlock40Stack2).
            recoveredBlock40PC := 230.
        ].
        recoveredBlock40Step = 230 ifTrue: [
            recoveredBlock40Local4 := recoveredBlock40Stack1.
            recoveredBlock40PC := 231.
        ].
        recoveredBlock40Step = 231 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 234.
        ].
        recoveredBlock40Step = 234 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local3.
            recoveredBlock40PC := 235.
        ].
        recoveredBlock40Step = 235 ifTrue: [
            (recoveredBlock40Stack1) removeAtIndex: (recoveredBlock40Stack2).
            recoveredBlock40PC := 237.
        ].
        recoveredBlock40Step = 237 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 240.
        ].
        recoveredBlock40Step = 240 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local4.
            recoveredBlock40PC := 241.
        ].
        recoveredBlock40Step = 241 ifTrue: [
            (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 243.
        ].
        recoveredBlock40Step = 243 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 246.
        ].
        recoveredBlock40Step = 246 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 249.
        ].
        recoveredBlock40Step = 249 ifTrue: [
            (recoveredBlock40Stack1) addAll: (recoveredBlock40Stack2).
            recoveredBlock40PC := 251.
        ].
        recoveredBlock40Step = 251 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 254.
        ].
        recoveredBlock40Step = 254 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 256.
        ].
        recoveredBlock40Step = 256 ifTrue: [
            (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 258.
        ].
        recoveredBlock40Step = 258 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 261.
        ].
        recoveredBlock40Step = 261 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 263.
        ].
        recoveredBlock40Step = 263 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) stmnt.
            recoveredBlock40PC := 264.
        ].
        recoveredBlock40Step = 264 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 266.
        ].
        recoveredBlock40Step = 266 ifTrue: [
            (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 268.
        ].
        recoveredBlock40Step = 268 ifTrue: [
            recoveredBlock40Stack1 := true.
            recoveredBlock40PC := 269.
        ].
        recoveredBlock40Step = 269 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 272.
        ].
        recoveredBlock40Step = 272 ifTrue: [
            recoveredBlock40PC := 283.
        ].
        recoveredBlock40Step = 276 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 279.
        ].
        recoveredBlock40Step = 279 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 281.
        ].
        recoveredBlock40Step = 281 ifTrue: [
            (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 283.
        ].
        recoveredBlock40Step = 283 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 284.
        ].
        recoveredBlock40Step = 284 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 285.
        ].
        recoveredBlock40Step = 285 ifTrue: [
            recoveredBlock40Local3 := recoveredBlock40Stack2.
            recoveredBlock40PC := 286.
        ].
        recoveredBlock40Step = 286 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 287.
        ].
        recoveredBlock40Step = 287 ifTrue: [
            recoveredBlock40Local2 := recoveredBlock40Stack2.
            recoveredBlock40PC := 288.
        ].
        recoveredBlock40Step = 288 ifTrue: [
            recoveredBlock40Local1 := recoveredBlock40Stack1.
            recoveredBlock40PC := 289.
        ].
        recoveredBlock40Step = 289 ifTrue: [
            recoveredBlock40Stack1 := OrderedCollection.
            recoveredBlock40PC := 291.
        ].
        recoveredBlock40Step = 291 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) new.
            recoveredBlock40PC := 293.
        ].
        recoveredBlock40Step = 293 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 294.
        ].
        recoveredBlock40Step = 294 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack2.
            recoveredBlock40PC := 297.
        ].
        recoveredBlock40Step = 297 ifTrue: [
            recoveredBlock40Stack2 := nil.
            recoveredBlock40PC := 298.
        ].
        recoveredBlock40Step = 298 ifTrue: [
            recoveredBlock40Local4 := recoveredBlock40Stack2.
            recoveredBlock40PC := 299.
        ].
        recoveredBlock40Step = 299 ifTrue: [
            recoveredBlock40PC := 327.
        ].
        recoveredBlock40Step = 302 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 304.
        ].
        recoveredBlock40Step = 304 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) stmnt.
            recoveredBlock40PC := 305.
        ].
        recoveredBlock40Step = 305 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isIleEmptyStmnt.
            recoveredBlock40PC := 307.
        ].
        recoveredBlock40Step = 307 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 310] ifFalse: [recoveredBlock40PC := 320].
        ].
        recoveredBlock40Step = 310 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal3.
            recoveredBlock40PC := 313.
        ].
        recoveredBlock40Step = 313 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 315.
        ].
        recoveredBlock40Step = 315 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 317.
        ].
        recoveredBlock40Step = 317 ifTrue: [
            recoveredBlock40PC := 327.
        ].
        recoveredBlock40Step = 320 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 323.
        ].
        recoveredBlock40Step = 323 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 325.
        ].
        recoveredBlock40Step = 325 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 327.
        ].
        recoveredBlock40Step = 327 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 379].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock345Value0 recoveredBlock345Value1 recoveredBlock345Value2 recoveredBlock345Value3 recoveredBlock345Value4 recoveredBlock345Value5 recoveredBlock345Value6 recoveredBlock345Value7 recoveredBlock345Value8 |
    recoveredBlock345Value0 := (self) ileBuilder.
    recoveredBlock345Value1 := recoveredArg1.
    recoveredBlock345Value2 := (recoveredBlock345Value1) expr.
    recoveredBlock345Value3 := (self) ileBuilder.
    recoveredBlock345Value4 := recoveredLocal4.
    recoveredBlock345Value5 := (recoveredBlock345Value3) blockedStmntList: (recoveredBlock345Value4).
    recoveredBlock345Value6 := recoveredArg1.
    recoveredBlock345Value7 := (recoveredBlock345Value6) expressionContext.
    recoveredBlock345Value8 := (recoveredBlock345Value0) switchExpr: (recoveredBlock345Value2) stmnt: (recoveredBlock345Value5) expressionContext: (recoveredBlock345Value7).
    recoveredBlock345Value8
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableOptimizationsDo: (recoveredStack2).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206473dc; bytecode file offset 0xf43d60"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 46.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyStmnt.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := (recoveredStack5) expr.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack5 := (recoveredStack5) lValue.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack6 := (recoveredStack6) expr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack7 := (recoveredStack7) expr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack7 := (recoveredStack7) attributes.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) assignExpr: (recoveredStack4) to: (recoveredStack5) expressionContext: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleExprStmnt.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifExpr: (recoveredStack2) thenStmnt: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := (recoveredStack5) expr.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack5 := (recoveredStack5) lValue.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack6 := (recoveredStack6) expr.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack7 := (recoveredStack7) expr.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack7 := (recoveredStack7) attributes.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) assignExpr: (recoveredStack4) to: (recoveredStack5) expressionContext: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleExprStmnt.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifExpr: (recoveredStack2) thenStmnt: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyStmnt.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMethodCall.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSideEffectFree.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := [:block281223c8Arg1 | 
    | block281223c8Value0 block281223c8Value1 |
    block281223c8Value0 := block281223c8Arg1.
    block281223c8Value1 := (block281223c8Value0) asIleExprStmnt.
    block281223c8Value1
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCommaExpr.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 599].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 359] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 576] ifFalse: [recoveredPC := 372].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 424] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDummyExpr.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 438] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 452] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRteMacroCall.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 460] ifFalse: [recoveredPC := 533].
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 476] ifFalse: [recoveredPC := 533].
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock481Value0 recoveredBlock481Value1 recoveredBlock481Value2 recoveredBlock481Value3 recoveredBlock481Value4 recoveredBlock481Value5 recoveredBlock481Value6 recoveredBlock481Value7 recoveredBlock481Value8 recoveredBlock481Value9 recoveredBlock481Value10 |
    recoveredBlock481Value0 := recoveredLocal4.
    recoveredBlock481Value1 := (recoveredBlock481Value0) expr.
    recoveredBlock481Value2 := recoveredLocal3.
    recoveredBlock481Value3 := (recoveredBlock481Value2) args.
    recoveredBlock481Value4 := (recoveredBlock481Value3) first.
    recoveredBlock481Value5 := (recoveredBlock481Value4) type.
    recoveredBlock481Value6 := recoveredLocal3.
    recoveredBlock481Value7 := (recoveredBlock481Value6) args.
    recoveredBlock481Value8 := (recoveredBlock481Value7) first.
    recoveredBlock481Value9 := (recoveredBlock481Value8) parmAttributes.
    recoveredBlock481Value10 := (recoveredBlock481Value1) parmAssign: (recoveredBlock481Value5) attributes: (recoveredBlock481Value9).
    recoveredBlock481Value10
].
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) execute: (recoveredStack2).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithArgs: (recoveredStack2).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 540] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 552] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := (recoveredStack2) lValue.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLValue: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack3 := [:block281223ecArg1 | 
    | block281223ecValue0 block281223ecValue1 |
    block281223ecValue0 := block281223ecArg1.
    block281223ecValue1 := (block281223ecValue0) asIleExprStmnt.
    block281223ecValue1
].
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryOp.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 608] ifFalse: [recoveredPC := 647].
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 618] ifFalse: [recoveredPC := 627].
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 638] ifFalse: [recoveredPC := 647].
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIndexedExpr.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 656] ifFalse: [recoveredPC := 683].
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseExpr.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack4 := (recoveredStack4) args.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            (recoveredStack3) addAll: (recoveredStack4).
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCommaExpr: (recoveredStack2).
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleStatementExpression.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 692] ifFalse: [recoveredPC := 706].
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpSource: (recoveredStack2).
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 716] ifFalse: [recoveredPC := 734].
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDummyExpr.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 728] ifFalse: [recoveredPC := 734].
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyStmnt.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20658bc0; bytecode file offset 0xf55540"
!SGIlOptimizeControlFlow methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOptimizedStmntlist.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 41.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOptimizedStmntlist.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCppIfElseStmnt.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 386].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleStatementList.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 386].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 386].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExprStmnt.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExprStmnt.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) lValue.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock267Stack0 recoveredBlock267Stack1 recoveredBlock267Stack2 recoveredBlock267Stack3 recoveredBlock267Stack4 recoveredBlock267PC recoveredBlock267Step recoveredBlock267Done recoveredBlock267Result |
    recoveredBlock267Stack0 := self.
    recoveredBlock267PC := 274.
    recoveredBlock267Done := false.
    [recoveredBlock267Done not] whileTrue: [
        recoveredBlock267Step := recoveredBlock267PC.
        recoveredBlock267Step = 274 ifTrue: [
            recoveredBlock267Stack1 := true.
            recoveredBlock267PC := 275.
        ].
        recoveredBlock267Step = 275 ifTrue: [
            recoveredBlock267Stack2 := recoveredLocal4.
            recoveredBlock267PC := 278.
        ].
        recoveredBlock267Step = 278 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) lValue.
            recoveredBlock267PC := 280.
        ].
        recoveredBlock267Step = 280 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) expr.
            recoveredBlock267PC := 281.
        ].
        recoveredBlock267Step = 281 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) isIleTempIdentifier.
            recoveredBlock267PC := 283.
        ].
        recoveredBlock267Step = 283 ifTrue: [
            (recoveredBlock267Stack2) ifTrue: [recoveredBlock267PC := 318] ifFalse: [recoveredBlock267PC := 286].
        ].
        recoveredBlock267Step = 286 ifTrue: [
            recoveredBlock267PC := 287.
        ].
        recoveredBlock267Step = 287 ifTrue: [
            recoveredBlock267Stack1 := true.
            recoveredBlock267PC := 288.
        ].
        recoveredBlock267Step = 288 ifTrue: [
            recoveredBlock267Stack2 := recoveredLocal4.
            recoveredBlock267PC := 291.
        ].
        recoveredBlock267Step = 291 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) attributes.
            recoveredBlock267PC := 293.
        ].
        recoveredBlock267Step = 293 ifTrue: [
            recoveredBlock267Stack3 := recoveredLocal3.
            recoveredBlock267PC := 296.
        ].
        recoveredBlock267Step = 296 ifTrue: [
            recoveredBlock267Stack3 := (recoveredBlock267Stack3) attributes.
            recoveredBlock267PC := 298.
        ].
        recoveredBlock267Step = 298 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) = (recoveredBlock267Stack3).
            recoveredBlock267PC := 299.
        ].
        recoveredBlock267Step = 299 ifTrue: [
            (recoveredBlock267Stack2) ifTrue: [recoveredBlock267PC := 318] ifFalse: [recoveredBlock267PC := 302].
        ].
        recoveredBlock267Step = 302 ifTrue: [
            recoveredBlock267PC := 303.
        ].
        recoveredBlock267Step = 303 ifTrue: [
            recoveredBlock267Stack1 := recoveredLocal4.
            recoveredBlock267PC := 306.
        ].
        recoveredBlock267Step = 306 ifTrue: [
            recoveredBlock267Stack1 := (recoveredBlock267Stack1) attributes.
            recoveredBlock267PC := 308.
        ].
        recoveredBlock267Step = 308 ifTrue: [
            recoveredBlock267Stack1 := (recoveredBlock267Stack1) isCgAttrLimitAssignment.
            recoveredBlock267PC := 310.
        ].
        recoveredBlock267Step = 310 ifTrue: [
            recoveredBlock267Stack2 := recoveredLocal3.
            recoveredBlock267PC := 313.
        ].
        recoveredBlock267Step = 313 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) attributes.
            recoveredBlock267PC := 315.
        ].
        recoveredBlock267Step = 315 ifTrue: [
            recoveredBlock267Stack2 := (recoveredBlock267Stack2) isCgAttrLimitAssignment.
            recoveredBlock267PC := 317.
        ].
        recoveredBlock267Step = 317 ifTrue: [
            recoveredBlock267Stack1 := (recoveredBlock267Stack1) = (recoveredBlock267Stack2).
            recoveredBlock267PC := 318.
        ].
        recoveredBlock267Step = 318 ifTrue: [
            recoveredBlock267Result := recoveredBlock267Stack1.
            recoveredBlock267Done := true.
        ].
    ].
    recoveredBlock267Result
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := [
    'Different limit assignment flags for same lValue'
].
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := (recoveredStack3) lValue.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack5 := (recoveredStack5) attributes.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignExpr: (recoveredStack2) to: (recoveredStack3) expressionContext: (recoveredStack4) attributes: (recoveredStack5).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExprStmnt.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := 44.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) mdlInfoNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEmptyStmnt.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 447].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCppIfElseStmnt.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 404] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNotExpr.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 447].
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock422Value0 recoveredBlock422Value1 recoveredBlock422Value2 recoveredBlock422Value3 recoveredBlock422Value4 recoveredBlock422Value5 recoveredBlock422Value6 |
    recoveredBlock422Value0 := recoveredArg1.
    recoveredBlock422Value1 := recoveredArg1.
    recoveredBlock422Value2 := (recoveredBlock422Value1) expr.
    recoveredBlock422Value3 := (recoveredBlock422Value2) not.
    recoveredBlock422Value4 := recoveredArg1.
    recoveredBlock422Value5 := (recoveredBlock422Value4) elseStmnt.
    recoveredBlock422Value6 := (recoveredBlock422Value0) createStmntExpr: (recoveredBlock422Value3) thenStmnt: (recoveredBlock422Value5).
    recoveredBlock422Value6
].
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := (recoveredStack1) useStatementSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEmptyStmnt.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 458] ifFalse: [recoveredPC := 473].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := (recoveredStack3) thenStmnt.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStmntExpr: (recoveredStack2) thenStmnt: (recoveredStack3).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := (recoveredStack2) elseStmnt.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 498] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleOptimizedStmntlist.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleStatementList.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 516] ifFalse: [recoveredPC := 677].
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 677] ifFalse: [recoveredPC := 530].
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIfStmnt.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 677].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 574] ifFalse: [recoveredPC := 628].
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 584] ifFalse: [recoveredPC := 628].
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIfElseStmnt.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 592] ifFalse: [recoveredPC := 613].
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := (recoveredStack3) thenStmnt.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack4 := (recoveredStack4) elseStmnt.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStmntExpr: (recoveredStack2) thenStmnt: (recoveredStack3) elseStmnt: (recoveredStack4).
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := (recoveredStack3) thenStmnt.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStmntExpr: (recoveredStack2) thenStmnt: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 642] ifFalse: [recoveredPC := 673].
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 652] ifFalse: [recoveredPC := 673].
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack3 := (recoveredStack3) thenStmnt.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack4 := (recoveredStack4) thenStmnt.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStmntExpr: (recoveredStack2) thenStmnt: (recoveredStack3) elseStmnt: (recoveredStack4).
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleStatementList.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 688] ifFalse: [recoveredPC := 826].
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleStatementList.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 698] ifFalse: [recoveredPC := 826].
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 714] ifFalse: [recoveredPC := 826].
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 730] ifFalse: [recoveredPC := 826].
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := (recoveredStack2) elseStmnt.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 754] ifFalse: [recoveredPC := 826].
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeLast.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack1) removeLast.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStmntExpr: (recoveredStack2) thenStmnt: (recoveredStack3) elseStmnt: (recoveredStack4).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCppIfElseStmnt.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 886] ifFalse: [recoveredPC := 834].
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCommaExpr.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 844] ifFalse: [recoveredPC := 886].
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack3 := (recoveredStack3) withoutLastArgument.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleExprStmnt.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack5 := (recoveredStack5) expr.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack5 := (recoveredStack5) args.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack6 := (recoveredStack6) thenStmnt.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack7 := (recoveredStack7) elseStmnt.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack4 := (recoveredStack4) ifExpr: (recoveredStack5) thenStmnt: (recoveredStack6) elseStmnt: (recoveredStack7).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList: (recoveredStack2).
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

