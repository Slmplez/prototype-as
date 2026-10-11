"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005470; bytecode file offset 0x90206c"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
receiveMessageSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200056b8; bytecode file offset 0x90206c"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
sendMessageSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2004e930; bytecode file offset 0x94d048"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
unknownSideEffects
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053aa8; bytecode file offset 0x9505d0"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
writeTo: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20096a24; bytecode file offset 0x9932f0"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
visitNodeWithoutReplace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super visitNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a9654; bytecode file offset 0x9a5fc8"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
referencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    recoveredValue3 := (self) visitNodeWithoutReplace: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createOpExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fe438; bytecode file offset 0x9facfc"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
prePostIncDec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    (self) internalWriteTo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super prePostIncDec: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20154520; bytecode file offset 0xa50de4"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
internalWriteTo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleLValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalWriteTo: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) writeTo: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c7f8; bytecode file offset 0xa690bc"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
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
            recoveredStack0 := super methodCall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) unknownSideEffects.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20338938; bytecode file offset 0xc35210"
!SGIlAbstractWriteAccessVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) lValue.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value2) lValue.
    recoveredBlock8Value4 := (recoveredBlock8Value3) expr.
    recoveredBlock8Value5 := (self) visitNodeWithoutReplace: (recoveredBlock8Value4).
    recoveredBlock8Value6 := (recoveredBlock8Value1) createOpExpr: (recoveredBlock8Value5).
    recoveredLocal2 := recoveredBlock8Value6.
    recoveredBlock8Value7 := recoveredArg1.
    recoveredBlock8Value8 := (recoveredBlock8Value7) expr.
    recoveredBlock8Value9 := (self) visitNode: (recoveredBlock8Value8).
    recoveredBlock8Value10 := recoveredBlock8Value9.
    recoveredLocal1 := recoveredBlock8Value10.
    recoveredBlock8Value9
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) expr.
    (self) internalWriteTo: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue5) createOpLValue: (recoveredValue6) expr: (recoveredValue7).
    ^recoveredValue8
! !

