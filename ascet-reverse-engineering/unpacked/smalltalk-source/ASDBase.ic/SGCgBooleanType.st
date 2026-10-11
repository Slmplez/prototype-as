"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200106c4; bytecode file offset 0x90cfc0"
!SGCgBooleanType methodsFor: 'recovered'!
cgAssignmentConversion: recoveredArg1 lValue: recoveredArg2 generator: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018f80; bytecode file offset 0x92209c"
!SGCgBooleanType methodsFor: 'recovered'!
csNameSpace
    ^'System.Boolean'
! !

"ASDBase.ic method 0x2001c0e8; bytecode file offset 0x92209c"
!SGCgBooleanType methodsFor: 'recovered'!
label
    ^'log'
! !

"ASDBase.ic method 0x20020f6c; bytecode file offset 0x92209c"
!SGCgBooleanType methodsFor: 'recovered'!
errLabel
    ^'log'
! !

"ASDBase.ic method 0x2002165c; bytecode file offset 0x92209c"
!SGCgBooleanType methodsFor: 'recovered'!
modelTypeClassName
    ^'SGBoolean'
! !

"ASDBase.ic method 0x20039270; bytecode file offset 0x935c54"
!SGCgBooleanType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgBooleanType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c0cc; bytecode file offset 0x9389cc"
!SGCgBooleanType methodsFor: 'recovered'!
computeImplDataFor: recoveredArg1 withImpl: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ec48; bytecode file offset 0x93bf94"
!SGCgBooleanType methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createBoolean.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f118; bytecode file offset 0x93bf94"
!SGCgBooleanType methodsFor: 'recovered'!
getPhysType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056b80; bytecode file offset 0x9536dc"
!SGCgBooleanType methodsFor: 'recovered'!
createWithImplFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getImplType.
    recoveredValue2 := (self) createWithImplType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20074aec; bytecode file offset 0x9757c8"
!SGCgBooleanType methodsFor: 'recovered'!
isCgBooleanType
    ^true
! !

"ASDBase.ic method 0x200751fc; bytecode file offset 0x9757c8"
!SGCgBooleanType methodsFor: 'recovered'!
isRBDataBoolean
    ^true
! !

"ASDBase.ic method 0x200760c4; bytecode file offset 0x9757c8"
!SGCgBooleanType methodsFor: 'recovered'!
isMdlBoolean
    ^true
! !

"ASDBase.ic method 0x2007730c; bytecode file offset 0x9757c8"
!SGCgBooleanType methodsFor: 'recovered'!
isCgTypeWithBehaviour
    ^true
! !

"ASDBase.ic method 0x20078de4; bytecode file offset 0x9757c8"
!SGCgBooleanType methodsFor: 'recovered'!
isIleBooleanType
    ^true
! !

"ASDBase.ic method 0x2007ac2c; bytecode file offset 0x97c330"
!SGCgBooleanType methodsFor: 'recovered'!
defaultPhysicalValueForArrayCompletion
    ^false
! !

"ASDBase.ic method 0x200a1d3c; bytecode file offset 0x99e6ec"
!SGCgBooleanType methodsFor: 'recovered'!
typeAndImplHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) getImplType.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e1d98; bytecode file offset 0x9de890"
!SGCgBooleanType methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) asCType.
    recoveredValue2 := ('log[') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (']').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fcbb8; bytecode file offset 0x9f9494"
!SGCgBooleanType methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) attribute: ('type') with: ('Boolean').
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20100d88; bytecode file offset 0x9fd654"
!SGCgBooleanType methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) isCgBooleanType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011e924; bytecode file offset 0xa1b1f8"
!SGCgBooleanType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgBooleanType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201200d8; bytecode file offset 0xa1c998"
!SGCgBooleanType methodsFor: 'recovered'!
createWithImplType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLogImpl: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20161a10; bytecode file offset 0xa5e2d8"
!SGCgBooleanType methodsFor: 'recovered'!
createUniqueBaseTypeIdentifier
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBDataBoolean.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgUniqueTypeLogUIntIdentifier.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgUniqueTypeIdentifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b67c4; bytecode file offset 0xab3080"
!SGCgBooleanType methodsFor: 'recovered'!
cgNot: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) not.
    recoveredBlock11Value1
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201eadbc; bytecode file offset 0xae7690"
!SGCgBooleanType methodsFor: 'recovered'!
cgAnd: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := (recoveredBlock11Value0) andExpr: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201eadd0; bytecode file offset 0xae7690"
!SGCgBooleanType methodsFor: 'recovered'!
cgOr: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := (recoveredBlock11Value0) orExpr: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202051b0; bytecode file offset 0xb01a78"
!SGCgBooleanType methodsFor: 'recovered'!
cgConversion: recoveredArg1 chooseInterval: recoveredArg2 isTypeOfLeftHandSide: recoveredArg3 lValue: recoveredArg4 generator: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) type.
    recoveredBlock4Value2 := (recoveredBlock4Value1) isCgBooleanType.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'Only new Boolean types can be converted to Boolean'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021e894; bytecode file offset 0xb1b158"
!SGCgBooleanType methodsFor: 'recovered'!
cgCompare: recoveredArg1 and: recoveredArg2 operator: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) source.
    recoveredValue4 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredArg3.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) createIleOperandLeftExpr: (recoveredBlock12Value1) rightExpr: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    recoveredValue5 := (recoveredValue1) useSource: (recoveredValue3) for: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20235ff4; bytecode file offset 0xb3292c"
!SGCgBooleanType methodsFor: 'recovered'!
cgMux: recoveredArg1 left: recoveredArg2 right: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := recoveredArg3.
    recoveredBlock11Value3 := (recoveredBlock11Value0) muxLeftExpr: (recoveredBlock11Value1) rightExpr: (recoveredBlock11Value2) type: (self).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20236058; bytecode file offset 0xb3292c"
!SGCgBooleanType methodsFor: 'recovered'!
cgMultiplex: recoveredArg1 choices: recoveredArg2 defaultExpr: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := recoveredArg3.
    recoveredBlock11Value3 := (recoveredBlock11Value0) multiplexOn: (recoveredBlock11Value1) defaultExpr: (recoveredBlock11Value2) type: (self).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024184c; bytecode file offset 0xb3e10c"
!SGCgBooleanType methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 mdBuilder: recoveredArg4
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallRteMacro: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallVerifyOperator: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlSemErrUndefinedMethod: (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b455c; bytecode file offset 0xbb0e28"
!SGCgBooleanType methodsFor: 'recovered'!
convertDataValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'true'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034ecc4; bytecode file offset 0xc4b594"
!SGCgBooleanType methodsFor: 'recovered'!
buildMdlInitValue: recoveredArg1 of: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgInitValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) isBoolean.
    recoveredBlock25Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    'Expect boolean as init value for boolean type.'
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildMdlLiteralInitValue: (recoveredStack1) with: (recoveredStack2) from: (recoveredStack3) originalValue: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

