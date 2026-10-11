"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006590c; bytecode file offset 0x963428"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
errorNo
    | recoveredValue0 |
    recoveredValue0 := errorNo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200678ec; bytecode file offset 0x9646f8"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
subStates
    | recoveredValue0 |
    recoveredValue0 := subStates.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bee28; bytecode file offset 0x9bc0b4"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
subStates: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    subStates := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20156650; bytecode file offset 0xa52fb0"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
isCompletelyUninitialized: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subStates.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) isCompletelyUninitialized: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) allSatisfy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20160990; bytecode file offset 0xa5d27c"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
minCondition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStates.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ce238Arg1 :block280ce238Arg2 | 
    | block280ce238Value0 block280ce238Value1 block280ce238Value2 block280ce238Value3 |
    block280ce238Value0 := block280ce238Arg1.
    block280ce238Value1 := block280ce238Arg2.
    block280ce238Value2 := (block280ce238Value1) minCondition.
    block280ce238Value3 := (block280ce238Value0) andExpr: (block280ce238Value2).
    block280ce238Value3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201609b0; bytecode file offset 0xa5d27c"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
maxCondition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStates.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ce25cArg1 :block280ce25cArg2 | 
    | block280ce25cValue0 block280ce25cValue1 block280ce25cValue2 block280ce25cValue3 |
    block280ce25cValue0 := block280ce25cArg1.
    block280ce25cValue1 := block280ce25cArg2.
    block280ce25cValue2 := (block280ce25cValue1) maxCondition.
    block280ce25cValue3 := (block280ce25cValue0) andExpr: (block280ce25cValue2).
    block280ce25cValue3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20170d30; bytecode file offset 0xa6d61c"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
copy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shallowCopy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) subStates.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280cebecArg1 | 
    | block280cebecValue0 block280cebecValue1 |
    block280cebecValue0 := block280cebecArg1.
    block280cebecValue1 := (block280cebecValue0) copy.
    block280cebecValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) subStates: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8e50; bytecode file offset 0xaa575c"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
addPossibleWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
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
    'Not yet implemented'
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

"ASDBase.ic method 0x201a8e98; bytecode file offset 0xaa575c"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
addWriteAccessToReferencedElementOf: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
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
    'This method should not be called for RecordVarDeclInitState.'
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

"ASDBase.ic method 0x201a9a9c; bytecode file offset 0xaa6360"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
checkReadOfReferencedElementAccessVarDecl: recoveredArg1 accessChain: recoveredArg2 currentCondition: recoveredArg3 errLabelBlock: recoveredArg4 onlyWarning: recoveredArg5 source: recoveredArg6
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
    'This method should not be called for RecordVarDeclInitState.'
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

"ASDBase.ic method 0x201b40a0; bytecode file offset 0xab0984"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
intersectWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) subStates.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := (self) subStates.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (self) subStates.
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := (recoveredBlock6Value2) at: (recoveredBlock6Value3).
    recoveredBlock6Value5 := recoveredBlock6Arg2.
    recoveredBlock6Value6 := (recoveredBlock6Value4) intersectWith: (recoveredBlock6Value5).
    recoveredBlock6Value7 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) put: (recoveredBlock6Value6).
    recoveredBlock6Value7
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201b40bc; bytecode file offset 0xab0984"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
unionWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) subStates.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := (self) subStates.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (self) subStates.
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := (recoveredBlock6Value2) at: (recoveredBlock6Value3).
    recoveredBlock6Value5 := recoveredBlock6Arg2.
    recoveredBlock6Value6 := (recoveredBlock6Value4) unionWith: (recoveredBlock6Value5).
    recoveredBlock6Value7 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) put: (recoveredBlock6Value6).
    recoveredBlock6Value7
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2021091c; bytecode file offset 0xb0d1e8"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
printStateOn: recoveredArg1 keyErrLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subStates.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := recoveredBlock5Arg2.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value2) , ('.').
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) errLabel.
    recoveredBlock5Value6 := (recoveredBlock5Value3) , (recoveredBlock5Value5).
    recoveredBlock5Value7 := (recoveredBlock5Value0) printStateOn: (recoveredBlock5Value1) keyErrLabel: (recoveredBlock5Value6).
    recoveredBlock5Value7
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2035e91c; bytecode file offset 0xc5b1e8"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
addWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStates.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredArg2.
    recoveredBlock14Value3 := recoveredArg3.
    recoveredBlock14Value4 := (recoveredBlock14Value0) addWriteAccessFor: (recoveredBlock14Value1) condition: (recoveredBlock14Value2) source: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeLast.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStates.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) addWriteAccessFor: (recoveredStack1) condition: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044368c; bytecode file offset 0xd3ff8c"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
initializeErrorNo: recoveredArg1 condition: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) genContext.
    recoveredValue2 := (recoveredValue1) importsTable.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asCgDereferencedType.
    recoveredValue5 := (recoveredValue2) lookupClassInterface: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    errorNo := recoveredValue6.
    recoveredValue7 := LookupTable.
    recoveredValue8 := (recoveredValue7) new.
    subStates := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) instVars.
    recoveredValue11 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) mdlClass.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isCgRecordType.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 64].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := SGMdRecordVarDeclInitState.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Arg1.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack4 := (recoveredBlock32Stack4) mdlClass.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) createErrorNo: (recoveredBlock32Stack2) condition: (recoveredBlock32Stack3) type: (recoveredBlock32Stack4).
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredBlock32PC := 99.
        ].
        recoveredBlock32Step = 64 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) mdlClass.
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isCgArrayType.
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 72] ifFalse: [recoveredBlock32PC := 88].
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32Stack1 := SGMdArrayVarDeclInitState.
            recoveredBlock32PC := 74.
        ].
        recoveredBlock32Step = 74 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 77.
        ].
        recoveredBlock32Step = 77 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 80.
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Arg1.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) createErrorNo: (recoveredBlock32Stack2) condition: (recoveredBlock32Stack3) varDecl: (recoveredBlock32Stack4).
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 85.
        ].
        recoveredBlock32Step = 85 ifTrue: [
            recoveredBlock32PC := 99.
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32Stack1 := SGMdScalarVarDeclInitState.
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 93.
        ].
        recoveredBlock32Step = 93 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 96.
        ].
        recoveredBlock32Step = 96 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) createErrorNo: (recoveredBlock32Stack2) condition: (recoveredBlock32Stack3).
            recoveredBlock32PC := 98.
        ].
        recoveredBlock32Step = 98 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 99.
        ].
        recoveredBlock32Step = 99 ifTrue: [
            recoveredBlock32Stack1 := subStates.
            recoveredBlock32PC := 101.
        ].
        recoveredBlock32Step = 101 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 102.
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local1.
            recoveredBlock32PC := 103.
        ].
        recoveredBlock32Step = 103 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2) put: (recoveredBlock32Stack3).
            recoveredBlock32PC := 105.
        ].
        recoveredBlock32Step = 105 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (recoveredValue10) do: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x204dc7ac; bytecode file offset 0xdd9094"
!SGMdRecordVarDeclInitState methodsFor: 'recovered'!
checkReadAccessVarDecl: recoveredArg1 accessChain: recoveredArg2 currentCondition: recoveredArg3 errLabelBlock: recoveredArg4 onlyWarning: recoveredArg5 source: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCompletelyUninitialized: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorNo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg6.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStates.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 :recoveredBlock41Arg2 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 |
    recoveredBlock41Value0 := recoveredBlock41Arg2.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := recoveredArg2.
    recoveredBlock41Value3 := recoveredArg3.
    recoveredBlock41Value4 := [
    | recoveredBlock41Block60Value0 recoveredBlock41Block60Value1 recoveredBlock41Block60Value2 recoveredBlock41Block60Value3 recoveredBlock41Block60Value4 recoveredBlock41Block60Value5 |
    recoveredBlock41Block60Value0 := recoveredArg4.
    recoveredBlock41Block60Value1 := (recoveredBlock41Block60Value0) value.
    recoveredBlock41Block60Value2 := (recoveredBlock41Block60Value1) , ('.').
    recoveredBlock41Block60Value3 := recoveredBlock41Arg1.
    recoveredBlock41Block60Value4 := (recoveredBlock41Block60Value3) errLabel.
    recoveredBlock41Block60Value5 := (recoveredBlock41Block60Value2) , (recoveredBlock41Block60Value4).
    recoveredBlock41Block60Value5
].
    recoveredBlock41Value5 := recoveredArg5.
    recoveredBlock41Value6 := recoveredArg6.
    recoveredBlock41Value7 := (recoveredBlock41Value0) checkReadAccessVarDecl: (recoveredBlock41Value1) accessChain: (recoveredBlock41Value2) currentCondition: (recoveredBlock41Value3) errLabelBlock: (recoveredBlock41Value4) onlyWarning: (recoveredBlock41Value5) source: (recoveredBlock41Value6).
    recoveredBlock41Value7
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeLast.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStates.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 recoveredBlock123Value4 recoveredBlock123Value5 |
    recoveredBlock123Value0 := recoveredArg4.
    recoveredBlock123Value1 := (recoveredBlock123Value0) value.
    recoveredBlock123Value2 := (recoveredBlock123Value1) , ('.').
    recoveredBlock123Value3 := recoveredLocal1.
    recoveredBlock123Value4 := (recoveredBlock123Value3) errLabel.
    recoveredBlock123Value5 := (recoveredBlock123Value2) , (recoveredBlock123Value4).
    recoveredBlock123Value5
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) checkReadAccessVarDecl: (recoveredStack2) accessChain: (recoveredStack3) currentCondition: (recoveredStack4) errLabelBlock: (recoveredStack5) onlyWarning: (recoveredStack6) source: (recoveredStack7).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

