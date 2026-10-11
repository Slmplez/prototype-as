"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004cc8; bytecode file offset 0x90206c"
!SGIlAbstractAssign methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20009c14; bytecode file offset 0x908be4"
!SGIlAbstractAssign methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfAssign.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20032e04; bytecode file offset 0x934580"
!SGIlAbstractAssign methodsFor: 'recovered'!
isIleBooleanTypedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) isIleBooleanTypedExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055d94; bytecode file offset 0x952a9c"
!SGIlAbstractAssign methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractAssignExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200575c8; bytecode file offset 0x956284"
!SGIlAbstractAssign methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileDependsOnAccessExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069760; bytecode file offset 0x966bdc"
!SGIlAbstractAssign methodsFor: 'recovered'!
ileRightHandSideExpr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069a58; bytecode file offset 0x966bdc"
!SGIlAbstractAssign methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a52c; bytecode file offset 0x967a18"
!SGIlAbstractAssign methodsFor: 'recovered'!
expressionContext
    | recoveredValue0 |
    recoveredValue0 := expressionContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074b14; bytecode file offset 0x9757c8"
!SGIlAbstractAssign methodsFor: 'recovered'!
isIleAbstractAssign
    ^true
! !

"ASDBase.ic method 0x20093b80; bytecode file offset 0x9904ac"
!SGIlAbstractAssign methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createOpExpr: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094f8c; bytecode file offset 0x991c58"
!SGIlAbstractAssign methodsFor: 'recovered'!
createNoOpExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) typeOrNil.
    recoveredValue2 := (self) createOpExpr: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a860c; bytecode file offset 0x9a4f24"
!SGIlAbstractAssign methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200a86d8; bytecode file offset 0x9a4fa8"
!SGIlAbstractAssign methodsFor: 'recovered'!
expressionContext: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    expressionContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5574; bytecode file offset 0x9d2050"
!SGIlAbstractAssign methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) expr.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20131f18; bytecode file offset 0xa2e7d8"
!SGIlAbstractAssign methodsFor: 'recovered'!
createOp: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExpr: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201366ec; bytecode file offset 0xa32fb8"
!SGIlAbstractAssign methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 expr: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    expr := recoveredValue0.
    recoveredValue1 := recoveredArg4.
    expressionContext := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    super initializeSource: (recoveredValue2) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201f73b8; bytecode file offset 0xaf3c84"
!SGIlAbstractAssign methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) expressionContext: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

