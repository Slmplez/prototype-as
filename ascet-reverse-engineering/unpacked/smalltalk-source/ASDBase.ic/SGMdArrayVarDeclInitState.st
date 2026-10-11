"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20032a74; bytecode file offset 0x934580"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
lowerBound
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalZero.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065d2c; bytecode file offset 0x963428"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
indexMap
    | recoveredValue0 |
    recoveredValue0 := indexMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066ef4; bytecode file offset 0x9646f8"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
upperBound
    | recoveredValue0 |
    recoveredValue0 := upperBound.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be054; bytecode file offset 0x9bb178"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
indexMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    indexMap := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20170d50; bytecode file offset 0xa6d61c"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) indexMap.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280cec10Arg1 | 
    | block280cec10Value0 block280cec10Value1 |
    block280cec10Value0 := block280cec10Arg1.
    block280cec10Value1 := (block280cec10Value0) copy.
    block280cec10Value1
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
            (recoveredStack1) indexMap: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20190dc4; bytecode file offset 0xa8d6b8"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
minCondition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d1bbcArg1 :block280d1bbcArg2 | 
    | block280d1bbcValue0 block280d1bbcValue1 block280d1bbcValue2 block280d1bbcValue3 |
    block280d1bbcValue0 := block280d1bbcArg1.
    block280d1bbcValue1 := block280d1bbcArg2.
    block280d1bbcValue2 := (block280d1bbcValue1) minCondition.
    block280d1bbcValue3 := (block280d1bbcValue0) andExpr: (block280d1bbcValue2).
    block280d1bbcValue3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20190de8; bytecode file offset 0xa8d6b8"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
maxCondition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d1be0Arg1 :block280d1be0Arg2 | 
    | block280d1be0Value0 block280d1be0Value1 block280d1be0Value2 block280d1be0Value3 |
    block280d1be0Value0 := block280d1be0Arg1.
    block280d1be0Value1 := block280d1be0Arg2.
    block280d1be0Value2 := (block280d1be0Value1) maxCondition.
    block280d1be0Value3 := (block280d1be0Value0) andExpr: (block280d1be0Value2).
    block280d1be0Value3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8e80; bytecode file offset 0xaa575c"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
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
    'This method should not be called for ArrayVarDeclInitState.'
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

"ASDBase.ic method 0x201a9a84; bytecode file offset 0xaa6360"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
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
    'This method should not be called for ArrayVarDeclInitState.'
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

"ASDBase.ic method 0x201da328; bytecode file offset 0xad6c04"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
intersectWith: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) isMdlIdenticalState: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280d5db0Arg1 :block280d5db0Arg2 | 
    | block280d5db0Value0 block280d5db0Value1 block280d5db0Value2 |
    block280d5db0Value0 := block280d5db0Arg1.
    block280d5db0Value1 := block280d5db0Arg2.
    block280d5db0Value2 := (block280d5db0Value0) intersectWith: (block280d5db0Value1).
    block280d5db0Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) createIndexMapWith: (recoveredStack1) by: (recoveredStack2).
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

"ASDBase.ic method 0x201da340; bytecode file offset 0xad6c04"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
unionWith: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) isMdlIdenticalState: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280d5dd4Arg1 :block280d5dd4Arg2 | 
    | block280d5dd4Value0 block280d5dd4Value1 block280d5dd4Value2 |
    block280d5dd4Value0 := block280d5dd4Arg1.
    block280d5dd4Value1 := block280d5dd4Arg2.
    block280d5dd4Value2 := (block280d5dd4Value0) unionWith: (block280d5dd4Value1).
    block280d5dd4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) createIndexMapWith: (recoveredStack1) by: (recoveredStack2).
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

"ASDBase.ic method 0x201ea5bc; bytecode file offset 0xae6e84"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
printStateOn: recoveredArg1 keyErrLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) indexMap.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredBlock5Arg2.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) errLabel.
    recoveredBlock5Value5 := (recoveredBlock5Value2) , (recoveredBlock5Value4).
    recoveredBlock5Value6 := (recoveredBlock5Value0) printStateOn: (recoveredBlock5Value1) keyErrLabel: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2020f580; bytecode file offset 0xb0be44"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
isCompletelyUninitialized: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexMap.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexMap.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) isCompletelyUninitialized: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20210ac0; bytecode file offset 0xb0d398"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
initializeErrorNo: recoveredArg1 condition: recoveredArg2 upperBound: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg3.
    upperBound := recoveredValue0.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    indexMap := recoveredValue2.
    recoveredValue3 := indexMap.
    recoveredValue4 := SGIlIndexRange.
    recoveredValue5 := (self) lowerBound.
    recoveredValue6 := (self) upperBound.
    recoveredValue7 := (recoveredValue4) createLeft: (recoveredValue5) right: (recoveredValue6).
    recoveredValue8 := SGMdScalarVarDeclInitState.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue8) createErrorNo: (recoveredValue9) condition: (recoveredValue10).
    (recoveredValue3) at: (recoveredValue7) put: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2024d7f0; bytecode file offset 0xb4a0bc"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
addPossibleWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Arg2.
    recoveredBlock13Value2 := recoveredArg2.
    recoveredBlock13Value3 := recoveredArg3.
    recoveredBlock13Value4 := (recoveredBlock13Value0) addPossibleWriteAccessFor: (recoveredBlock13Value1) condition: (recoveredBlock13Value2) source: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (self) addWriteAccessFor: (recoveredValue0) condition: (recoveredValue1) source: (recoveredValue2) subDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2024d800; bytecode file offset 0xb4a0bc"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
addWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Arg2.
    recoveredBlock13Value2 := recoveredArg2.
    recoveredBlock13Value3 := recoveredArg3.
    recoveredBlock13Value4 := (recoveredBlock13Value0) addWriteAccessFor: (recoveredBlock13Value1) condition: (recoveredBlock13Value2) source: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (self) addWriteAccessFor: (recoveredValue0) condition: (recoveredValue1) source: (recoveredValue2) subDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2034b640; bytecode file offset 0xc47f08"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
isMdlIdenticalState: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMap.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexMap.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMap.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg1.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) indexMap.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack4 := [
    ^false
].
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3) ifAbsent: (recoveredBlock28Stack4).
            recoveredBlock28PC := 50.
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg2.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isMdlIdenticalState: (recoveredBlock28Stack3).
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 59] ifFalse: [recoveredBlock28PC := 56].
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203eb838; bytecode file offset 0xce8118"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
createIndexMapWith: recoveredArg1 by: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgExpressionContext.
    recoveredValue3 := (recoveredValue2) uintContext.
    recoveredValue4 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := (self) indexMap.
    recoveredBlock13Value1 := [:recoveredBlock13Block22Arg1 :recoveredBlock13Block22Arg2 | 
    | recoveredBlock13Block22Value0 recoveredBlock13Block22Value1 recoveredBlock13Block22Value2 recoveredBlock13Block22Value3 |
    recoveredBlock13Block22Value0 := recoveredArg1.
    recoveredBlock13Block22Value1 := (recoveredBlock13Block22Value0) indexMap.
    recoveredBlock13Block22Value2 := [:recoveredBlock13Block22Block33Arg1 :recoveredBlock13Block22Block33Arg2 | 
    | recoveredBlock13Block22Block33Value0 recoveredBlock13Block22Block33Value1 recoveredBlock13Block22Block33Value2 recoveredBlock13Block22Block33Value3 recoveredBlock13Block22Block33Value4 |
    recoveredBlock13Block22Block33Value0 := recoveredBlock13Block22Arg1.
    recoveredBlock13Block22Block33Value1 := recoveredBlock13Block22Block33Arg1.
    recoveredBlock13Block22Block33Value2 := (recoveredBlock13Block22Block33Value0) intersect: (recoveredBlock13Block22Block33Value1).
    recoveredBlock13Block22Block33Value3 := [:recoveredBlock13Block22Block33Block48Arg1 | 
    | recoveredBlock13Block22Block33Block48Value0 recoveredBlock13Block22Block33Block48Value1 recoveredBlock13Block22Block33Block48Value2 recoveredBlock13Block22Block33Block48Value3 recoveredBlock13Block22Block33Block48Value4 recoveredBlock13Block22Block33Block48Value5 recoveredBlock13Block22Block33Block48Value6 |
    recoveredBlock13Block22Block33Block48Value0 := recoveredLocal1.
    recoveredBlock13Block22Block33Block48Value1 := recoveredBlock13Block22Block33Block48Arg1.
    recoveredBlock13Block22Block33Block48Value2 := recoveredArg2.
    recoveredBlock13Block22Block33Block48Value3 := recoveredBlock13Block22Arg2.
    recoveredBlock13Block22Block33Block48Value4 := recoveredBlock13Block22Block33Arg2.
    recoveredBlock13Block22Block33Block48Value5 := (recoveredBlock13Block22Block33Block48Value2) value: (recoveredBlock13Block22Block33Block48Value3) value: (recoveredBlock13Block22Block33Block48Value4).
    recoveredBlock13Block22Block33Block48Value6 := (self) addAndOptimize: (recoveredBlock13Block22Block33Block48Value0) key: (recoveredBlock13Block22Block33Block48Value1) value: (recoveredBlock13Block22Block33Block48Value5).
    recoveredBlock13Block22Block33Block48Value6
].
    recoveredBlock13Block22Block33Value4 := (recoveredBlock13Block22Block33Value2) ifNotNil: (recoveredBlock13Block22Block33Value3).
    recoveredBlock13Block22Block33Value4
].
    recoveredBlock13Block22Value3 := (recoveredBlock13Block22Value1) keysAndValuesDo: (recoveredBlock13Block22Value2).
    recoveredBlock13Block22Value3
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) keysAndValuesDo: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue3) executeInContext: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    indexMap := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x204114b4; bytecode file offset 0xd0dd80"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
addAndOptimize: recoveredArg1 key: recoveredArg2 value: recoveredArg3
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
            recoveredStack2 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) union: (recoveredBlock7Value1).
    recoveredBlock7Value3 := [
    | recoveredBlock7Block21Stack0 recoveredBlock7Block21Stack1 recoveredBlock7Block21Stack2 recoveredBlock7Block21Stack3 recoveredBlock7Block21Stack4 recoveredBlock7Block21PC recoveredBlock7Block21Step recoveredBlock7Block21Done recoveredBlock7Block21Result |
    recoveredBlock7Block21Stack0 := nil.
    recoveredBlock7Block21PC := 28.
    recoveredBlock7Block21Done := false.
    [recoveredBlock7Block21Done not] whileTrue: [
        recoveredBlock7Block21Step := recoveredBlock7Block21PC.
        recoveredBlock7Block21Step = 28 ifTrue: [
            recoveredBlock7Block21Stack1 := nil.
            recoveredBlock7Block21PC := 29.
        ].
        recoveredBlock7Block21Step = 29 ifTrue: [
            recoveredBlock7Block21Stack2 := recoveredBlock7Arg2.
            recoveredBlock7Block21PC := 32.
        ].
        recoveredBlock7Block21Step = 32 ifTrue: [
            recoveredBlock7Block21Stack3 := recoveredArg3.
            recoveredBlock7Block21PC := 35.
        ].
        recoveredBlock7Block21Step = 35 ifTrue: [
            recoveredBlock7Block21Stack2 := (recoveredBlock7Block21Stack2) isMdlIdenticalState: (recoveredBlock7Block21Stack3).
            recoveredBlock7Block21PC := 36.
        ].
        recoveredBlock7Block21Step = 36 ifTrue: [
            (recoveredBlock7Block21Stack2) ifTrue: [recoveredBlock7Block21PC := 40] ifFalse: [recoveredBlock7Block21PC := 48].
        ].
        recoveredBlock7Block21Step = 40 ifTrue: [
            recoveredBlock7Block21PC := 41.
        ].
        recoveredBlock7Block21Step = 41 ifTrue: [
            recoveredBlock7Block21Stack1 := recoveredBlock7Arg1.
            recoveredBlock7Block21PC := 44.
        ].
        recoveredBlock7Block21Step = 44 ifTrue: [
            recoveredBlock7Block21Stack2 := recoveredBlock7Block21Stack1.
            recoveredBlock7Block21PC := 45.
        ].
        recoveredBlock7Block21Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock7Block21Stack2.
            recoveredBlock7Block21PC := 48.
        ].
        recoveredBlock7Block21Step = 48 ifTrue: [
            recoveredBlock7Block21Result := recoveredBlock7Block21Stack1.
            recoveredBlock7Block21Done := true.
        ].
    ].
    recoveredBlock7Block21Result
].
    recoveredBlock7Value4 := (recoveredBlock7Value2) ifNotNil: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) union: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049cc60; bytecode file offset 0xd99570"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
initializeErrorNo: recoveredArg1 condition: recoveredArg2 varDecl: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) uintContext.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlClass.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) dimensions.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) first.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ileBuilder.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) asMdlIdentifier.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) mdlClass.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) createModelIdentifier: (recoveredBlock7Stack3) type: (recoveredBlock7Stack4).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ileMaxSizeUseConstant: (recoveredBlock7Stack2).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            upperBound := recoveredBlock7Stack1.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlClass.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isMdlMatrix.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 96].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlClass.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) dimensions.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) last.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ileBuilder.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) asMdlIdentifier.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) mdlClass.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) createModelIdentifier: (recoveredBlock7Stack3) type: (recoveredBlock7Stack4).
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ileMaxSizeUseConstant: (recoveredBlock7Stack2).
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack1 := SGMdArrayVarDeclInitState.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack4 := recoveredLocal1.
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) initializeErrorNo: (recoveredBlock7Stack2) condition: (recoveredBlock7Stack3) upperBound: (recoveredBlock7Stack4).
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7PC := 109.
        ].
        recoveredBlock7Step = 96 ifTrue: [
            recoveredBlock7Stack1 := SGMdScalarVarDeclInitState.
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) createErrorNo: (recoveredBlock7Stack2) condition: (recoveredBlock7Stack3).
            recoveredBlock7PC := 106.
        ].
        recoveredBlock7Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 109.
        ].
        recoveredBlock7Step = 109 ifTrue: [
            recoveredBlock7Stack1 := LookupTable.
            recoveredBlock7PC := 111.
        ].
        recoveredBlock7Step = 111 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new.
            recoveredBlock7PC := 113.
        ].
        recoveredBlock7Step = 113 ifTrue: [
            indexMap := recoveredBlock7Stack1.
            recoveredBlock7PC := 115.
        ].
        recoveredBlock7Step = 115 ifTrue: [
            recoveredBlock7Stack1 := indexMap.
            recoveredBlock7PC := 117.
        ].
        recoveredBlock7Step = 117 ifTrue: [
            recoveredBlock7Stack2 := SGIlIndexRange.
            recoveredBlock7PC := 119.
        ].
        recoveredBlock7Step = 119 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 120.
        ].
        recoveredBlock7Step = 120 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) lowerBound.
            recoveredBlock7PC := 122.
        ].
        recoveredBlock7Step = 122 ifTrue: [
            recoveredBlock7Stack4 := self.
            recoveredBlock7PC := 123.
        ].
        recoveredBlock7Step = 123 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) upperBound.
            recoveredBlock7PC := 125.
        ].
        recoveredBlock7Step = 125 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) createLeft: (recoveredBlock7Stack3) right: (recoveredBlock7Stack4).
            recoveredBlock7PC := 127.
        ].
        recoveredBlock7Step = 127 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal2.
            recoveredBlock7PC := 130.
        ].
        recoveredBlock7Step = 130 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2) put: (recoveredBlock7Stack3).
            recoveredBlock7PC := 132.
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20564614; bytecode file offset 0xe60f1c"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
checkReadAccessVarDecl: recoveredArg1 accessChain: recoveredArg2 currentCondition: recoveredArg3 errLabelBlock: recoveredArg4 onlyWarning: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) uintContext.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isEmpty.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 86].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) indexMap.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block24Arg1 :recoveredBlock7Block24Arg2 | 
    | recoveredBlock7Block24Stack0 recoveredBlock7Block24Stack1 recoveredBlock7Block24Stack2 recoveredBlock7Block24Stack3 recoveredBlock7Block24Stack4 recoveredBlock7Block24Stack5 recoveredBlock7Block24Stack6 recoveredBlock7Block24Stack7 recoveredBlock7Block24Stack8 recoveredBlock7Block24PC recoveredBlock7Block24Step recoveredBlock7Block24Done recoveredBlock7Block24Result |
    recoveredBlock7Block24Stack0 := nil.
    recoveredBlock7Block24PC := 30.
    recoveredBlock7Block24Done := false.
    [recoveredBlock7Block24Done not] whileTrue: [
        recoveredBlock7Block24Step := recoveredBlock7Block24PC.
        recoveredBlock7Block24Step = 30 ifTrue: [
            recoveredBlock7Block24Stack1 := recoveredBlock7Block24Arg2.
            recoveredBlock7Block24PC := 33.
        ].
        recoveredBlock7Block24Step = 33 ifTrue: [
            recoveredBlock7Block24Stack2 := recoveredArg1.
            recoveredBlock7Block24PC := 36.
        ].
        recoveredBlock7Block24Step = 36 ifTrue: [
            recoveredBlock7Block24Stack3 := recoveredArg2.
            recoveredBlock7Block24PC := 39.
        ].
        recoveredBlock7Block24Step = 39 ifTrue: [
            recoveredBlock7Block24Stack4 := recoveredArg3.
            recoveredBlock7Block24PC := 42.
        ].
        recoveredBlock7Block24Step = 42 ifTrue: [
            recoveredBlock7Block24Stack5 := [
    | recoveredBlock7Block24Block42Value0 recoveredBlock7Block24Block42Value1 recoveredBlock7Block24Block42Value2 recoveredBlock7Block24Block42Value3 recoveredBlock7Block24Block42Value4 |
    recoveredBlock7Block24Block42Value0 := recoveredArg4.
    recoveredBlock7Block24Block42Value1 := (recoveredBlock7Block24Block42Value0) value.
    recoveredBlock7Block24Block42Value2 := recoveredBlock7Block24Arg1.
    recoveredBlock7Block24Block42Value3 := (recoveredBlock7Block24Block42Value2) errLabel.
    recoveredBlock7Block24Block42Value4 := (recoveredBlock7Block24Block42Value1) , (recoveredBlock7Block24Block42Value3).
    recoveredBlock7Block24Block42Value4
].
            recoveredBlock7Block24PC := 61.
        ].
        recoveredBlock7Block24Step = 61 ifTrue: [
            recoveredBlock7Block24Stack6 := true.
            recoveredBlock7Block24PC := 62.
        ].
        recoveredBlock7Block24Step = 62 ifTrue: [
            recoveredBlock7Block24Stack7 := recoveredArg5.
            recoveredBlock7Block24PC := 65.
        ].
        recoveredBlock7Block24Step = 65 ifTrue: [
            (recoveredBlock7Block24Stack7) ifTrue: [recoveredBlock7Block24PC := 74] ifFalse: [recoveredBlock7Block24PC := 68].
        ].
        recoveredBlock7Block24Step = 68 ifTrue: [
            recoveredBlock7Block24PC := 69.
        ].
        recoveredBlock7Block24Step = 69 ifTrue: [
            recoveredBlock7Block24Stack6 := recoveredBlock7Block24Arg1.
            recoveredBlock7Block24PC := 72.
        ].
        recoveredBlock7Block24Step = 72 ifTrue: [
            recoveredBlock7Block24Stack6 := (recoveredBlock7Block24Stack6) isPossiblyEmpty.
            recoveredBlock7Block24PC := 74.
        ].
        recoveredBlock7Block24Step = 74 ifTrue: [
            recoveredBlock7Block24Stack7 := recoveredArg6.
            recoveredBlock7Block24PC := 77.
        ].
        recoveredBlock7Block24Step = 77 ifTrue: [
            recoveredBlock7Block24Stack1 := (recoveredBlock7Block24Stack1) checkReadAccessVarDecl: (recoveredBlock7Block24Stack2) accessChain: (recoveredBlock7Block24Stack3) currentCondition: (recoveredBlock7Block24Stack4) errLabelBlock: (recoveredBlock7Block24Stack5) onlyWarning: (recoveredBlock7Block24Stack6) source: (recoveredBlock7Block24Stack7).
            recoveredBlock7Block24PC := 80.
        ].
        recoveredBlock7Block24Step = 80 ifTrue: [
            recoveredBlock7Block24Result := recoveredBlock7Block24Stack1.
            recoveredBlock7Block24Done := true.
        ].
    ].
    recoveredBlock7Block24Result
].
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) keysAndValuesDo: (recoveredBlock7Stack2).
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7PC := 234.
        ].
        recoveredBlock7Step = 86 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 89.
        ].
        recoveredBlock7Step = 89 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) removeLast.
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block91Arg1 | 
    | recoveredBlock7Block91Local1 recoveredBlock7Block91Value0 recoveredBlock7Block91Value1 recoveredBlock7Block91Value2 recoveredBlock7Block91Value3 recoveredBlock7Block91Value4 |
    recoveredBlock7Block91Value0 := recoveredBlock7Block91Arg1.
    recoveredBlock7Block91Value1 := (recoveredBlock7Block91Value0) asIleIndexRange.
    recoveredBlock7Block91Local1 := recoveredBlock7Block91Value1.
    recoveredBlock7Block91Value2 := (self) indexMap.
    recoveredBlock7Block91Value3 := [:recoveredBlock7Block91Block107Arg1 :recoveredBlock7Block91Block107Arg2 | 
    | recoveredBlock7Block91Block107Value0 recoveredBlock7Block91Block107Value1 recoveredBlock7Block91Block107Value2 recoveredBlock7Block91Block107Value3 recoveredBlock7Block91Block107Value4 |
    recoveredBlock7Block91Block107Value0 := recoveredBlock7Block91Block107Arg1.
    recoveredBlock7Block91Block107Value1 := recoveredBlock7Block91Local1.
    recoveredBlock7Block91Block107Value2 := (recoveredBlock7Block91Block107Value0) intersect: (recoveredBlock7Block91Block107Value1).
    recoveredBlock7Block91Block107Value3 := [:recoveredBlock7Block91Block107Block122Arg1 | 
    | recoveredBlock7Block91Block107Block122Stack0 recoveredBlock7Block91Block107Block122Stack1 recoveredBlock7Block91Block107Block122Stack2 recoveredBlock7Block91Block107Block122Stack3 recoveredBlock7Block91Block107Block122Stack4 recoveredBlock7Block91Block107Block122Stack5 recoveredBlock7Block91Block107Block122Stack6 recoveredBlock7Block91Block107Block122Stack7 recoveredBlock7Block91Block107Block122Stack8 recoveredBlock7Block91Block107Block122PC recoveredBlock7Block91Block107Block122Step recoveredBlock7Block91Block107Block122Done recoveredBlock7Block91Block107Block122Result |
    recoveredBlock7Block91Block107Block122Stack0 := nil.
    recoveredBlock7Block91Block107Block122PC := 128.
    recoveredBlock7Block91Block107Block122Done := false.
    [recoveredBlock7Block91Block107Block122Done not] whileTrue: [
        recoveredBlock7Block91Block107Block122Step := recoveredBlock7Block91Block107Block122PC.
        recoveredBlock7Block91Block107Block122Step = 128 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack1 := recoveredBlock7Block91Block107Arg2.
            recoveredBlock7Block91Block107Block122PC := 131.
        ].
        recoveredBlock7Block91Block107Block122Step = 131 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack2 := recoveredArg1.
            recoveredBlock7Block91Block107Block122PC := 134.
        ].
        recoveredBlock7Block91Block107Block122Step = 134 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack3 := recoveredArg2.
            recoveredBlock7Block91Block107Block122PC := 137.
        ].
        recoveredBlock7Block91Block107Block122Step = 137 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack4 := recoveredArg3.
            recoveredBlock7Block91Block107Block122PC := 140.
        ].
        recoveredBlock7Block91Block107Block122Step = 140 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack5 := [
    | recoveredBlock7Block91Block107Block122Block140Value0 recoveredBlock7Block91Block107Block122Block140Value1 recoveredBlock7Block91Block107Block122Block140Value2 recoveredBlock7Block91Block107Block122Block140Value3 recoveredBlock7Block91Block107Block122Block140Value4 |
    recoveredBlock7Block91Block107Block122Block140Value0 := recoveredArg4.
    recoveredBlock7Block91Block107Block122Block140Value1 := (recoveredBlock7Block91Block107Block122Block140Value0) value.
    recoveredBlock7Block91Block107Block122Block140Value2 := recoveredBlock7Block91Block107Block122Arg1.
    recoveredBlock7Block91Block107Block122Block140Value3 := (recoveredBlock7Block91Block107Block122Block140Value2) errLabel.
    recoveredBlock7Block91Block107Block122Block140Value4 := (recoveredBlock7Block91Block107Block122Block140Value1) , (recoveredBlock7Block91Block107Block122Block140Value3).
    recoveredBlock7Block91Block107Block122Block140Value4
].
            recoveredBlock7Block91Block107Block122PC := 159.
        ].
        recoveredBlock7Block91Block107Block122Step = 159 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack6 := true.
            recoveredBlock7Block91Block107Block122PC := 160.
        ].
        recoveredBlock7Block91Block107Block122Step = 160 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack7 := recoveredArg5.
            recoveredBlock7Block91Block107Block122PC := 163.
        ].
        recoveredBlock7Block91Block107Block122Step = 163 ifTrue: [
            (recoveredBlock7Block91Block107Block122Stack7) ifTrue: [recoveredBlock7Block91Block107Block122PC := 172] ifFalse: [recoveredBlock7Block91Block107Block122PC := 166].
        ].
        recoveredBlock7Block91Block107Block122Step = 166 ifTrue: [
            recoveredBlock7Block91Block107Block122PC := 167.
        ].
        recoveredBlock7Block91Block107Block122Step = 167 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack6 := recoveredBlock7Block91Block107Arg1.
            recoveredBlock7Block91Block107Block122PC := 170.
        ].
        recoveredBlock7Block91Block107Block122Step = 170 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack6 := (recoveredBlock7Block91Block107Block122Stack6) isPossiblyEmpty.
            recoveredBlock7Block91Block107Block122PC := 172.
        ].
        recoveredBlock7Block91Block107Block122Step = 172 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack7 := recoveredArg6.
            recoveredBlock7Block91Block107Block122PC := 175.
        ].
        recoveredBlock7Block91Block107Block122Step = 175 ifTrue: [
            recoveredBlock7Block91Block107Block122Stack1 := (recoveredBlock7Block91Block107Block122Stack1) checkReadAccessVarDecl: (recoveredBlock7Block91Block107Block122Stack2) accessChain: (recoveredBlock7Block91Block107Block122Stack3) currentCondition: (recoveredBlock7Block91Block107Block122Stack4) errLabelBlock: (recoveredBlock7Block91Block107Block122Stack5) onlyWarning: (recoveredBlock7Block91Block107Block122Stack6) source: (recoveredBlock7Block91Block107Block122Stack7).
            recoveredBlock7Block91Block107Block122PC := 178.
        ].
        recoveredBlock7Block91Block107Block122Step = 178 ifTrue: [
            recoveredBlock7Block91Block107Block122Result := recoveredBlock7Block91Block107Block122Stack1.
            recoveredBlock7Block91Block107Block122Done := true.
        ].
    ].
    recoveredBlock7Block91Block107Block122Result
].
    recoveredBlock7Block91Block107Value4 := (recoveredBlock7Block91Block107Value2) ifNotNil: (recoveredBlock7Block91Block107Value3).
    recoveredBlock7Block91Block107Value4
].
    recoveredBlock7Block91Value4 := (recoveredBlock7Block91Value2) keysAndValuesDo: (recoveredBlock7Block91Value3).
    recoveredBlock7Block91Value4
].
            recoveredBlock7PC := 185.
        ].
        recoveredBlock7Step = 185 ifTrue: [
            recoveredBlock7Stack3 := [
    | recoveredBlock7Block185Stack0 recoveredBlock7Block185Stack1 recoveredBlock7Block185Stack2 recoveredBlock7Block185Stack3 recoveredBlock7Block185Stack4 recoveredBlock7Block185Stack5 recoveredBlock7Block185PC recoveredBlock7Block185Step recoveredBlock7Block185Done recoveredBlock7Block185Result |
    recoveredBlock7Block185Stack0 := self.
    recoveredBlock7Block185PC := 192.
    recoveredBlock7Block185Done := false.
    [recoveredBlock7Block185Done not] whileTrue: [
        recoveredBlock7Block185Step := recoveredBlock7Block185PC.
        recoveredBlock7Block185Step = 192 ifTrue: [
            recoveredBlock7Block185Stack1 := nil.
            recoveredBlock7Block185PC := 193.
        ].
        recoveredBlock7Block185Step = 193 ifTrue: [
            recoveredBlock7Block185Stack2 := self.
            recoveredBlock7Block185PC := 194.
        ].
        recoveredBlock7Block185Step = 194 ifTrue: [
            recoveredBlock7Block185Stack2 := (recoveredBlock7Block185Stack2) minCondition.
            recoveredBlock7Block185PC := 196.
        ].
        recoveredBlock7Block185Step = 196 ifTrue: [
            recoveredBlock7Block185Stack2 := (recoveredBlock7Block185Stack2) not.
            recoveredBlock7Block185PC := 197.
        ].
        recoveredBlock7Block185Step = 197 ifTrue: [
            recoveredBlock7Block185Stack3 := recoveredArg3.
            recoveredBlock7Block185PC := 200.
        ].
        recoveredBlock7Block185Step = 200 ifTrue: [
            recoveredBlock7Block185Stack2 := (recoveredBlock7Block185Stack2) andExpr: (recoveredBlock7Block185Stack3).
            recoveredBlock7Block185PC := 202.
        ].
        recoveredBlock7Block185Step = 202 ifTrue: [
            recoveredBlock7Block185Stack2 := (recoveredBlock7Block185Stack2) isIleConstantValueFalse.
            recoveredBlock7Block185PC := 204.
        ].
        recoveredBlock7Block185Step = 204 ifTrue: [
            (recoveredBlock7Block185Stack2) ifTrue: [recoveredBlock7Block185PC := 231] ifFalse: [recoveredBlock7Block185PC := 208].
        ].
        recoveredBlock7Block185Step = 208 ifTrue: [
            recoveredBlock7Block185PC := 209.
        ].
        recoveredBlock7Block185Step = 209 ifTrue: [
            recoveredBlock7Block185Stack1 := recoveredArg1.
            recoveredBlock7Block185PC := 212.
        ].
        recoveredBlock7Block185Step = 212 ifTrue: [
            recoveredBlock7Block185Stack2 := 82.
            recoveredBlock7Block185PC := 216.
        ].
        recoveredBlock7Block185Step = 216 ifTrue: [
            recoveredBlock7Block185Stack3 := recoveredArg4.
            recoveredBlock7Block185PC := 219.
        ].
        recoveredBlock7Block185Step = 219 ifTrue: [
            recoveredBlock7Block185Stack3 := (recoveredBlock7Block185Stack3) value.
            recoveredBlock7Block185PC := 221.
        ].
        recoveredBlock7Block185Step = 221 ifTrue: [
            recoveredBlock7Block185Stack4 := '[?]'.
            recoveredBlock7Block185PC := 223.
        ].
        recoveredBlock7Block185Step = 223 ifTrue: [
            recoveredBlock7Block185Stack3 := (recoveredBlock7Block185Stack3) , (recoveredBlock7Block185Stack4).
            recoveredBlock7Block185PC := 225.
        ].
        recoveredBlock7Block185Step = 225 ifTrue: [
            recoveredBlock7Block185Stack4 := recoveredArg6.
            recoveredBlock7Block185PC := 228.
        ].
        recoveredBlock7Block185Step = 228 ifTrue: [
            recoveredBlock7Block185Stack1 := (recoveredBlock7Block185Stack1) mdlWarningNo: (recoveredBlock7Block185Stack2) with: (recoveredBlock7Block185Stack3) source: (recoveredBlock7Block185Stack4).
            recoveredBlock7Block185PC := 231.
        ].
        recoveredBlock7Block185Step = 231 ifTrue: [
            recoveredBlock7Block185Result := recoveredBlock7Block185Stack1.
            recoveredBlock7Block185Done := true.
        ].
    ].
    recoveredBlock7Block185Result
].
            recoveredBlock7PC := 232.
        ].
        recoveredBlock7Step = 232 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ifNotNil: (recoveredBlock7Stack2) ifNil: (recoveredBlock7Stack3).
            recoveredBlock7PC := 234.
        ].
        recoveredBlock7Step = 234 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20581440; bytecode file offset 0xe7dd54"
!SGMdArrayVarDeclInitState methodsFor: 'recovered'!
addWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3 subDo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) uintContext.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isEmpty.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 48].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := indexMap.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block24Arg1 | 
    | recoveredBlock7Block24Value0 recoveredBlock7Block24Value1 recoveredBlock7Block24Value2 recoveredBlock7Block24Value3 |
    recoveredBlock7Block24Value0 := recoveredArg4.
    recoveredBlock7Block24Value1 := recoveredBlock7Block24Arg1.
    recoveredBlock7Block24Value2 := recoveredArg1.
    recoveredBlock7Block24Value3 := (recoveredBlock7Block24Value0) value: (recoveredBlock7Block24Value1) value: (recoveredBlock7Block24Value2).
    recoveredBlock7Block24Value3
].
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) collect: (recoveredBlock7Stack2).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            indexMap := recoveredBlock7Stack2.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7PC := 258.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) removeLast.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block53Arg1 | 
    | recoveredBlock7Block53Local1 recoveredBlock7Block53Local2 recoveredBlock7Block53Value0 recoveredBlock7Block53Value1 recoveredBlock7Block53Value2 recoveredBlock7Block53Value3 recoveredBlock7Block53Value4 recoveredBlock7Block53Value5 recoveredBlock7Block53Value6 recoveredBlock7Block53Value7 |
    recoveredBlock7Block53Value0 := recoveredBlock7Block53Arg1.
    recoveredBlock7Block53Value1 := (recoveredBlock7Block53Value0) asIleIndexRange.
    recoveredBlock7Block53Local2 := recoveredBlock7Block53Value1.
    recoveredBlock7Block53Value2 := LookupTable.
    recoveredBlock7Block53Value3 := (recoveredBlock7Block53Value2) new.
    recoveredBlock7Block53Local1 := recoveredBlock7Block53Value3.
    recoveredBlock7Block53Value4 := (self) indexMap.
    recoveredBlock7Block53Value5 := [:recoveredBlock7Block53Block77Arg1 :recoveredBlock7Block53Block77Arg2 | 
    | recoveredBlock7Block53Block77Value0 recoveredBlock7Block53Block77Value1 recoveredBlock7Block53Block77Value2 recoveredBlock7Block53Block77Value3 recoveredBlock7Block53Block77Value4 recoveredBlock7Block53Block77Value5 recoveredBlock7Block53Block77Value6 recoveredBlock7Block53Block77Value7 recoveredBlock7Block53Block77Value8 recoveredBlock7Block53Block77Value9 recoveredBlock7Block53Block77Value10 recoveredBlock7Block53Block77Value11 recoveredBlock7Block53Block77Value12 recoveredBlock7Block53Block77Value13 recoveredBlock7Block53Block77Value14 recoveredBlock7Block53Block77Value15 recoveredBlock7Block53Block77Value16 recoveredBlock7Block53Block77Value17 recoveredBlock7Block53Block77Value18 recoveredBlock7Block53Block77Value19 recoveredBlock7Block53Block77Value20 recoveredBlock7Block53Block77Value21 recoveredBlock7Block53Block77Value22 recoveredBlock7Block53Block77Value23 recoveredBlock7Block53Block77Value24 recoveredBlock7Block53Block77Value25 |
    recoveredBlock7Block53Block77Value0 := recoveredBlock7Block53Block77Arg1.
    recoveredBlock7Block53Block77Value1 := SGIlIndexRange.
    recoveredBlock7Block53Block77Value2 := (self) lowerBound.
    recoveredBlock7Block53Block77Value3 := recoveredBlock7Block53Local2.
    recoveredBlock7Block53Block77Value4 := (recoveredBlock7Block53Block77Value3) left.
    recoveredBlock7Block53Block77Value5 := (recoveredBlock7Block53Block77Value1) createLeft: (recoveredBlock7Block53Block77Value2) right: (recoveredBlock7Block53Block77Value4).
    recoveredBlock7Block53Block77Value6 := (recoveredBlock7Block53Block77Value0) intersect: (recoveredBlock7Block53Block77Value5).
    recoveredBlock7Block53Block77Value7 := [:recoveredBlock7Block53Block77Block101Arg1 | 
    | recoveredBlock7Block53Block77Block101Value0 recoveredBlock7Block53Block77Block101Value1 recoveredBlock7Block53Block77Block101Value2 recoveredBlock7Block53Block77Block101Value3 recoveredBlock7Block53Block77Block101Value4 |
    recoveredBlock7Block53Block77Block101Value0 := recoveredBlock7Block53Local1.
    recoveredBlock7Block53Block77Block101Value1 := recoveredBlock7Block53Block77Block101Arg1.
    recoveredBlock7Block53Block77Block101Value2 := recoveredBlock7Block53Block77Arg2.
    recoveredBlock7Block53Block77Block101Value3 := (recoveredBlock7Block53Block77Block101Value2) copy.
    recoveredBlock7Block53Block77Block101Value4 := (self) addAndOptimize: (recoveredBlock7Block53Block77Block101Value0) key: (recoveredBlock7Block53Block77Block101Value1) value: (recoveredBlock7Block53Block77Block101Value3).
    recoveredBlock7Block53Block77Block101Value4
].
    (recoveredBlock7Block53Block77Value6) ifNotNil: (recoveredBlock7Block53Block77Value7).
    recoveredBlock7Block53Block77Value8 := recoveredBlock7Block53Block77Arg1.
    recoveredBlock7Block53Block77Value9 := SGIlIndexRange.
    recoveredBlock7Block53Block77Value10 := recoveredBlock7Block53Local2.
    recoveredBlock7Block53Block77Value11 := (recoveredBlock7Block53Block77Value10) right.
    recoveredBlock7Block53Block77Value12 := (self) upperBound.
    recoveredBlock7Block53Block77Value13 := (recoveredBlock7Block53Block77Value9) createLeft: (recoveredBlock7Block53Block77Value11) right: (recoveredBlock7Block53Block77Value12).
    recoveredBlock7Block53Block77Value14 := (recoveredBlock7Block53Block77Value8) intersect: (recoveredBlock7Block53Block77Value13).
    recoveredBlock7Block53Block77Value15 := [:recoveredBlock7Block53Block77Block140Arg1 | 
    | recoveredBlock7Block53Block77Block140Value0 recoveredBlock7Block53Block77Block140Value1 recoveredBlock7Block53Block77Block140Value2 recoveredBlock7Block53Block77Block140Value3 recoveredBlock7Block53Block77Block140Value4 |
    recoveredBlock7Block53Block77Block140Value0 := recoveredBlock7Block53Local1.
    recoveredBlock7Block53Block77Block140Value1 := recoveredBlock7Block53Block77Block140Arg1.
    recoveredBlock7Block53Block77Block140Value2 := recoveredBlock7Block53Block77Arg2.
    recoveredBlock7Block53Block77Block140Value3 := (recoveredBlock7Block53Block77Block140Value2) copy.
    recoveredBlock7Block53Block77Block140Value4 := (self) addAndOptimize: (recoveredBlock7Block53Block77Block140Value0) key: (recoveredBlock7Block53Block77Block140Value1) value: (recoveredBlock7Block53Block77Block140Value3).
    recoveredBlock7Block53Block77Block140Value4
].
    (recoveredBlock7Block53Block77Value14) ifNotNil: (recoveredBlock7Block53Block77Value15).
    recoveredBlock7Block53Block77Value16 := recoveredBlock7Block53Block77Arg1.
    recoveredBlock7Block53Block77Value17 := SGIlIndexRange.
    recoveredBlock7Block53Block77Value18 := recoveredBlock7Block53Local2.
    recoveredBlock7Block53Block77Value19 := (recoveredBlock7Block53Block77Value18) left.
    recoveredBlock7Block53Block77Value20 := recoveredBlock7Block53Local2.
    recoveredBlock7Block53Block77Value21 := (recoveredBlock7Block53Block77Value20) right.
    recoveredBlock7Block53Block77Value22 := (recoveredBlock7Block53Block77Value17) createLeft: (recoveredBlock7Block53Block77Value19) right: (recoveredBlock7Block53Block77Value21).
    recoveredBlock7Block53Block77Value23 := (recoveredBlock7Block53Block77Value16) intersect: (recoveredBlock7Block53Block77Value22).
    recoveredBlock7Block53Block77Value24 := [:recoveredBlock7Block53Block77Block180Arg1 | 
    | recoveredBlock7Block53Block77Block180Value0 recoveredBlock7Block53Block77Block180Value1 recoveredBlock7Block53Block77Block180Value2 recoveredBlock7Block53Block77Block180Value3 recoveredBlock7Block53Block77Block180Value4 recoveredBlock7Block53Block77Block180Value5 recoveredBlock7Block53Block77Block180Value6 recoveredBlock7Block53Block77Block180Value7 recoveredBlock7Block53Block77Block180Value8 |
    recoveredBlock7Block53Block77Block180Value0 := recoveredBlock7Block53Local1.
    recoveredBlock7Block53Block77Block180Value1 := recoveredBlock7Block53Block77Block180Arg1.
    recoveredBlock7Block53Block77Block180Value2 := recoveredArg4.
    recoveredBlock7Block53Block77Block180Value3 := recoveredBlock7Block53Block77Arg2.
    recoveredBlock7Block53Block77Block180Value4 := (recoveredBlock7Block53Block77Block180Value3) copy.
    recoveredBlock7Block53Block77Block180Value5 := recoveredArg1.
    recoveredBlock7Block53Block77Block180Value6 := (recoveredBlock7Block53Block77Block180Value5) copy.
    recoveredBlock7Block53Block77Block180Value7 := (recoveredBlock7Block53Block77Block180Value2) value: (recoveredBlock7Block53Block77Block180Value4) value: (recoveredBlock7Block53Block77Block180Value6).
    recoveredBlock7Block53Block77Block180Value8 := (self) addAndOptimize: (recoveredBlock7Block53Block77Block180Value0) key: (recoveredBlock7Block53Block77Block180Value1) value: (recoveredBlock7Block53Block77Block180Value7).
    recoveredBlock7Block53Block77Block180Value8
].
    recoveredBlock7Block53Block77Value25 := (recoveredBlock7Block53Block77Value23) ifNotNil: (recoveredBlock7Block53Block77Value24).
    recoveredBlock7Block53Block77Value25
].
    (recoveredBlock7Block53Value4) keysAndValuesDo: (recoveredBlock7Block53Value5).
    recoveredBlock7Block53Value6 := recoveredBlock7Block53Local1.
    recoveredBlock7Block53Value7 := recoveredBlock7Block53Value6.
    indexMap := recoveredBlock7Block53Value7.
    recoveredBlock7Block53Value6
].
            recoveredBlock7PC := 221.
        ].
        recoveredBlock7Step = 221 ifTrue: [
            recoveredBlock7Stack3 := [
    | recoveredBlock7Block221Value0 recoveredBlock7Block221Value1 recoveredBlock7Block221Value2 recoveredBlock7Block221Value3 |
    recoveredBlock7Block221Value0 := indexMap.
    recoveredBlock7Block221Value1 := [:recoveredBlock7Block221Block230Arg1 | 
    | recoveredBlock7Block221Block230Value0 recoveredBlock7Block221Block230Value1 recoveredBlock7Block221Block230Value2 recoveredBlock7Block221Block230Value3 recoveredBlock7Block221Block230Value4 |
    recoveredBlock7Block221Block230Value0 := recoveredBlock7Block221Block230Arg1.
    recoveredBlock7Block221Block230Value1 := recoveredArg1.
    recoveredBlock7Block221Block230Value2 := recoveredArg2.
    recoveredBlock7Block221Block230Value3 := recoveredArg3.
    recoveredBlock7Block221Block230Value4 := (recoveredBlock7Block221Block230Value0) addPossibleWriteAccessFor: (recoveredBlock7Block221Block230Value1) condition: (recoveredBlock7Block221Block230Value2) source: (recoveredBlock7Block221Block230Value3).
    recoveredBlock7Block221Block230Value4
].
    recoveredBlock7Block221Value2 := (recoveredBlock7Block221Value0) collect: (recoveredBlock7Block221Value1).
    recoveredBlock7Block221Value3 := recoveredBlock7Block221Value2.
    indexMap := recoveredBlock7Block221Value3.
    recoveredBlock7Block221Value2
].
            recoveredBlock7PC := 256.
        ].
        recoveredBlock7Step = 256 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ifNotNil: (recoveredBlock7Stack2) ifNil: (recoveredBlock7Stack3).
            recoveredBlock7PC := 258.
        ].
        recoveredBlock7Step = 258 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    ^self
! !

