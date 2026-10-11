"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000630; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
asSigned
    ^self
! !

"ASDBase.ic method 0x20000708; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
getImplType
    ^self
! !

"ASDBase.ic method 0x20000da0; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
ileAssertSelectableType
    ^self
! !

"ASDBase.ic method 0x20001750; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
asUnsigned
    ^self
! !

"ASDBase.ic method 0x20002050; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20002b20; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
asCgDereferencedType
    ^self
! !

"ASDBase.ic method 0x20002f18; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
getPhysType
    ^self
! !

"ASDBase.ic method 0x20003140; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
getType
    ^self
! !

"ASDBase.ic method 0x200033f0; bytecode file offset 0x8ffcfc"
!RBDataTypes methodsFor: 'recovered'!
getValue
    ^self
! !

"ASDBase.ic method 0x20003bc8; bytecode file offset 0x90206c"
!RBDataTypes methodsFor: 'recovered'!
setValue: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007568; bytecode file offset 0x908be4"
!RBDataTypes methodsFor: 'recovered'!
getCTypeString
    | recoveredValue0 |
    recoveredValue0 := (self) asCType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200075c8; bytecode file offset 0x908be4"
!RBDataTypes methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) asCType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007e44; bytecode file offset 0x908be4"
!RBDataTypes methodsFor: 'recovered'!
getImplInterval
    | recoveredValue0 |
    recoveredValue0 := (self) getInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a4fc; bytecode file offset 0x908be4"
!RBDataTypes methodsFor: 'recovered'!
asDbType
    | recoveredValue0 |
    recoveredValue0 := (self) getCTypeString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d69c; bytecode file offset 0x90a4b8"
!RBDataTypes methodsFor: 'recovered'!
convert: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000da14; bytecode file offset 0x90a4b8"
!RBDataTypes methodsFor: 'recovered'!
adjustValueToQuantization: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d9cc; bytecode file offset 0x92209c"
!RBDataTypes methodsFor: 'recovered'!
asModelType
    ^''
! !

"ASDBase.ic method 0x20024f68; bytecode file offset 0x92209c"
!RBDataTypes methodsFor: 'recovered'!
modelLabel
    ^'enum'
! !

"ASDBase.ic method 0x2002c094; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
cgUniqueTypeIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) cgUniqueTypeIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c884; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
longDisplayName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) longDisplayName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c944; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ea64; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
apiIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) apiIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f0f4; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
getDisplayLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) getDisplayLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200312a4; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032114; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
typeSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) typeSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033634; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
asPerlType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asCType.
    recoveredValue1 := (recoveredValue0) asPerlType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033c74; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
asCType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034614; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
ileBitSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) ileBitSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037764; bytecode file offset 0x934580"
!RBDataTypes methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) interval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038658; bytecode file offset 0x935c54"
!RBDataTypes methodsFor: 'recovered'!
convertToUnsigned: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039a94; bytecode file offset 0x938608"
!RBDataTypes methodsFor: 'recovered'!
convertFast: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convert: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a85c; bytecode file offset 0x938608"
!RBDataTypes methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bca8; bytecode file offset 0x938608"
!RBDataTypes methodsFor: 'recovered'!
convertWithoutLimitations: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convert: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cbb8; bytecode file offset 0x93bf94"
!RBDataTypes methodsFor: 'recovered'!
extraImplInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExtraImplInfo.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200720b8; bytecode file offset 0x96ee04"
!RBDataTypes methodsFor: 'recovered'!
byteSize
    ^1
! !

"ASDBase.ic method 0x20072330; bytecode file offset 0x96ee04"
!RBDataTypes methodsFor: 'recovered'!
getQuantization
    ^1
! !

"ASDBase.ic method 0x20073530; bytecode file offset 0x970b34"
!RBDataTypes methodsFor: 'recovered'!
getDefaultValue
    ^nil
! !

"ASDBase.ic method 0x20073998; bytecode file offset 0x970b34"
!RBDataTypes methodsFor: 'recovered'!
modelType
    ^nil
! !

"ASDBase.ic method 0x20078c5c; bytecode file offset 0x9757c8"
!RBDataTypes methodsFor: 'recovered'!
isIleBaseType
    ^true
! !

"ASDBase.ic method 0x200794fc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
hasImplTypeBoolean
    ^false
! !

"ASDBase.ic method 0x2007961c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInt16Signed
    ^false
! !

"ASDBase.ic method 0x2007968c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInt32Signed
    ^false
! !

"ASDBase.ic method 0x20079b04; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgWrapAroundIntegerType
    ^false
! !

"ASDBase.ic method 0x20079b54; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBBit
    ^false
! !

"ASDBase.ic method 0x20079be4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBImplBoolean
    ^false
! !

"ASDBase.ic method 0x20079e74; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isMdlArray
    ^false
! !

"ASDBase.ic method 0x2007a4ac; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgArrayType
    ^false
! !

"ASDBase.ic method 0x2007a6dc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isIleComplexBaseType
    ^false
! !

"ASDBase.ic method 0x2007a724; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInt16Unsigned
    ^false
! !

"ASDBase.ic method 0x2007aa3c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgNewDiscreteType
    ^false
! !

"ASDBase.ic method 0x2007abcc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgTypeWithBehaviour
    ^false
! !

"ASDBase.ic method 0x2007ad94; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInteger
    ^false
! !

"ASDBase.ic method 0x2007af8c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isImplementationType
    ^false
! !

"ASDBase.ic method 0x2007afec; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgComplexClassType
    ^false
! !

"ASDBase.ic method 0x2007b1d4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgTypeForCommonSubexpressionElimination
    ^false
! !

"ASDBase.ic method 0x2007b2c4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgEnumType
    ^false
! !

"ASDBase.ic method 0x2007b2e4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgLimitedIntegerType
    ^false
! !

"ASDBase.ic method 0x2007b774; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBFloat32
    ^false
! !

"ASDBase.ic method 0x2007bb1c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
hasImplTypeInt
    ^false
! !

"ASDBase.ic method 0x2007be44; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInt32Unsigned
    ^false
! !

"ASDBase.ic method 0x2007c964; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBIntControllerSize
    ^false
! !

"ASDBase.ic method 0x2007cc8c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInt8Signed
    ^false
! !

"ASDBase.ic method 0x2007ce14; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgBooleanType
    ^false
! !

"ASDBase.ic method 0x2007d434; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgReferenceType
    ^false
! !

"ASDBase.ic method 0x2007d4d4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBInt8Unsigned
    ^false
! !

"ASDBase.ic method 0x2007d79c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgContMoebiusFixedPointType
    ^false
! !

"ASDBase.ic method 0x2007d97c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgAbstractReferenceType
    ^false
! !

"ASDBase.ic method 0x2007db64; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBUnsignedIntControllerSize
    ^false
! !

"ASDBase.ic method 0x2007ddbc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgVariableArray
    ^false
! !

"ASDBase.ic method 0x2007ddfc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBQuantFloat
    ^false
! !

"ASDBase.ic method 0x2007de1c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBBoolean
    ^false
! !

"ASDBase.ic method 0x2007e4e4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgWrapAroundIntegerype
    ^false
! !

"ASDBase.ic method 0x2007e6fc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgVariableArrayReferenceType
    ^false
! !

"ASDBase.ic method 0x2007e884; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isStringType
    ^false
! !

"ASDBase.ic method 0x2007ea84; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBFloat
    ^false
! !

"ASDBase.ic method 0x2007eb14; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBVoidPointer
    ^false
! !

"ASDBase.ic method 0x2007ecdc; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
hasInterval
    ^false
! !

"ASDBase.ic method 0x2007edb4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isCgRecordType
    ^false
! !

"ASDBase.ic method 0x2007ef3c; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBVoid
    ^false
! !

"ASDBase.ic method 0x2007f1b4; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isMdlTypeNeedsReference
    ^false
! !

"ASDBase.ic method 0x2007f664; bytecode file offset 0x97c330"
!RBDataTypes methodsFor: 'recovered'!
isRBSignedIntControllerSize
    ^false
! !

"ASDBase.ic method 0x20080ea0; bytecode file offset 0x97d79c"
!RBDataTypes methodsFor: 'recovered'!
famosType
    ^100
! !

"ASDBase.ic method 0x20085d18; bytecode file offset 0x982678"
!RBDataTypes methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a4e8; bytecode file offset 0x997194"
!RBDataTypes methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) readFromByteArray: (recoveredValue1) pos: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b20e4; bytecode file offset 0x9aea94"
!RBDataTypes methodsFor: 'recovered'!
asap2ExtendedLimits
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_64858').
    recoveredValue1 := (self) getInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d6f28; bytecode file offset 0x9d37e8"
!RBDataTypes methodsFor: 'recovered'!
xmlEquals: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Util.
    recoveredValue1 := (self) class.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := (recoveredValue1) == (recoveredValue3).
    recoveredValue5 := (recoveredValue0) hook: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201708f0; bytecode file offset 0xa6d1ec"
!RBDataTypes methodsFor: 'recovered'!
isIleBooleanType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBBit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBBoolean.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBImplBoolean.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018472c; bytecode file offset 0xa80ff4"
!RBDataTypes methodsFor: 'recovered'!
equalsType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'asCType'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) canUnderstand: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20348ca0; bytecode file offset 0xc45568"
!RBDataTypes methodsFor: 'recovered'!
byteArrayFrom: recoveredArg1 byteSize: recoveredArg2 putMethod: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredLocal1 := 0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 |
    recoveredBlock26Value0 := recoveredLocal2.
    recoveredBlock26Value1 := recoveredArg3.
    recoveredBlock26Value2 := recoveredLocal1.
    recoveredBlock26Value3 := recoveredBlock26Arg1.
    (recoveredBlock26Value0) perform: (recoveredBlock26Value1) with: (recoveredBlock26Value2) with: (recoveredBlock26Value3).
    recoveredBlock26Value4 := recoveredLocal1.
    recoveredBlock26Value5 := recoveredArg2.
    recoveredBlock26Value6 := (recoveredBlock26Value4) + (recoveredBlock26Value5).
    recoveredBlock26Value7 := recoveredBlock26Value6.
    recoveredLocal1 := recoveredBlock26Value7.
    recoveredBlock26Value6
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

