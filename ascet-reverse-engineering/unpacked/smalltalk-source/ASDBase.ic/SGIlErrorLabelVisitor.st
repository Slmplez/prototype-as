"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006678c; bytecode file offset 0x963428"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := stream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095f50; bytecode file offset 0x992bec"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) lValue.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20095fc0; bytecode file offset 0x992bec"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
implCastAssignWithSelectableTypeExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20096210; bytecode file offset 0x992bec"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
abstractExprDecorator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200962f0; bytecode file offset 0x992bec"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
wrappedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aae8c; bytecode file offset 0x9a7774"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('EXPR').
    ^self
! !

"ASDBase.ic method 0x200aaeb4; bytecode file offset 0x9a7774"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
ileNullReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('NULL').
    ^self
! !

"ASDBase.ic method 0x200abc98; bytecode file offset 0x9a85bc"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
abstractSafeNumeratorExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200abcd4; bytecode file offset 0x9a85bc"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
namedIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd66c; bytecode file offset 0x9b9f90"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
abstractConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c8184; bytecode file offset 0x9c4a3c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
ileErrorLabelFor: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    stream := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fed44; bytecode file offset 0x9fb604"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
ileErrorLabelFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) reserveTempStream.
    stream := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := stream.
    recoveredValue3 := (recoveredValue2) releaseGetContents.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010e8f4; bytecode file offset 0xa0b1bc"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
assertIntervalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPutAll: ('.assert()').
    ^self
! !

"ASDBase.ic method 0x201a666c; bytecode file offset 0xaa2f3c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPut: ($.).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlNode.
    recoveredValue6 := (recoveredValue5) errLabel.
    (recoveredValue2) nextPutAll: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2024c1f0; bytecode file offset 0xb48b2c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) elementDecl.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) errLabel.
    recoveredBlock8Value3 := (recoveredBlock8Value0) nextPutAll: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := super identifier: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2) ifNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2024c214; bytecode file offset 0xb48b2c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parmAttributes.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) errLabel.
    recoveredBlock8Value3 := (recoveredBlock8Value0) nextPutAll: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := super parmAssign: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2) ifNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2024c238; bytecode file offset 0xb48b2c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
implCastAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) errLabel.
    recoveredBlock8Value3 := (recoveredBlock8Value0) nextPutAll: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := super implCastAssignExpr: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2) ifNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2024c25c; bytecode file offset 0xb48b2c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
modelIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlNode.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) errLabel.
    recoveredBlock8Value3 := (recoveredBlock8Value0) nextPutAll: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := super modelIdentifier: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2) ifNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20261934; bytecode file offset 0xb5e200"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) baseExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) args.
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) stream.
    (recoveredBlock10Value0) nextPut: ($[).
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    (self) visitNode: (recoveredBlock10Value1).
    recoveredBlock10Value2 := (self) stream.
    recoveredBlock10Value3 := (recoveredBlock10Value2) nextPut: ($]).
    recoveredBlock10Value3
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20284a58; bytecode file offset 0xb8132c"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('temp var').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) tempAssign.
    recoveredValue3 := (recoveredValue2) tempVar.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) errLabel.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isEmpty.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 37] ifFalse: [recoveredBlock13PC := 30].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) stream.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) errLabel.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) nextPutAll: (recoveredBlock13Stack2).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202a1fb0; bytecode file offset 0xb9e884"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
namedTempIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tempName.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Value0.
    recoveredBlock8Value2 := recoveredBlock8Arg1.
    recoveredBlock8Value3 := (recoveredBlock8Value2) asString.
    (recoveredBlock8Value1) nextPutAll: (recoveredBlock8Value3).
    recoveredBlock8Value4 := (recoveredBlock8Value0) nextPut: ($?).
    recoveredBlock8Value4
].
    recoveredValue3 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := super namedTempIdentifier: (recoveredBlock27Value0).
    recoveredBlock27Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2) ifNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2030608c; bytecode file offset 0xc02968"
!SGIlErrorLabelVisitor methodsFor: 'recovered'!
tempIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tempName.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) asString.
    recoveredBlock8Value3 := (recoveredBlock8Value0) nextPutAll: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 |
    recoveredBlock19Value0 := (self) stream.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    (recoveredBlock19Value1) nextPutAll: ('_t').
    recoveredBlock19Value2 := recoveredBlock19Value0.
    recoveredBlock19Value3 := recoveredArg1.
    recoveredBlock19Value4 := (recoveredBlock19Value3) basicHash.
    recoveredBlock19Value5 := (recoveredBlock19Value4) asString.
    (recoveredBlock19Value2) nextPutAll: (recoveredBlock19Value5).
    recoveredBlock19Value6 := recoveredArg1.
    recoveredBlock19Value7 := (recoveredBlock19Value6) type.
    recoveredBlock19Value8 := (recoveredBlock19Value7) getImplType.
    recoveredBlock19Value9 := (recoveredBlock19Value8) asCType.
    recoveredBlock19Value10 := (recoveredBlock19Value0) nextPutAll: (recoveredBlock19Value9).
    recoveredBlock19Value10
].
    (recoveredValue1) ifNotNil: (recoveredValue2) ifNil: (recoveredValue3).
    ^self
! !

