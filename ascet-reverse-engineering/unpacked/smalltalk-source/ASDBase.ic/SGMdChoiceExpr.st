"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028474; bytecode file offset 0x934580"
!SGMdChoiceExpr methodsFor: 'recovered'!
isMdlSideEffectExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := (recoveredValue0) isMdlSideEffectExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bf04; bytecode file offset 0x934580"
!SGMdChoiceExpr methodsFor: 'recovered'!
isMdlExplicitReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := (recoveredValue0) isMdlExplicitReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d374; bytecode file offset 0x934580"
!SGMdChoiceExpr methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031594; bytecode file offset 0x934580"
!SGMdChoiceExpr methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055794; bytecode file offset 0x952a9c"
!SGMdChoiceExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) choiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057588; bytecode file offset 0x956284"
!SGMdChoiceExpr methodsFor: 'recovered'!
semAnaElementHasImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) semAnaElementHasImplementation: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200575a8; bytecode file offset 0x956284"
!SGMdChoiceExpr methodsFor: 'recovered'!
isMdlCompatibleReadWriteReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isMdlCompatibleReadWriteReference: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057728; bytecode file offset 0x956284"
!SGMdChoiceExpr methodsFor: 'recovered'!
internalAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) internalAccess: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058ae8; bytecode file offset 0x956284"
!SGMdChoiceExpr methodsFor: 'recovered'!
isDirectInOutArgument: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isDirectInOutArgument: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c64c; bytecode file offset 0x9692b0"
!SGMdChoiceExpr methodsFor: 'recovered'!
literal
    | recoveredValue0 |
    recoveredValue0 := literal.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d1e8; bytecode file offset 0x969c04"
!SGMdChoiceExpr methodsFor: 'recovered'!
exprChild
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076aec; bytecode file offset 0x9757c8"
!SGMdChoiceExpr methodsFor: 'recovered'!
isMdlChoice
    ^true
! !

"ASDBase.ic method 0x20097d14; bytecode file offset 0x995850"
!SGMdChoiceExpr methodsFor: 'recovered'!
semAnaNoStackVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) semAnaNoStackVariable: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a00e4; bytecode file offset 0x99c9e0"
!SGMdChoiceExpr methodsFor: 'recovered'!
asMdlVariableArray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := (recoveredValue0) asMdlVariableArray.
    (self) exprChild: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b9a20; bytecode file offset 0x9b63d0"
!SGMdChoiceExpr methodsFor: 'recovered'!
asMdlReferencedExprOnError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exprChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asMdlReferencedExprOnError: (recoveredValue1).
    (self) exprChild: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c32c4; bytecode file offset 0x9bfde0"
!SGMdChoiceExpr methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literal := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3858; bytecode file offset 0x9c058c"
!SGMdChoiceExpr methodsFor: 'recovered'!
exprChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20174dfc; bytecode file offset 0xa716c8"
!SGMdChoiceExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) literal.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPutAll: (':').
    recoveredValue4 := (self) exprChild.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201a0b6c; bytecode file offset 0xa9d4a8"
!SGMdChoiceExpr methodsFor: 'recovered'!
asMdlDereferencedExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Dereferenced expression of choice expression makes no sense'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a0b9c; bytecode file offset 0xa9d4a8"
!SGMdChoiceExpr methodsFor: 'recovered'!
asMdlReferencedExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Referenced expression of choice expression makes no sense'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b4bf8; bytecode file offset 0xab14c4"
!SGMdChoiceExpr methodsFor: 'recovered'!
setExactGoalScaleFromImpl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExactScalable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exprChild.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setExactGoalScaleFromImpl: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super setExactGoalScaleFromImpl: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

