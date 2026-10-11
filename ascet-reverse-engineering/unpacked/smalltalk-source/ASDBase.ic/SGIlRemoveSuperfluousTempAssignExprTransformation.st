"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200fcf84; bytecode file offset 0x9f9838"
!SGIlRemoveSuperfluousTempAssignExprTransformation methodsFor: 'recovered'!
tempAssignedConditionalExpr: recoveredArg1
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
            recoveredStack2 := toBeReplacedConditionalExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := replacementExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017c554; bytecode file offset 0xa78e14"
!SGIlRemoveSuperfluousTempAssignExprTransformation methodsFor: 'recovered'!
castExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExpr: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b27b0; bytecode file offset 0xbaf07c"
!SGIlRemoveSuperfluousTempAssignExprTransformation methodsFor: 'recovered'!
rootExpr: recoveredArg1 toBeReplacedConditionalExpr: recoveredArg2 stmnt: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg2.
    toBeReplacedConditionalExpr := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) expr.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) leftExpr.
    replacementExpr := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) anyExpr: (recoveredValue5).
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) rightExpr.
    replacementExpr := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) anyExpr: (recoveredValue9).
    recoveredLocal3 := recoveredValue10.
    toBeReplacedConditionalExpr := nil.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := (recoveredValue11) createOpLeftExpr: (recoveredValue12) rightExpr: (recoveredValue13).
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue15) asIleStmntReplaceExpr: (recoveredValue16) with: (recoveredValue17).
    ^recoveredValue18
! !

