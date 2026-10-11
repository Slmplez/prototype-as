"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dbac; bytecode file offset 0x90a4b8"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
castSwitchFromMultiplex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003a970; bytecode file offset 0x938608"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
lValueExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b9a8; bytecode file offset 0x938608"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
castNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) visitNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ba50; bytecode file offset 0x938608"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
abstractExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addScalarConstantCast: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a96b8; bytecode file offset 0x9a5fc8"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmnt.
    recoveredValue3 := (self) visitNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createNoOpStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a96f4; bytecode file offset 0x9a5fc8"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
cppIfThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) thenStmnt.
    recoveredValue3 := (self) visitNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createNoOpThenStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014bbfc; bytecode file offset 0xa484c0"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) thenStmnt.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) elseStmnt.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue6) createNoOpThenStmnt: (recoveredValue7) elseStmnt: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20153088; bytecode file offset 0xa4f948"
!SGIlCastStmntTransformation methodsFor: 'recovered'!
addScalarConstantCast: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := addScalarConstantCastTransformation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGIlAddScalarConstantCastTransformation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            addScalarConstantCastTransformation := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := addScalarConstantCastTransformation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

