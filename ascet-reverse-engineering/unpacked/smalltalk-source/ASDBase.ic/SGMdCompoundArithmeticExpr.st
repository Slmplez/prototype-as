"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005308; bytecode file offset 0x90206c"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
setExactGoalScaleFromImpl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2002b2d4; bytecode file offset 0x934580"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
isMdlSideEffectExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootExpr.
    recoveredValue1 := (recoveredValue0) isMdlSideEffectExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200330a4; bytecode file offset 0x934580"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootExpr.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034194; bytecode file offset 0x934580"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootExpr.
    recoveredValue1 := (recoveredValue0) mdlName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055ef0; bytecode file offset 0x952a9c"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) compoundArithmethicExpression: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d178; bytecode file offset 0x969c04"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
rootExpr
    | recoveredValue0 |
    recoveredValue0 := rootExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097e74; bytecode file offset 0x995850"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootExpr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) propagateAttributes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c3c60; bytecode file offset 0x9c058c"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
rootExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootExpr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115bc0; bytecode file offset 0xa1248c"
!SGMdCompoundArithmeticExpr methodsFor: 'recovered'!
optData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := optData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) optData.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := optData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

