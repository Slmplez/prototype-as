"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014bbc; bytecode file offset 0x912098"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
defaultOptionalServiceTransformation
    | recoveredValue0 |
    recoveredValue0 := SGIlOptionalServiceCastingTransformation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200227fc; bytecode file offset 0x92209c"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
label
    ^'AbstractCasting'
! !

"ASDBase.ic method 0x2003c688; bytecode file offset 0x939180"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
isAbstract
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlAbstractCastExprTransformation.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cc78; bytecode file offset 0x93bf94"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ea5c; bytecode file offset 0x94d048"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
optionString
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004effc; bytecode file offset 0x94d048"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
defaultArithServiceTransformation
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005016c; bytecode file offset 0x94d048"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
isReleased
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052b0c; bytecode file offset 0x9505d0"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
checkRestrictions: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2012858c; bytecode file offset 0xa24eb0"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
castingCompatibility
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CastingCompatibility.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            CastingCompatibility := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CastingCompatibility.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016930c; bytecode file offset 0xa65bd4"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
isCastingCompatible: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) castingCompatibility.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae23c; bytecode file offset 0xaaab08"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
availableCastStrategies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGIlAbstractCastExprTransformation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) subclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280d3770Arg1 | 
    | block280d3770Stack0 block280d3770Stack1 block280d3770Stack2 block280d3770Stack3 block280d3770PC block280d3770Step block280d3770Done block280d3770Result |
    block280d3770Stack0 := self.
    block280d3770PC := 4.
    block280d3770Done := false.
    [block280d3770Done not] whileTrue: [
        block280d3770Step := block280d3770PC.
        block280d3770Step = 4 ifTrue: [
            block280d3770Stack1 := false.
            block280d3770PC := 5.
        ].
        block280d3770Step = 5 ifTrue: [
            block280d3770Stack2 := block280d3770Arg1.
            block280d3770PC := 6.
        ].
        block280d3770Step = 6 ifTrue: [
            block280d3770Stack2 := (block280d3770Stack2) isAbstract.
            block280d3770PC := 7.
        ].
        block280d3770Step = 7 ifTrue: [
            (block280d3770Stack2) ifTrue: [block280d3770PC := 14] ifFalse: [block280d3770PC := 10].
        ].
        block280d3770Step = 10 ifTrue: [
            block280d3770PC := 11.
        ].
        block280d3770Step = 11 ifTrue: [
            block280d3770Stack1 := block280d3770Arg1.
            block280d3770PC := 12.
        ].
        block280d3770Step = 12 ifTrue: [
            block280d3770Stack1 := (block280d3770Stack1) isReleased.
            block280d3770PC := 14.
        ].
        block280d3770Step = 14 ifTrue: [
            block280d3770Result := block280d3770Stack1.
            block280d3770Done := true.
        ].
    ].
    block280d3770Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20235bf8; bytecode file offset 0xb324bc"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
findLabel: recoveredArg1 inSubclasses: recoveredArg2 default: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) label.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) equalsIgnoringCase: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [
    | recoveredBlock21Value0 |
    recoveredBlock21Value0 := recoveredArg3.
    recoveredBlock21Value0
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202e8c74; bytecode file offset 0xbe5540"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
checkCastStrategyRestrictions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) codeGenerationOptions.
    recoveredValue2 := (recoveredValue1) castStrategy.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) subclasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) label.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := (recoveredBlock13Value1) = (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    recoveredValue5 := [
    ^nil
].
    recoveredValue6 := (recoveredValue3) detect: (recoveredValue4) ifNone: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) checkRestrictions: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202ecb58; bytecode file offset 0xbe942c"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
castingCompatible: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := [:recoveredBlock7Block17Arg1 | 
    | recoveredBlock7Block17Stack0 recoveredBlock7Block17Stack1 recoveredBlock7Block17Stack2 recoveredBlock7Block17Stack3 recoveredBlock7Block17PC recoveredBlock7Block17Step recoveredBlock7Block17Done recoveredBlock7Block17Result |
    recoveredBlock7Block17Stack0 := self.
    recoveredBlock7Block17PC := 24.
    recoveredBlock7Block17Done := false.
    [recoveredBlock7Block17Done not] whileTrue: [
        recoveredBlock7Block17Step := recoveredBlock7Block17PC.
        recoveredBlock7Block17Step = 24 ifTrue: [
            recoveredBlock7Block17Stack0 := (recoveredBlock7Block17Stack0) castingCompatibility.
            recoveredBlock7Block17PC := 25.
        ].
        recoveredBlock7Block17Step = 25 ifTrue: [
            recoveredBlock7Block17Stack1 := recoveredBlock7Arg1.
            recoveredBlock7Block17PC := 28.
        ].
        recoveredBlock7Block17Step = 28 ifTrue: [
            recoveredBlock7Block17Stack1 := (recoveredBlock7Block17Stack1) label.
            recoveredBlock7Block17PC := 29.
        ].
        recoveredBlock7Block17Step = 29 ifTrue: [
            recoveredBlock7Block17Stack2 := [
    | block280e7e64Value0 block280e7e64Value1 |
    block280e7e64Value0 := Set.
    block280e7e64Value1 := (block280e7e64Value0) new.
    block280e7e64Value1
].
            recoveredBlock7Block17PC := 31.
        ].
        recoveredBlock7Block17Step = 31 ifTrue: [
            recoveredBlock7Block17PC := 39.
        ].
        recoveredBlock7Block17Step = 39 ifTrue: [
            recoveredBlock7Block17Stack0 := (recoveredBlock7Block17Stack0) at: (recoveredBlock7Block17Stack1) ifAbsentPut: (recoveredBlock7Block17Stack2).
            recoveredBlock7Block17PC := 41.
        ].
        recoveredBlock7Block17Step = 41 ifTrue: [
            recoveredBlock7Block17Stack1 := recoveredBlock7Block17Arg1.
            recoveredBlock7Block17PC := 42.
        ].
        recoveredBlock7Block17Step = 42 ifTrue: [
            recoveredBlock7Block17Stack1 := (recoveredBlock7Block17Stack1) label.
            recoveredBlock7Block17PC := 43.
        ].
        recoveredBlock7Block17Step = 43 ifTrue: [
            recoveredBlock7Block17Stack0 := (recoveredBlock7Block17Stack0) add: (recoveredBlock7Block17Stack1).
            recoveredBlock7Block17PC := 45.
        ].
        recoveredBlock7Block17Step = 45 ifTrue: [
            recoveredBlock7Block17Result := recoveredBlock7Block17Stack0.
            recoveredBlock7Block17Done := true.
        ].
    ].
    recoveredBlock7Block17Result
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) withAllSubclassesDo: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) withAllSubclassesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2030f9f8; bytecode file offset 0xc0c2d8"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
check16Or32Bit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMissingTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) getCompilerIntegerBitSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'Compiler bit size '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ' not supported for cast strategy "'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) generalError: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038afc8; bytecode file offset 0xc878b4"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
checkCompilerBitsizeDefined: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMissingTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'No compiler is defined, but required for cast strategy "'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) genContext.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) generationSettings.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectOptionSource.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) generalError: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) getIntegerBitSize.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'No integer bit size is defined on the compiler, but required for cast strategy "'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) genContext.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) generationSettings.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectOptionSource.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) generalError: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040e2bc; bytecode file offset 0xd0abbc"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
checkNoServices: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenerationOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntegerVariant.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) iaSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) arithmeticServiceSet.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [:recoveredBlock30Arg1 :recoveredBlock30Arg2 | 
    ^self
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) readServiceSet: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := SGCgServiceTable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:block280fb184Arg1 :block280fb184Arg2 | 
    nil
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := [:block280fb1a8Arg1 :block280fb1a8Arg2 | 
    nil
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 recoveredBlock62Value6 recoveredBlock62Value7 |
    recoveredBlock62Value0 := (self) errorHandler.
    recoveredBlock62Value1 := (self) optionString.
    recoveredBlock62Value2 := ('Arithmetic Services not supported for cast strategy "') , (recoveredBlock62Value1).
    recoveredBlock62Value3 := (recoveredBlock62Value2) , ('"').
    recoveredBlock62Value4 := recoveredArg1.
    recoveredBlock62Value5 := (recoveredBlock62Value4) generationSettings.
    recoveredBlock62Value6 := (recoveredBlock62Value5) projectOptionIntegerArithmeticSource.
    recoveredBlock62Value7 := (recoveredBlock62Value0) generalError: (recoveredBlock62Value3) source: (recoveredBlock62Value6).
    recoveredBlock62Value7
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack6 := [].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) checkServices: (recoveredStack2) ifUnknown: (recoveredStack3) ifEmpty: (recoveredStack4) ifArithmetic: (recoveredStack5) ifOptional: (recoveredStack6).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20532a3c; bytecode file offset 0xe2f350"
!SGIlAbstractCastExprTransformation class methodsFor: 'recovered'!
createForCodeGenerator: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) castStrategyLabel.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := SGIlAbstractCastExprTransformation.
    recoveredValue4 := (self) findLabel: (recoveredValue2) inSubclasses: (recoveredValue3) default: (nil).
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) castServiceStrategyLabel.
    recoveredLocal1 := recoveredBlock20Value1.
    recoveredBlock20Value2 := recoveredLocal1.
    recoveredBlock20Value3 := SGIlAbstractCastArithServiceTransformation.
    recoveredBlock20Value4 := recoveredBlock20Arg1.
    recoveredBlock20Value5 := (recoveredBlock20Value4) defaultArithServiceTransformation.
    recoveredBlock20Value6 := (self) findLabel: (recoveredBlock20Value2) inSubclasses: (recoveredBlock20Value3) default: (recoveredBlock20Value5).
    recoveredBlock20Value7 := [:recoveredBlock20Block46Arg1 | 
    | recoveredBlock20Block46Local1 recoveredBlock20Block46Local2 recoveredBlock20Block46Stack0 recoveredBlock20Block46Stack1 recoveredBlock20Block46Stack2 recoveredBlock20Block46Stack3 recoveredBlock20Block46Stack4 recoveredBlock20Block46Stack5 recoveredBlock20Block46PC recoveredBlock20Block46Step recoveredBlock20Block46Done recoveredBlock20Block46Result |
    recoveredBlock20Block46Stack0 := self.
    recoveredBlock20Block46PC := 52.
    recoveredBlock20Block46Done := false.
    [recoveredBlock20Block46Done not] whileTrue: [
        recoveredBlock20Block46Step := recoveredBlock20Block46PC.
        recoveredBlock20Block46Step = 52 ifTrue: [
            recoveredBlock20Block46Stack1 := recoveredBlock20Block46Arg1.
            recoveredBlock20Block46PC := 55.
        ].
        recoveredBlock20Block46Step = 55 ifTrue: [
            recoveredBlock20Block46Stack1 := (recoveredBlock20Block46Stack1) label.
            recoveredBlock20Block46PC := 57.
        ].
        recoveredBlock20Block46Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock20Block46Stack1.
            recoveredBlock20Block46PC := 60.
        ].
        recoveredBlock20Block46Step = 60 ifTrue: [
            recoveredBlock20Block46Stack1 := nil.
            recoveredBlock20Block46PC := 61.
        ].
        recoveredBlock20Block46Step = 61 ifTrue: [
            recoveredBlock20Block46Stack2 := self.
            recoveredBlock20Block46PC := 62.
        ].
        recoveredBlock20Block46Step = 62 ifTrue: [
            recoveredBlock20Block46Stack3 := recoveredLocal2.
            recoveredBlock20Block46PC := 65.
        ].
        recoveredBlock20Block46Step = 65 ifTrue: [
            recoveredBlock20Block46Stack4 := recoveredLocal1.
            recoveredBlock20Block46PC := 68.
        ].
        recoveredBlock20Block46Step = 68 ifTrue: [
            recoveredBlock20Block46Stack2 := (recoveredBlock20Block46Stack2) isCastingCompatible: (recoveredBlock20Block46Stack3) with: (recoveredBlock20Block46Stack4).
            recoveredBlock20Block46PC := 70.
        ].
        recoveredBlock20Block46Step = 70 ifTrue: [
            (recoveredBlock20Block46Stack2) ifTrue: [recoveredBlock20Block46PC := 74] ifFalse: [recoveredBlock20Block46PC := 196].
        ].
        recoveredBlock20Block46Step = 74 ifTrue: [
            recoveredBlock20Block46PC := 75.
        ].
        recoveredBlock20Block46Step = 75 ifTrue: [
            recoveredBlock20Block46Stack1 := recoveredBlock20Arg1.
            recoveredBlock20Block46PC := 78.
        ].
        recoveredBlock20Block46Step = 78 ifTrue: [
            recoveredBlock20Block46Stack2 := recoveredArg1.
            recoveredBlock20Block46PC := 81.
        ].
        recoveredBlock20Block46Step = 81 ifTrue: [
            recoveredBlock20Block46Stack1 := (recoveredBlock20Block46Stack1) createForCodeGenerator: (recoveredBlock20Block46Stack2).
            recoveredBlock20Block46PC := 83.
        ].
        recoveredBlock20Block46Step = 83 ifTrue: [
            recoveredBlock20Block46Local2 := recoveredBlock20Block46Stack1.
            recoveredBlock20Block46PC := 86.
        ].
        recoveredBlock20Block46Step = 86 ifTrue: [
            recoveredBlock20Block46Stack1 := recoveredBlock20Block46Local2.
            recoveredBlock20Block46PC := 89.
        ].
        recoveredBlock20Block46Step = 89 ifTrue: [
            recoveredBlock20Block46Stack2 := recoveredBlock20Block46Arg1.
            recoveredBlock20Block46PC := 92.
        ].
        recoveredBlock20Block46Step = 92 ifTrue: [
            recoveredBlock20Block46Stack3 := recoveredBlock20Block46Local2.
            recoveredBlock20Block46PC := 95.
        ].
        recoveredBlock20Block46Step = 95 ifTrue: [
            recoveredBlock20Block46Stack2 := (recoveredBlock20Block46Stack2) create: (recoveredBlock20Block46Stack3).
            recoveredBlock20Block46PC := 97.
        ].
        recoveredBlock20Block46Step = 97 ifTrue: [
            (recoveredBlock20Block46Stack1) castArithServiceTransformation: (recoveredBlock20Block46Stack2).
            recoveredBlock20Block46PC := 99.
        ].
        recoveredBlock20Block46Step = 99 ifTrue: [
            recoveredBlock20Block46Stack1 := self.
            recoveredBlock20Block46PC := 100.
        ].
        recoveredBlock20Block46Step = 100 ifTrue: [
            recoveredBlock20Block46Stack2 := recoveredArg1.
            recoveredBlock20Block46PC := 103.
        ].
        recoveredBlock20Block46Step = 103 ifTrue: [
            recoveredBlock20Block46Stack2 := (recoveredBlock20Block46Stack2) castOptionalServiceStrategyLabel.
            recoveredBlock20Block46PC := 105.
        ].
        recoveredBlock20Block46Step = 105 ifTrue: [
            recoveredBlock20Block46Stack3 := SGIlAbstractCastArithServiceTransformation.
            recoveredBlock20Block46PC := 107.
        ].
        recoveredBlock20Block46Step = 107 ifTrue: [
            recoveredBlock20Block46Stack4 := recoveredBlock20Arg1.
            recoveredBlock20Block46PC := 110.
        ].
        recoveredBlock20Block46Step = 110 ifTrue: [
            recoveredBlock20Block46Stack4 := (recoveredBlock20Block46Stack4) defaultOptionalServiceTransformation.
            recoveredBlock20Block46PC := 112.
        ].
        recoveredBlock20Block46Step = 112 ifTrue: [
            recoveredBlock20Block46Stack1 := (recoveredBlock20Block46Stack1) findLabel: (recoveredBlock20Block46Stack2) inSubclasses: (recoveredBlock20Block46Stack3) default: (recoveredBlock20Block46Stack4).
            recoveredBlock20Block46PC := 115.
        ].
        recoveredBlock20Block46Step = 115 ifTrue: [
            recoveredBlock20Block46Stack2 := [:recoveredBlock20Block46Block115Arg1 | 
    | recoveredBlock20Block46Block115Value0 recoveredBlock20Block46Block115Value1 recoveredBlock20Block46Block115Value2 recoveredBlock20Block46Block115Value3 recoveredBlock20Block46Block115Value4 recoveredBlock20Block46Block115Value5 recoveredBlock20Block46Block115Value6 recoveredBlock20Block46Block115Value7 recoveredBlock20Block46Block115Value8 recoveredBlock20Block46Block115Value9 recoveredBlock20Block46Block115Value10 |
    recoveredBlock20Block46Block115Value0 := recoveredBlock20Block46Local2.
    recoveredBlock20Block46Block115Value1 := recoveredBlock20Block46Block115Arg1.
    recoveredBlock20Block46Block115Value2 := recoveredArg1.
    recoveredBlock20Block46Block115Value3 := (recoveredBlock20Block46Block115Value2) genContext.
    recoveredBlock20Block46Block115Value4 := recoveredBlock20Block46Local2.
    recoveredBlock20Block46Block115Value5 := (recoveredBlock20Block46Block115Value1) createWithContext: (recoveredBlock20Block46Block115Value3) exprCasting: (recoveredBlock20Block46Block115Value4).
    (recoveredBlock20Block46Block115Value0) castOptionalServiceTransformation: (recoveredBlock20Block46Block115Value5).
    recoveredBlock20Block46Block115Value6 := recoveredArg1.
    recoveredBlock20Block46Block115Value7 := (recoveredBlock20Block46Block115Value6) compilerCastPostProcessing.
    recoveredBlock20Block46Block115Value8 := (recoveredBlock20Block46Block115Value7) subStrings.
    recoveredBlock20Block46Block115Value9 := [:recoveredBlock20Block46Block115Block145Arg1 | 
    | recoveredBlock20Block46Block115Block145Value0 recoveredBlock20Block46Block115Block145Value1 recoveredBlock20Block46Block115Block145Value2 recoveredBlock20Block46Block115Block145Value3 recoveredBlock20Block46Block115Block145Value4 |
    recoveredBlock20Block46Block115Block145Value0 := recoveredBlock20Block46Block115Block145Arg1.
    recoveredBlock20Block46Block115Block145Value1 := SGIlAbstractCastPostProcessing.
    recoveredBlock20Block46Block115Block145Value2 := (self) findLabel: (recoveredBlock20Block46Block115Block145Value0) inSubclasses: (recoveredBlock20Block46Block115Block145Value1) default: (nil).
    recoveredBlock20Block46Block115Block145Value3 := [:recoveredBlock20Block46Block115Block145Block159Arg1 | 
    | recoveredBlock20Block46Block115Block145Block159Value0 recoveredBlock20Block46Block115Block145Block159Value1 recoveredBlock20Block46Block115Block145Block159Value2 recoveredBlock20Block46Block115Block145Block159Value3 recoveredBlock20Block46Block115Block145Block159Value4 |
    recoveredBlock20Block46Block115Block145Block159Value0 := recoveredBlock20Block46Local2.
    recoveredBlock20Block46Block115Block145Block159Value1 := (recoveredBlock20Block46Block115Block145Block159Value0) postProcessing.
    recoveredBlock20Block46Block115Block145Block159Value2 := recoveredBlock20Block46Block115Block145Block159Arg1.
    recoveredBlock20Block46Block115Block145Block159Value3 := (recoveredBlock20Block46Block115Block145Block159Value2) create.
    recoveredBlock20Block46Block115Block145Block159Value4 := (recoveredBlock20Block46Block115Block145Block159Value1) add: (recoveredBlock20Block46Block115Block145Block159Value3).
    recoveredBlock20Block46Block115Block145Block159Value4
].
    recoveredBlock20Block46Block115Block145Value4 := (recoveredBlock20Block46Block115Block145Value2) ifNotNil: (recoveredBlock20Block46Block115Block145Value3).
    recoveredBlock20Block46Block115Block145Value4
].
    (recoveredBlock20Block46Block115Value8) do: (recoveredBlock20Block46Block115Value9).
    recoveredBlock20Block46Block115Value10 := recoveredBlock20Block46Local2.
    ^recoveredBlock20Block46Block115Value10
].
            recoveredBlock20Block46PC := 186.
        ].
        recoveredBlock20Block46Step = 186 ifTrue: [
            recoveredBlock20Block46Stack1 := (recoveredBlock20Block46Stack1) ifNotNil: (recoveredBlock20Block46Stack2).
            recoveredBlock20Block46PC := 188.
        ].
        recoveredBlock20Block46Step = 188 ifTrue: [
            recoveredBlock20Block46Stack2 := nil.
            recoveredBlock20Block46PC := 189.
        ].
        recoveredBlock20Block46Step = 189 ifTrue: [
            recoveredBlock20Block46Stack3 := recoveredBlock20Block46Stack2.
            recoveredBlock20Block46PC := 190.
        ].
        recoveredBlock20Block46Step = 190 ifTrue: [
            recoveredBlock20Block46Local2 := recoveredBlock20Block46Stack3.
            recoveredBlock20Block46PC := 193.
        ].
        recoveredBlock20Block46Step = 193 ifTrue: [
            recoveredBlock20Block46Local1 := recoveredBlock20Block46Stack2.
            recoveredBlock20Block46PC := 196.
        ].
        recoveredBlock20Block46Step = 196 ifTrue: [
            recoveredBlock20Block46Result := recoveredBlock20Block46Stack1.
            recoveredBlock20Block46Done := true.
        ].
    ].
    recoveredBlock20Block46Result
].
    recoveredBlock20Value8 := (recoveredBlock20Value6) ifNotNil: (recoveredBlock20Value7).
    recoveredBlock20Value8
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^nil
! !

