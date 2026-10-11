"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204ca13c; bytecode file offset 0xdc6a54"
!SGIlAddRedundantDataAssignments methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super assignExpr: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) lValue.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRedundantData.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock29Local1 recoveredBlock29Local2 recoveredBlock29Local3 recoveredBlock29Local4 recoveredBlock29Local5 recoveredBlock29Local6 recoveredBlock29Local7 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := OrderedCollection.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) new.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 41.
        ].
        recoveredBlock29Step = 41 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) expr.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 46.
        ].
        recoveredBlock29Step = 46 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) stripCommaExprToList: (recoveredBlock29Stack2).
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) asIleSideEffectFreeBufferedExpr.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Local7 := recoveredBlock29Stack1.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) lValue.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) expr.
            recoveredBlock29PC := 57.
        ].
        recoveredBlock29Step = 57 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) asIleLValueCopy.
            recoveredBlock29PC := 59.
        ].
        recoveredBlock29Step = 59 ifTrue: [
            recoveredBlock29Local5 := recoveredBlock29Stack1.
            recoveredBlock29PC := 61.
        ].
        recoveredBlock29Step = 61 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local5.
            recoveredBlock29PC := 63.
        ].
        recoveredBlock29Step = 63 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) asIleRedundantDataExpr.
            recoveredBlock29PC := 65.
        ].
        recoveredBlock29Step = 65 ifTrue: [
            recoveredBlock29Local4 := recoveredBlock29Stack1.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) ileBuilder.
            recoveredBlock29PC := 68.
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local7.
            recoveredBlock29PC := 70.
        ].
        recoveredBlock29Step = 70 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local5.
            recoveredBlock29PC := 72.
        ].
        recoveredBlock29Step = 72 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) type.
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) createComplementServiceExpr: (recoveredBlock29Stack1) type: (recoveredBlock29Stack2).
            recoveredBlock29PC := 76.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            recoveredBlock29Local6 := recoveredBlock29Stack0.
            recoveredBlock29PC := 78.
        ].
        recoveredBlock29Step = 78 ifTrue: [
            recoveredBlock29Stack0 := recoveredBlock29Local1.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 80.
        ].
        recoveredBlock29Step = 80 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) ileBuilder.
            recoveredBlock29PC := 82.
        ].
        recoveredBlock29Step = 82 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local7.
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local5.
            recoveredBlock29PC := 86.
        ].
        recoveredBlock29Step = 86 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) asIleLValue.
            recoveredBlock29PC := 88.
        ].
        recoveredBlock29Step = 88 ifTrue: [
            recoveredBlock29Stack4 := recoveredLocal1.
            recoveredBlock29PC := 91.
        ].
        recoveredBlock29Step = 91 ifTrue: [
            recoveredBlock29Stack4 := (recoveredBlock29Stack4) attributes.
            recoveredBlock29PC := 93.
        ].
        recoveredBlock29Step = 93 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) assignExpr: (recoveredBlock29Stack2) to: (recoveredBlock29Stack3) attributes: (recoveredBlock29Stack4).
            recoveredBlock29PC := 96.
        ].
        recoveredBlock29Step = 96 ifTrue: [
            (recoveredBlock29Stack0) add: (recoveredBlock29Stack1).
            recoveredBlock29PC := 98.
        ].
        recoveredBlock29Step = 98 ifTrue: [
            recoveredBlock29Stack0 := recoveredBlock29Local1.
            recoveredBlock29PC := 99.
        ].
        recoveredBlock29Step = 99 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 100.
        ].
        recoveredBlock29Step = 100 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) ileBuilder.
            recoveredBlock29PC := 102.
        ].
        recoveredBlock29Step = 102 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local6.
            recoveredBlock29PC := 104.
        ].
        recoveredBlock29Step = 104 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local4.
            recoveredBlock29PC := 105.
        ].
        recoveredBlock29Step = 105 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) asIleLValue.
            recoveredBlock29PC := 107.
        ].
        recoveredBlock29Step = 107 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) assignExpr: (recoveredBlock29Stack2) to: (recoveredBlock29Stack3).
            recoveredBlock29PC := 109.
        ].
        recoveredBlock29Step = 109 ifTrue: [
            (recoveredBlock29Stack0) add: (recoveredBlock29Stack1).
            recoveredBlock29PC := 111.
        ].
        recoveredBlock29Step = 111 ifTrue: [
            recoveredBlock29Stack0 := recoveredBlock29Local1.
            recoveredBlock29PC := 112.
        ].
        recoveredBlock29Step = 112 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local5.
            recoveredBlock29PC := 114.
        ].
        recoveredBlock29Step = 114 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) isIleArithmeticExpr.
            recoveredBlock29PC := 116.
        ].
        recoveredBlock29Step = 116 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 120] ifFalse: [recoveredBlock29PC := 132].
        ].
        recoveredBlock29Step = 120 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local5.
            recoveredBlock29PC := 122.
        ].
        recoveredBlock29Step = 122 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 125.
        ].
        recoveredBlock29Step = 125 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) interval.
            recoveredBlock29PC := 127.
        ].
        recoveredBlock29Step = 127 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) decorateGoalInterval: (recoveredBlock29Stack2).
            recoveredBlock29PC := 129.
        ].
        recoveredBlock29Step = 129 ifTrue: [
            recoveredBlock29PC := 134.
        ].
        recoveredBlock29Step = 132 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local5.
            recoveredBlock29PC := 134.
        ].
        recoveredBlock29Step = 134 ifTrue: [
            (recoveredBlock29Stack0) add: (recoveredBlock29Stack1).
            recoveredBlock29PC := 136.
        ].
        recoveredBlock29Step = 136 ifTrue: [
            recoveredBlock29Stack0 := self.
            recoveredBlock29PC := 137.
        ].
        recoveredBlock29Step = 137 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) ileBuilder.
            recoveredBlock29PC := 139.
        ].
        recoveredBlock29Step = 139 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local1.
            recoveredBlock29PC := 140.
        ].
        recoveredBlock29Step = 140 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) commaExpr: (recoveredBlock29Stack1).
            recoveredBlock29PC := 142.
        ].
        recoveredBlock29Step = 142 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 143.
        ].
        recoveredBlock29Step = 143 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 146.
        ].
        recoveredBlock29Step = 146 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack0.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

