"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028ce4; bytecode file offset 0x934580"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definedOrder.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069b80; bytecode file offset 0x966bdc"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
definedOrder
    | recoveredValue0 |
    recoveredValue0 := definedOrder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa14; bytecode file offset 0x967a18"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
basicValues
    | recoveredValue0 |
    recoveredValue0 := values.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f7c; bytecode file offset 0x9757c8"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
isMdlDefinedOrderSideEffectAccess
    ^true
! !

"ASDBase.ic method 0x200c0dc8; bytecode file offset 0x9bdf14"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
definedOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    definedOrder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1954; bytecode file offset 0x9beac8"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010e7ec; bytecode file offset 0xa0b0a8"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
addDefinedOrder: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := definedOrder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013265c; bytecode file offset 0xa2ef68"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
addAllDefinedOrder: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) addDefinedOrder: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20151a0c; bytecode file offset 0xa4e2d4"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    definedOrder := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    values := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20177fac; bytecode file offset 0xa7490c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definedOrder.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) updateMethodDecls: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177fc0; bytecode file offset 0xa7490c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definedOrder.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) memorySegmentedDeclsDo: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d92c8; bytecode file offset 0xad5b94"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
addAllValues: recoveredArg1
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
            recoveredStack2 := [:block280d5cb4Arg1 | 
    | block280d5cb4Value0 block280d5cb4Value1 |
    block280d5cb4Value0 := block280d5cb4Arg1.
    block280d5cb4Value1 := (block280d5cb4Value0) isCollection.
    block280d5cb4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) halt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dabb4; bytecode file offset 0xad7474"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
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
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) definedOrder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) definedOrder.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) collection: (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c970; bytecode file offset 0xb1925c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) definedOrder.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) inlinePrivateAdditionalMethods: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    (self) definedOrder: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) methodDecl.
    recoveredValue6 := (self) localSideEffects: (recoveredValue3) inMethod: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20237960; bytecode file offset 0xb3423c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
hash
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) definedOrder.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) hash.
    recoveredBlock11Value3 := (recoveredBlock11Value0) + (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Value3.
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025be48; bytecode file offset 0xb5871c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super asDOM: (recoveredValue0) context: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) definedOrder.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) xmlDefinedOrderName.
    recoveredValue7 := recoveredArg2.
    (self) asDOM: (recoveredValue3) list: (recoveredValue4) name: (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) basicValues.
    recoveredValue10 := (self) class.
    recoveredValue11 := (recoveredValue10) xmlValueName.
    recoveredValue12 := recoveredArg2.
    (self) asDOM: (recoveredValue8) list: (recoveredValue9) name: (recoveredValue11) context: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2025fe18; bytecode file offset 0xb5c6fc"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
asConditionalInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) definedOrder.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block280df914Arg1 | 
    | block280df914Value0 block280df914Value1 |
    block280df914Value0 := block280df914Arg1.
    block280df914Value1 := (block280df914Value0) asConditionalInfo.
    block280df914Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) definedOrder: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasValues.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) hasValues: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) addAllValues: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) conditional: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ee9e0; bytecode file offset 0xbeb2b8"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
values
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicValues.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAll: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) definedOrder.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) hasValues.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 36] ifFalse: [recoveredBlock23PC := 45].
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) values.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) addAll: (recoveredBlock23Stack2).
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20310d70; bytecode file offset 0xc0d64c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            super fromDOM: (recoveredStack1) in: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlDefinedOrderName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) in: (recoveredStack3) name: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) definedOrder: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) definedOrder.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlValueName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) in: (recoveredStack3) name: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) values: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicValues.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203782c4; bytecode file offset 0xc74ba4"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
description
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) nextPut: (${).
    recoveredValue5 := (self) values.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) description.
    recoveredBlock24Value3 := (recoveredBlock24Value0) nextPutAll: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
    recoveredValue7 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 |
    recoveredBlock39Value0 := recoveredLocal1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) nextPutAll: (', ').
    recoveredBlock39Value1
].
    (recoveredValue5) do: (recoveredValue6) separatedBy: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) nextPut: ($}).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) contents.
    ^recoveredValue10
! !

"ASDBase.ic method 0x203a56b4; bytecode file offset 0xca1f8c"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) analysisInfo.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) key.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) value.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 44].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mergeInfo: (recoveredBlock17Stack2).
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 |
    recoveredBlock56Value0 := recoveredLocal2.
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := (recoveredBlock56Value1) asConditionalInfo.
    recoveredBlock56Value3 := (recoveredBlock56Value0) mergeInfo: (recoveredBlock56Value2).
    recoveredBlock56Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x203ed804; bytecode file offset 0xcea0f0"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) definedOrder.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredArg2.
    recoveredBlock11Value3 := (recoveredBlock11Value0) analyseSideEffects: (recoveredBlock11Value1) arguments: (recoveredBlock11Value2).
    recoveredBlock11Local1 := recoveredBlock11Value3.
    recoveredBlock11Value4 := recoveredLocal3.
    recoveredBlock11Value5 := Association.
    recoveredBlock11Value6 := recoveredBlock11Local1.
    recoveredBlock11Value7 := recoveredBlock11Arg1.
    recoveredBlock11Value8 := (recoveredBlock11Value7) conditional.
    recoveredBlock11Value9 := (recoveredBlock11Value5) key: (recoveredBlock11Value6) value: (recoveredBlock11Value8).
    recoveredBlock11Value10 := (recoveredBlock11Value4) add: (recoveredBlock11Value9).
    recoveredBlock11Value10
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (self) analyseSideEffects: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := (self) values.
    recoveredValue7 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 recoveredBlock56Value6 |
    recoveredBlock56Value0 := recoveredLocal2.
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := recoveredArg1.
    recoveredBlock56Value3 := recoveredArg2.
    recoveredBlock56Value4 := (recoveredBlock56Value1) resolvedAccess: (recoveredBlock56Value2) arguments: (recoveredBlock56Value3).
    recoveredBlock56Value5 := (recoveredBlock56Value4) values.
    recoveredBlock56Value6 := (recoveredBlock56Value0) addAllValues: (recoveredBlock56Value5).
    recoveredBlock56Value6
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) sequencePoint.
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20419f90; bytecode file offset 0xd16888"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) definedOrder.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := recoveredArg2.
    recoveredBlock9Value3 := (recoveredBlock9Value0) resolvedAccess: (recoveredBlock9Value1) arguments: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) addAllDefinedOrder: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicValues.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredArg1.
    recoveredBlock34Value2 := recoveredArg2.
    recoveredBlock34Value3 := (recoveredBlock34Value0) resolvedAccess: (recoveredBlock34Value1) arguments: (recoveredBlock34Value2).
    recoveredBlock34Value3
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) addAllValues: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) conditional.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) conditional: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasValues.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) hasValues: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058cbd0; bytecode file offset 0xe894f8"
!SGMdDefinedOrderSideEffectAnalysisInfo methodsFor: 'recovered'!
localSideEffects: recoveredArg1 inMethod: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) definedOrder.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) conditional.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 34] ifFalse: [recoveredBlock22PC := 41].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg2.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isResolvedInfo: (recoveredBlock22Stack2) inMethod: (recoveredBlock22Stack3).
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 54] ifFalse: [recoveredBlock22PC := 80].
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal5.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack2 := Association.
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Arg1.
            recoveredBlock22PC := 60.
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg1.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) selfAccess.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack5 := LookupTable.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack5 := (recoveredBlock22Stack5) new.
            recoveredBlock22PC := 68.
        ].
        recoveredBlock22Step = 68 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) analyseSideEffects: (recoveredBlock22Stack4) arguments: (recoveredBlock22Stack5).
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Arg1.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) conditional.
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) key: (recoveredBlock22Stack3) value: (recoveredBlock22Stack4).
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22PC := 86.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal3.
            recoveredBlock22PC := 83.
        ].
        recoveredBlock22Step = 83 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 86.
        ].
        recoveredBlock22Step = 86 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:block281144e4Arg1 | 
    | block281144e4Value0 block281144e4Value1 block281144e4Value2 |
    block281144e4Value0 := block281144e4Arg1.
    block281144e4Value1 := (block281144e4Value0) value.
    block281144e4Value2 := (block281144e4Value1) not.
    block281144e4Value2
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:block28114508Arg1 | 
    | block28114508Value0 block28114508Value1 |
    block28114508Value0 := block28114508Arg1.
    block28114508Value1 := (block28114508Value0) value.
    block28114508Value1
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyseSideEffects: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Stack0 recoveredBlock162Stack1 recoveredBlock162Stack2 recoveredBlock162Stack3 recoveredBlock162Stack4 recoveredBlock162Stack5 recoveredBlock162PC recoveredBlock162Step recoveredBlock162Done recoveredBlock162Result |
    recoveredBlock162Stack0 := self.
    recoveredBlock162PC := 168.
    recoveredBlock162Done := false.
    [recoveredBlock162Done not] whileTrue: [
        recoveredBlock162Step := recoveredBlock162PC.
        recoveredBlock162Step = 168 ifTrue: [
            recoveredBlock162Stack1 := recoveredBlock162Arg1.
            recoveredBlock162PC := 169.
        ].
        recoveredBlock162Step = 169 ifTrue: [
            recoveredBlock162Stack2 := recoveredArg1.
            recoveredBlock162PC := 172.
        ].
        recoveredBlock162Step = 172 ifTrue: [
            recoveredBlock162Stack3 := recoveredArg2.
            recoveredBlock162PC := 175.
        ].
        recoveredBlock162Step = 175 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) isResolvedInfo: (recoveredBlock162Stack2) inMethod: (recoveredBlock162Stack3).
            recoveredBlock162PC := 177.
        ].
        recoveredBlock162Step = 177 ifTrue: [
            (recoveredBlock162Stack1) ifTrue: [recoveredBlock162PC := 180] ifFalse: [recoveredBlock162PC := 202].
        ].
        recoveredBlock162Step = 180 ifTrue: [
            recoveredBlock162Stack1 := recoveredLocal2.
            recoveredBlock162PC := 183.
        ].
        recoveredBlock162Step = 183 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Arg1.
            recoveredBlock162PC := 184.
        ].
        recoveredBlock162Step = 184 ifTrue: [
            recoveredBlock162Stack3 := recoveredArg1.
            recoveredBlock162PC := 187.
        ].
        recoveredBlock162Step = 187 ifTrue: [
            recoveredBlock162Stack3 := (recoveredBlock162Stack3) selfAccess.
            recoveredBlock162PC := 189.
        ].
        recoveredBlock162Step = 189 ifTrue: [
            recoveredBlock162Stack4 := LookupTable.
            recoveredBlock162PC := 191.
        ].
        recoveredBlock162Step = 191 ifTrue: [
            recoveredBlock162Stack4 := (recoveredBlock162Stack4) new.
            recoveredBlock162PC := 192.
        ].
        recoveredBlock162Step = 192 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) resolvedAccess: (recoveredBlock162Stack3) arguments: (recoveredBlock162Stack4).
            recoveredBlock162PC := 194.
        ].
        recoveredBlock162Step = 194 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) values.
            recoveredBlock162PC := 196.
        ].
        recoveredBlock162Step = 196 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) addAll: (recoveredBlock162Stack2).
            recoveredBlock162PC := 198.
        ].
        recoveredBlock162Step = 198 ifTrue: [
            recoveredBlock162PC := 208.
        ].
        recoveredBlock162Step = 202 ifTrue: [
            recoveredBlock162Stack1 := recoveredLocal2.
            recoveredBlock162PC := 205.
        ].
        recoveredBlock162Step = 205 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Arg1.
            recoveredBlock162PC := 206.
        ].
        recoveredBlock162Step = 206 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) add: (recoveredBlock162Stack2).
            recoveredBlock162PC := 208.
        ].
        recoveredBlock162Step = 208 ifTrue: [
            recoveredBlock162Result := recoveredBlock162Stack1.
            recoveredBlock162Done := true.
        ].
    ].
    recoveredBlock162Result
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) addAllValues: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasValues.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) hasValues: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasValues.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) hasValues: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) addAllValues: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

