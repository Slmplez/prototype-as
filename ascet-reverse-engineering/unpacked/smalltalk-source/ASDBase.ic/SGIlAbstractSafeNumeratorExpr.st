"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b094; bytecode file offset 0x934580"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200371b4; bytecode file offset 0x934580"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
ileBasicType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileBasicType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055b30; bytecode file offset 0x952a9c"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractSafeNumeratorExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ab7c; bytecode file offset 0x967a18"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075144; bytecode file offset 0x9757c8"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    ^true
! !

"ASDBase.ic method 0x20075dec; bytecode file offset 0x9757c8"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
isIleSaveOpNumerator
    ^true
! !

"ASDBase.ic method 0x2007c0fc; bytecode file offset 0x97c330"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
isMISRAComplexExpr
    ^false
! !

"ASDBase.ic method 0x2007f6b4; bytecode file offset 0x97c330"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
isIleEnumExpr
    ^false
! !

"ASDBase.ic method 0x200b9b80; bytecode file offset 0x9b6440"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
changeIleType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) changeIleType: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createOpExpr: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20108b1c; bytecode file offset 0xa05448"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Cannot add parenthesis around ') , (recoveredValue2).
    (recoveredValue0) fatalMessage: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20111f3c; bytecode file offset 0xa0e858"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 expr: recoveredArg3 errLabel: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg4.
    errLabel := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) expr: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20135940; bytecode file offset 0xa32204"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
misraCastExpressionTo: recoveredArg1 force: recoveredArg2 strategy: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) expr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) castExpression: (recoveredValue1) to: (recoveredValue2) force: (recoveredValue3).
    recoveredValue5 := (self) expr.
    recoveredValue6 := (recoveredValue5) type.
    recoveredValue7 := (self) createOpExpr: (recoveredValue4) type: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f7358; bytecode file offset 0xaf3c84"
!SGIlAbstractSafeNumeratorExpr methodsFor: 'recovered'!
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
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) errLabel: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

