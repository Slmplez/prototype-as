"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000d08; bytecode file offset 0x8ffcfc"
!SGIlBracedExpr methodsFor: 'recovered'!
asBracedExpr
    ^self
! !

"ASDBase.ic method 0x20003c28; bytecode file offset 0x90206c"
!SGIlBracedExpr methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20008558; bytecode file offset 0x908be4"
!SGIlBracedExpr methodsFor: 'recovered'!
asIleUnbracedExpr
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a0e8; bytecode file offset 0x908be4"
!SGIlBracedExpr methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfNoBrace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200283b4; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
serviceKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) serviceKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029ff4; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) interval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b4b4; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
secondOperand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) secondOperand.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032b24; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
tempVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) tempVar.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032ea4; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
firstOperand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) firstOperand.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034474; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
ileBasicType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileBasicType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034824; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
serviceLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) serviceLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035b74; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036de4; bytecode file offset 0x934580"
!SGIlBracedExpr methodsFor: 'recovered'!
limitOverflow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) limitOverflow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038988; bytecode file offset 0x935c54"
!SGIlBracedExpr methodsFor: 'recovered'!
createOp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asBracedExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200554f4; bytecode file offset 0x952a9c"
!SGIlBracedExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bracedExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200590e8; bytecode file offset 0x956284"
!SGIlBracedExpr methodsFor: 'recovered'!
ileInheritsTypeTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileInheritsTypeTo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20078d8c; bytecode file offset 0x9757c8"
!SGIlBracedExpr methodsFor: 'recovered'!
isIleBracedExpr
    ^true
! !

"ASDBase.ic method 0x2008621c; bytecode file offset 0x982adc"
!SGIlBracedExpr methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createOpType: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asBracedExpr.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a1178; bytecode file offset 0x99db8c"
!SGIlBracedExpr methodsFor: 'recovered'!
asIleExpandExprPrepared
    | recoveredValue0 |
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) fatalMessage: ('Cannot prepare braced').
    ^self
! !

"ASDBase.ic method 0x200a84d8; bytecode file offset 0x9a4e24"
!SGIlBracedExpr methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200de910; bytecode file offset 0x9db1d0"
!SGIlBracedExpr methodsFor: 'recovered'!
createOpCond: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createOpCond: (recoveredValue1) leftExpr: (recoveredValue2) rightExpr: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asBracedExpr.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20134690; bytecode file offset 0xa30f58"
!SGIlBracedExpr methodsFor: 'recovered'!
createNotOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Rl') == ('Call_80906').
    recoveredValue1 := (self) expr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createNotOpLeftExpr: (recoveredValue2) rightExpr: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asBracedExpr.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b2de8; bytecode file offset 0xaaf6b0"
!SGIlBracedExpr methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) assertSetterShouldNotBeUsed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBracedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super expr: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

