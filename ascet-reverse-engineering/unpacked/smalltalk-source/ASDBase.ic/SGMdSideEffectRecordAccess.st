"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005ce8; bytecode file offset 0x902744"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
localSideEffects: recoveredArg1 inMethod: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000bf54; bytecode file offset 0x908be4"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
hasValues
    | recoveredValue0 |
    recoveredValue0 := (self) isMdlTypeNeedsReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002bc44; bytecode file offset 0x934580"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
isMdlReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) varDecl.
    recoveredValue1 := (recoveredValue0) isMdlReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031874; bytecode file offset 0x934580"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) varDecl.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033dd4; bytecode file offset 0x934580"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
isMdlTypeNeedsReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) isMdlTypeNeedsReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037724; bytecode file offset 0x934580"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
varDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) accessChain.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069a60; bytecode file offset 0x966bdc"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a514; bytecode file offset 0x967a18"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
accessChain
    | recoveredValue0 |
    recoveredValue0 := accessChain.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077e04; bytecode file offset 0x9757c8"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
isMdlSideEffectRecordAccess
    ^true
! !

"ASDBase.ic method 0x20098934; bytecode file offset 0x995850"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) updateMethodDecls: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a5e8; bytecode file offset 0x997194"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
isResolvedInfo: recoveredArg1 inMethod: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) isResolvedInfo: (recoveredValue1) inMethod: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b99f8; bytecode file offset 0x9b63d0"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) inlinePrivateAdditionalMethods: (recoveredValue1).
    (self) expr: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c0cb8; bytecode file offset 0x9bdf14"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2460; bytecode file offset 0x9bf474"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010fdd8; bytecode file offset 0xa0c69c"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) memorySegmentedDeclsDo: (recoveredValue1).
    recoveredValue2 := (self) accessChain.
    recoveredValue3 := recoveredArg1.
    (self) memorySegmentedDecls: (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2019091c; bytecode file offset 0xa8d1f0"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
asConditionalInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) accessChain.
    (recoveredValue2) accessChain: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) expr.
    recoveredValue6 := (recoveredValue5) asConditionalInfo.
    (recoveredValue4) expr: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) conditional: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201acae0; bytecode file offset 0xaa93ac"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
analyseWriteSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) lValueAnalysisInfo.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) resolvedAccess: (recoveredValue2) arguments: (recoveredValue3).
    (recoveredValue1) lValue: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) expr.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue6) analyseSideEffects: (recoveredValue7) arguments: (recoveredValue8).
    (recoveredValue5) mergeInfo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201cf390; bytecode file offset 0xacbc64"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
create: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue1) expr: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) conditional.
    (recoveredValue4) conditional: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) hasValues.
    (recoveredValue6) hasValues: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := (self) source.
    (recoveredValue8) source: (recoveredValue9).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d6e2c; bytecode file offset 0xad36e8"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
values
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTypeNeedsReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022d9c8; bytecode file offset 0xb2a294"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedAccess: (recoveredStack2) arguments: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addReadAccess: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTypeNeedsReference.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedAccess: (recoveredStack2) arguments: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) addValue: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fc14; bytecode file offset 0xb3c4d8"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
accessChain: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) size.
    recoveredBlock4Value2 := (recoveredBlock4Value1) > (0).
    recoveredBlock4Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    'Access chain must not be empty'
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            accessChain := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20257604; bytecode file offset 0xb53ed4"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := (self) accessChain.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    (recoveredBlock12Value1) nextPut: ($.).
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) errLabel.
    recoveredBlock12Value4 := (recoveredBlock12Value0) nextPutAll: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue2) reverseDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20265334; bytecode file offset 0xb61bfc"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
hash
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) expr.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) accessChain.
    recoveredValue6 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) hash.
    recoveredBlock15Value3 := (recoveredBlock15Value0) + (recoveredBlock15Value2).
    recoveredBlock15Value4 := recoveredBlock15Value3.
    recoveredLocal1 := recoveredBlock15Value4.
    recoveredBlock15Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2029bc20; bytecode file offset 0xb984ec"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
< recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareAccessChain: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029bc6c; bytecode file offset 0xb98538"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareAccessChain: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20326778; bytecode file offset 0xc23060"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
description
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) expr.
    recoveredValue6 := (recoveredValue5) description.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := (self) accessChain.
    recoveredValue8 := (recoveredValue7) reverse.
    recoveredValue9 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredLocal1.
    (recoveredBlock27Value0) nextPut: ($.).
    recoveredBlock27Value1 := recoveredLocal1.
    recoveredBlock27Value2 := recoveredBlock27Arg1.
    recoveredBlock27Value3 := (recoveredBlock27Value2) errLabel.
    recoveredBlock27Value4 := (recoveredBlock27Value1) nextPutAll: (recoveredBlock27Value3).
    recoveredBlock27Value4
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) contents.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2034ea00; bytecode file offset 0xc4b2d0"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) accessChain.
    recoveredValue1 := (self) expr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) resolvedAccess: (recoveredValue2) arguments: (recoveredValue3).
    recoveredValue5 := (self) create: (recoveredValue0) expr: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) values.
    recoveredValue8 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := self.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) = (recoveredBlock27Stack2).
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 40] ifFalse: [recoveredBlock27PC := 46].
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal1.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack2 := recoveredArg1.
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack3 := recoveredArg2.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) resolvedAccess: (recoveredBlock27Stack2) arguments: (recoveredBlock27Stack3).
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
    recoveredValue9 := (recoveredValue7) collect: (recoveredValue8).
    (recoveredValue6) values: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2035b174; bytecode file offset 0xc57a3c"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) accessChain.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessChain.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg2.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) ~= (recoveredBlock36Stack3).
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 50] ifFalse: [recoveredBlock36PC := 53].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack1 := false.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bc800; bytecode file offset 0xcb90ec"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super asDOM: (recoveredValue0) context: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) accessChain.
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 recoveredBlock19Value11 recoveredBlock19Value12 recoveredBlock19Value13 recoveredBlock19Value14 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) ownerDocument.
    recoveredBlock19Value2 := SGMdMethodAnalysisInfo.
    recoveredBlock19Value3 := (recoveredBlock19Value2) xmlVarDeclName.
    recoveredBlock19Value4 := (recoveredBlock19Value1) createElement: (recoveredBlock19Value3).
    recoveredBlock19Local1 := recoveredBlock19Value4.
    recoveredBlock19Value5 := recoveredBlock19Arg1.
    recoveredBlock19Value6 := (recoveredBlock19Value5) mdlName.
    recoveredBlock19Value7 := recoveredBlock19Arg1.
    recoveredBlock19Value8 := (recoveredBlock19Value7) scope.
    recoveredBlock19Value9 := recoveredArg2.
    recoveredBlock19Value10 := (recoveredBlock19Value9) methodDecl.
    recoveredBlock19Value11 := recoveredBlock19Local1.
    (self) addName: (recoveredBlock19Value6) scope: (recoveredBlock19Value8) method: (recoveredBlock19Value10) toElement: (recoveredBlock19Value11).
    recoveredBlock19Value12 := recoveredLocal1.
    recoveredBlock19Value13 := recoveredBlock19Local1.
    recoveredBlock19Value14 := (recoveredBlock19Value12) appendChild: (recoveredBlock19Value13).
    recoveredBlock19Value14
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) expr.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue6) asDOM: (recoveredValue7) context: (recoveredValue8).
    (recoveredValue5) appendChild: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2044db4c; bytecode file offset 0xd4a43c"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super fromDOM: (recoveredStack1) in: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            accessChain := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27Stack6 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) name.
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            recoveredBlock27Stack2 := SGMdMethodAnalysisInfo.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) xmlVarDeclName.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) = (recoveredBlock27Stack2).
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 46] ifFalse: [recoveredBlock27PC := 72].
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27Stack1 := SGMdMethodAnalysisInfo.
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack3 := recoveredArg3.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) getVarDeclFrom: (recoveredBlock27Stack2) context: (recoveredBlock27Stack3).
            recoveredBlock27PC := 54.
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            (recoveredBlock27Stack1 ~~ nil) ifTrue: [recoveredBlock27PC := 62] ifFalse: [recoveredBlock27PC := 60].
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack1 := accessChain.
            recoveredBlock27PC := 64.
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local1.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) add: (recoveredBlock27Stack2).
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack2 := nil.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27PC := 95.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 73.
        ].
        recoveredBlock27Step = 73 ifTrue: [
            recoveredBlock27Stack2 := SGMdAbstractSideEffectAccess.
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Stack4 := recoveredArg2.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredBlock27Stack5 := recoveredArg3.
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) fromDOM: (recoveredBlock27Stack3) in: (recoveredBlock27Stack4) context: (recoveredBlock27Stack5).
            recoveredBlock27PC := 85.
        ].
        recoveredBlock27Step = 85 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Stack2.
            recoveredBlock27PC := 86.
        ].
        recoveredBlock27Step = 86 ifTrue: [
            expr := recoveredBlock27Stack3.
            recoveredBlock27PC := 88.
        ].
        recoveredBlock27Step = 88 ifTrue: [
            (recoveredBlock27Stack2 ~~ nil) ifTrue: [recoveredBlock27PC := 95] ifFalse: [recoveredBlock27PC := 92].
        ].
        recoveredBlock27Step = 92 ifTrue: [
            recoveredBlock27PC := 93.
        ].
        recoveredBlock27Step = 93 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 94.
        ].
        recoveredBlock27Step = 94 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 95 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTypeNeedsReference.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            values := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ef7d8; bytecode file offset 0xdec0c4"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
analyzeAllFieldReadMatches: recoveredArg1 writeObject: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessChain.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) equalsTypeAndImpl: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) accessChain.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := (recoveredStack6) accessChain.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) copyFrom: (recoveredStack5) to: (recoveredStack6).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := (recoveredStack5) expr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) create: (recoveredStack4) expr: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := [:recoveredBlock71Arg1 :recoveredBlock71Arg2 :recoveredBlock71Arg3 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 |
    recoveredBlock71Value0 := recoveredArg3.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := recoveredBlock71Arg2.
    recoveredBlock71Value3 := (self) potentialConflictWarningNo.
    recoveredBlock71Value4 := (recoveredBlock71Value0) value: (recoveredBlock71Value1) value: (recoveredBlock71Value2) value: (recoveredBlock71Value3).
    recoveredBlock71Value4
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack3) analyseValueConflict: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 26] ifFalse: [recoveredPC := 125]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 |
    recoveredBlock129Value0 := recoveredBlock129Arg1.
    recoveredBlock129Value1 := recoveredArg1.
    recoveredBlock129Value2 := [:recoveredBlock129Block141Arg1 :recoveredBlock129Block141Arg2 :recoveredBlock129Block141Arg3 | 
    | recoveredBlock129Block141Value0 recoveredBlock129Block141Value1 recoveredBlock129Block141Value2 recoveredBlock129Block141Value3 recoveredBlock129Block141Value4 |
    recoveredBlock129Block141Value0 := recoveredArg3.
    recoveredBlock129Block141Value1 := recoveredBlock129Block141Arg1.
    recoveredBlock129Block141Value2 := recoveredBlock129Block141Arg2.
    recoveredBlock129Block141Value3 := (self) potentialConflictWarningNo.
    recoveredBlock129Block141Value4 := (recoveredBlock129Block141Value0) value: (recoveredBlock129Block141Value1) value: (recoveredBlock129Block141Value2) value: (recoveredBlock129Block141Value3).
    recoveredBlock129Block141Value4
].
    recoveredBlock129Value3 := (recoveredBlock129Value0) analyzeAllFieldReadMatches: (recoveredBlock129Value1) writeObject: (false) do: (recoveredBlock129Value2).
    recoveredBlock129Value3
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ffb4c; bytecode file offset 0xefc46c"
!SGMdSideEffectRecordAccess methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 dereference: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessChain.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessChain.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlReference.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlReference.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack6 := (recoveredStack6) potentialConflictWarningNo.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 32] ifFalse: [recoveredPC := 147]] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) analyseValueConflict: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 288.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessChain.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack5 := (recoveredStack5) accessChain.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack2) accessChain: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) analyseValueConflict: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 288.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock243Value0 recoveredBlock243Value1 recoveredBlock243Value2 recoveredBlock243Value3 recoveredBlock243Value4 |
    recoveredBlock243Value0 := recoveredArg1.
    recoveredBlock243Value1 := (recoveredBlock243Value0) accessChain.
    recoveredBlock243Value2 := (recoveredBlock243Value1) size.
    recoveredBlock243Value3 := recoveredLocal4.
    recoveredBlock243Value4 := (recoveredBlock243Value2) = (recoveredBlock243Value3).
    recoveredBlock243Value4
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := [
    'One of the two access chain must be the small one'
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) analyseValueConflict: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 402].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock304Value0 recoveredBlock304Value1 recoveredBlock304Value2 recoveredBlock304Value3 recoveredBlock304Value4 recoveredBlock304Value5 recoveredBlock304Value6 recoveredBlock304Value7 |
    recoveredBlock304Value0 := (self) accessChain.
    recoveredBlock304Value1 := recoveredArg1.
    recoveredBlock304Value2 := (recoveredBlock304Value1) accessChain.
    recoveredBlock304Value3 := (self) accessChain.
    recoveredBlock304Value4 := (recoveredBlock304Value3) size.
    recoveredBlock304Value5 := (recoveredBlock304Value2) copyFrom: (1) to: (recoveredBlock304Value4).
    recoveredBlock304Value6 := recoveredArg2.
    recoveredBlock304Value7 := (self) accessChain: (recoveredBlock304Value0) matches: (recoveredBlock304Value5) dereference: (recoveredBlock304Value6).
    recoveredBlock304Value7
].
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := (recoveredStack2) definiteConflict.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock333Local1 recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 recoveredBlock333Value3 recoveredBlock333Value4 recoveredBlock333Value5 recoveredBlock333Value6 recoveredBlock333Value7 recoveredBlock333Value8 recoveredBlock333Value9 recoveredBlock333Value10 recoveredBlock333Value11 recoveredBlock333Value12 recoveredBlock333Value13 recoveredBlock333Value14 recoveredBlock333Value15 |
    recoveredBlock333Value0 := recoveredArg1.
    recoveredBlock333Value1 := (recoveredBlock333Value0) class.
    recoveredBlock333Value2 := recoveredArg1.
    recoveredBlock333Value3 := (recoveredBlock333Value2) accessChain.
    recoveredBlock333Value4 := (self) accessChain.
    recoveredBlock333Value5 := (recoveredBlock333Value4) size.
    recoveredBlock333Value6 := (recoveredBlock333Value5) + (1).
    recoveredBlock333Value7 := recoveredArg1.
    recoveredBlock333Value8 := (recoveredBlock333Value7) accessChain.
    recoveredBlock333Value9 := (recoveredBlock333Value8) size.
    recoveredBlock333Value10 := (recoveredBlock333Value3) copyFrom: (recoveredBlock333Value6) to: (recoveredBlock333Value9).
    recoveredBlock333Value11 := (recoveredBlock333Value1) create: (recoveredBlock333Value10).
    recoveredBlock333Local1 := recoveredBlock333Value11.
    recoveredBlock333Value12 := (self) expr.
    recoveredBlock333Value13 := recoveredBlock333Local1.
    recoveredBlock333Value14 := recoveredArg3.
    recoveredBlock333Value15 := (recoveredBlock333Value12) analyseValueConflict: (recoveredBlock333Value13) do: (recoveredBlock333Value14).
    recoveredBlock333Value15
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack4 := (recoveredStack4) possibleConflict.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock375Value0 recoveredBlock375Value1 recoveredBlock375Value2 recoveredBlock375Value3 |
    recoveredBlock375Value0 := recoveredArg3.
    recoveredBlock375Value1 := recoveredArg1.
    recoveredBlock375Value2 := (self) potentialConflictWarningNo.
    recoveredBlock375Value3 := (recoveredBlock375Value0) value: (self) value: (recoveredBlock375Value1) value: (recoveredBlock375Value2).
    recoveredBlock375Value3
].
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 428].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack1) analyzeAllFieldReadMatches: (recoveredStack2) writeObject: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack1) noMatchingWriteAccess: (recoveredStack2) dereference: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

