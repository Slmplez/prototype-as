"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200047a8; bytecode file offset 0x90206c"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20055470; bytecode file offset 0x952a9c"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) verifyPointerOp: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bb68; bytecode file offset 0x96873c"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c82c; bytecode file offset 0x9692b0"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
redundantIdentifier
    | recoveredValue0 |
    recoveredValue0 := redundantIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075064; bytecode file offset 0x9757c8"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
isIleBooleanTypedExpr
    ^true
! !

"ASDBase.ic method 0x2007dd44; bytecode file offset 0x97c330"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    ^false
! !

"ASDBase.ic method 0x200a8714; bytecode file offset 0x9a502c"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200a878c; bytecode file offset 0x9a50f8"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
redundantIdentifier: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    redundantIdentifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201586ac; bytecode file offset 0xa54f68"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3 identifier: recoveredArg4 redundantIdentifier: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg4.
    identifier := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    redundantIdentifier := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) leftExpr: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021d290; bytecode file offset 0xb19bf0"
!SGIlVerifyPointerOp methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) leftExpr.
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
            recoveredStack4 := (recoveredStack4) identifier.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) redundantIdentifier.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) identifier: (recoveredStack4) redundantIdentifier: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

