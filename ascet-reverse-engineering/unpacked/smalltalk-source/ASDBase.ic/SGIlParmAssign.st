"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200075a4; bytecode file offset 0x908be4"
!SGIlParmAssign methodsFor: 'recovered'!
asIleOptimizedChoiceExpr
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b57c; bytecode file offset 0x908be4"
!SGIlParmAssign methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := (self) parmAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20033ab4; bytecode file offset 0x934580"
!SGIlParmAssign methodsFor: 'recovered'!
ileExtendedInputValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileExtendedInputValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036764; bytecode file offset 0x934580"
!SGIlParmAssign methodsFor: 'recovered'!
isIleArgumentInOut
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parmAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrArgumentInOut.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050e20; bytecode file offset 0x94d84c"
!SGIlParmAssign methodsFor: 'recovered'!
isIleArgumentIn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parmAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrArgumentOut.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054ff0; bytecode file offset 0x952a9c"
!SGIlParmAssign methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parmAssign: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064284; bytecode file offset 0x961970"
!SGIlParmAssign methodsFor: 'recovered'!
genIleLazy
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    (recoveredValue0) genIleLazy.
    ^self
! !

"ASDBase.ic method 0x2006b278; bytecode file offset 0x96873c"
!SGIlParmAssign methodsFor: 'recovered'!
parmAttributes
    | recoveredValue0 |
    recoveredValue0 := parmAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077794; bytecode file offset 0x9757c8"
!SGIlParmAssign methodsFor: 'recovered'!
isIleParmAssign
    ^true
! !

"ASDBase.ic method 0x200a8720; bytecode file offset 0x9a502c"
!SGIlParmAssign methodsFor: 'recovered'!
parmAttributes: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    parmAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20118418; bytecode file offset 0xa14cec"
!SGIlParmAssign methodsFor: 'recovered'!
isIleArgumentOut
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) parmAttributes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrArgumentIn.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmAttributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrArgumentOut.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201368e0; bytecode file offset 0xa331bc"
!SGIlParmAssign methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 expr: recoveredArg3 expressionContext: recoveredArg4 parmAttributes: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg5.
    parmAttributes := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) expr: (recoveredValue3) expressionContext: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021d2d8; bytecode file offset 0xb19bf0"
!SGIlParmAssign methodsFor: 'recovered'!
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
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) parmAttributes.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) expressionContext: (recoveredStack4) parmAttributes: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

