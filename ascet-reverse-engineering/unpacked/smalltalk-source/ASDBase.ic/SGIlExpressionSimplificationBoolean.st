"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20165ab0; bytecode file offset 0xa62394"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
composeAnd: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalTrue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce598Arg1 :block280ce598Arg2 | 
    | block280ce598Value0 block280ce598Value1 block280ce598Value2 |
    block280ce598Value0 := block280ce598Arg1.
    block280ce598Value1 := block280ce598Arg2.
    block280ce598Value2 := (block280ce598Value0) andExpr: (block280ce598Value1).
    block280ce598Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20165acc; bytecode file offset 0xa62394"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
composeOr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalFalse.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce5bcArg1 :block280ce5bcArg2 | 
    | block280ce5bcValue0 block280ce5bcValue1 block280ce5bcValue2 |
    block280ce5bcValue0 := block280ce5bcArg1.
    block280ce5bcValue1 := block280ce5bcArg2.
    block280ce5bcValue2 := (block280ce5bcValue0) orExpr: (block280ce5bcValue1).
    block280ce5bcValue2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e8e30; bytecode file offset 0xbe56f8"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
hasOnlyObjects: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredLocal2.
    (recoveredValue2) collectConditionObjects: (recoveredValue3).
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) collectConditionObjects: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) includes: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
    recoveredValue10 := (recoveredValue8) allSatisfy: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2032f9b4; bytecode file offset 0xc2c27c"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
positionMap: recoveredArg1 and: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredArg2.
    recoveredBlock13Value1 := [:recoveredBlock13Block23Arg1 :recoveredBlock13Block23Arg2 | 
    | recoveredBlock13Block23Stack0 recoveredBlock13Block23Stack1 recoveredBlock13Block23Stack2 recoveredBlock13Block23Stack3 recoveredBlock13Block23Stack4 recoveredBlock13Block23PC recoveredBlock13Block23Step recoveredBlock13Block23Done recoveredBlock13Block23Result |
    recoveredBlock13Block23Stack0 := nil.
    recoveredBlock13Block23PC := 30.
    recoveredBlock13Block23Done := false.
    [recoveredBlock13Block23Done not] whileTrue: [
        recoveredBlock13Block23Step := recoveredBlock13Block23PC.
        recoveredBlock13Block23Step = 30 ifTrue: [
            recoveredBlock13Block23Stack1 := nil.
            recoveredBlock13Block23PC := 31.
        ].
        recoveredBlock13Block23Step = 31 ifTrue: [
            recoveredBlock13Block23Stack2 := recoveredBlock13Block23Arg1.
            recoveredBlock13Block23PC := 32.
        ].
        recoveredBlock13Block23Step = 32 ifTrue: [
            recoveredBlock13Block23Stack3 := recoveredBlock13Arg1.
            recoveredBlock13Block23PC := 35.
        ].
        recoveredBlock13Block23Step = 35 ifTrue: [
            recoveredBlock13Block23Stack2 := (recoveredBlock13Block23Stack2) hasIleRepeatedlyTheSameValueWithoutContextAs: (recoveredBlock13Block23Stack3).
            recoveredBlock13Block23PC := 36.
        ].
        recoveredBlock13Block23Step = 36 ifTrue: [
            (recoveredBlock13Block23Stack2) ifTrue: [recoveredBlock13Block23PC := 40] ifFalse: [recoveredBlock13Block23PC := 50].
        ].
        recoveredBlock13Block23Step = 40 ifTrue: [
            recoveredBlock13Block23PC := 41.
        ].
        recoveredBlock13Block23Step = 41 ifTrue: [
            recoveredBlock13Block23Stack1 := recoveredLocal1.
            recoveredBlock13Block23PC := 44.
        ].
        recoveredBlock13Block23Step = 44 ifTrue: [
            recoveredBlock13Block23Stack2 := recoveredBlock13Arg2.
            recoveredBlock13Block23PC := 47.
        ].
        recoveredBlock13Block23Step = 47 ifTrue: [
            recoveredBlock13Block23Stack3 := recoveredBlock13Block23Arg2.
            recoveredBlock13Block23PC := 48.
        ].
        recoveredBlock13Block23Step = 48 ifTrue: [
            recoveredBlock13Block23Stack1 := (recoveredBlock13Block23Stack1) at: (recoveredBlock13Block23Stack2) put: (recoveredBlock13Block23Stack3).
            recoveredBlock13Block23PC := 50.
        ].
        recoveredBlock13Block23Step = 50 ifTrue: [
            recoveredBlock13Block23Result := recoveredBlock13Block23Stack1.
            recoveredBlock13Block23Done := true.
        ].
    ].
    recoveredBlock13Block23Result
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) doWithIndex: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2042a9dc; bytecode file offset 0xd272c8"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
equalExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 :recoveredBlock33Arg2 :recoveredBlock33Arg3 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33Stack5 recoveredBlock33Stack6 recoveredBlock33Stack7 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) isIleMuxExpr.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 48] ifFalse: [recoveredBlock33PC := 95].
        ].
        recoveredBlock33Step = 48 ifTrue: [
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack1 := self.
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) ileBuilder.
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) condExpr.
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg3.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33Stack4 := recoveredBlock33Arg1.
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            recoveredBlock33Stack4 := (recoveredBlock33Stack4) leftExpr.
            recoveredBlock33PC := 58.
        ].
        recoveredBlock33Step = 58 ifTrue: [
            recoveredBlock33Stack5 := recoveredBlock33Arg2.
            recoveredBlock33PC := 59.
        ].
        recoveredBlock33Step = 59 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) value: (recoveredBlock33Stack4) value: (recoveredBlock33Stack5).
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack4 := recoveredBlock33Arg3.
            recoveredBlock33PC := 62.
        ].
        recoveredBlock33Step = 62 ifTrue: [
            recoveredBlock33Stack5 := recoveredBlock33Arg1.
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Stack5 := (recoveredBlock33Stack5) rightExpr.
            recoveredBlock33PC := 64.
        ].
        recoveredBlock33Step = 64 ifTrue: [
            recoveredBlock33Stack6 := recoveredBlock33Arg2.
            recoveredBlock33PC := 65.
        ].
        recoveredBlock33Step = 65 ifTrue: [
            recoveredBlock33Stack4 := (recoveredBlock33Stack4) value: (recoveredBlock33Stack5) value: (recoveredBlock33Stack6).
            recoveredBlock33PC := 67.
        ].
        recoveredBlock33Step = 67 ifTrue: [
            recoveredBlock33Stack5 := recoveredArg1.
            recoveredBlock33PC := 70.
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33Stack5 := (recoveredBlock33Stack5) type.
            recoveredBlock33PC := 72.
        ].
        recoveredBlock33Step = 72 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) muxExpr: (recoveredBlock33Stack2) leftExpr: (recoveredBlock33Stack3) rightExpr: (recoveredBlock33Stack4) type: (recoveredBlock33Stack5).
            recoveredBlock33PC := 75.
        ].
        recoveredBlock33Step = 75 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack1.
            recoveredBlock33PC := 76.
        ].
        recoveredBlock33Step = 76 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 77.
        ].
        recoveredBlock33Step = 77 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 78.
        ].
        recoveredBlock33Step = 78 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) ileCosts.
            recoveredBlock33PC := 80.
        ].
        recoveredBlock33Step = 80 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 83.
        ].
        recoveredBlock33Step = 83 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) ileCosts.
            recoveredBlock33PC := 85.
        ].
        recoveredBlock33Step = 85 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) < (recoveredBlock33Stack3).
            recoveredBlock33PC := 86.
        ].
        recoveredBlock33Step = 86 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 90] ifFalse: [recoveredBlock33PC := 93].
        ].
        recoveredBlock33Step = 90 ifTrue: [
            recoveredBlock33PC := 91.
        ].
        recoveredBlock33Step = 91 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Local1.
            recoveredBlock33PC := 92.
        ].
        recoveredBlock33Step = 92 ifTrue: [
            ^recoveredBlock33Stack1
        ].
        recoveredBlock33Step = 93 ifTrue: [
            recoveredBlock33Stack2 := nil.
            recoveredBlock33PC := 94.
        ].
        recoveredBlock33Step = 94 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack2.
            recoveredBlock33PC := 95.
        ].
        recoveredBlock33Step = 95 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) withChildNodesDo: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelExpr: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20461e40; bytecode file offset 0xd5e720"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
normalizedAndChain2: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Value0.
    recoveredLocal4 := recoveredBlock18Value1.
    recoveredBlock18Value0
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [:block281008e8Arg1 | 
    nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationRightAndLeafDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 :recoveredBlock52Arg2 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52Stack5 recoveredBlock52Stack6 recoveredBlock52Stack7 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := self.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Arg1.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack4 := recoveredLocal3.
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack5 := recoveredLocal4.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack6 := recoveredBlock52Arg1.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack5 := (recoveredBlock52Stack5) = (recoveredBlock52Stack6).
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) normalizedAndChain2: (recoveredBlock52Stack3) rightExpr: (recoveredBlock52Stack4) neighbors: (recoveredBlock52Stack5).
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredLocal2 := recoveredBlock52Stack3.
            recoveredBlock52PC := 76.
        ].
        recoveredBlock52Step = 76 ifTrue: [
            (recoveredBlock52Stack2 == nil) ifTrue: [recoveredBlock52PC := 97] ifFalse: [recoveredBlock52PC := 80].
        ].
        recoveredBlock52Step = 80 ifTrue: [
            recoveredBlock52PC := 81.
        ].
        recoveredBlock52Step = 81 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 84.
        ].
        recoveredBlock52Step = 84 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) last.
            recoveredBlock52PC := 86.
        ].
        recoveredBlock52Step = 86 ifTrue: [
            recoveredLocal1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 89.
        ].
        recoveredBlock52Step = 89 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg2.
            recoveredBlock52PC := 90.
        ].
        recoveredBlock52Step = 90 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal2.
            recoveredBlock52PC := 93.
        ].
        recoveredBlock52Step = 93 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) first.
            recoveredBlock52PC := 95.
        ].
        recoveredBlock52Step = 95 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) value: (recoveredBlock52Stack2).
            recoveredBlock52PC := 97.
        ].
        recoveredBlock52Step = 97 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 |
    recoveredBlock98Value0 := recoveredArg1.
    recoveredBlock98Value1 := recoveredBlock98Arg1.
    recoveredBlock98Value2 := recoveredLocal1.
    recoveredBlock98Value3 := (recoveredBlock98Value0) createOpLeftExpr: (recoveredBlock98Value1) rightExpr: (recoveredBlock98Value2).
    ^recoveredBlock98Value3
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAndChildrenReverseDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a6e4c; bytecode file offset 0xda3740"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
notEqualExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalFalse.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 :recoveredBlock33Arg2 :recoveredBlock33Arg3 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) isIleMuxExpr.
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 50] ifFalse: [recoveredBlock33PC := 131].
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33PC := 51.
        ].
        recoveredBlock33Step = 51 ifTrue: [
            recoveredBlock33Stack1 := recoveredArg1.
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) expressionContext.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33Stack2 := [
    | recoveredBlock33Block56Value0 recoveredBlock33Block56Value1 recoveredBlock33Block56Value2 recoveredBlock33Block56Value3 recoveredBlock33Block56Value4 recoveredBlock33Block56Value5 recoveredBlock33Block56Value6 recoveredBlock33Block56Value7 recoveredBlock33Block56Value8 recoveredBlock33Block56Value9 recoveredBlock33Block56Value10 recoveredBlock33Block56Value11 recoveredBlock33Block56Value12 recoveredBlock33Block56Value13 recoveredBlock33Block56Value14 recoveredBlock33Block56Value15 |
    recoveredBlock33Block56Value0 := (self) ileBuilder.
    recoveredBlock33Block56Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block56Value2 := (recoveredBlock33Block56Value1) condExpr.
    recoveredBlock33Block56Value3 := recoveredBlock33Arg3.
    recoveredBlock33Block56Value4 := recoveredBlock33Arg1.
    recoveredBlock33Block56Value5 := (recoveredBlock33Block56Value4) leftExpr.
    recoveredBlock33Block56Value6 := recoveredBlock33Arg2.
    recoveredBlock33Block56Value7 := (recoveredBlock33Block56Value3) value: (recoveredBlock33Block56Value5) value: (recoveredBlock33Block56Value6).
    recoveredBlock33Block56Value8 := recoveredBlock33Arg3.
    recoveredBlock33Block56Value9 := recoveredBlock33Arg1.
    recoveredBlock33Block56Value10 := (recoveredBlock33Block56Value9) rightExpr.
    recoveredBlock33Block56Value11 := recoveredBlock33Arg2.
    recoveredBlock33Block56Value12 := (recoveredBlock33Block56Value8) value: (recoveredBlock33Block56Value10) value: (recoveredBlock33Block56Value11).
    recoveredBlock33Block56Value13 := recoveredArg1.
    recoveredBlock33Block56Value14 := (recoveredBlock33Block56Value13) type.
    recoveredBlock33Block56Value15 := (recoveredBlock33Block56Value0) muxExpr: (recoveredBlock33Block56Value2) leftExpr: (recoveredBlock33Block56Value7) rightExpr: (recoveredBlock33Block56Value12) type: (recoveredBlock33Block56Value14).
    recoveredBlock33Block56Value15
].
            recoveredBlock33PC := 102.
        ].
        recoveredBlock33Step = 102 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) executeInContext: (recoveredBlock33Stack2).
            recoveredBlock33PC := 104.
        ].
        recoveredBlock33Step = 104 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack1.
            recoveredBlock33PC := 107.
        ].
        recoveredBlock33Step = 107 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 108.
        ].
        recoveredBlock33Step = 108 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 111.
        ].
        recoveredBlock33Step = 111 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) ileCosts.
            recoveredBlock33PC := 113.
        ].
        recoveredBlock33Step = 113 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 116.
        ].
        recoveredBlock33Step = 116 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) ileCosts.
            recoveredBlock33PC := 118.
        ].
        recoveredBlock33Step = 118 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) < (recoveredBlock33Stack3).
            recoveredBlock33PC := 119.
        ].
        recoveredBlock33Step = 119 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 122] ifFalse: [recoveredBlock33PC := 127].
        ].
        recoveredBlock33Step = 122 ifTrue: [
            recoveredBlock33PC := 123.
        ].
        recoveredBlock33Step = 123 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Local1.
            recoveredBlock33PC := 126.
        ].
        recoveredBlock33Step = 126 ifTrue: [
            ^recoveredBlock33Stack1
        ].
        recoveredBlock33Step = 127 ifTrue: [
            recoveredBlock33Stack2 := nil.
            recoveredBlock33PC := 128.
        ].
        recoveredBlock33Step = 128 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack2.
            recoveredBlock33PC := 131.
        ].
        recoveredBlock33Step = 131 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) withChildNodesDo: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelExpr: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b3b58; bytecode file offset 0xdb0448"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
normalizedOrChain2: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) rightExpr.
    recoveredBlock14Value2 := (recoveredBlock14Value1) isIleOrExpr.
    recoveredBlock14Value3 := (recoveredBlock14Value2) not.
    recoveredBlock14Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [
    'Denormalized or-expression'
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 :recoveredBlock41Arg2 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredBlock41Value0.
    recoveredLocal4 := recoveredBlock41Value1.
    recoveredBlock41Value0
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:block28105a9cArg1 | 
    nil
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationRightOrLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 :recoveredBlock75Arg2 | 
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75Stack5 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal3.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack3 := recoveredLocal4.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack4 := recoveredBlock75Arg1.
            recoveredBlock75PC := 90.
        ].
        recoveredBlock75Step = 90 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) = (recoveredBlock75Stack4).
            recoveredBlock75PC := 91.
        ].
        recoveredBlock75Step = 91 ifTrue: [
            recoveredBlock75Stack0 := (recoveredBlock75Stack0) normalizedOrChain2: (recoveredBlock75Stack1) rightExpr: (recoveredBlock75Stack2) neighbors: (recoveredBlock75Stack3).
            recoveredBlock75PC := 94.
        ].
        recoveredBlock75Step = 94 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Stack0.
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            (recoveredBlock75Stack0 == nil) ifTrue: [recoveredBlock75PC := 122] ifFalse: [recoveredBlock75PC := 102].
        ].
        recoveredBlock75Step = 102 ifTrue: [
            recoveredBlock75Stack0 := recoveredLocal2.
            recoveredBlock75PC := 105.
        ].
        recoveredBlock75Step = 105 ifTrue: [
            recoveredBlock75Stack0 := (recoveredBlock75Stack0) last.
            recoveredBlock75PC := 107.
        ].
        recoveredBlock75Step = 107 ifTrue: [
            recoveredLocal1 := recoveredBlock75Stack0.
            recoveredBlock75PC := 110.
        ].
        recoveredBlock75Step = 110 ifTrue: [
            recoveredBlock75Stack0 := recoveredBlock75Arg2.
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal2.
            recoveredBlock75PC := 114.
        ].
        recoveredBlock75Step = 114 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) first.
            recoveredBlock75PC := 116.
        ].
        recoveredBlock75Step = 116 ifTrue: [
            recoveredBlock75Stack0 := (recoveredBlock75Stack0) value: (recoveredBlock75Stack1).
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredBlock75PC := 123.
        ].
        recoveredBlock75Step = 122 ifTrue: [
            recoveredBlock75Stack0 := nil.
            recoveredBlock75PC := 123.
        ].
        recoveredBlock75Step = 123 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack0.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Value0 recoveredBlock124Value1 recoveredBlock124Value2 recoveredBlock124Value3 |
    recoveredBlock124Value0 := recoveredArg1.
    recoveredBlock124Value1 := recoveredBlock124Arg1.
    recoveredBlock124Value2 := recoveredLocal1.
    recoveredBlock124Value3 := (recoveredBlock124Value0) createOpLeftExpr: (recoveredBlock124Value1) rightExpr: (recoveredBlock124Value2).
    ^recoveredBlock124Value3
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoOrChildrenReverseDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20570edc; bytecode file offset 0xe6d7ec"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
longestSequence: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) isEmpty.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 58] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) last.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) first.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) - (recoveredBlock23Stack2).
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) last.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) last.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) > (recoveredBlock23Stack2).
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 58] ifFalse: [recoveredBlock23PC := 74].
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack2 := Array.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg1.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack4 := 1.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) with: (recoveredBlock23Stack3) with: (recoveredBlock23Stack4).
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) add: (recoveredBlock23Stack2).
            recoveredBlock23PC := 70.
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23PC := 93.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) last.
            recoveredBlock23PC := 79.
        ].
        recoveredBlock23Step = 79 ifTrue: [
            recoveredBlock23Stack2 := 2.
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            recoveredBlock23Stack3 := recoveredLocal1.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) last.
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            recoveredBlock23Stack4 := 2.
            recoveredBlock23PC := 88.
        ].
        recoveredBlock23Step = 88 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) at: (recoveredBlock23Stack4).
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) + (1).
            recoveredBlock23PC := 91.
        ].
        recoveredBlock23Step = 91 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) at: (recoveredBlock23Stack2) put: (recoveredBlock23Stack3).
            recoveredBlock23PC := 93.
        ].
        recoveredBlock23Step = 93 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Local1 recoveredBlock99Local2 recoveredBlock99Local3 recoveredBlock99Local4 recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99Stack5 recoveredBlock99Stack6 recoveredBlock99Stack7 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := Infinity.
            recoveredBlock99PC := 108.
        ].
        recoveredBlock99Step = 108 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) plus.
            recoveredBlock99PC := 110.
        ].
        recoveredBlock99Step = 110 ifTrue: [
            recoveredBlock99Local4 := recoveredBlock99Stack1.
            recoveredBlock99PC := 111.
        ].
        recoveredBlock99Step = 111 ifTrue: [
            recoveredBlock99Stack1 := Infinity.
            recoveredBlock99PC := 113.
        ].
        recoveredBlock99Step = 113 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) minus.
            recoveredBlock99PC := 115.
        ].
        recoveredBlock99Step = 115 ifTrue: [
            recoveredBlock99Local3 := recoveredBlock99Stack1.
            recoveredBlock99PC := 116.
        ].
        recoveredBlock99Step = 116 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 118.
        ].
        recoveredBlock99Step = 118 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) first.
            recoveredBlock99PC := 120.
        ].
        recoveredBlock99Step = 120 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) + (-1).
            recoveredBlock99PC := 121.
        ].
        recoveredBlock99Step = 121 ifTrue: [
            recoveredBlock99Local2 := recoveredBlock99Stack1.
            recoveredBlock99PC := 122.
        ].
        recoveredBlock99Step = 122 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Arg1.
            recoveredBlock99PC := 124.
        ].
        recoveredBlock99Step = 124 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) first.
            recoveredBlock99PC := 126.
        ].
        recoveredBlock99Step = 126 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 128.
        ].
        recoveredBlock99Step = 128 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) last.
            recoveredBlock99PC := 130.
        ].
        recoveredBlock99Step = 130 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) + (recoveredBlock99Stack2).
            recoveredBlock99PC := 131.
        ].
        recoveredBlock99Step = 131 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) + (-1).
            recoveredBlock99PC := 132.
        ].
        recoveredBlock99Step = 132 ifTrue: [
            recoveredBlock99PC := 162.
        ].
        recoveredBlock99Step = 136 ifTrue: [
            recoveredBlock99Stack2 := recoveredArg1.
            recoveredBlock99PC := 139.
        ].
        recoveredBlock99Step = 139 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Local2.
            recoveredBlock99PC := 140.
        ].
        recoveredBlock99Step = 140 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) at: (recoveredBlock99Stack3).
            recoveredBlock99PC := 142.
        ].
        recoveredBlock99Step = 142 ifTrue: [
            recoveredBlock99Local1 := recoveredBlock99Stack2.
            recoveredBlock99PC := 143.
        ].
        recoveredBlock99Step = 143 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Local1.
            recoveredBlock99PC := 144.
        ].
        recoveredBlock99Step = 144 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Local4.
            recoveredBlock99PC := 145.
        ].
        recoveredBlock99Step = 145 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) < (recoveredBlock99Stack3).
            recoveredBlock99PC := 146.
        ].
        recoveredBlock99Step = 146 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 150] ifFalse: [recoveredBlock99PC := 152].
        ].
        recoveredBlock99Step = 150 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Local1.
            recoveredBlock99PC := 151.
        ].
        recoveredBlock99Step = 151 ifTrue: [
            recoveredBlock99Local4 := recoveredBlock99Stack2.
            recoveredBlock99PC := 152.
        ].
        recoveredBlock99Step = 152 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Local3.
            recoveredBlock99PC := 153.
        ].
        recoveredBlock99Step = 153 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Local1.
            recoveredBlock99PC := 154.
        ].
        recoveredBlock99Step = 154 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) < (recoveredBlock99Stack3).
            recoveredBlock99PC := 155.
        ].
        recoveredBlock99Step = 155 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 158] ifFalse: [recoveredBlock99PC := 160].
        ].
        recoveredBlock99Step = 158 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Local1.
            recoveredBlock99PC := 159.
        ].
        recoveredBlock99Step = 159 ifTrue: [
            recoveredBlock99Local3 := recoveredBlock99Stack2.
            recoveredBlock99PC := 160.
        ].
        recoveredBlock99Step = 160 ifTrue: [
            recoveredBlock99Stack2 := nil.
            recoveredBlock99PC := 161.
        ].
        recoveredBlock99Step = 161 ifTrue: [
            recoveredBlock99Local1 := recoveredBlock99Stack2.
            recoveredBlock99PC := 162.
        ].
        recoveredBlock99Step = 162 ifTrue: [
            (recoveredBlock99Stack1 isInteger and: [recoveredBlock99Local2 isInteger]) ifTrue: [(recoveredBlock99Local2 + 1 <= recoveredBlock99Stack1) ifTrue: [recoveredBlock99Local2 := recoveredBlock99Local2 + 1. recoveredBlock99PC := 136] ifFalse: [recoveredBlock99Local2 := nil. recoveredBlock99PC := 176]] ifFalse: [recoveredBlock99PC := 166].
        ].
        recoveredBlock99Step = 166 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Stack1.
            recoveredBlock99PC := 167.
        ].
        recoveredBlock99Step = 167 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Local2.
            recoveredBlock99PC := 168.
        ].
        recoveredBlock99Step = 168 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) + (1).
            recoveredBlock99PC := 169.
        ].
        recoveredBlock99Step = 169 ifTrue: [
            recoveredBlock99Stack4 := recoveredBlock99Stack3.
            recoveredBlock99PC := 170.
        ].
        recoveredBlock99Step = 170 ifTrue: [
            recoveredBlock99Local2 := recoveredBlock99Stack4.
            recoveredBlock99PC := 171.
        ].
        recoveredBlock99Step = 171 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) < (recoveredBlock99Stack3).
            recoveredBlock99PC := 172.
        ].
        recoveredBlock99Step = 172 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 174] ifFalse: [recoveredBlock99PC := 136].
        ].
        recoveredBlock99Step = 174 ifTrue: [
            recoveredBlock99Stack2 := nil.
            recoveredBlock99PC := 175.
        ].
        recoveredBlock99Step = 175 ifTrue: [
            recoveredBlock99Local2 := recoveredBlock99Stack2.
            recoveredBlock99PC := 176.
        ].
        recoveredBlock99Step = 176 ifTrue: [
            recoveredBlock99PC := 177.
        ].
        recoveredBlock99Step = 177 ifTrue: [
            recoveredBlock99Stack1 := Array.
            recoveredBlock99PC := 179.
        ].
        recoveredBlock99Step = 179 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 181.
        ].
        recoveredBlock99Step = 181 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) first.
            recoveredBlock99PC := 183.
        ].
        recoveredBlock99Step = 183 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Arg1.
            recoveredBlock99PC := 185.
        ].
        recoveredBlock99Step = 185 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) last.
            recoveredBlock99PC := 187.
        ].
        recoveredBlock99Step = 187 ifTrue: [
            recoveredBlock99Stack4 := recoveredBlock99Local4.
            recoveredBlock99PC := 188.
        ].
        recoveredBlock99Step = 188 ifTrue: [
            recoveredBlock99Stack5 := recoveredBlock99Local3.
            recoveredBlock99PC := 189.
        ].
        recoveredBlock99Step = 189 ifTrue: [
            recoveredBlock99Stack6 := recoveredBlock99Local4.
            recoveredBlock99PC := 190.
        ].
        recoveredBlock99Step = 190 ifTrue: [
            recoveredBlock99Stack5 := (recoveredBlock99Stack5) - (recoveredBlock99Stack6).
            recoveredBlock99PC := 191.
        ].
        recoveredBlock99Step = 191 ifTrue: [
            recoveredBlock99Stack5 := (recoveredBlock99Stack5) + (1).
            recoveredBlock99PC := 192.
        ].
        recoveredBlock99Step = 192 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) with: (recoveredBlock99Stack2) with: (recoveredBlock99Stack3) with: (recoveredBlock99Stack4) with: (recoveredBlock99Stack5).
            recoveredBlock99PC := 195.
        ].
        recoveredBlock99Step = 195 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack1.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:block28111cf4Arg1 | 
    | block28111cf4Value0 block28111cf4Value1 block28111cf4Value2 block28111cf4Value3 block28111cf4Value4 |
    block28111cf4Value0 := block28111cf4Arg1.
    block28111cf4Value1 := (block28111cf4Value0) at: (2).
    block28111cf4Value2 := block28111cf4Arg1.
    block28111cf4Value3 := (block28111cf4Value2) at: (4).
    block28111cf4Value4 := (block28111cf4Value1) = (block28111cf4Value3).
    block28111cf4Value4
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := [:block28111d18Arg1 :block28111d18Arg2 | 
    | block28111d18Value0 block28111d18Value1 block28111d18Value2 block28111d18Value3 block28111d18Value4 |
    block28111d18Value0 := block28111d18Arg1.
    block28111d18Value1 := (block28111d18Value0) last.
    block28111d18Value2 := block28111d18Arg2.
    block28111d18Value3 := (block28111d18Value2) last.
    block28111d18Value4 := (block28111d18Value1) >= (block28111d18Value3).
    block28111d18Value4
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20612b7c; bytecode file offset 0xf0f498"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
normalizedAndChain2: recoveredArg1 rightExpr: recoveredArg2 neighbors: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
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
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isIleOrExpr.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal14.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [:block2811dd9cArg1 | 
    nil
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isIleOrExpr.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 70] ifFalse: [recoveredBlock51PC := 64].
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal13.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:block2811ddc0Arg1 | 
    nil
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := recoveredLocal13.
    recoveredBlock83Value1 := [:recoveredBlock83Block93Arg1 | 
    | recoveredBlock83Block93Value0 recoveredBlock83Block93Value1 recoveredBlock83Block93Value2 |
    recoveredBlock83Block93Value0 := recoveredBlock83Block93Arg1.
    recoveredBlock83Block93Value1 := recoveredBlock83Arg1.
    recoveredBlock83Block93Value2 := (recoveredBlock83Block93Value0) hasIleRepeatedlyTheSameValueWithoutContextAs: (recoveredBlock83Block93Value1).
    recoveredBlock83Block93Value2
].
    recoveredBlock83Value2 := (recoveredBlock83Value0) anySatisfy: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalTrue.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 |
    recoveredBlock139Value0 := recoveredLocal14.
    recoveredBlock139Value1 := [:recoveredBlock139Block149Arg1 | 
    | recoveredBlock139Block149Value0 recoveredBlock139Block149Value1 recoveredBlock139Block149Value2 |
    recoveredBlock139Block149Value0 := recoveredBlock139Arg1.
    recoveredBlock139Block149Value1 := recoveredBlock139Block149Arg1.
    recoveredBlock139Block149Value2 := (recoveredBlock139Block149Value0) hasIleRepeatedlyTheSameValueWithoutContextAs: (recoveredBlock139Block149Value1).
    recoveredBlock139Block149Value2
].
    recoveredBlock139Value2 := (recoveredBlock139Value0) anySatisfy: (recoveredBlock139Value1).
    recoveredBlock139Value2
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalTrue.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) positionMap: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 497].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) longestSequence: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := [:recoveredBlock212Arg1 | 
    | recoveredBlock212Local1 recoveredBlock212Stack0 recoveredBlock212Stack1 recoveredBlock212Stack2 recoveredBlock212Stack3 recoveredBlock212Stack4 recoveredBlock212PC recoveredBlock212Step recoveredBlock212Done recoveredBlock212Result |
    recoveredBlock212Stack0 := self.
    recoveredBlock212PC := 218.
    recoveredBlock212Done := false.
    [recoveredBlock212Done not] whileTrue: [
        recoveredBlock212Step := recoveredBlock212PC.
        recoveredBlock212Step = 218 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 219.
        ].
        recoveredBlock212Step = 219 ifTrue: [
            recoveredBlock212Stack2 := 1.
            recoveredBlock212PC := 221.
        ].
        recoveredBlock212Step = 221 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) at: (recoveredBlock212Stack2).
            recoveredBlock212PC := 223.
        ].
        recoveredBlock212Step = 223 ifTrue: [
            recoveredLocal10 := recoveredBlock212Stack1.
            recoveredBlock212PC := 226.
        ].
        recoveredBlock212Step = 226 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal10.
            recoveredBlock212PC := 229.
        ].
        recoveredBlock212Step = 229 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Arg1.
            recoveredBlock212PC := 230.
        ].
        recoveredBlock212Step = 230 ifTrue: [
            recoveredBlock212Stack3 := 2.
            recoveredBlock212PC := 232.
        ].
        recoveredBlock212Step = 232 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) at: (recoveredBlock212Stack3).
            recoveredBlock212PC := 234.
        ].
        recoveredBlock212Step = 234 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) + (recoveredBlock212Stack2).
            recoveredBlock212PC := 235.
        ].
        recoveredBlock212Step = 235 ifTrue: [
            recoveredLocal8 := recoveredBlock212Stack1.
            recoveredBlock212PC := 238.
        ].
        recoveredBlock212Step = 238 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 239.
        ].
        recoveredBlock212Step = 239 ifTrue: [
            recoveredBlock212Stack2 := 3.
            recoveredBlock212PC := 241.
        ].
        recoveredBlock212Step = 241 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) at: (recoveredBlock212Stack2).
            recoveredBlock212PC := 243.
        ].
        recoveredBlock212Step = 243 ifTrue: [
            recoveredLocal9 := recoveredBlock212Stack1.
            recoveredBlock212PC := 246.
        ].
        recoveredBlock212Step = 246 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal9.
            recoveredBlock212PC := 249.
        ].
        recoveredBlock212Step = 249 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Arg1.
            recoveredBlock212PC := 250.
        ].
        recoveredBlock212Step = 250 ifTrue: [
            recoveredBlock212Stack3 := 4.
            recoveredBlock212PC := 252.
        ].
        recoveredBlock212Step = 252 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) at: (recoveredBlock212Stack3).
            recoveredBlock212PC := 254.
        ].
        recoveredBlock212Step = 254 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) + (recoveredBlock212Stack2).
            recoveredBlock212PC := 255.
        ].
        recoveredBlock212Step = 255 ifTrue: [
            recoveredLocal7 := recoveredBlock212Stack1.
            recoveredBlock212PC := 258.
        ].
        recoveredBlock212Step = 258 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal14.
            recoveredBlock212PC := 261.
        ].
        recoveredBlock212Step = 261 ifTrue: [
            recoveredBlock212Stack2 := 1.
            recoveredBlock212PC := 263.
        ].
        recoveredBlock212Step = 263 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal10.
            recoveredBlock212PC := 266.
        ].
        recoveredBlock212Step = 266 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (-1).
            recoveredBlock212PC := 267.
        ].
        recoveredBlock212Step = 267 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 269.
        ].
        recoveredBlock212Step = 269 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeOr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 271.
        ].
        recoveredBlock212Step = 271 ifTrue: [
            recoveredLocal6 := recoveredBlock212Stack0.
            recoveredBlock212PC := 274.
        ].
        recoveredBlock212Step = 274 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 275.
        ].
        recoveredBlock212Step = 275 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal13.
            recoveredBlock212PC := 278.
        ].
        recoveredBlock212Step = 278 ifTrue: [
            recoveredBlock212Stack2 := 1.
            recoveredBlock212PC := 280.
        ].
        recoveredBlock212Step = 280 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal9.
            recoveredBlock212PC := 283.
        ].
        recoveredBlock212Step = 283 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (-1).
            recoveredBlock212PC := 284.
        ].
        recoveredBlock212Step = 284 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 286.
        ].
        recoveredBlock212Step = 286 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeOr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 288.
        ].
        recoveredBlock212Step = 288 ifTrue: [
            recoveredLocal5 := recoveredBlock212Stack0.
            recoveredBlock212PC := 291.
        ].
        recoveredBlock212Step = 291 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 292.
        ].
        recoveredBlock212Step = 292 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal14.
            recoveredBlock212PC := 295.
        ].
        recoveredBlock212Step = 295 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal10.
            recoveredBlock212PC := 298.
        ].
        recoveredBlock212Step = 298 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal8.
            recoveredBlock212PC := 301.
        ].
        recoveredBlock212Step = 301 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (-1).
            recoveredBlock212PC := 302.
        ].
        recoveredBlock212Step = 302 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 304.
        ].
        recoveredBlock212Step = 304 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeOr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 306.
        ].
        recoveredBlock212Step = 306 ifTrue: [
            recoveredLocal4 := recoveredBlock212Stack0.
            recoveredBlock212PC := 309.
        ].
        recoveredBlock212Step = 309 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 310.
        ].
        recoveredBlock212Step = 310 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal14.
            recoveredBlock212PC := 313.
        ].
        recoveredBlock212Step = 313 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal8.
            recoveredBlock212PC := 316.
        ].
        recoveredBlock212Step = 316 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal14.
            recoveredBlock212PC := 319.
        ].
        recoveredBlock212Step = 319 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) size.
            recoveredBlock212PC := 321.
        ].
        recoveredBlock212Step = 321 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 323.
        ].
        recoveredBlock212Step = 323 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeOr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 325.
        ].
        recoveredBlock212Step = 325 ifTrue: [
            recoveredLocal3 := recoveredBlock212Stack0.
            recoveredBlock212PC := 328.
        ].
        recoveredBlock212Step = 328 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 329.
        ].
        recoveredBlock212Step = 329 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal13.
            recoveredBlock212PC := 332.
        ].
        recoveredBlock212Step = 332 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal7.
            recoveredBlock212PC := 335.
        ].
        recoveredBlock212Step = 335 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal13.
            recoveredBlock212PC := 338.
        ].
        recoveredBlock212Step = 338 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) size.
            recoveredBlock212PC := 340.
        ].
        recoveredBlock212Step = 340 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 342.
        ].
        recoveredBlock212Step = 342 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeOr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 344.
        ].
        recoveredBlock212Step = 344 ifTrue: [
            recoveredLocal2 := recoveredBlock212Stack0.
            recoveredBlock212PC := 347.
        ].
        recoveredBlock212Step = 347 ifTrue: [
            recoveredBlock212Stack0 := recoveredLocal6.
            recoveredBlock212PC := 350.
        ].
        recoveredBlock212Step = 350 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal5.
            recoveredBlock212PC := 353.
        ].
        recoveredBlock212Step = 353 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) andExpr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 355.
        ].
        recoveredBlock212Step = 355 ifTrue: [
            recoveredLocal1 := recoveredBlock212Stack0.
            recoveredBlock212PC := 358.
        ].
        recoveredBlock212Step = 358 ifTrue: [
            recoveredBlock212Stack0 := nil.
            recoveredBlock212PC := 359.
        ].
        recoveredBlock212Step = 359 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal1.
            recoveredBlock212PC := 362.
        ].
        recoveredBlock212Step = 362 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal6.
            recoveredBlock212PC := 365.
        ].
        recoveredBlock212Step = 365 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal2.
            recoveredBlock212PC := 368.
        ].
        recoveredBlock212Step = 368 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) andExpr: (recoveredBlock212Stack3).
            recoveredBlock212PC := 370.
        ].
        recoveredBlock212Step = 370 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) not.
            recoveredBlock212PC := 371.
        ].
        recoveredBlock212Step = 371 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) orExpr: (recoveredBlock212Stack2).
            recoveredBlock212PC := 373.
        ].
        recoveredBlock212Step = 373 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) isIleConstantValueTrue.
            recoveredBlock212PC := 375.
        ].
        recoveredBlock212Step = 375 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 378] ifFalse: [recoveredBlock212PC := 450].
        ].
        recoveredBlock212Step = 378 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal1.
            recoveredBlock212PC := 381.
        ].
        recoveredBlock212Step = 381 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal3.
            recoveredBlock212PC := 384.
        ].
        recoveredBlock212Step = 384 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal5.
            recoveredBlock212PC := 387.
        ].
        recoveredBlock212Step = 387 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) andExpr: (recoveredBlock212Stack3).
            recoveredBlock212PC := 389.
        ].
        recoveredBlock212Step = 389 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) not.
            recoveredBlock212PC := 390.
        ].
        recoveredBlock212Step = 390 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) orExpr: (recoveredBlock212Stack2).
            recoveredBlock212PC := 392.
        ].
        recoveredBlock212Step = 392 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) isIleConstantValueTrue.
            recoveredBlock212PC := 394.
        ].
        recoveredBlock212Step = 394 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 398] ifFalse: [recoveredBlock212PC := 450].
        ].
        recoveredBlock212Step = 398 ifTrue: [
            recoveredBlock212PC := 399.
        ].
        recoveredBlock212Step = 399 ifTrue: [
            recoveredBlock212Stack0 := recoveredLocal1.
            recoveredBlock212PC := 402.
        ].
        recoveredBlock212Step = 402 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal4.
            recoveredBlock212PC := 405.
        ].
        recoveredBlock212Step = 405 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) orExpr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 407.
        ].
        recoveredBlock212Step = 407 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal3.
            recoveredBlock212PC := 410.
        ].
        recoveredBlock212Step = 410 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal2.
            recoveredBlock212PC := 413.
        ].
        recoveredBlock212Step = 413 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) andExpr: (recoveredBlock212Stack2).
            recoveredBlock212PC := 415.
        ].
        recoveredBlock212Step = 415 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) orExpr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 417.
        ].
        recoveredBlock212Step = 417 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack0.
            recoveredBlock212PC := 418.
        ].
        recoveredBlock212Step = 418 ifTrue: [
            recoveredBlock212Stack0 := nil.
            recoveredBlock212PC := 419.
        ].
        recoveredBlock212Step = 419 ifTrue: [
            recoveredBlock212Stack1 := recoveredArg3.
            recoveredBlock212PC := 422.
        ].
        recoveredBlock212Step = 422 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 436] ifFalse: [recoveredBlock212PC := 426].
        ].
        recoveredBlock212Step = 426 ifTrue: [
            recoveredBlock212Stack1 := self.
            recoveredBlock212PC := 427.
        ].
        recoveredBlock212Step = 427 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Local1.
            recoveredBlock212PC := 428.
        ].
        recoveredBlock212Step = 428 ifTrue: [
            recoveredBlock212Stack3 := recoveredArg1.
            recoveredBlock212PC := 431.
        ].
        recoveredBlock212Step = 431 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) hasOnlyObjects: (recoveredBlock212Stack2) from: (recoveredBlock212Stack3).
            recoveredBlock212PC := 433.
        ].
        recoveredBlock212Step = 433 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 436] ifFalse: [recoveredBlock212PC := 448].
        ].
        recoveredBlock212Step = 436 ifTrue: [
            recoveredBlock212PC := 437.
        ].
        recoveredBlock212Step = 437 ifTrue: [
            recoveredBlock212Stack0 := Array.
            recoveredBlock212PC := 439.
        ].
        recoveredBlock212Step = 439 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Local1.
            recoveredBlock212PC := 440.
        ].
        recoveredBlock212Step = 440 ifTrue: [
            recoveredBlock212Stack2 := self.
            recoveredBlock212PC := 441.
        ].
        recoveredBlock212Step = 441 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) ileBuilder.
            recoveredBlock212PC := 443.
        ].
        recoveredBlock212Step = 443 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) literalTrue.
            recoveredBlock212PC := 445.
        ].
        recoveredBlock212Step = 445 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) with: (recoveredBlock212Stack1) with: (recoveredBlock212Stack2).
            recoveredBlock212PC := 447.
        ].
        recoveredBlock212Step = 447 ifTrue: [
            ^recoveredBlock212Stack0
        ].
        recoveredBlock212Step = 448 ifTrue: [
            recoveredBlock212Stack1 := nil.
            recoveredBlock212PC := 449.
        ].
        recoveredBlock212Step = 449 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack1.
            recoveredBlock212PC := 450.
        ].
        recoveredBlock212Step = 450 ifTrue: [
            recoveredBlock212Result := recoveredBlock212Stack0.
            recoveredBlock212Done := true.
        ].
    ].
    recoveredBlock212Result
].
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20612de0; bytecode file offset 0xf0f6fc"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
normalizedOrChain2: recoveredArg1 rightExpr: recoveredArg2 neighbors: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
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
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isIleAndExpr.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal14.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [:block2811dde4Arg1 | 
    nil
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isIleAndExpr.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 70] ifFalse: [recoveredBlock51PC := 64].
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal13.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:block2811de08Arg1 | 
    nil
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := recoveredLocal13.
    recoveredBlock83Value1 := [:recoveredBlock83Block93Arg1 | 
    | recoveredBlock83Block93Value0 recoveredBlock83Block93Value1 recoveredBlock83Block93Value2 |
    recoveredBlock83Block93Value0 := recoveredBlock83Block93Arg1.
    recoveredBlock83Block93Value1 := recoveredBlock83Arg1.
    recoveredBlock83Block93Value2 := (recoveredBlock83Block93Value0) hasIleRepeatedlyTheSameValueWithoutContextAs: (recoveredBlock83Block93Value1).
    recoveredBlock83Block93Value2
].
    recoveredBlock83Value2 := (recoveredBlock83Value0) anySatisfy: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 |
    recoveredBlock139Value0 := recoveredLocal14.
    recoveredBlock139Value1 := [:recoveredBlock139Block149Arg1 | 
    | recoveredBlock139Block149Value0 recoveredBlock139Block149Value1 recoveredBlock139Block149Value2 |
    recoveredBlock139Block149Value0 := recoveredBlock139Arg1.
    recoveredBlock139Block149Value1 := recoveredBlock139Block149Arg1.
    recoveredBlock139Block149Value2 := (recoveredBlock139Block149Value0) hasIleRepeatedlyTheSameValueWithoutContextAs: (recoveredBlock139Block149Value1).
    recoveredBlock139Block149Value2
].
    recoveredBlock139Value2 := (recoveredBlock139Value0) anySatisfy: (recoveredBlock139Value1).
    recoveredBlock139Value2
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalFalse.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) positionMap: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 497].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) longestSequence: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := [:recoveredBlock212Arg1 | 
    | recoveredBlock212Local1 recoveredBlock212Stack0 recoveredBlock212Stack1 recoveredBlock212Stack2 recoveredBlock212Stack3 recoveredBlock212Stack4 recoveredBlock212PC recoveredBlock212Step recoveredBlock212Done recoveredBlock212Result |
    recoveredBlock212Stack0 := self.
    recoveredBlock212PC := 218.
    recoveredBlock212Done := false.
    [recoveredBlock212Done not] whileTrue: [
        recoveredBlock212Step := recoveredBlock212PC.
        recoveredBlock212Step = 218 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 219.
        ].
        recoveredBlock212Step = 219 ifTrue: [
            recoveredBlock212Stack2 := 1.
            recoveredBlock212PC := 221.
        ].
        recoveredBlock212Step = 221 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) at: (recoveredBlock212Stack2).
            recoveredBlock212PC := 223.
        ].
        recoveredBlock212Step = 223 ifTrue: [
            recoveredLocal10 := recoveredBlock212Stack1.
            recoveredBlock212PC := 226.
        ].
        recoveredBlock212Step = 226 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal10.
            recoveredBlock212PC := 229.
        ].
        recoveredBlock212Step = 229 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Arg1.
            recoveredBlock212PC := 230.
        ].
        recoveredBlock212Step = 230 ifTrue: [
            recoveredBlock212Stack3 := 2.
            recoveredBlock212PC := 232.
        ].
        recoveredBlock212Step = 232 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) at: (recoveredBlock212Stack3).
            recoveredBlock212PC := 234.
        ].
        recoveredBlock212Step = 234 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) + (recoveredBlock212Stack2).
            recoveredBlock212PC := 235.
        ].
        recoveredBlock212Step = 235 ifTrue: [
            recoveredLocal8 := recoveredBlock212Stack1.
            recoveredBlock212PC := 238.
        ].
        recoveredBlock212Step = 238 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 239.
        ].
        recoveredBlock212Step = 239 ifTrue: [
            recoveredBlock212Stack2 := 3.
            recoveredBlock212PC := 241.
        ].
        recoveredBlock212Step = 241 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) at: (recoveredBlock212Stack2).
            recoveredBlock212PC := 243.
        ].
        recoveredBlock212Step = 243 ifTrue: [
            recoveredLocal9 := recoveredBlock212Stack1.
            recoveredBlock212PC := 246.
        ].
        recoveredBlock212Step = 246 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal9.
            recoveredBlock212PC := 249.
        ].
        recoveredBlock212Step = 249 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Arg1.
            recoveredBlock212PC := 250.
        ].
        recoveredBlock212Step = 250 ifTrue: [
            recoveredBlock212Stack3 := 4.
            recoveredBlock212PC := 252.
        ].
        recoveredBlock212Step = 252 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) at: (recoveredBlock212Stack3).
            recoveredBlock212PC := 254.
        ].
        recoveredBlock212Step = 254 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) + (recoveredBlock212Stack2).
            recoveredBlock212PC := 255.
        ].
        recoveredBlock212Step = 255 ifTrue: [
            recoveredLocal7 := recoveredBlock212Stack1.
            recoveredBlock212PC := 258.
        ].
        recoveredBlock212Step = 258 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal14.
            recoveredBlock212PC := 261.
        ].
        recoveredBlock212Step = 261 ifTrue: [
            recoveredBlock212Stack2 := 1.
            recoveredBlock212PC := 263.
        ].
        recoveredBlock212Step = 263 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal10.
            recoveredBlock212PC := 266.
        ].
        recoveredBlock212Step = 266 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (-1).
            recoveredBlock212PC := 267.
        ].
        recoveredBlock212Step = 267 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 269.
        ].
        recoveredBlock212Step = 269 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeAnd: (recoveredBlock212Stack1).
            recoveredBlock212PC := 271.
        ].
        recoveredBlock212Step = 271 ifTrue: [
            recoveredLocal6 := recoveredBlock212Stack0.
            recoveredBlock212PC := 274.
        ].
        recoveredBlock212Step = 274 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 275.
        ].
        recoveredBlock212Step = 275 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal13.
            recoveredBlock212PC := 278.
        ].
        recoveredBlock212Step = 278 ifTrue: [
            recoveredBlock212Stack2 := 1.
            recoveredBlock212PC := 280.
        ].
        recoveredBlock212Step = 280 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal9.
            recoveredBlock212PC := 283.
        ].
        recoveredBlock212Step = 283 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (-1).
            recoveredBlock212PC := 284.
        ].
        recoveredBlock212Step = 284 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 286.
        ].
        recoveredBlock212Step = 286 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeAnd: (recoveredBlock212Stack1).
            recoveredBlock212PC := 288.
        ].
        recoveredBlock212Step = 288 ifTrue: [
            recoveredLocal5 := recoveredBlock212Stack0.
            recoveredBlock212PC := 291.
        ].
        recoveredBlock212Step = 291 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 292.
        ].
        recoveredBlock212Step = 292 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal14.
            recoveredBlock212PC := 295.
        ].
        recoveredBlock212Step = 295 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal10.
            recoveredBlock212PC := 298.
        ].
        recoveredBlock212Step = 298 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal8.
            recoveredBlock212PC := 301.
        ].
        recoveredBlock212Step = 301 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (-1).
            recoveredBlock212PC := 302.
        ].
        recoveredBlock212Step = 302 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 304.
        ].
        recoveredBlock212Step = 304 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeAnd: (recoveredBlock212Stack1).
            recoveredBlock212PC := 306.
        ].
        recoveredBlock212Step = 306 ifTrue: [
            recoveredLocal4 := recoveredBlock212Stack0.
            recoveredBlock212PC := 309.
        ].
        recoveredBlock212Step = 309 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 310.
        ].
        recoveredBlock212Step = 310 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal14.
            recoveredBlock212PC := 313.
        ].
        recoveredBlock212Step = 313 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal8.
            recoveredBlock212PC := 316.
        ].
        recoveredBlock212Step = 316 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal14.
            recoveredBlock212PC := 319.
        ].
        recoveredBlock212Step = 319 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) size.
            recoveredBlock212PC := 321.
        ].
        recoveredBlock212Step = 321 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 323.
        ].
        recoveredBlock212Step = 323 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeAnd: (recoveredBlock212Stack1).
            recoveredBlock212PC := 325.
        ].
        recoveredBlock212Step = 325 ifTrue: [
            recoveredLocal3 := recoveredBlock212Stack0.
            recoveredBlock212PC := 328.
        ].
        recoveredBlock212Step = 328 ifTrue: [
            recoveredBlock212Stack0 := self.
            recoveredBlock212PC := 329.
        ].
        recoveredBlock212Step = 329 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal13.
            recoveredBlock212PC := 332.
        ].
        recoveredBlock212Step = 332 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal7.
            recoveredBlock212PC := 335.
        ].
        recoveredBlock212Step = 335 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal13.
            recoveredBlock212PC := 338.
        ].
        recoveredBlock212Step = 338 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) size.
            recoveredBlock212PC := 340.
        ].
        recoveredBlock212Step = 340 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) copyFrom: (recoveredBlock212Stack2) to: (recoveredBlock212Stack3).
            recoveredBlock212PC := 342.
        ].
        recoveredBlock212Step = 342 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) composeAnd: (recoveredBlock212Stack1).
            recoveredBlock212PC := 344.
        ].
        recoveredBlock212Step = 344 ifTrue: [
            recoveredLocal2 := recoveredBlock212Stack0.
            recoveredBlock212PC := 347.
        ].
        recoveredBlock212Step = 347 ifTrue: [
            recoveredBlock212Stack0 := recoveredLocal6.
            recoveredBlock212PC := 350.
        ].
        recoveredBlock212Step = 350 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal5.
            recoveredBlock212PC := 353.
        ].
        recoveredBlock212Step = 353 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) orExpr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 355.
        ].
        recoveredBlock212Step = 355 ifTrue: [
            recoveredLocal1 := recoveredBlock212Stack0.
            recoveredBlock212PC := 358.
        ].
        recoveredBlock212Step = 358 ifTrue: [
            recoveredBlock212Stack0 := nil.
            recoveredBlock212PC := 359.
        ].
        recoveredBlock212Step = 359 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal1.
            recoveredBlock212PC := 362.
        ].
        recoveredBlock212Step = 362 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) not.
            recoveredBlock212PC := 363.
        ].
        recoveredBlock212Step = 363 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal6.
            recoveredBlock212PC := 366.
        ].
        recoveredBlock212Step = 366 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal2.
            recoveredBlock212PC := 369.
        ].
        recoveredBlock212Step = 369 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) orExpr: (recoveredBlock212Stack3).
            recoveredBlock212PC := 371.
        ].
        recoveredBlock212Step = 371 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) orExpr: (recoveredBlock212Stack2).
            recoveredBlock212PC := 373.
        ].
        recoveredBlock212Step = 373 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) isIleConstantValueTrue.
            recoveredBlock212PC := 375.
        ].
        recoveredBlock212Step = 375 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 378] ifFalse: [recoveredBlock212PC := 450].
        ].
        recoveredBlock212Step = 378 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal1.
            recoveredBlock212PC := 381.
        ].
        recoveredBlock212Step = 381 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) not.
            recoveredBlock212PC := 382.
        ].
        recoveredBlock212Step = 382 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal3.
            recoveredBlock212PC := 385.
        ].
        recoveredBlock212Step = 385 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal5.
            recoveredBlock212PC := 388.
        ].
        recoveredBlock212Step = 388 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) orExpr: (recoveredBlock212Stack3).
            recoveredBlock212PC := 390.
        ].
        recoveredBlock212Step = 390 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) orExpr: (recoveredBlock212Stack2).
            recoveredBlock212PC := 392.
        ].
        recoveredBlock212Step = 392 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) isIleConstantValueTrue.
            recoveredBlock212PC := 394.
        ].
        recoveredBlock212Step = 394 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 398] ifFalse: [recoveredBlock212PC := 450].
        ].
        recoveredBlock212Step = 398 ifTrue: [
            recoveredBlock212PC := 399.
        ].
        recoveredBlock212Step = 399 ifTrue: [
            recoveredBlock212Stack0 := recoveredLocal1.
            recoveredBlock212PC := 402.
        ].
        recoveredBlock212Step = 402 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal4.
            recoveredBlock212PC := 405.
        ].
        recoveredBlock212Step = 405 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) andExpr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 407.
        ].
        recoveredBlock212Step = 407 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal3.
            recoveredBlock212PC := 410.
        ].
        recoveredBlock212Step = 410 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal2.
            recoveredBlock212PC := 413.
        ].
        recoveredBlock212Step = 413 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) orExpr: (recoveredBlock212Stack2).
            recoveredBlock212PC := 415.
        ].
        recoveredBlock212Step = 415 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) andExpr: (recoveredBlock212Stack1).
            recoveredBlock212PC := 417.
        ].
        recoveredBlock212Step = 417 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack0.
            recoveredBlock212PC := 418.
        ].
        recoveredBlock212Step = 418 ifTrue: [
            recoveredBlock212Stack0 := nil.
            recoveredBlock212PC := 419.
        ].
        recoveredBlock212Step = 419 ifTrue: [
            recoveredBlock212Stack1 := recoveredArg3.
            recoveredBlock212PC := 422.
        ].
        recoveredBlock212Step = 422 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 436] ifFalse: [recoveredBlock212PC := 426].
        ].
        recoveredBlock212Step = 426 ifTrue: [
            recoveredBlock212Stack1 := self.
            recoveredBlock212PC := 427.
        ].
        recoveredBlock212Step = 427 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Local1.
            recoveredBlock212PC := 428.
        ].
        recoveredBlock212Step = 428 ifTrue: [
            recoveredBlock212Stack3 := recoveredArg1.
            recoveredBlock212PC := 431.
        ].
        recoveredBlock212Step = 431 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) hasOnlyObjects: (recoveredBlock212Stack2) from: (recoveredBlock212Stack3).
            recoveredBlock212PC := 433.
        ].
        recoveredBlock212Step = 433 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 436] ifFalse: [recoveredBlock212PC := 448].
        ].
        recoveredBlock212Step = 436 ifTrue: [
            recoveredBlock212PC := 437.
        ].
        recoveredBlock212Step = 437 ifTrue: [
            recoveredBlock212Stack0 := Array.
            recoveredBlock212PC := 439.
        ].
        recoveredBlock212Step = 439 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Local1.
            recoveredBlock212PC := 440.
        ].
        recoveredBlock212Step = 440 ifTrue: [
            recoveredBlock212Stack2 := self.
            recoveredBlock212PC := 441.
        ].
        recoveredBlock212Step = 441 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) ileBuilder.
            recoveredBlock212PC := 443.
        ].
        recoveredBlock212Step = 443 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) literalFalse.
            recoveredBlock212PC := 445.
        ].
        recoveredBlock212Step = 445 ifTrue: [
            recoveredBlock212Stack0 := (recoveredBlock212Stack0) with: (recoveredBlock212Stack1) with: (recoveredBlock212Stack2).
            recoveredBlock212PC := 447.
        ].
        recoveredBlock212Step = 447 ifTrue: [
            ^recoveredBlock212Stack0
        ].
        recoveredBlock212Step = 448 ifTrue: [
            recoveredBlock212Stack1 := nil.
            recoveredBlock212PC := 449.
        ].
        recoveredBlock212Step = 449 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack1.
            recoveredBlock212PC := 450.
        ].
        recoveredBlock212Step = 450 ifTrue: [
            recoveredBlock212Result := recoveredBlock212Stack0.
            recoveredBlock212Done := true.
        ].
    ].
    recoveredBlock212Result
].
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20624d80; bytecode file offset 0xf216b0"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
normalizedAndChain: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
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
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isIleAndExpr.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 45] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal6.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) add: (recoveredBlock23Stack2).
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
            recoveredStack3 := [].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeFirst.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOrExpr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOrExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := [:recoveredBlock127Arg1 :recoveredBlock127Arg2 | 
    | recoveredBlock127Local1 recoveredBlock127Local2 recoveredBlock127Local3 recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127Stack4 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := OrderedCollection.
            recoveredBlock127PC := 136.
        ].
        recoveredBlock127Step = 136 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) new.
            recoveredBlock127PC := 137.
        ].
        recoveredBlock127Step = 137 ifTrue: [
            recoveredBlock127Local3 := recoveredBlock127Stack1.
            recoveredBlock127PC := 140.
        ].
        recoveredBlock127Step = 140 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg1.
            recoveredBlock127PC := 143.
        ].
        recoveredBlock127Step = 143 ifTrue: [
            recoveredBlock127Stack2 := [:recoveredBlock127Block143Arg1 :recoveredBlock127Block143Arg2 | 
    | recoveredBlock127Block143Stack0 recoveredBlock127Block143Stack1 recoveredBlock127Block143Stack2 recoveredBlock127Block143Stack3 recoveredBlock127Block143PC recoveredBlock127Block143Step recoveredBlock127Block143Done recoveredBlock127Block143Result |
    recoveredBlock127Block143Stack0 := nil.
    recoveredBlock127Block143PC := 150.
    recoveredBlock127Block143Done := false.
    [recoveredBlock127Block143Done not] whileTrue: [
        recoveredBlock127Block143Step := recoveredBlock127Block143PC.
        recoveredBlock127Block143Step = 150 ifTrue: [
            recoveredBlock127Block143Stack1 := nil.
            recoveredBlock127Block143PC := 151.
        ].
        recoveredBlock127Block143Step = 151 ifTrue: [
            recoveredBlock127Block143Stack2 := recoveredBlock127Block143Arg1.
            recoveredBlock127Block143PC := 152.
        ].
        recoveredBlock127Block143Step = 152 ifTrue: [
            recoveredBlock127Block143Stack2 := (recoveredBlock127Block143Stack2) isIleAndExpr.
            recoveredBlock127Block143PC := 154.
        ].
        recoveredBlock127Block143Step = 154 ifTrue: [
            (recoveredBlock127Block143Stack2) ifTrue: [recoveredBlock127Block143PC := 165] ifFalse: [recoveredBlock127Block143PC := 158].
        ].
        recoveredBlock127Block143Step = 158 ifTrue: [
            recoveredBlock127Block143PC := 159.
        ].
        recoveredBlock127Block143Step = 159 ifTrue: [
            recoveredBlock127Block143Stack1 := recoveredBlock127Local3.
            recoveredBlock127Block143PC := 162.
        ].
        recoveredBlock127Block143Step = 162 ifTrue: [
            recoveredBlock127Block143Stack2 := recoveredBlock127Block143Arg1.
            recoveredBlock127Block143PC := 163.
        ].
        recoveredBlock127Block143Step = 163 ifTrue: [
            recoveredBlock127Block143Stack1 := (recoveredBlock127Block143Stack1) add: (recoveredBlock127Block143Stack2).
            recoveredBlock127Block143PC := 165.
        ].
        recoveredBlock127Block143Step = 165 ifTrue: [
            recoveredBlock127Block143Result := recoveredBlock127Block143Stack1.
            recoveredBlock127Block143Done := true.
        ].
    ].
    recoveredBlock127Block143Result
].
            recoveredBlock127PC := 166.
        ].
        recoveredBlock127Step = 166 ifTrue: [
            recoveredBlock127Stack3 := [:block2811efc0Arg1 | 
    nil
].
            recoveredBlock127PC := 168.
        ].
        recoveredBlock127Step = 168 ifTrue: [
            recoveredBlock127PC := 174.
        ].
        recoveredBlock127Step = 174 ifTrue: [
            (recoveredBlock127Stack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock127Stack2) onSuccess: (recoveredBlock127Stack3).
            recoveredBlock127PC := 176.
        ].
        recoveredBlock127Step = 176 ifTrue: [
            recoveredBlock127Stack1 := 1.
            recoveredBlock127PC := 178.
        ].
        recoveredBlock127Step = 178 ifTrue: [
            recoveredBlock127Local2 := recoveredBlock127Stack1.
            recoveredBlock127PC := 181.
        ].
        recoveredBlock127Step = 181 ifTrue: [
            recoveredBlock127Stack1 := OrderedCollection.
            recoveredBlock127PC := 183.
        ].
        recoveredBlock127Step = 183 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) new.
            recoveredBlock127PC := 184.
        ].
        recoveredBlock127Step = 184 ifTrue: [
            recoveredLocal2 := recoveredBlock127Stack1.
            recoveredBlock127PC := 187.
        ].
        recoveredBlock127Step = 187 ifTrue: [
            recoveredBlock127PC := 210.
        ].
        recoveredBlock127Step = 190 ifTrue: [
            recoveredBlock127Stack1 := recoveredLocal2.
            recoveredBlock127PC := 193.
        ].
        recoveredBlock127Step = 193 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Local3.
            recoveredBlock127PC := 196.
        ].
        recoveredBlock127Step = 196 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Local2.
            recoveredBlock127PC := 199.
        ].
        recoveredBlock127Step = 199 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) at: (recoveredBlock127Stack3).
            recoveredBlock127PC := 201.
        ].
        recoveredBlock127Step = 201 ifTrue: [
            (recoveredBlock127Stack1) add: (recoveredBlock127Stack2).
            recoveredBlock127PC := 203.
        ].
        recoveredBlock127Step = 203 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Local2.
            recoveredBlock127PC := 206.
        ].
        recoveredBlock127Step = 206 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) + (1).
            recoveredBlock127PC := 207.
        ].
        recoveredBlock127Step = 207 ifTrue: [
            recoveredBlock127Local2 := recoveredBlock127Stack1.
            recoveredBlock127PC := 210.
        ].
        recoveredBlock127Step = 210 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Local2.
            recoveredBlock127PC := 213.
        ].
        recoveredBlock127Step = 213 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Local3.
            recoveredBlock127PC := 216.
        ].
        recoveredBlock127Step = 216 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) size.
            recoveredBlock127PC := 218.
        ].
        recoveredBlock127Step = 218 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) <= (recoveredBlock127Stack2).
            recoveredBlock127PC := 219.
        ].
        recoveredBlock127Step = 219 ifTrue: [
            (recoveredBlock127Stack1) ifTrue: [recoveredBlock127PC := 222] ifFalse: [recoveredBlock127PC := 254].
        ].
        recoveredBlock127Step = 222 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Local2.
            recoveredBlock127PC := 225.
        ].
        recoveredBlock127Step = 225 ifTrue: [
            recoveredBlock127Stack2 := recoveredLocal3.
            recoveredBlock127PC := 228.
        ].
        recoveredBlock127Step = 228 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) size.
            recoveredBlock127PC := 230.
        ].
        recoveredBlock127Step = 230 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) <= (recoveredBlock127Stack2).
            recoveredBlock127PC := 231.
        ].
        recoveredBlock127Step = 231 ifTrue: [
            (recoveredBlock127Stack1) ifTrue: [recoveredBlock127PC := 234] ifFalse: [recoveredBlock127PC := 254].
        ].
        recoveredBlock127Step = 234 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Local3.
            recoveredBlock127PC := 237.
        ].
        recoveredBlock127Step = 237 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Local2.
            recoveredBlock127PC := 240.
        ].
        recoveredBlock127Step = 240 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) at: (recoveredBlock127Stack2).
            recoveredBlock127PC := 242.
        ].
        recoveredBlock127Step = 242 ifTrue: [
            recoveredBlock127Stack2 := recoveredLocal3.
            recoveredBlock127PC := 245.
        ].
        recoveredBlock127Step = 245 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Local2.
            recoveredBlock127PC := 248.
        ].
        recoveredBlock127Step = 248 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) at: (recoveredBlock127Stack3).
            recoveredBlock127PC := 250.
        ].
        recoveredBlock127Step = 250 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) isIleIdentical: (recoveredBlock127Stack2).
            recoveredBlock127PC := 252.
        ].
        recoveredBlock127Step = 252 ifTrue: [
            (recoveredBlock127Stack1) ifTrue: [recoveredBlock127PC := 190] ifFalse: [recoveredBlock127PC := 254].
        ].
        recoveredBlock127Step = 254 ifTrue: [
            recoveredBlock127Stack1 := nil.
            recoveredBlock127PC := 255.
        ].
        recoveredBlock127Step = 255 ifTrue: [
            recoveredBlock127Stack2 := recoveredLocal2.
            recoveredBlock127PC := 258.
        ].
        recoveredBlock127Step = 258 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) notEmpty.
            recoveredBlock127PC := 260.
        ].
        recoveredBlock127Step = 260 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 264] ifFalse: [recoveredBlock127PC := 338].
        ].
        recoveredBlock127Step = 264 ifTrue: [
            recoveredBlock127PC := 265.
        ].
        recoveredBlock127Step = 265 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Local3.
            recoveredBlock127PC := 268.
        ].
        recoveredBlock127Step = 268 ifTrue: [
            recoveredBlock127Stack2 := recoveredLocal2.
            recoveredBlock127PC := 271.
        ].
        recoveredBlock127Step = 271 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) size.
            recoveredBlock127PC := 273.
        ].
        recoveredBlock127Step = 273 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) + (1).
            recoveredBlock127PC := 274.
        ].
        recoveredBlock127Step = 274 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Local3.
            recoveredBlock127PC := 277.
        ].
        recoveredBlock127Step = 277 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) size.
            recoveredBlock127PC := 279.
        ].
        recoveredBlock127Step = 279 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) copyFrom: (recoveredBlock127Stack2) to: (recoveredBlock127Stack3).
            recoveredBlock127PC := 281.
        ].
        recoveredBlock127Step = 281 ifTrue: [
            recoveredBlock127Local3 := recoveredBlock127Stack1.
            recoveredBlock127PC := 284.
        ].
        recoveredBlock127Step = 284 ifTrue: [
            recoveredBlock127Stack1 := recoveredLocal3.
            recoveredBlock127PC := 287.
        ].
        recoveredBlock127Step = 287 ifTrue: [
            recoveredBlock127Stack2 := recoveredLocal2.
            recoveredBlock127PC := 290.
        ].
        recoveredBlock127Step = 290 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) size.
            recoveredBlock127PC := 292.
        ].
        recoveredBlock127Step = 292 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) + (1).
            recoveredBlock127PC := 293.
        ].
        recoveredBlock127Step = 293 ifTrue: [
            recoveredBlock127Stack3 := recoveredLocal3.
            recoveredBlock127PC := 296.
        ].
        recoveredBlock127Step = 296 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) size.
            recoveredBlock127PC := 298.
        ].
        recoveredBlock127Step = 298 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) copyFrom: (recoveredBlock127Stack2) to: (recoveredBlock127Stack3).
            recoveredBlock127PC := 300.
        ].
        recoveredBlock127Step = 300 ifTrue: [
            recoveredLocal3 := recoveredBlock127Stack1.
            recoveredBlock127PC := 303.
        ].
        recoveredBlock127Step = 303 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Local3.
            recoveredBlock127PC := 306.
        ].
        recoveredBlock127Step = 306 ifTrue: [
            recoveredBlock127Stack2 := self.
            recoveredBlock127PC := 307.
        ].
        recoveredBlock127Step = 307 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) ileBuilder.
            recoveredBlock127PC := 309.
        ].
        recoveredBlock127Step = 309 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) literalTrue.
            recoveredBlock127PC := 311.
        ].
        recoveredBlock127Step = 311 ifTrue: [
            recoveredBlock127Stack3 := [:block2811efe4Arg1 :block2811efe4Arg2 | 
    | block2811efe4Value0 block2811efe4Value1 block2811efe4Value2 |
    block2811efe4Value0 := block2811efe4Arg1.
    block2811efe4Value1 := block2811efe4Arg2.
    block2811efe4Value2 := (block2811efe4Value0) andExpr: (block2811efe4Value1).
    block2811efe4Value2
].
            recoveredBlock127PC := 313.
        ].
        recoveredBlock127Step = 313 ifTrue: [
            recoveredBlock127PC := 321.
        ].
        recoveredBlock127Step = 321 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) inject: (recoveredBlock127Stack2) into: (recoveredBlock127Stack3).
            recoveredBlock127PC := 323.
        ].
        recoveredBlock127Step = 323 ifTrue: [
            recoveredBlock127Local1 := recoveredBlock127Stack1.
            recoveredBlock127PC := 326.
        ].
        recoveredBlock127Step = 326 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg2.
            recoveredBlock127PC := 329.
        ].
        recoveredBlock127Step = 329 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Local1.
            recoveredBlock127PC := 332.
        ].
        recoveredBlock127Step = 332 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) value: (recoveredBlock127Stack2).
            recoveredBlock127PC := 334.
        ].
        recoveredBlock127Step = 334 ifTrue: [
            recoveredBlock127Stack2 := nil.
            recoveredBlock127PC := 335.
        ].
        recoveredBlock127Step = 335 ifTrue: [
            recoveredBlock127Local1 := recoveredBlock127Stack2.
            recoveredBlock127PC := 338.
        ].
        recoveredBlock127Step = 338 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := [:recoveredBlock339Arg1 | 
    | recoveredBlock339Value0 recoveredBlock339Value1 |
    recoveredBlock339Value0 := recoveredBlock339Arg1.
    recoveredBlock339Value1 := recoveredBlock339Value0.
    recoveredLocal1 := recoveredBlock339Value1.
    recoveredBlock339Value0
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) composeAnd: (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := (recoveredStack2) composeAnd: (recoveredStack3).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := (recoveredStack2) andExpr: (recoveredStack3).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := (recoveredStack3) composeAnd: (recoveredStack4).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := (recoveredStack2) andExpr: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := [:recoveredBlock395Arg1 :recoveredBlock395Arg2 | 
    | recoveredBlock395Local1 recoveredBlock395Stack0 recoveredBlock395Stack1 recoveredBlock395Stack2 recoveredBlock395Stack3 recoveredBlock395Stack4 recoveredBlock395PC recoveredBlock395Step recoveredBlock395Done recoveredBlock395Result |
    recoveredBlock395Stack0 := self.
    recoveredBlock395PC := 402.
    recoveredBlock395Done := false.
    [recoveredBlock395Done not] whileTrue: [
        recoveredBlock395Step := recoveredBlock395PC.
        recoveredBlock395Step = 402 ifTrue: [
            recoveredBlock395Stack1 := OrderedCollection.
            recoveredBlock395PC := 404.
        ].
        recoveredBlock395Step = 404 ifTrue: [
            recoveredBlock395Stack1 := (recoveredBlock395Stack1) new.
            recoveredBlock395PC := 405.
        ].
        recoveredBlock395Step = 405 ifTrue: [
            recoveredBlock395Local1 := recoveredBlock395Stack1.
            recoveredBlock395PC := 408.
        ].
        recoveredBlock395Step = 408 ifTrue: [
            recoveredBlock395Stack1 := recoveredBlock395Arg1.
            recoveredBlock395PC := 411.
        ].
        recoveredBlock395Step = 411 ifTrue: [
            recoveredBlock395Stack2 := [:recoveredBlock395Block411Arg1 :recoveredBlock395Block411Arg2 | 
    | recoveredBlock395Block411Stack0 recoveredBlock395Block411Stack1 recoveredBlock395Block411Stack2 recoveredBlock395Block411Stack3 recoveredBlock395Block411PC recoveredBlock395Block411Step recoveredBlock395Block411Done recoveredBlock395Block411Result |
    recoveredBlock395Block411Stack0 := nil.
    recoveredBlock395Block411PC := 418.
    recoveredBlock395Block411Done := false.
    [recoveredBlock395Block411Done not] whileTrue: [
        recoveredBlock395Block411Step := recoveredBlock395Block411PC.
        recoveredBlock395Block411Step = 418 ifTrue: [
            recoveredBlock395Block411Stack1 := nil.
            recoveredBlock395Block411PC := 419.
        ].
        recoveredBlock395Block411Step = 419 ifTrue: [
            recoveredBlock395Block411Stack2 := recoveredBlock395Block411Arg1.
            recoveredBlock395Block411PC := 420.
        ].
        recoveredBlock395Block411Step = 420 ifTrue: [
            recoveredBlock395Block411Stack2 := (recoveredBlock395Block411Stack2) isIleAndExpr.
            recoveredBlock395Block411PC := 422.
        ].
        recoveredBlock395Block411Step = 422 ifTrue: [
            (recoveredBlock395Block411Stack2) ifTrue: [recoveredBlock395Block411PC := 433] ifFalse: [recoveredBlock395Block411PC := 426].
        ].
        recoveredBlock395Block411Step = 426 ifTrue: [
            recoveredBlock395Block411PC := 427.
        ].
        recoveredBlock395Block411Step = 427 ifTrue: [
            recoveredBlock395Block411Stack1 := recoveredBlock395Local1.
            recoveredBlock395Block411PC := 430.
        ].
        recoveredBlock395Block411Step = 430 ifTrue: [
            recoveredBlock395Block411Stack2 := recoveredBlock395Block411Arg1.
            recoveredBlock395Block411PC := 431.
        ].
        recoveredBlock395Block411Step = 431 ifTrue: [
            recoveredBlock395Block411Stack1 := (recoveredBlock395Block411Stack1) add: (recoveredBlock395Block411Stack2).
            recoveredBlock395Block411PC := 433.
        ].
        recoveredBlock395Block411Step = 433 ifTrue: [
            recoveredBlock395Block411Result := recoveredBlock395Block411Stack1.
            recoveredBlock395Block411Done := true.
        ].
    ].
    recoveredBlock395Block411Result
].
            recoveredBlock395PC := 434.
        ].
        recoveredBlock395Step = 434 ifTrue: [
            recoveredBlock395Stack3 := [:block2811f008Arg1 | 
    nil
].
            recoveredBlock395PC := 436.
        ].
        recoveredBlock395Step = 436 ifTrue: [
            recoveredBlock395PC := 442.
        ].
        recoveredBlock395Step = 442 ifTrue: [
            (recoveredBlock395Stack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock395Stack2) onSuccess: (recoveredBlock395Stack3).
            recoveredBlock395PC := 444.
        ].
        recoveredBlock395Step = 444 ifTrue: [
            recoveredBlock395Stack1 := nil.
            recoveredBlock395PC := 445.
        ].
        recoveredBlock395Step = 445 ifTrue: [
            recoveredBlock395Stack2 := recoveredBlock395Local1.
            recoveredBlock395PC := 448.
        ].
        recoveredBlock395Step = 448 ifTrue: [
            recoveredBlock395Stack2 := (recoveredBlock395Stack2) size.
            recoveredBlock395PC := 450.
        ].
        recoveredBlock395Step = 450 ifTrue: [
            recoveredBlock395Stack3 := recoveredLocal3.
            recoveredBlock395PC := 453.
        ].
        recoveredBlock395Step = 453 ifTrue: [
            recoveredBlock395Stack3 := (recoveredBlock395Stack3) size.
            recoveredBlock395PC := 455.
        ].
        recoveredBlock395Step = 455 ifTrue: [
            recoveredBlock395Stack2 := (recoveredBlock395Stack2) <= (recoveredBlock395Stack3).
            recoveredBlock395PC := 456.
        ].
        recoveredBlock395Step = 456 ifTrue: [
            (recoveredBlock395Stack2) ifTrue: [recoveredBlock395PC := 460] ifFalse: [recoveredBlock395PC := 506].
        ].
        recoveredBlock395Step = 460 ifTrue: [
            recoveredBlock395PC := 461.
        ].
        recoveredBlock395Step = 461 ifTrue: [
            recoveredBlock395Stack1 := nil.
            recoveredBlock395PC := 462.
        ].
        recoveredBlock395Step = 462 ifTrue: [
            recoveredBlock395Stack2 := recoveredBlock395Local1.
            recoveredBlock395PC := 465.
        ].
        recoveredBlock395Step = 465 ifTrue: [
            recoveredBlock395Stack3 := [:recoveredBlock395Block465Arg1 | 
    | recoveredBlock395Block465Value0 recoveredBlock395Block465Value1 recoveredBlock395Block465Value2 |
    recoveredBlock395Block465Value0 := recoveredLocal3.
    recoveredBlock395Block465Value1 := [:recoveredBlock395Block465Block475Arg1 | 
    | recoveredBlock395Block465Block475Value0 recoveredBlock395Block465Block475Value1 recoveredBlock395Block465Block475Value2 |
    recoveredBlock395Block465Block475Value0 := recoveredBlock395Block465Arg1.
    recoveredBlock395Block465Block475Value1 := recoveredBlock395Block465Block475Arg1.
    recoveredBlock395Block465Block475Value2 := (recoveredBlock395Block465Block475Value0) isIleIdentical: (recoveredBlock395Block465Block475Value1).
    recoveredBlock395Block465Block475Value2
].
    recoveredBlock395Block465Value2 := (recoveredBlock395Block465Value0) anySatisfy: (recoveredBlock395Block465Value1).
    recoveredBlock395Block465Value2
].
            recoveredBlock395PC := 492.
        ].
        recoveredBlock395Step = 492 ifTrue: [
            recoveredBlock395Stack2 := (recoveredBlock395Stack2) allSatisfy: (recoveredBlock395Stack3).
            recoveredBlock395PC := 494.
        ].
        recoveredBlock395Step = 494 ifTrue: [
            (recoveredBlock395Stack2) ifTrue: [recoveredBlock395PC := 498] ifFalse: [recoveredBlock395PC := 506].
        ].
        recoveredBlock395Step = 498 ifTrue: [
            recoveredBlock395PC := 499.
        ].
        recoveredBlock395Step = 499 ifTrue: [
            recoveredBlock395Stack1 := recoveredBlock395Local1.
            recoveredBlock395PC := 502.
        ].
        recoveredBlock395Step = 502 ifTrue: [
            recoveredBlock395Stack2 := recoveredBlock395Stack1.
            recoveredBlock395PC := 503.
        ].
        recoveredBlock395Step = 503 ifTrue: [
            recoveredLocal2 := recoveredBlock395Stack2.
            recoveredBlock395PC := 506.
        ].
        recoveredBlock395Step = 506 ifTrue: [
            recoveredBlock395Result := recoveredBlock395Stack1.
            recoveredBlock395Done := true.
        ].
    ].
    recoveredBlock395Result
].
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack3 := [:recoveredBlock507Arg1 | 
    | recoveredBlock507Value0 recoveredBlock507Value1 |
    recoveredBlock507Value0 := recoveredBlock507Arg1.
    recoveredBlock507Value1 := recoveredBlock507Value0.
    recoveredLocal1 := recoveredBlock507Value1.
    recoveredBlock507Value0
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 565] ifFalse: [recoveredPC := 528].
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := (recoveredStack1) composeAnd: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack3 := [:recoveredBlock537Arg1 :recoveredBlock537Arg2 | 
    | recoveredBlock537Value0 recoveredBlock537Value1 recoveredBlock537Value2 recoveredBlock537Value3 |
    recoveredBlock537Value0 := recoveredBlock537Arg2.
    recoveredBlock537Value1 := (self) ileBuilder.
    recoveredBlock537Value2 := (recoveredBlock537Value1) literalTrue.
    recoveredBlock537Value3 := (recoveredBlock537Value0) value: (recoveredBlock537Value2).
    recoveredBlock537Value3
].
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack4 := [:block2811f02cArg1 | 
    | block2811f02cValue0 |
    block2811f02cValue0 := block2811f02cArg1.
    block2811f02cValue0
].
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileOptExpressionSimplificationLeftAndLeafDo: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20626c10; bytecode file offset 0xf2353c"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
normalizedOrChain: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
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
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isIleOrExpr.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 45] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal6.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) add: (recoveredBlock23Stack2).
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
            recoveredStack3 := [].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeFirst.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAndExpr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := [:recoveredBlock121Arg1 :recoveredBlock121Arg2 | 
    | recoveredBlock121Stack0 recoveredBlock121Stack1 recoveredBlock121Stack2 recoveredBlock121Stack3 recoveredBlock121Stack4 recoveredBlock121PC recoveredBlock121Step recoveredBlock121Done recoveredBlock121Result |
    recoveredBlock121Stack0 := self.
    recoveredBlock121PC := 128.
    recoveredBlock121Done := false.
    [recoveredBlock121Done not] whileTrue: [
        recoveredBlock121Step := recoveredBlock121PC.
        recoveredBlock121Step = 128 ifTrue: [
            recoveredBlock121Stack1 := nil.
            recoveredBlock121PC := 129.
        ].
        recoveredBlock121Step = 129 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 130.
        ].
        recoveredBlock121Step = 130 ifTrue: [
            recoveredBlock121Stack3 := recoveredLocal4.
            recoveredBlock121PC := 133.
        ].
        recoveredBlock121Step = 133 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) ~= (recoveredBlock121Stack3).
            recoveredBlock121PC := 134.
        ].
        recoveredBlock121Step = 134 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 138] ifFalse: [recoveredBlock121PC := 151].
        ].
        recoveredBlock121Step = 138 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 139.
        ].
        recoveredBlock121Step = 139 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) isIleOrExpr.
            recoveredBlock121PC := 141.
        ].
        recoveredBlock121Step = 141 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 151] ifFalse: [recoveredBlock121PC := 144].
        ].
        recoveredBlock121Step = 144 ifTrue: [
            recoveredBlock121PC := 145.
        ].
        recoveredBlock121Step = 145 ifTrue: [
            recoveredBlock121Stack1 := recoveredLocal3.
            recoveredBlock121PC := 148.
        ].
        recoveredBlock121Step = 148 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 149.
        ].
        recoveredBlock121Step = 149 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) add: (recoveredBlock121Stack2).
            recoveredBlock121PC := 151.
        ].
        recoveredBlock121Step = 151 ifTrue: [
            recoveredBlock121Result := recoveredBlock121Stack1.
            recoveredBlock121Done := true.
        ].
    ].
    recoveredBlock121Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := [:recoveredBlock159Arg1 :recoveredBlock159Arg2 | 
    | recoveredBlock159Local1 recoveredBlock159Local2 recoveredBlock159Local3 recoveredBlock159Stack0 recoveredBlock159Stack1 recoveredBlock159Stack2 recoveredBlock159Stack3 recoveredBlock159Stack4 recoveredBlock159PC recoveredBlock159Step recoveredBlock159Done recoveredBlock159Result |
    recoveredBlock159Stack0 := self.
    recoveredBlock159PC := 166.
    recoveredBlock159Done := false.
    [recoveredBlock159Done not] whileTrue: [
        recoveredBlock159Step := recoveredBlock159PC.
        recoveredBlock159Step = 166 ifTrue: [
            recoveredBlock159Stack1 := OrderedCollection.
            recoveredBlock159PC := 168.
        ].
        recoveredBlock159Step = 168 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) new.
            recoveredBlock159PC := 169.
        ].
        recoveredBlock159Step = 169 ifTrue: [
            recoveredBlock159Local3 := recoveredBlock159Stack1.
            recoveredBlock159PC := 172.
        ].
        recoveredBlock159Step = 172 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Arg1.
            recoveredBlock159PC := 175.
        ].
        recoveredBlock159Step = 175 ifTrue: [
            recoveredBlock159Stack2 := [:recoveredBlock159Block175Arg1 :recoveredBlock159Block175Arg2 | 
    | recoveredBlock159Block175Stack0 recoveredBlock159Block175Stack1 recoveredBlock159Block175Stack2 recoveredBlock159Block175Stack3 recoveredBlock159Block175PC recoveredBlock159Block175Step recoveredBlock159Block175Done recoveredBlock159Block175Result |
    recoveredBlock159Block175Stack0 := nil.
    recoveredBlock159Block175PC := 182.
    recoveredBlock159Block175Done := false.
    [recoveredBlock159Block175Done not] whileTrue: [
        recoveredBlock159Block175Step := recoveredBlock159Block175PC.
        recoveredBlock159Block175Step = 182 ifTrue: [
            recoveredBlock159Block175Stack1 := nil.
            recoveredBlock159Block175PC := 183.
        ].
        recoveredBlock159Block175Step = 183 ifTrue: [
            recoveredBlock159Block175Stack2 := recoveredBlock159Block175Arg1.
            recoveredBlock159Block175PC := 184.
        ].
        recoveredBlock159Block175Step = 184 ifTrue: [
            recoveredBlock159Block175Stack2 := (recoveredBlock159Block175Stack2) isIleOrExpr.
            recoveredBlock159Block175PC := 186.
        ].
        recoveredBlock159Block175Step = 186 ifTrue: [
            (recoveredBlock159Block175Stack2) ifTrue: [recoveredBlock159Block175PC := 197] ifFalse: [recoveredBlock159Block175PC := 190].
        ].
        recoveredBlock159Block175Step = 190 ifTrue: [
            recoveredBlock159Block175PC := 191.
        ].
        recoveredBlock159Block175Step = 191 ifTrue: [
            recoveredBlock159Block175Stack1 := recoveredBlock159Local3.
            recoveredBlock159Block175PC := 194.
        ].
        recoveredBlock159Block175Step = 194 ifTrue: [
            recoveredBlock159Block175Stack2 := recoveredBlock159Block175Arg1.
            recoveredBlock159Block175PC := 195.
        ].
        recoveredBlock159Block175Step = 195 ifTrue: [
            recoveredBlock159Block175Stack1 := (recoveredBlock159Block175Stack1) add: (recoveredBlock159Block175Stack2).
            recoveredBlock159Block175PC := 197.
        ].
        recoveredBlock159Block175Step = 197 ifTrue: [
            recoveredBlock159Block175Result := recoveredBlock159Block175Stack1.
            recoveredBlock159Block175Done := true.
        ].
    ].
    recoveredBlock159Block175Result
].
            recoveredBlock159PC := 198.
        ].
        recoveredBlock159Step = 198 ifTrue: [
            recoveredBlock159Stack3 := [:block2811f1dcArg1 | 
    nil
].
            recoveredBlock159PC := 200.
        ].
        recoveredBlock159Step = 200 ifTrue: [
            recoveredBlock159PC := 206.
        ].
        recoveredBlock159Step = 206 ifTrue: [
            (recoveredBlock159Stack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredBlock159Stack2) onSuccess: (recoveredBlock159Stack3).
            recoveredBlock159PC := 208.
        ].
        recoveredBlock159Step = 208 ifTrue: [
            recoveredBlock159Stack1 := 1.
            recoveredBlock159PC := 210.
        ].
        recoveredBlock159Step = 210 ifTrue: [
            recoveredBlock159Local2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 213.
        ].
        recoveredBlock159Step = 213 ifTrue: [
            recoveredBlock159Stack1 := OrderedCollection.
            recoveredBlock159PC := 215.
        ].
        recoveredBlock159Step = 215 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) new.
            recoveredBlock159PC := 216.
        ].
        recoveredBlock159Step = 216 ifTrue: [
            recoveredLocal2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 219.
        ].
        recoveredBlock159Step = 219 ifTrue: [
            recoveredBlock159PC := 242.
        ].
        recoveredBlock159Step = 222 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal2.
            recoveredBlock159PC := 225.
        ].
        recoveredBlock159Step = 225 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local3.
            recoveredBlock159PC := 228.
        ].
        recoveredBlock159Step = 228 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Local2.
            recoveredBlock159PC := 231.
        ].
        recoveredBlock159Step = 231 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) at: (recoveredBlock159Stack3).
            recoveredBlock159PC := 233.
        ].
        recoveredBlock159Step = 233 ifTrue: [
            (recoveredBlock159Stack1) add: (recoveredBlock159Stack2).
            recoveredBlock159PC := 235.
        ].
        recoveredBlock159Step = 235 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Local2.
            recoveredBlock159PC := 238.
        ].
        recoveredBlock159Step = 238 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) + (1).
            recoveredBlock159PC := 239.
        ].
        recoveredBlock159Step = 239 ifTrue: [
            recoveredBlock159Local2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 242.
        ].
        recoveredBlock159Step = 242 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Local2.
            recoveredBlock159PC := 245.
        ].
        recoveredBlock159Step = 245 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local3.
            recoveredBlock159PC := 248.
        ].
        recoveredBlock159Step = 248 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) size.
            recoveredBlock159PC := 250.
        ].
        recoveredBlock159Step = 250 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) <= (recoveredBlock159Stack2).
            recoveredBlock159PC := 251.
        ].
        recoveredBlock159Step = 251 ifTrue: [
            (recoveredBlock159Stack1) ifTrue: [recoveredBlock159PC := 254] ifFalse: [recoveredBlock159PC := 286].
        ].
        recoveredBlock159Step = 254 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Local2.
            recoveredBlock159PC := 257.
        ].
        recoveredBlock159Step = 257 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal3.
            recoveredBlock159PC := 260.
        ].
        recoveredBlock159Step = 260 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) size.
            recoveredBlock159PC := 262.
        ].
        recoveredBlock159Step = 262 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) <= (recoveredBlock159Stack2).
            recoveredBlock159PC := 263.
        ].
        recoveredBlock159Step = 263 ifTrue: [
            (recoveredBlock159Stack1) ifTrue: [recoveredBlock159PC := 266] ifFalse: [recoveredBlock159PC := 286].
        ].
        recoveredBlock159Step = 266 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Local3.
            recoveredBlock159PC := 269.
        ].
        recoveredBlock159Step = 269 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local2.
            recoveredBlock159PC := 272.
        ].
        recoveredBlock159Step = 272 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) at: (recoveredBlock159Stack2).
            recoveredBlock159PC := 274.
        ].
        recoveredBlock159Step = 274 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal3.
            recoveredBlock159PC := 277.
        ].
        recoveredBlock159Step = 277 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Local2.
            recoveredBlock159PC := 280.
        ].
        recoveredBlock159Step = 280 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) at: (recoveredBlock159Stack3).
            recoveredBlock159PC := 282.
        ].
        recoveredBlock159Step = 282 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) isIleIdentical: (recoveredBlock159Stack2).
            recoveredBlock159PC := 284.
        ].
        recoveredBlock159Step = 284 ifTrue: [
            (recoveredBlock159Stack1) ifTrue: [recoveredBlock159PC := 222] ifFalse: [recoveredBlock159PC := 286].
        ].
        recoveredBlock159Step = 286 ifTrue: [
            recoveredBlock159Stack1 := nil.
            recoveredBlock159PC := 287.
        ].
        recoveredBlock159Step = 287 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal2.
            recoveredBlock159PC := 290.
        ].
        recoveredBlock159Step = 290 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) notEmpty.
            recoveredBlock159PC := 292.
        ].
        recoveredBlock159Step = 292 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 296] ifFalse: [recoveredBlock159PC := 370].
        ].
        recoveredBlock159Step = 296 ifTrue: [
            recoveredBlock159PC := 297.
        ].
        recoveredBlock159Step = 297 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Local3.
            recoveredBlock159PC := 300.
        ].
        recoveredBlock159Step = 300 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal2.
            recoveredBlock159PC := 303.
        ].
        recoveredBlock159Step = 303 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) size.
            recoveredBlock159PC := 305.
        ].
        recoveredBlock159Step = 305 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) + (1).
            recoveredBlock159PC := 306.
        ].
        recoveredBlock159Step = 306 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Local3.
            recoveredBlock159PC := 309.
        ].
        recoveredBlock159Step = 309 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) size.
            recoveredBlock159PC := 311.
        ].
        recoveredBlock159Step = 311 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) copyFrom: (recoveredBlock159Stack2) to: (recoveredBlock159Stack3).
            recoveredBlock159PC := 313.
        ].
        recoveredBlock159Step = 313 ifTrue: [
            recoveredBlock159Local3 := recoveredBlock159Stack1.
            recoveredBlock159PC := 316.
        ].
        recoveredBlock159Step = 316 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal3.
            recoveredBlock159PC := 319.
        ].
        recoveredBlock159Step = 319 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal2.
            recoveredBlock159PC := 322.
        ].
        recoveredBlock159Step = 322 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) size.
            recoveredBlock159PC := 324.
        ].
        recoveredBlock159Step = 324 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) + (1).
            recoveredBlock159PC := 325.
        ].
        recoveredBlock159Step = 325 ifTrue: [
            recoveredBlock159Stack3 := recoveredLocal3.
            recoveredBlock159PC := 328.
        ].
        recoveredBlock159Step = 328 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) size.
            recoveredBlock159PC := 330.
        ].
        recoveredBlock159Step = 330 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) copyFrom: (recoveredBlock159Stack2) to: (recoveredBlock159Stack3).
            recoveredBlock159PC := 332.
        ].
        recoveredBlock159Step = 332 ifTrue: [
            recoveredLocal3 := recoveredBlock159Stack1.
            recoveredBlock159PC := 335.
        ].
        recoveredBlock159Step = 335 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Local3.
            recoveredBlock159PC := 338.
        ].
        recoveredBlock159Step = 338 ifTrue: [
            recoveredBlock159Stack2 := self.
            recoveredBlock159PC := 339.
        ].
        recoveredBlock159Step = 339 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) ileBuilder.
            recoveredBlock159PC := 341.
        ].
        recoveredBlock159Step = 341 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) literalFalse.
            recoveredBlock159PC := 343.
        ].
        recoveredBlock159Step = 343 ifTrue: [
            recoveredBlock159Stack3 := [:block2811f200Arg1 :block2811f200Arg2 | 
    | block2811f200Value0 block2811f200Value1 block2811f200Value2 |
    block2811f200Value0 := block2811f200Arg1.
    block2811f200Value1 := block2811f200Arg2.
    block2811f200Value2 := (block2811f200Value0) orExpr: (block2811f200Value1).
    block2811f200Value2
].
            recoveredBlock159PC := 345.
        ].
        recoveredBlock159Step = 345 ifTrue: [
            recoveredBlock159PC := 353.
        ].
        recoveredBlock159Step = 353 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) inject: (recoveredBlock159Stack2) into: (recoveredBlock159Stack3).
            recoveredBlock159PC := 355.
        ].
        recoveredBlock159Step = 355 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack1.
            recoveredBlock159PC := 358.
        ].
        recoveredBlock159Step = 358 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Arg2.
            recoveredBlock159PC := 361.
        ].
        recoveredBlock159Step = 361 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local1.
            recoveredBlock159PC := 364.
        ].
        recoveredBlock159Step = 364 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) value: (recoveredBlock159Stack2).
            recoveredBlock159PC := 366.
        ].
        recoveredBlock159Step = 366 ifTrue: [
            recoveredBlock159Stack2 := nil.
            recoveredBlock159PC := 367.
        ].
        recoveredBlock159Step = 367 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 370.
        ].
        recoveredBlock159Step = 370 ifTrue: [
            recoveredBlock159Result := recoveredBlock159Stack1.
            recoveredBlock159Done := true.
        ].
    ].
    recoveredBlock159Result
].
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := [:recoveredBlock371Arg1 | 
    | recoveredBlock371Value0 recoveredBlock371Value1 |
    recoveredBlock371Value0 := recoveredBlock371Arg1.
    recoveredBlock371Value1 := recoveredBlock371Value0.
    recoveredLocal1 := recoveredBlock371Value1.
    recoveredBlock371Value0
].
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationLeftAndLeafDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 392].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) composeOr: (recoveredStack2).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := (recoveredStack2) composeOr: (recoveredStack3).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := (recoveredStack2) orExpr: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := (recoveredStack3) composeOr: (recoveredStack4).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := (recoveredStack2) orExpr: (recoveredStack3).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := [:recoveredBlock427Arg1 :recoveredBlock427Arg2 | 
    | recoveredBlock427Local1 recoveredBlock427Stack0 recoveredBlock427Stack1 recoveredBlock427Stack2 recoveredBlock427Stack3 recoveredBlock427Stack4 recoveredBlock427PC recoveredBlock427Step recoveredBlock427Done recoveredBlock427Result |
    recoveredBlock427Stack0 := self.
    recoveredBlock427PC := 434.
    recoveredBlock427Done := false.
    [recoveredBlock427Done not] whileTrue: [
        recoveredBlock427Step := recoveredBlock427PC.
        recoveredBlock427Step = 434 ifTrue: [
            recoveredBlock427Stack1 := OrderedCollection.
            recoveredBlock427PC := 436.
        ].
        recoveredBlock427Step = 436 ifTrue: [
            recoveredBlock427Stack1 := (recoveredBlock427Stack1) new.
            recoveredBlock427PC := 437.
        ].
        recoveredBlock427Step = 437 ifTrue: [
            recoveredBlock427Local1 := recoveredBlock427Stack1.
            recoveredBlock427PC := 440.
        ].
        recoveredBlock427Step = 440 ifTrue: [
            recoveredBlock427Stack1 := recoveredBlock427Arg1.
            recoveredBlock427PC := 443.
        ].
        recoveredBlock427Step = 443 ifTrue: [
            recoveredBlock427Stack2 := [:recoveredBlock427Block443Arg1 :recoveredBlock427Block443Arg2 | 
    | recoveredBlock427Block443Stack0 recoveredBlock427Block443Stack1 recoveredBlock427Block443Stack2 recoveredBlock427Block443Stack3 recoveredBlock427Block443PC recoveredBlock427Block443Step recoveredBlock427Block443Done recoveredBlock427Block443Result |
    recoveredBlock427Block443Stack0 := nil.
    recoveredBlock427Block443PC := 450.
    recoveredBlock427Block443Done := false.
    [recoveredBlock427Block443Done not] whileTrue: [
        recoveredBlock427Block443Step := recoveredBlock427Block443PC.
        recoveredBlock427Block443Step = 450 ifTrue: [
            recoveredBlock427Block443Stack1 := nil.
            recoveredBlock427Block443PC := 451.
        ].
        recoveredBlock427Block443Step = 451 ifTrue: [
            recoveredBlock427Block443Stack2 := recoveredBlock427Block443Arg1.
            recoveredBlock427Block443PC := 452.
        ].
        recoveredBlock427Block443Step = 452 ifTrue: [
            recoveredBlock427Block443Stack2 := (recoveredBlock427Block443Stack2) isIleOrExpr.
            recoveredBlock427Block443PC := 454.
        ].
        recoveredBlock427Block443Step = 454 ifTrue: [
            (recoveredBlock427Block443Stack2) ifTrue: [recoveredBlock427Block443PC := 465] ifFalse: [recoveredBlock427Block443PC := 458].
        ].
        recoveredBlock427Block443Step = 458 ifTrue: [
            recoveredBlock427Block443PC := 459.
        ].
        recoveredBlock427Block443Step = 459 ifTrue: [
            recoveredBlock427Block443Stack1 := recoveredBlock427Local1.
            recoveredBlock427Block443PC := 462.
        ].
        recoveredBlock427Block443Step = 462 ifTrue: [
            recoveredBlock427Block443Stack2 := recoveredBlock427Block443Arg1.
            recoveredBlock427Block443PC := 463.
        ].
        recoveredBlock427Block443Step = 463 ifTrue: [
            recoveredBlock427Block443Stack1 := (recoveredBlock427Block443Stack1) add: (recoveredBlock427Block443Stack2).
            recoveredBlock427Block443PC := 465.
        ].
        recoveredBlock427Block443Step = 465 ifTrue: [
            recoveredBlock427Block443Result := recoveredBlock427Block443Stack1.
            recoveredBlock427Block443Done := true.
        ].
    ].
    recoveredBlock427Block443Result
].
            recoveredBlock427PC := 466.
        ].
        recoveredBlock427Step = 466 ifTrue: [
            recoveredBlock427Stack3 := [:block2811f224Arg1 | 
    nil
].
            recoveredBlock427PC := 468.
        ].
        recoveredBlock427Step = 468 ifTrue: [
            recoveredBlock427PC := 474.
        ].
        recoveredBlock427Step = 474 ifTrue: [
            (recoveredBlock427Stack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredBlock427Stack2) onSuccess: (recoveredBlock427Stack3).
            recoveredBlock427PC := 476.
        ].
        recoveredBlock427Step = 476 ifTrue: [
            recoveredBlock427Stack1 := nil.
            recoveredBlock427PC := 477.
        ].
        recoveredBlock427Step = 477 ifTrue: [
            recoveredBlock427Stack2 := recoveredBlock427Local1.
            recoveredBlock427PC := 480.
        ].
        recoveredBlock427Step = 480 ifTrue: [
            recoveredBlock427Stack2 := (recoveredBlock427Stack2) size.
            recoveredBlock427PC := 482.
        ].
        recoveredBlock427Step = 482 ifTrue: [
            recoveredBlock427Stack3 := recoveredLocal3.
            recoveredBlock427PC := 485.
        ].
        recoveredBlock427Step = 485 ifTrue: [
            recoveredBlock427Stack3 := (recoveredBlock427Stack3) size.
            recoveredBlock427PC := 487.
        ].
        recoveredBlock427Step = 487 ifTrue: [
            recoveredBlock427Stack2 := (recoveredBlock427Stack2) <= (recoveredBlock427Stack3).
            recoveredBlock427PC := 488.
        ].
        recoveredBlock427Step = 488 ifTrue: [
            (recoveredBlock427Stack2) ifTrue: [recoveredBlock427PC := 492] ifFalse: [recoveredBlock427PC := 538].
        ].
        recoveredBlock427Step = 492 ifTrue: [
            recoveredBlock427PC := 493.
        ].
        recoveredBlock427Step = 493 ifTrue: [
            recoveredBlock427Stack1 := nil.
            recoveredBlock427PC := 494.
        ].
        recoveredBlock427Step = 494 ifTrue: [
            recoveredBlock427Stack2 := recoveredBlock427Local1.
            recoveredBlock427PC := 497.
        ].
        recoveredBlock427Step = 497 ifTrue: [
            recoveredBlock427Stack3 := [:recoveredBlock427Block497Arg1 | 
    | recoveredBlock427Block497Value0 recoveredBlock427Block497Value1 recoveredBlock427Block497Value2 |
    recoveredBlock427Block497Value0 := recoveredLocal3.
    recoveredBlock427Block497Value1 := [:recoveredBlock427Block497Block507Arg1 | 
    | recoveredBlock427Block497Block507Value0 recoveredBlock427Block497Block507Value1 recoveredBlock427Block497Block507Value2 |
    recoveredBlock427Block497Block507Value0 := recoveredBlock427Block497Arg1.
    recoveredBlock427Block497Block507Value1 := recoveredBlock427Block497Block507Arg1.
    recoveredBlock427Block497Block507Value2 := (recoveredBlock427Block497Block507Value0) isIleIdentical: (recoveredBlock427Block497Block507Value1).
    recoveredBlock427Block497Block507Value2
].
    recoveredBlock427Block497Value2 := (recoveredBlock427Block497Value0) anySatisfy: (recoveredBlock427Block497Value1).
    recoveredBlock427Block497Value2
].
            recoveredBlock427PC := 524.
        ].
        recoveredBlock427Step = 524 ifTrue: [
            recoveredBlock427Stack2 := (recoveredBlock427Stack2) allSatisfy: (recoveredBlock427Stack3).
            recoveredBlock427PC := 526.
        ].
        recoveredBlock427Step = 526 ifTrue: [
            (recoveredBlock427Stack2) ifTrue: [recoveredBlock427PC := 530] ifFalse: [recoveredBlock427PC := 538].
        ].
        recoveredBlock427Step = 530 ifTrue: [
            recoveredBlock427PC := 531.
        ].
        recoveredBlock427Step = 531 ifTrue: [
            recoveredBlock427Stack1 := recoveredBlock427Local1.
            recoveredBlock427PC := 534.
        ].
        recoveredBlock427Step = 534 ifTrue: [
            recoveredBlock427Stack2 := recoveredBlock427Stack1.
            recoveredBlock427PC := 535.
        ].
        recoveredBlock427Step = 535 ifTrue: [
            recoveredLocal2 := recoveredBlock427Stack2.
            recoveredBlock427PC := 538.
        ].
        recoveredBlock427Step = 538 ifTrue: [
            recoveredBlock427Result := recoveredBlock427Stack1.
            recoveredBlock427Done := true.
        ].
    ].
    recoveredBlock427Result
].
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack3 := [:recoveredBlock539Arg1 | 
    | recoveredBlock539Value0 recoveredBlock539Value1 |
    recoveredBlock539Value0 := recoveredBlock539Arg1.
    recoveredBlock539Value1 := recoveredBlock539Value0.
    recoveredLocal1 := recoveredBlock539Value1.
    recoveredBlock539Value0
].
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 575] ifFalse: [recoveredPC := 560].
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) composeOr: (recoveredStack2).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack2 := (recoveredStack2) composeOr: (recoveredStack3).
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20647798; bytecode file offset 0xf440bc"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
andExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 :recoveredBlock60Arg2 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack3 := recoveredLocal4.
            recoveredBlock60PC := 71.
        ].
        recoveredBlock60Step = 71 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) isIleIdentical: (recoveredBlock60Stack3).
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 76] ifFalse: [recoveredBlock60PC := 82].
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack1 := recoveredArg1.
            recoveredBlock60PC := 80.
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) leftExpr.
            recoveredBlock60PC := 81.
        ].
        recoveredBlock60Step = 81 ifTrue: [
            ^recoveredBlock60Stack1
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) normalizedAndChain: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) normalizedAndChain2: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:recoveredBlock125Arg1 :recoveredBlock125Arg2 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 |
    recoveredBlock125Value0 := recoveredArg1.
    recoveredBlock125Value1 := (recoveredBlock125Value0) leftExpr.
    recoveredBlock125Value2 := [:recoveredBlock125Block136Arg1 :recoveredBlock125Block136Arg2 | 
    | recoveredBlock125Block136Stack0 recoveredBlock125Block136Stack1 recoveredBlock125Block136Stack2 recoveredBlock125Block136Stack3 recoveredBlock125Block136PC recoveredBlock125Block136Step recoveredBlock125Block136Done recoveredBlock125Block136Result |
    recoveredBlock125Block136Stack0 := nil.
    recoveredBlock125Block136PC := 142.
    recoveredBlock125Block136Done := false.
    [recoveredBlock125Block136Done not] whileTrue: [
        recoveredBlock125Block136Step := recoveredBlock125Block136PC.
        recoveredBlock125Block136Step = 142 ifTrue: [
            recoveredBlock125Block136Stack1 := recoveredBlock125Arg1.
            recoveredBlock125Block136PC := 145.
        ].
        recoveredBlock125Block136Step = 145 ifTrue: [
            recoveredBlock125Block136Stack2 := recoveredBlock125Block136Arg1.
            recoveredBlock125Block136PC := 146.
        ].
        recoveredBlock125Block136Step = 146 ifTrue: [
            recoveredBlock125Block136Stack1 := (recoveredBlock125Block136Stack1) isIleIdentical: (recoveredBlock125Block136Stack2).
            recoveredBlock125Block136PC := 148.
        ].
        recoveredBlock125Block136Step = 148 ifTrue: [
            (recoveredBlock125Block136Stack1) ifTrue: [recoveredBlock125Block136PC := 152] ifFalse: [recoveredBlock125Block136PC := 160].
        ].
        recoveredBlock125Block136Step = 152 ifTrue: [
            recoveredBlock125Block136Stack1 := recoveredBlock125Block136Arg2.
            recoveredBlock125Block136PC := 153.
        ].
        recoveredBlock125Block136Step = 153 ifTrue: [
            recoveredBlock125Block136Stack2 := recoveredBlock125Block136Arg1.
            recoveredBlock125Block136PC := 154.
        ].
        recoveredBlock125Block136Step = 154 ifTrue: [
            recoveredBlock125Block136Stack1 := (recoveredBlock125Block136Stack1) value: (recoveredBlock125Block136Stack2).
            recoveredBlock125Block136PC := 156.
        ].
        recoveredBlock125Block136Step = 156 ifTrue: [
            recoveredBlock125Block136PC := 161.
        ].
        recoveredBlock125Block136Step = 160 ifTrue: [
            recoveredBlock125Block136Stack1 := nil.
            recoveredBlock125Block136PC := 161.
        ].
        recoveredBlock125Block136Step = 161 ifTrue: [
            recoveredBlock125Block136Result := recoveredBlock125Block136Stack1.
            recoveredBlock125Block136Done := true.
        ].
    ].
    recoveredBlock125Block136Result
].
    recoveredBlock125Value3 := [:recoveredBlock125Block162Arg1 | 
    | recoveredBlock125Block162Value0 recoveredBlock125Block162Value1 recoveredBlock125Block162Value2 recoveredBlock125Block162Value3 recoveredBlock125Block162Value4 |
    recoveredBlock125Block162Value0 := recoveredBlock125Block162Arg1.
    recoveredLocal5 := recoveredBlock125Block162Value0.
    recoveredBlock125Block162Value1 := recoveredBlock125Arg2.
    recoveredBlock125Block162Value2 := (self) ileBuilder.
    recoveredBlock125Block162Value3 := (recoveredBlock125Block162Value2) literalTrue.
    recoveredBlock125Block162Value4 := (recoveredBlock125Block162Value1) value: (recoveredBlock125Block162Value3).
    recoveredBlock125Block162Value4
].
    recoveredBlock125Value4 := (recoveredBlock125Value1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock125Value2) onSuccess: (recoveredBlock125Value3).
    recoveredBlock125Value4
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := [:block28122410Arg1 | 
    | block28122410Value0 |
    block28122410Value0 := block28122410Arg1.
    block28122410Value0
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := [:recoveredBlock220Arg1 :recoveredBlock220Arg2 | 
    | recoveredBlock220Stack0 recoveredBlock220Stack1 recoveredBlock220Stack2 recoveredBlock220Stack3 recoveredBlock220Stack4 recoveredBlock220PC recoveredBlock220Step recoveredBlock220Done recoveredBlock220Result |
    recoveredBlock220Stack0 := self.
    recoveredBlock220PC := 226.
    recoveredBlock220Done := false.
    [recoveredBlock220Done not] whileTrue: [
        recoveredBlock220Step := recoveredBlock220PC.
        recoveredBlock220Step = 226 ifTrue: [
            recoveredBlock220Stack1 := nil.
            recoveredBlock220PC := 227.
        ].
        recoveredBlock220Step = 227 ifTrue: [
            recoveredBlock220Stack2 := recoveredBlock220Arg1.
            recoveredBlock220PC := 230.
        ].
        recoveredBlock220Step = 230 ifTrue: [
            recoveredBlock220Stack2 := (recoveredBlock220Stack2) isIleLogicalComplementable.
            recoveredBlock220PC := 232.
        ].
        recoveredBlock220Step = 232 ifTrue: [
            (recoveredBlock220Stack2) ifTrue: [recoveredBlock220PC := 236] ifFalse: [recoveredBlock220PC := 283].
        ].
        recoveredBlock220Step = 236 ifTrue: [
            recoveredBlock220PC := 237.
        ].
        recoveredBlock220Step = 237 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Arg1.
            recoveredBlock220PC := 240.
        ].
        recoveredBlock220Step = 240 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) ileLogicalComplement.
            recoveredBlock220PC := 242.
        ].
        recoveredBlock220Step = 242 ifTrue: [
            recoveredBlock220Stack2 := [:recoveredBlock220Block242Arg1 :recoveredBlock220Block242Arg2 | 
    | recoveredBlock220Block242Stack0 recoveredBlock220Block242Stack1 recoveredBlock220Block242Stack2 recoveredBlock220Block242Stack3 recoveredBlock220Block242PC recoveredBlock220Block242Step recoveredBlock220Block242Done recoveredBlock220Block242Result |
    recoveredBlock220Block242Stack0 := nil.
    recoveredBlock220Block242PC := 248.
    recoveredBlock220Block242Done := false.
    [recoveredBlock220Block242Done not] whileTrue: [
        recoveredBlock220Block242Step := recoveredBlock220Block242PC.
        recoveredBlock220Block242Step = 248 ifTrue: [
            recoveredBlock220Block242Stack1 := recoveredBlock220Block242Arg1.
            recoveredBlock220Block242PC := 249.
        ].
        recoveredBlock220Block242Step = 249 ifTrue: [
            recoveredBlock220Block242Stack2 := recoveredLocal4.
            recoveredBlock220Block242PC := 252.
        ].
        recoveredBlock220Block242Step = 252 ifTrue: [
            recoveredBlock220Block242Stack1 := (recoveredBlock220Block242Stack1) isIleIdentical: (recoveredBlock220Block242Stack2).
            recoveredBlock220Block242PC := 254.
        ].
        recoveredBlock220Block242Step = 254 ifTrue: [
            (recoveredBlock220Block242Stack1) ifTrue: [recoveredBlock220Block242PC := 258] ifFalse: [recoveredBlock220Block242PC := 266].
        ].
        recoveredBlock220Block242Step = 258 ifTrue: [
            recoveredBlock220Block242Stack1 := recoveredBlock220Block242Arg2.
            recoveredBlock220Block242PC := 259.
        ].
        recoveredBlock220Block242Step = 259 ifTrue: [
            recoveredBlock220Block242Stack2 := recoveredBlock220Block242Arg1.
            recoveredBlock220Block242PC := 260.
        ].
        recoveredBlock220Block242Step = 260 ifTrue: [
            recoveredBlock220Block242Stack1 := (recoveredBlock220Block242Stack1) value: (recoveredBlock220Block242Stack2).
            recoveredBlock220Block242PC := 262.
        ].
        recoveredBlock220Block242Step = 262 ifTrue: [
            recoveredBlock220Block242PC := 267.
        ].
        recoveredBlock220Block242Step = 266 ifTrue: [
            recoveredBlock220Block242Stack1 := nil.
            recoveredBlock220Block242PC := 267.
        ].
        recoveredBlock220Block242Step = 267 ifTrue: [
            recoveredBlock220Block242Result := recoveredBlock220Block242Stack1.
            recoveredBlock220Block242Done := true.
        ].
    ].
    recoveredBlock220Block242Result
].
            recoveredBlock220PC := 268.
        ].
        recoveredBlock220Step = 268 ifTrue: [
            recoveredBlock220Stack3 := [:recoveredBlock220Block268Arg1 | 
    | recoveredBlock220Block268Value0 recoveredBlock220Block268Value1 recoveredBlock220Block268Value2 |
    recoveredBlock220Block268Value0 := recoveredBlock220Arg2.
    recoveredBlock220Block268Value1 := recoveredBlock220Block268Arg1.
    recoveredBlock220Block268Value2 := (recoveredBlock220Block268Value0) value: (recoveredBlock220Block268Value1).
    recoveredBlock220Block268Value2
].
            recoveredBlock220PC := 281.
        ].
        recoveredBlock220Step = 281 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredBlock220Stack2) onSuccess: (recoveredBlock220Stack3).
            recoveredBlock220PC := 283.
        ].
        recoveredBlock220Step = 283 ifTrue: [
            recoveredBlock220Result := recoveredBlock220Stack1.
            recoveredBlock220Done := true.
        ].
    ].
    recoveredBlock220Result
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [:recoveredBlock284Arg1 | 
    | recoveredBlock284Value0 recoveredBlock284Value1 recoveredBlock284Value2 |
    recoveredBlock284Value0 := (self) ileBuilder.
    recoveredBlock284Value1 := (recoveredBlock284Value0) literalFalse.
    recoveredBlock284Value2 := recoveredBlock284Value1.
    recoveredLocal5 := recoveredBlock284Value2.
    recoveredBlock284Value1
].
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleLogicalComplementable.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileLogicalComplement.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := [:recoveredBlock335Arg1 :recoveredBlock335Arg2 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 |
    recoveredBlock335Value0 := recoveredArg1.
    recoveredBlock335Value1 := (recoveredBlock335Value0) leftExpr.
    recoveredBlock335Value2 := [:recoveredBlock335Block346Arg1 :recoveredBlock335Block346Arg2 | 
    | recoveredBlock335Block346Stack0 recoveredBlock335Block346Stack1 recoveredBlock335Block346Stack2 recoveredBlock335Block346Stack3 recoveredBlock335Block346PC recoveredBlock335Block346Step recoveredBlock335Block346Done recoveredBlock335Block346Result |
    recoveredBlock335Block346Stack0 := nil.
    recoveredBlock335Block346PC := 352.
    recoveredBlock335Block346Done := false.
    [recoveredBlock335Block346Done not] whileTrue: [
        recoveredBlock335Block346Step := recoveredBlock335Block346PC.
        recoveredBlock335Block346Step = 352 ifTrue: [
            recoveredBlock335Block346Stack1 := recoveredBlock335Arg1.
            recoveredBlock335Block346PC := 355.
        ].
        recoveredBlock335Block346Step = 355 ifTrue: [
            recoveredBlock335Block346Stack2 := recoveredBlock335Block346Arg1.
            recoveredBlock335Block346PC := 356.
        ].
        recoveredBlock335Block346Step = 356 ifTrue: [
            recoveredBlock335Block346Stack1 := (recoveredBlock335Block346Stack1) isIleIdentical: (recoveredBlock335Block346Stack2).
            recoveredBlock335Block346PC := 358.
        ].
        recoveredBlock335Block346Step = 358 ifTrue: [
            (recoveredBlock335Block346Stack1) ifTrue: [recoveredBlock335Block346PC := 362] ifFalse: [recoveredBlock335Block346PC := 370].
        ].
        recoveredBlock335Block346Step = 362 ifTrue: [
            recoveredBlock335Block346Stack1 := recoveredBlock335Block346Arg2.
            recoveredBlock335Block346PC := 363.
        ].
        recoveredBlock335Block346Step = 363 ifTrue: [
            recoveredBlock335Block346Stack2 := recoveredBlock335Block346Arg1.
            recoveredBlock335Block346PC := 364.
        ].
        recoveredBlock335Block346Step = 364 ifTrue: [
            recoveredBlock335Block346Stack1 := (recoveredBlock335Block346Stack1) value: (recoveredBlock335Block346Stack2).
            recoveredBlock335Block346PC := 366.
        ].
        recoveredBlock335Block346Step = 366 ifTrue: [
            recoveredBlock335Block346PC := 371.
        ].
        recoveredBlock335Block346Step = 370 ifTrue: [
            recoveredBlock335Block346Stack1 := nil.
            recoveredBlock335Block346PC := 371.
        ].
        recoveredBlock335Block346Step = 371 ifTrue: [
            recoveredBlock335Block346Result := recoveredBlock335Block346Stack1.
            recoveredBlock335Block346Done := true.
        ].
    ].
    recoveredBlock335Block346Result
].
    recoveredBlock335Value3 := [:recoveredBlock335Block372Arg1 | 
    | recoveredBlock335Block372Value0 recoveredBlock335Block372Value1 recoveredBlock335Block372Value2 recoveredBlock335Block372Value3 recoveredBlock335Block372Value4 |
    recoveredBlock335Block372Value0 := (self) ileBuilder.
    recoveredBlock335Block372Value1 := (recoveredBlock335Block372Value0) literalFalse.
    recoveredLocal5 := recoveredBlock335Block372Value1.
    recoveredBlock335Block372Value2 := recoveredBlock335Arg2.
    recoveredBlock335Block372Value3 := recoveredBlock335Block372Arg1.
    recoveredBlock335Block372Value4 := (recoveredBlock335Block372Value2) value: (recoveredBlock335Block372Value3).
    recoveredBlock335Block372Value4
].
    recoveredBlock335Value4 := (recoveredBlock335Value1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock335Value2) onSuccess: (recoveredBlock335Value3).
    recoveredBlock335Value4
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := [:block28122434Arg1 | 
    | block28122434Value0 |
    block28122434Value0 := block28122434Arg1.
    block28122434Value0
].
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleOrExpr.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 570].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 570].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := [:recoveredBlock436Arg1 :recoveredBlock436Arg2 | 
    | recoveredBlock436Value0 recoveredBlock436Value1 recoveredBlock436Value2 recoveredBlock436Value3 |
    recoveredBlock436Value0 := recoveredBlock436Arg1.
    recoveredBlock436Value1 := [:recoveredBlock436Block445Arg1 :recoveredBlock436Block445Arg2 | 
    | recoveredBlock436Block445Value0 recoveredBlock436Block445Value1 recoveredBlock436Block445Value2 recoveredBlock436Block445Value3 |
    recoveredBlock436Block445Value0 := recoveredLocal4.
    recoveredBlock436Block445Value1 := [:recoveredBlock436Block445Block455Arg1 :recoveredBlock436Block445Block455Arg2 | 
    | recoveredBlock436Block445Block455Stack0 recoveredBlock436Block445Block455Stack1 recoveredBlock436Block445Block455Stack2 recoveredBlock436Block445Block455Stack3 recoveredBlock436Block445Block455Stack4 recoveredBlock436Block445Block455PC recoveredBlock436Block445Block455Step recoveredBlock436Block445Block455Done recoveredBlock436Block445Block455Result |
    recoveredBlock436Block445Block455Stack0 := self.
    recoveredBlock436Block445Block455PC := 462.
    recoveredBlock436Block445Block455Done := false.
    [recoveredBlock436Block445Block455Done not] whileTrue: [
        recoveredBlock436Block445Block455Step := recoveredBlock436Block445Block455PC.
        recoveredBlock436Block445Block455Step = 462 ifTrue: [
            recoveredBlock436Block445Block455Stack1 := nil.
            recoveredBlock436Block445Block455PC := 463.
        ].
        recoveredBlock436Block445Block455Step = 463 ifTrue: [
            recoveredBlock436Block445Block455Stack2 := recoveredBlock436Block445Arg1.
            recoveredBlock436Block445Block455PC := 466.
        ].
        recoveredBlock436Block445Block455Step = 466 ifTrue: [
            recoveredBlock436Block445Block455Stack3 := recoveredBlock436Block445Block455Arg1.
            recoveredBlock436Block445Block455PC := 467.
        ].
        recoveredBlock436Block445Block455Step = 467 ifTrue: [
            recoveredBlock436Block445Block455Stack2 := (recoveredBlock436Block445Block455Stack2) isIleIdentical: (recoveredBlock436Block445Block455Stack3).
            recoveredBlock436Block445Block455PC := 469.
        ].
        recoveredBlock436Block445Block455Step = 469 ifTrue: [
            (recoveredBlock436Block445Block455Stack2) ifTrue: [recoveredBlock436Block445Block455PC := 472] ifFalse: [recoveredBlock436Block445Block455PC := 487].
        ].
        recoveredBlock436Block445Block455Step = 472 ifTrue: [
            recoveredBlock436Block445Block455PC := 473.
        ].
        recoveredBlock436Block445Block455Step = 473 ifTrue: [
            recoveredBlock436Block445Block455Stack1 := recoveredBlock436Block445Arg1.
            recoveredBlock436Block445Block455PC := 476.
        ].
        recoveredBlock436Block445Block455Step = 476 ifTrue: [
            recoveredLocal2 := recoveredBlock436Block445Block455Stack1.
            recoveredBlock436Block445Block455PC := 479.
        ].
        recoveredBlock436Block445Block455Step = 479 ifTrue: [
            recoveredBlock436Block445Block455Stack1 := recoveredBlock436Block445Block455Arg2.
            recoveredBlock436Block445Block455PC := 480.
        ].
        recoveredBlock436Block445Block455Step = 480 ifTrue: [
            recoveredBlock436Block445Block455Stack2 := self.
            recoveredBlock436Block445Block455PC := 481.
        ].
        recoveredBlock436Block445Block455Step = 481 ifTrue: [
            recoveredBlock436Block445Block455Stack2 := (recoveredBlock436Block445Block455Stack2) ileBuilder.
            recoveredBlock436Block445Block455PC := 483.
        ].
        recoveredBlock436Block445Block455Step = 483 ifTrue: [
            recoveredBlock436Block445Block455Stack2 := (recoveredBlock436Block445Block455Stack2) literalFalse.
            recoveredBlock436Block445Block455PC := 485.
        ].
        recoveredBlock436Block445Block455Step = 485 ifTrue: [
            recoveredBlock436Block445Block455Stack1 := (recoveredBlock436Block445Block455Stack1) value: (recoveredBlock436Block445Block455Stack2).
            recoveredBlock436Block445Block455PC := 487.
        ].
        recoveredBlock436Block445Block455Step = 487 ifTrue: [
            recoveredBlock436Block445Block455Result := recoveredBlock436Block445Block455Stack1.
            recoveredBlock436Block445Block455Done := true.
        ].
    ].
    recoveredBlock436Block445Block455Result
].
    recoveredBlock436Block445Value2 := [:recoveredBlock436Block445Block488Arg1 | 
    | recoveredBlock436Block445Block488Value0 recoveredBlock436Block445Block488Value1 recoveredBlock436Block445Block488Value2 recoveredBlock436Block445Block488Value3 recoveredBlock436Block445Block488Value4 |
    recoveredBlock436Block445Block488Value0 := recoveredBlock436Block445Block488Arg1.
    recoveredLocal1 := recoveredBlock436Block445Block488Value0.
    recoveredBlock436Block445Block488Value1 := recoveredBlock436Block445Arg2.
    recoveredBlock436Block445Block488Value2 := (self) ileBuilder.
    recoveredBlock436Block445Block488Value3 := (recoveredBlock436Block445Block488Value2) literalFalse.
    recoveredBlock436Block445Block488Value4 := (recoveredBlock436Block445Block488Value1) value: (recoveredBlock436Block445Block488Value3).
    recoveredBlock436Block445Block488Value4
].
    recoveredBlock436Block445Value3 := (recoveredBlock436Block445Value0) ileOptExpressionSimplificationLeftOrLeafDo: (recoveredBlock436Block445Value1) onSuccess: (recoveredBlock436Block445Value2).
    recoveredBlock436Block445Value3
].
    recoveredBlock436Value2 := [:recoveredBlock436Block512Arg1 | 
    | recoveredBlock436Block512Value0 recoveredBlock436Block512Value1 recoveredBlock436Block512Value2 recoveredBlock436Block512Value3 recoveredBlock436Block512Value4 recoveredBlock436Block512Value5 recoveredBlock436Block512Value6 |
    recoveredBlock436Block512Value0 := recoveredBlock436Arg2.
    recoveredBlock436Block512Value1 := recoveredLocal2.
    recoveredBlock436Block512Value2 := recoveredBlock436Block512Arg1.
    recoveredBlock436Block512Value3 := recoveredLocal1.
    recoveredBlock436Block512Value4 := (recoveredBlock436Block512Value2) andExpr: (recoveredBlock436Block512Value3).
    recoveredBlock436Block512Value5 := (recoveredBlock436Block512Value1) orExpr: (recoveredBlock436Block512Value4).
    recoveredBlock436Block512Value6 := (recoveredBlock436Block512Value0) value: (recoveredBlock436Block512Value5).
    recoveredBlock436Block512Value6
].
    recoveredBlock436Value3 := (recoveredBlock436Value0) ileOptExpressionSimplificationLeftOrLeafDo: (recoveredBlock436Value1) onSuccess: (recoveredBlock436Value2).
    recoveredBlock436Value3
].
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := [:recoveredBlock538Arg1 | 
    | recoveredBlock538Value0 recoveredBlock538Value1 |
    recoveredBlock538Value0 := recoveredBlock538Arg1.
    recoveredBlock538Value1 := recoveredBlock538Value0.
    recoveredLocal5 := recoveredBlock538Value1.
    recoveredBlock538Value0
].
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationRightAndLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 562] ifFalse: [recoveredPC := 558].
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleOrExpr.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 578] ifFalse: [recoveredPC := 690].
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 588] ifFalse: [recoveredPC := 690].
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := [:recoveredBlock592Arg1 :recoveredBlock592Arg2 | 
    | recoveredBlock592Value0 recoveredBlock592Value1 recoveredBlock592Value2 recoveredBlock592Value3 |
    recoveredBlock592Value0 := recoveredBlock592Arg1.
    recoveredBlock592Value1 := [:recoveredBlock592Block601Arg1 :recoveredBlock592Block601Arg2 | 
    | recoveredBlock592Block601Stack0 recoveredBlock592Block601Stack1 recoveredBlock592Block601Stack2 recoveredBlock592Block601Stack3 recoveredBlock592Block601Stack4 recoveredBlock592Block601PC recoveredBlock592Block601Step recoveredBlock592Block601Done recoveredBlock592Block601Result |
    recoveredBlock592Block601Stack0 := self.
    recoveredBlock592Block601PC := 608.
    recoveredBlock592Block601Done := false.
    [recoveredBlock592Block601Done not] whileTrue: [
        recoveredBlock592Block601Step := recoveredBlock592Block601PC.
        recoveredBlock592Block601Step = 608 ifTrue: [
            recoveredBlock592Block601Stack1 := nil.
            recoveredBlock592Block601PC := 609.
        ].
        recoveredBlock592Block601Step = 609 ifTrue: [
            recoveredBlock592Block601Stack2 := recoveredBlock592Block601Arg1.
            recoveredBlock592Block601PC := 610.
        ].
        recoveredBlock592Block601Step = 610 ifTrue: [
            recoveredBlock592Block601Stack3 := recoveredLocal4.
            recoveredBlock592Block601PC := 613.
        ].
        recoveredBlock592Block601Step = 613 ifTrue: [
            recoveredBlock592Block601Stack3 := (recoveredBlock592Block601Stack3) rightExpr.
            recoveredBlock592Block601PC := 614.
        ].
        recoveredBlock592Block601Step = 614 ifTrue: [
            recoveredBlock592Block601Stack2 := (recoveredBlock592Block601Stack2) isIleIdentical: (recoveredBlock592Block601Stack3).
            recoveredBlock592Block601PC := 616.
        ].
        recoveredBlock592Block601Step = 616 ifTrue: [
            (recoveredBlock592Block601Stack2) ifTrue: [recoveredBlock592Block601PC := 620] ifFalse: [recoveredBlock592Block601PC := 633].
        ].
        recoveredBlock592Block601Step = 620 ifTrue: [
            recoveredBlock592Block601PC := 621.
        ].
        recoveredBlock592Block601Step = 621 ifTrue: [
            recoveredBlock592Block601Stack1 := recoveredBlock592Block601Arg1.
            recoveredBlock592Block601PC := 622.
        ].
        recoveredBlock592Block601Step = 622 ifTrue: [
            recoveredLocal2 := recoveredBlock592Block601Stack1.
            recoveredBlock592Block601PC := 625.
        ].
        recoveredBlock592Block601Step = 625 ifTrue: [
            recoveredBlock592Block601Stack1 := recoveredBlock592Block601Arg2.
            recoveredBlock592Block601PC := 626.
        ].
        recoveredBlock592Block601Step = 626 ifTrue: [
            recoveredBlock592Block601Stack2 := self.
            recoveredBlock592Block601PC := 627.
        ].
        recoveredBlock592Block601Step = 627 ifTrue: [
            recoveredBlock592Block601Stack2 := (recoveredBlock592Block601Stack2) ileBuilder.
            recoveredBlock592Block601PC := 629.
        ].
        recoveredBlock592Block601Step = 629 ifTrue: [
            recoveredBlock592Block601Stack2 := (recoveredBlock592Block601Stack2) literalFalse.
            recoveredBlock592Block601PC := 631.
        ].
        recoveredBlock592Block601Step = 631 ifTrue: [
            recoveredBlock592Block601Stack1 := (recoveredBlock592Block601Stack1) value: (recoveredBlock592Block601Stack2).
            recoveredBlock592Block601PC := 633.
        ].
        recoveredBlock592Block601Step = 633 ifTrue: [
            recoveredBlock592Block601Result := recoveredBlock592Block601Stack1.
            recoveredBlock592Block601Done := true.
        ].
    ].
    recoveredBlock592Block601Result
].
    recoveredBlock592Value2 := [:recoveredBlock592Block634Arg1 | 
    | recoveredBlock592Block634Value0 recoveredBlock592Block634Value1 recoveredBlock592Block634Value2 recoveredBlock592Block634Value3 recoveredBlock592Block634Value4 recoveredBlock592Block634Value5 recoveredBlock592Block634Value6 recoveredBlock592Block634Value7 |
    recoveredBlock592Block634Value0 := recoveredBlock592Arg2.
    recoveredBlock592Block634Value1 := recoveredBlock592Block634Arg1.
    recoveredBlock592Block634Value2 := recoveredLocal4.
    recoveredBlock592Block634Value3 := (recoveredBlock592Block634Value2) leftExpr.
    recoveredBlock592Block634Value4 := (recoveredBlock592Block634Value1) andExpr: (recoveredBlock592Block634Value3).
    recoveredBlock592Block634Value5 := recoveredLocal2.
    recoveredBlock592Block634Value6 := (recoveredBlock592Block634Value4) orExpr: (recoveredBlock592Block634Value5).
    recoveredBlock592Block634Value7 := (recoveredBlock592Block634Value0) value: (recoveredBlock592Block634Value6).
    recoveredBlock592Block634Value7
].
    recoveredBlock592Value3 := (recoveredBlock592Value0) ileOptExpressionSimplificationRightOrLeafDo: (recoveredBlock592Value1) onSuccess: (recoveredBlock592Value2).
    recoveredBlock592Value3
].
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack2 := [:recoveredBlock661Arg1 | 
    | recoveredBlock661Value0 recoveredBlock661Value1 |
    recoveredBlock661Value0 := recoveredBlock661Arg1.
    recoveredBlock661Value1 := recoveredBlock661Value0.
    recoveredLocal5 := recoveredBlock661Value1.
    recoveredBlock661Value0
].
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationRightAndLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 686] ifFalse: [recoveredPC := 682].
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack0 := SGIlReplaceSystemConstantNoTempVarTransformation.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalTrue.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack0 := (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 734] ifFalse: [recoveredPC := 724].
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack0 := (recoveredStack0) andExpr: (recoveredStack1).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20662794; bytecode file offset 0xf5f0b8"
!SGIlExpressionSimplificationBoolean methodsFor: 'recovered'!
orExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 :recoveredBlock60Arg2 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack3 := recoveredLocal4.
            recoveredBlock60PC := 71.
        ].
        recoveredBlock60Step = 71 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) isIleIdentical: (recoveredBlock60Stack3).
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 76] ifFalse: [recoveredBlock60PC := 82].
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack1 := recoveredArg1.
            recoveredBlock60PC := 80.
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) leftExpr.
            recoveredBlock60PC := 81.
        ].
        recoveredBlock60Step = 81 ifTrue: [
            ^recoveredBlock60Stack1
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOrExpr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAndExpr.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) normalizedOrChain: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) normalizedOrChain2: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := [:recoveredBlock173Arg1 :recoveredBlock173Arg2 | 
    | recoveredBlock173Value0 recoveredBlock173Value1 recoveredBlock173Value2 recoveredBlock173Value3 recoveredBlock173Value4 |
    recoveredBlock173Value0 := recoveredArg1.
    recoveredBlock173Value1 := (recoveredBlock173Value0) leftExpr.
    recoveredBlock173Value2 := [:recoveredBlock173Block184Arg1 :recoveredBlock173Block184Arg2 | 
    | recoveredBlock173Block184Stack0 recoveredBlock173Block184Stack1 recoveredBlock173Block184Stack2 recoveredBlock173Block184Stack3 recoveredBlock173Block184PC recoveredBlock173Block184Step recoveredBlock173Block184Done recoveredBlock173Block184Result |
    recoveredBlock173Block184Stack0 := nil.
    recoveredBlock173Block184PC := 190.
    recoveredBlock173Block184Done := false.
    [recoveredBlock173Block184Done not] whileTrue: [
        recoveredBlock173Block184Step := recoveredBlock173Block184PC.
        recoveredBlock173Block184Step = 190 ifTrue: [
            recoveredBlock173Block184Stack1 := recoveredBlock173Block184Arg1.
            recoveredBlock173Block184PC := 191.
        ].
        recoveredBlock173Block184Step = 191 ifTrue: [
            recoveredBlock173Block184Stack2 := recoveredBlock173Arg1.
            recoveredBlock173Block184PC := 194.
        ].
        recoveredBlock173Block184Step = 194 ifTrue: [
            recoveredBlock173Block184Stack1 := (recoveredBlock173Block184Stack1) isIleIdentical: (recoveredBlock173Block184Stack2).
            recoveredBlock173Block184PC := 196.
        ].
        recoveredBlock173Block184Step = 196 ifTrue: [
            (recoveredBlock173Block184Stack1) ifTrue: [recoveredBlock173Block184PC := 200] ifFalse: [recoveredBlock173Block184PC := 208].
        ].
        recoveredBlock173Block184Step = 200 ifTrue: [
            recoveredBlock173Block184Stack1 := recoveredBlock173Block184Arg2.
            recoveredBlock173Block184PC := 201.
        ].
        recoveredBlock173Block184Step = 201 ifTrue: [
            recoveredBlock173Block184Stack2 := recoveredBlock173Block184Arg1.
            recoveredBlock173Block184PC := 202.
        ].
        recoveredBlock173Block184Step = 202 ifTrue: [
            recoveredBlock173Block184Stack1 := (recoveredBlock173Block184Stack1) value: (recoveredBlock173Block184Stack2).
            recoveredBlock173Block184PC := 204.
        ].
        recoveredBlock173Block184Step = 204 ifTrue: [
            recoveredBlock173Block184PC := 209.
        ].
        recoveredBlock173Block184Step = 208 ifTrue: [
            recoveredBlock173Block184Stack1 := nil.
            recoveredBlock173Block184PC := 209.
        ].
        recoveredBlock173Block184Step = 209 ifTrue: [
            recoveredBlock173Block184Result := recoveredBlock173Block184Stack1.
            recoveredBlock173Block184Done := true.
        ].
    ].
    recoveredBlock173Block184Result
].
    recoveredBlock173Value3 := [:recoveredBlock173Block210Arg1 | 
    | recoveredBlock173Block210Value0 recoveredBlock173Block210Value1 recoveredBlock173Block210Value2 recoveredBlock173Block210Value3 recoveredBlock173Block210Value4 |
    recoveredBlock173Block210Value0 := recoveredBlock173Block210Arg1.
    recoveredLocal5 := recoveredBlock173Block210Value0.
    recoveredBlock173Block210Value1 := recoveredBlock173Arg2.
    recoveredBlock173Block210Value2 := (self) ileBuilder.
    recoveredBlock173Block210Value3 := (recoveredBlock173Block210Value2) literalFalse.
    recoveredBlock173Block210Value4 := (recoveredBlock173Block210Value1) value: (recoveredBlock173Block210Value3).
    recoveredBlock173Block210Value4
].
    recoveredBlock173Value4 := (recoveredBlock173Value1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredBlock173Value2) onSuccess: (recoveredBlock173Value3).
    recoveredBlock173Value4
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:block281252e4Arg1 | 
    | block281252e4Value0 |
    block281252e4Value0 := block281252e4Arg1.
    block281252e4Value0
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := [:recoveredBlock268Arg1 :recoveredBlock268Arg2 | 
    | recoveredBlock268Stack0 recoveredBlock268Stack1 recoveredBlock268Stack2 recoveredBlock268Stack3 recoveredBlock268Stack4 recoveredBlock268PC recoveredBlock268Step recoveredBlock268Done recoveredBlock268Result |
    recoveredBlock268Stack0 := self.
    recoveredBlock268PC := 274.
    recoveredBlock268Done := false.
    [recoveredBlock268Done not] whileTrue: [
        recoveredBlock268Step := recoveredBlock268PC.
        recoveredBlock268Step = 274 ifTrue: [
            recoveredBlock268Stack1 := nil.
            recoveredBlock268PC := 275.
        ].
        recoveredBlock268Step = 275 ifTrue: [
            recoveredBlock268Stack2 := recoveredBlock268Arg1.
            recoveredBlock268PC := 278.
        ].
        recoveredBlock268Step = 278 ifTrue: [
            recoveredBlock268Stack2 := (recoveredBlock268Stack2) isIleNotExpr.
            recoveredBlock268PC := 280.
        ].
        recoveredBlock268Step = 280 ifTrue: [
            (recoveredBlock268Stack2) ifTrue: [recoveredBlock268PC := 284] ifFalse: [recoveredBlock268PC := 331].
        ].
        recoveredBlock268Step = 284 ifTrue: [
            recoveredBlock268PC := 285.
        ].
        recoveredBlock268Step = 285 ifTrue: [
            recoveredBlock268Stack1 := recoveredBlock268Arg1.
            recoveredBlock268PC := 288.
        ].
        recoveredBlock268Step = 288 ifTrue: [
            recoveredBlock268Stack1 := (recoveredBlock268Stack1) leftExpr.
            recoveredBlock268PC := 289.
        ].
        recoveredBlock268Step = 289 ifTrue: [
            recoveredBlock268Stack2 := [:recoveredBlock268Block289Arg1 :recoveredBlock268Block289Arg2 | 
    | recoveredBlock268Block289Stack0 recoveredBlock268Block289Stack1 recoveredBlock268Block289Stack2 recoveredBlock268Block289Stack3 recoveredBlock268Block289PC recoveredBlock268Block289Step recoveredBlock268Block289Done recoveredBlock268Block289Result |
    recoveredBlock268Block289Stack0 := nil.
    recoveredBlock268Block289PC := 296.
    recoveredBlock268Block289Done := false.
    [recoveredBlock268Block289Done not] whileTrue: [
        recoveredBlock268Block289Step := recoveredBlock268Block289PC.
        recoveredBlock268Block289Step = 296 ifTrue: [
            recoveredBlock268Block289Stack1 := recoveredBlock268Block289Arg1.
            recoveredBlock268Block289PC := 297.
        ].
        recoveredBlock268Block289Step = 297 ifTrue: [
            recoveredBlock268Block289Stack2 := recoveredLocal4.
            recoveredBlock268Block289PC := 300.
        ].
        recoveredBlock268Block289Step = 300 ifTrue: [
            recoveredBlock268Block289Stack1 := (recoveredBlock268Block289Stack1) isIleIdentical: (recoveredBlock268Block289Stack2).
            recoveredBlock268Block289PC := 302.
        ].
        recoveredBlock268Block289Step = 302 ifTrue: [
            (recoveredBlock268Block289Stack1) ifTrue: [recoveredBlock268Block289PC := 306] ifFalse: [recoveredBlock268Block289PC := 314].
        ].
        recoveredBlock268Block289Step = 306 ifTrue: [
            recoveredBlock268Block289Stack1 := recoveredBlock268Block289Arg2.
            recoveredBlock268Block289PC := 307.
        ].
        recoveredBlock268Block289Step = 307 ifTrue: [
            recoveredBlock268Block289Stack2 := recoveredBlock268Block289Arg1.
            recoveredBlock268Block289PC := 308.
        ].
        recoveredBlock268Block289Step = 308 ifTrue: [
            recoveredBlock268Block289Stack1 := (recoveredBlock268Block289Stack1) value: (recoveredBlock268Block289Stack2).
            recoveredBlock268Block289PC := 310.
        ].
        recoveredBlock268Block289Step = 310 ifTrue: [
            recoveredBlock268Block289PC := 315.
        ].
        recoveredBlock268Block289Step = 314 ifTrue: [
            recoveredBlock268Block289Stack1 := nil.
            recoveredBlock268Block289PC := 315.
        ].
        recoveredBlock268Block289Step = 315 ifTrue: [
            recoveredBlock268Block289Result := recoveredBlock268Block289Stack1.
            recoveredBlock268Block289Done := true.
        ].
    ].
    recoveredBlock268Block289Result
].
            recoveredBlock268PC := 316.
        ].
        recoveredBlock268Step = 316 ifTrue: [
            recoveredBlock268Stack3 := [:recoveredBlock268Block316Arg1 | 
    | recoveredBlock268Block316Value0 recoveredBlock268Block316Value1 recoveredBlock268Block316Value2 |
    recoveredBlock268Block316Value0 := recoveredBlock268Arg2.
    recoveredBlock268Block316Value1 := recoveredBlock268Block316Arg1.
    recoveredBlock268Block316Value2 := (recoveredBlock268Block316Value0) value: (recoveredBlock268Block316Value1).
    recoveredBlock268Block316Value2
].
            recoveredBlock268PC := 329.
        ].
        recoveredBlock268Step = 329 ifTrue: [
            recoveredBlock268Stack1 := (recoveredBlock268Stack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock268Stack2) onSuccess: (recoveredBlock268Stack3).
            recoveredBlock268PC := 331.
        ].
        recoveredBlock268Step = 331 ifTrue: [
            recoveredBlock268Result := recoveredBlock268Stack1.
            recoveredBlock268Done := true.
        ].
    ].
    recoveredBlock268Result
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := [:recoveredBlock332Arg1 | 
    | recoveredBlock332Value0 recoveredBlock332Value1 recoveredBlock332Value2 |
    recoveredBlock332Value0 := (self) ileBuilder.
    recoveredBlock332Value1 := (recoveredBlock332Value0) literalTrue.
    recoveredBlock332Value2 := recoveredBlock332Value1.
    recoveredLocal5 := recoveredBlock332Value2.
    recoveredBlock332Value1
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 462].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNotExpr.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 462].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := [:recoveredBlock382Arg1 :recoveredBlock382Arg2 | 
    | recoveredBlock382Value0 recoveredBlock382Value1 recoveredBlock382Value2 recoveredBlock382Value3 recoveredBlock382Value4 |
    recoveredBlock382Value0 := recoveredArg1.
    recoveredBlock382Value1 := (recoveredBlock382Value0) leftExpr.
    recoveredBlock382Value2 := [:recoveredBlock382Block392Arg1 :recoveredBlock382Block392Arg2 | 
    | recoveredBlock382Block392Stack0 recoveredBlock382Block392Stack1 recoveredBlock382Block392Stack2 recoveredBlock382Block392Stack3 recoveredBlock382Block392PC recoveredBlock382Block392Step recoveredBlock382Block392Done recoveredBlock382Block392Result |
    recoveredBlock382Block392Stack0 := nil.
    recoveredBlock382Block392PC := 398.
    recoveredBlock382Block392Done := false.
    [recoveredBlock382Block392Done not] whileTrue: [
        recoveredBlock382Block392Step := recoveredBlock382Block392PC.
        recoveredBlock382Block392Step = 398 ifTrue: [
            recoveredBlock382Block392Stack1 := recoveredBlock382Block392Arg1.
            recoveredBlock382Block392PC := 399.
        ].
        recoveredBlock382Block392Step = 399 ifTrue: [
            recoveredBlock382Block392Stack2 := recoveredBlock382Arg1.
            recoveredBlock382Block392PC := 402.
        ].
        recoveredBlock382Block392Step = 402 ifTrue: [
            recoveredBlock382Block392Stack1 := (recoveredBlock382Block392Stack1) isIleIdentical: (recoveredBlock382Block392Stack2).
            recoveredBlock382Block392PC := 404.
        ].
        recoveredBlock382Block392Step = 404 ifTrue: [
            (recoveredBlock382Block392Stack1) ifTrue: [recoveredBlock382Block392PC := 408] ifFalse: [recoveredBlock382Block392PC := 418].
        ].
        recoveredBlock382Block392Step = 408 ifTrue: [
            recoveredBlock382Block392Stack1 := recoveredBlock382Block392Arg2.
            recoveredBlock382Block392PC := 409.
        ].
        recoveredBlock382Block392Step = 409 ifTrue: [
            recoveredBlock382Block392Stack2 := recoveredBlock382Arg1.
            recoveredBlock382Block392PC := 412.
        ].
        recoveredBlock382Block392Step = 412 ifTrue: [
            recoveredBlock382Block392Stack1 := (recoveredBlock382Block392Stack1) value: (recoveredBlock382Block392Stack2).
            recoveredBlock382Block392PC := 414.
        ].
        recoveredBlock382Block392Step = 414 ifTrue: [
            recoveredBlock382Block392PC := 419.
        ].
        recoveredBlock382Block392Step = 418 ifTrue: [
            recoveredBlock382Block392Stack1 := nil.
            recoveredBlock382Block392PC := 419.
        ].
        recoveredBlock382Block392Step = 419 ifTrue: [
            recoveredBlock382Block392Result := recoveredBlock382Block392Stack1.
            recoveredBlock382Block392Done := true.
        ].
    ].
    recoveredBlock382Block392Result
].
    recoveredBlock382Value3 := [:recoveredBlock382Block420Arg1 | 
    | recoveredBlock382Block420Value0 recoveredBlock382Block420Value1 recoveredBlock382Block420Value2 recoveredBlock382Block420Value3 recoveredBlock382Block420Value4 |
    recoveredBlock382Block420Value0 := (self) ileBuilder.
    recoveredBlock382Block420Value1 := (recoveredBlock382Block420Value0) literalTrue.
    recoveredLocal5 := recoveredBlock382Block420Value1.
    recoveredBlock382Block420Value2 := recoveredBlock382Arg2.
    recoveredBlock382Block420Value3 := recoveredBlock382Block420Arg1.
    recoveredBlock382Block420Value4 := (recoveredBlock382Block420Value2) value: (recoveredBlock382Block420Value3).
    recoveredBlock382Block420Value4
].
    recoveredBlock382Value4 := (recoveredBlock382Value1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredBlock382Value2) onSuccess: (recoveredBlock382Value3).
    recoveredBlock382Value4
].
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := [:block28125308Arg1 | 
    | block28125308Value0 |
    block28125308Value0 := block28125308Arg1.
    block28125308Value0
].
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 462] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 576].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := [:recoveredBlock476Arg1 :recoveredBlock476Arg2 | 
    | recoveredBlock476Value0 recoveredBlock476Value1 recoveredBlock476Value2 recoveredBlock476Value3 |
    recoveredBlock476Value0 := recoveredBlock476Arg1.
    recoveredBlock476Value1 := [:recoveredBlock476Block485Arg1 :recoveredBlock476Block485Arg2 | 
    | recoveredBlock476Block485Stack0 recoveredBlock476Block485Stack1 recoveredBlock476Block485Stack2 recoveredBlock476Block485Stack3 recoveredBlock476Block485PC recoveredBlock476Block485Step recoveredBlock476Block485Done recoveredBlock476Block485Result |
    recoveredBlock476Block485Stack0 := self.
    recoveredBlock476Block485PC := 492.
    recoveredBlock476Block485Done := false.
    [recoveredBlock476Block485Done not] whileTrue: [
        recoveredBlock476Block485Step := recoveredBlock476Block485PC.
        recoveredBlock476Block485Step = 492 ifTrue: [
            recoveredBlock476Block485Stack1 := recoveredBlock476Block485Arg1.
            recoveredBlock476Block485PC := 493.
        ].
        recoveredBlock476Block485Step = 493 ifTrue: [
            recoveredBlock476Block485Stack2 := recoveredArg1.
            recoveredBlock476Block485PC := 496.
        ].
        recoveredBlock476Block485Step = 496 ifTrue: [
            recoveredBlock476Block485Stack2 := (recoveredBlock476Block485Stack2) rightExpr.
            recoveredBlock476Block485PC := 497.
        ].
        recoveredBlock476Block485Step = 497 ifTrue: [
            recoveredBlock476Block485Stack2 := (recoveredBlock476Block485Stack2) not.
            recoveredBlock476Block485PC := 498.
        ].
        recoveredBlock476Block485Step = 498 ifTrue: [
            recoveredBlock476Block485Stack1 := (recoveredBlock476Block485Stack1) isIleIdentical: (recoveredBlock476Block485Stack2).
            recoveredBlock476Block485PC := 500.
        ].
        recoveredBlock476Block485Step = 500 ifTrue: [
            (recoveredBlock476Block485Stack1) ifTrue: [recoveredBlock476Block485PC := 504] ifFalse: [recoveredBlock476Block485PC := 516].
        ].
        recoveredBlock476Block485Step = 504 ifTrue: [
            recoveredBlock476Block485Stack1 := recoveredBlock476Block485Arg2.
            recoveredBlock476Block485PC := 505.
        ].
        recoveredBlock476Block485Step = 505 ifTrue: [
            recoveredBlock476Block485Stack2 := self.
            recoveredBlock476Block485PC := 506.
        ].
        recoveredBlock476Block485Step = 506 ifTrue: [
            recoveredBlock476Block485Stack2 := (recoveredBlock476Block485Stack2) ileBuilder.
            recoveredBlock476Block485PC := 508.
        ].
        recoveredBlock476Block485Step = 508 ifTrue: [
            recoveredBlock476Block485Stack2 := (recoveredBlock476Block485Stack2) literalTrue.
            recoveredBlock476Block485PC := 510.
        ].
        recoveredBlock476Block485Step = 510 ifTrue: [
            recoveredBlock476Block485Stack1 := (recoveredBlock476Block485Stack1) value: (recoveredBlock476Block485Stack2).
            recoveredBlock476Block485PC := 512.
        ].
        recoveredBlock476Block485Step = 512 ifTrue: [
            recoveredBlock476Block485PC := 517.
        ].
        recoveredBlock476Block485Step = 516 ifTrue: [
            recoveredBlock476Block485Stack1 := nil.
            recoveredBlock476Block485PC := 517.
        ].
        recoveredBlock476Block485Step = 517 ifTrue: [
            recoveredBlock476Block485Result := recoveredBlock476Block485Stack1.
            recoveredBlock476Block485Done := true.
        ].
    ].
    recoveredBlock476Block485Result
].
    recoveredBlock476Value2 := [:recoveredBlock476Block518Arg1 | 
    | recoveredBlock476Block518Value0 recoveredBlock476Block518Value1 recoveredBlock476Block518Value2 |
    recoveredBlock476Block518Value0 := recoveredBlock476Arg2.
    recoveredBlock476Block518Value1 := recoveredBlock476Block518Arg1.
    recoveredBlock476Block518Value2 := (recoveredBlock476Block518Value0) value: (recoveredBlock476Block518Value1).
    recoveredBlock476Block518Value2
].
    recoveredBlock476Value3 := (recoveredBlock476Value0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock476Value1) onSuccess: (recoveredBlock476Value2).
    recoveredBlock476Value3
].
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := [:recoveredBlock534Arg1 | 
    | recoveredBlock534Value0 recoveredBlock534Value1 |
    recoveredBlock534Value0 := recoveredBlock534Arg1.
    recoveredBlock534Value1 := recoveredBlock534Value0.
    recoveredLocal5 := recoveredBlock534Value1.
    recoveredBlock534Value0
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 576] ifFalse: [recoveredPC := 554].
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 576] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 586] ifFalse: [recoveredPC := 688].
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := [:recoveredBlock590Arg1 :recoveredBlock590Arg2 | 
    | recoveredBlock590Value0 recoveredBlock590Value1 recoveredBlock590Value2 recoveredBlock590Value3 recoveredBlock590Value4 |
    recoveredBlock590Value0 := recoveredArg1.
    recoveredBlock590Value1 := (recoveredBlock590Value0) leftExpr.
    recoveredBlock590Value2 := [:recoveredBlock590Block600Arg1 :recoveredBlock590Block600Arg2 | 
    | recoveredBlock590Block600Stack0 recoveredBlock590Block600Stack1 recoveredBlock590Block600Stack2 recoveredBlock590Block600Stack3 recoveredBlock590Block600PC recoveredBlock590Block600Step recoveredBlock590Block600Done recoveredBlock590Block600Result |
    recoveredBlock590Block600Stack0 := nil.
    recoveredBlock590Block600PC := 606.
    recoveredBlock590Block600Done := false.
    [recoveredBlock590Block600Done not] whileTrue: [
        recoveredBlock590Block600Step := recoveredBlock590Block600PC.
        recoveredBlock590Block600Step = 606 ifTrue: [
            recoveredBlock590Block600Stack1 := recoveredBlock590Arg1.
            recoveredBlock590Block600PC := 609.
        ].
        recoveredBlock590Block600Step = 609 ifTrue: [
            recoveredBlock590Block600Stack2 := recoveredBlock590Block600Arg1.
            recoveredBlock590Block600PC := 610.
        ].
        recoveredBlock590Block600Step = 610 ifTrue: [
            recoveredBlock590Block600Stack2 := (recoveredBlock590Block600Stack2) not.
            recoveredBlock590Block600PC := 611.
        ].
        recoveredBlock590Block600Step = 611 ifTrue: [
            recoveredBlock590Block600Stack1 := (recoveredBlock590Block600Stack1) isIleIdentical: (recoveredBlock590Block600Stack2).
            recoveredBlock590Block600PC := 613.
        ].
        recoveredBlock590Block600Step = 613 ifTrue: [
            (recoveredBlock590Block600Stack1) ifTrue: [recoveredBlock590Block600PC := 616] ifFalse: [recoveredBlock590Block600PC := 624].
        ].
        recoveredBlock590Block600Step = 616 ifTrue: [
            recoveredBlock590Block600Stack1 := recoveredBlock590Block600Arg2.
            recoveredBlock590Block600PC := 617.
        ].
        recoveredBlock590Block600Step = 617 ifTrue: [
            recoveredBlock590Block600Stack2 := recoveredBlock590Block600Arg1.
            recoveredBlock590Block600PC := 618.
        ].
        recoveredBlock590Block600Step = 618 ifTrue: [
            recoveredBlock590Block600Stack1 := (recoveredBlock590Block600Stack1) value: (recoveredBlock590Block600Stack2).
            recoveredBlock590Block600PC := 620.
        ].
        recoveredBlock590Block600Step = 620 ifTrue: [
            recoveredBlock590Block600PC := 625.
        ].
        recoveredBlock590Block600Step = 624 ifTrue: [
            recoveredBlock590Block600Stack1 := nil.
            recoveredBlock590Block600PC := 625.
        ].
        recoveredBlock590Block600Step = 625 ifTrue: [
            recoveredBlock590Block600Result := recoveredBlock590Block600Stack1.
            recoveredBlock590Block600Done := true.
        ].
    ].
    recoveredBlock590Block600Result
].
    recoveredBlock590Value3 := [:recoveredBlock590Block626Arg1 | 
    | recoveredBlock590Block626Value0 recoveredBlock590Block626Value1 recoveredBlock590Block626Value2 recoveredBlock590Block626Value3 |
    recoveredBlock590Block626Value0 := recoveredBlock590Arg2.
    recoveredBlock590Block626Value1 := (self) ileBuilder.
    recoveredBlock590Block626Value2 := (recoveredBlock590Block626Value1) literalTrue.
    recoveredBlock590Block626Value3 := (recoveredBlock590Block626Value0) value: (recoveredBlock590Block626Value2).
    recoveredBlock590Block626Value3
].
    recoveredBlock590Value4 := (recoveredBlock590Value1) ileOptExpressionSimplificationNoOrChildrenDo: (recoveredBlock590Value2) onSuccess: (recoveredBlock590Value3).
    recoveredBlock590Value4
].
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := [:recoveredBlock646Arg1 | 
    | recoveredBlock646Value0 recoveredBlock646Value1 |
    recoveredBlock646Value0 := recoveredBlock646Arg1.
    recoveredBlock646Value1 := recoveredBlock646Value0.
    recoveredLocal5 := recoveredBlock646Value1.
    recoveredBlock646Value0
].
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 688] ifFalse: [recoveredPC := 666].
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 688] ifFalse: [recoveredPC := 678].
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAndExpr.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 696] ifFalse: [recoveredPC := 844].
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 706] ifFalse: [recoveredPC := 844].
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := [:recoveredBlock710Arg1 :recoveredBlock710Arg2 | 
    | recoveredBlock710Value0 recoveredBlock710Value1 recoveredBlock710Value2 recoveredBlock710Value3 |
    recoveredBlock710Value0 := recoveredBlock710Arg1.
    recoveredBlock710Value1 := [:recoveredBlock710Block719Arg1 :recoveredBlock710Block719Arg2 | 
    | recoveredBlock710Block719Value0 recoveredBlock710Block719Value1 recoveredBlock710Block719Value2 recoveredBlock710Block719Value3 |
    recoveredBlock710Block719Value0 := recoveredLocal4.
    recoveredBlock710Block719Value1 := [:recoveredBlock710Block719Block729Arg1 :recoveredBlock710Block719Block729Arg2 | 
    | recoveredBlock710Block719Block729Stack0 recoveredBlock710Block719Block729Stack1 recoveredBlock710Block719Block729Stack2 recoveredBlock710Block719Block729Stack3 recoveredBlock710Block719Block729Stack4 recoveredBlock710Block719Block729PC recoveredBlock710Block719Block729Step recoveredBlock710Block719Block729Done recoveredBlock710Block719Block729Result |
    recoveredBlock710Block719Block729Stack0 := self.
    recoveredBlock710Block719Block729PC := 736.
    recoveredBlock710Block719Block729Done := false.
    [recoveredBlock710Block719Block729Done not] whileTrue: [
        recoveredBlock710Block719Block729Step := recoveredBlock710Block719Block729PC.
        recoveredBlock710Block719Block729Step = 736 ifTrue: [
            recoveredBlock710Block719Block729Stack1 := nil.
            recoveredBlock710Block719Block729PC := 737.
        ].
        recoveredBlock710Block719Block729Step = 737 ifTrue: [
            recoveredBlock710Block719Block729Stack2 := recoveredBlock710Block719Arg1.
            recoveredBlock710Block719Block729PC := 740.
        ].
        recoveredBlock710Block719Block729Step = 740 ifTrue: [
            recoveredBlock710Block719Block729Stack3 := recoveredBlock710Block719Block729Arg1.
            recoveredBlock710Block719Block729PC := 741.
        ].
        recoveredBlock710Block719Block729Step = 741 ifTrue: [
            recoveredBlock710Block719Block729Stack2 := (recoveredBlock710Block719Block729Stack2) isIleIdentical: (recoveredBlock710Block719Block729Stack3).
            recoveredBlock710Block719Block729PC := 743.
        ].
        recoveredBlock710Block719Block729Step = 743 ifTrue: [
            (recoveredBlock710Block719Block729Stack2) ifTrue: [recoveredBlock710Block719Block729PC := 746] ifFalse: [recoveredBlock710Block719Block729PC := 761].
        ].
        recoveredBlock710Block719Block729Step = 746 ifTrue: [
            recoveredBlock710Block719Block729PC := 747.
        ].
        recoveredBlock710Block719Block729Step = 747 ifTrue: [
            recoveredBlock710Block719Block729Stack1 := recoveredBlock710Block719Arg1.
            recoveredBlock710Block719Block729PC := 750.
        ].
        recoveredBlock710Block719Block729Step = 750 ifTrue: [
            recoveredLocal2 := recoveredBlock710Block719Block729Stack1.
            recoveredBlock710Block719Block729PC := 753.
        ].
        recoveredBlock710Block719Block729Step = 753 ifTrue: [
            recoveredBlock710Block719Block729Stack1 := recoveredBlock710Block719Block729Arg2.
            recoveredBlock710Block719Block729PC := 754.
        ].
        recoveredBlock710Block719Block729Step = 754 ifTrue: [
            recoveredBlock710Block719Block729Stack2 := self.
            recoveredBlock710Block719Block729PC := 755.
        ].
        recoveredBlock710Block719Block729Step = 755 ifTrue: [
            recoveredBlock710Block719Block729Stack2 := (recoveredBlock710Block719Block729Stack2) ileBuilder.
            recoveredBlock710Block719Block729PC := 757.
        ].
        recoveredBlock710Block719Block729Step = 757 ifTrue: [
            recoveredBlock710Block719Block729Stack2 := (recoveredBlock710Block719Block729Stack2) literalTrue.
            recoveredBlock710Block719Block729PC := 759.
        ].
        recoveredBlock710Block719Block729Step = 759 ifTrue: [
            recoveredBlock710Block719Block729Stack1 := (recoveredBlock710Block719Block729Stack1) value: (recoveredBlock710Block719Block729Stack2).
            recoveredBlock710Block719Block729PC := 761.
        ].
        recoveredBlock710Block719Block729Step = 761 ifTrue: [
            recoveredBlock710Block719Block729Result := recoveredBlock710Block719Block729Stack1.
            recoveredBlock710Block719Block729Done := true.
        ].
    ].
    recoveredBlock710Block719Block729Result
].
    recoveredBlock710Block719Value2 := [:recoveredBlock710Block719Block762Arg1 | 
    | recoveredBlock710Block719Block762Value0 recoveredBlock710Block719Block762Value1 recoveredBlock710Block719Block762Value2 recoveredBlock710Block719Block762Value3 recoveredBlock710Block719Block762Value4 |
    recoveredBlock710Block719Block762Value0 := recoveredBlock710Block719Block762Arg1.
    recoveredLocal1 := recoveredBlock710Block719Block762Value0.
    recoveredBlock710Block719Block762Value1 := recoveredBlock710Block719Arg2.
    recoveredBlock710Block719Block762Value2 := (self) ileBuilder.
    recoveredBlock710Block719Block762Value3 := (recoveredBlock710Block719Block762Value2) literalTrue.
    recoveredBlock710Block719Block762Value4 := (recoveredBlock710Block719Block762Value1) value: (recoveredBlock710Block719Block762Value3).
    recoveredBlock710Block719Block762Value4
].
    recoveredBlock710Block719Value3 := (recoveredBlock710Block719Value0) ileOptExpressionSimplificationLeftAndLeafDo: (recoveredBlock710Block719Value1) onSuccess: (recoveredBlock710Block719Value2).
    recoveredBlock710Block719Value3
].
    recoveredBlock710Value2 := [:recoveredBlock710Block786Arg1 | 
    | recoveredBlock710Block786Value0 recoveredBlock710Block786Value1 recoveredBlock710Block786Value2 recoveredBlock710Block786Value3 recoveredBlock710Block786Value4 recoveredBlock710Block786Value5 recoveredBlock710Block786Value6 |
    recoveredBlock710Block786Value0 := recoveredBlock710Arg2.
    recoveredBlock710Block786Value1 := recoveredLocal2.
    recoveredBlock710Block786Value2 := recoveredBlock710Block786Arg1.
    recoveredBlock710Block786Value3 := recoveredLocal1.
    recoveredBlock710Block786Value4 := (recoveredBlock710Block786Value2) orExpr: (recoveredBlock710Block786Value3).
    recoveredBlock710Block786Value5 := (recoveredBlock710Block786Value1) andExpr: (recoveredBlock710Block786Value4).
    recoveredBlock710Block786Value6 := (recoveredBlock710Block786Value0) value: (recoveredBlock710Block786Value5).
    recoveredBlock710Block786Value6
].
    recoveredBlock710Value3 := (recoveredBlock710Value0) ileOptExpressionSimplificationLeftAndLeafDo: (recoveredBlock710Value1) onSuccess: (recoveredBlock710Value2).
    recoveredBlock710Value3
].
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack2 := [:recoveredBlock812Arg1 | 
    | recoveredBlock812Value0 recoveredBlock812Value1 |
    recoveredBlock812Value0 := recoveredBlock812Arg1.
    recoveredBlock812Value1 := recoveredBlock812Value0.
    recoveredLocal5 := recoveredBlock812Value1.
    recoveredBlock812Value0
].
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationRightOrLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 836] ifFalse: [recoveredPC := 832].
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAndExpr.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 852] ifFalse: [recoveredPC := 964].
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 862] ifFalse: [recoveredPC := 964].
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack1 := [:recoveredBlock866Arg1 :recoveredBlock866Arg2 | 
    | recoveredBlock866Value0 recoveredBlock866Value1 recoveredBlock866Value2 recoveredBlock866Value3 |
    recoveredBlock866Value0 := recoveredBlock866Arg1.
    recoveredBlock866Value1 := [:recoveredBlock866Block875Arg1 :recoveredBlock866Block875Arg2 | 
    | recoveredBlock866Block875Stack0 recoveredBlock866Block875Stack1 recoveredBlock866Block875Stack2 recoveredBlock866Block875Stack3 recoveredBlock866Block875Stack4 recoveredBlock866Block875PC recoveredBlock866Block875Step recoveredBlock866Block875Done recoveredBlock866Block875Result |
    recoveredBlock866Block875Stack0 := self.
    recoveredBlock866Block875PC := 882.
    recoveredBlock866Block875Done := false.
    [recoveredBlock866Block875Done not] whileTrue: [
        recoveredBlock866Block875Step := recoveredBlock866Block875PC.
        recoveredBlock866Block875Step = 882 ifTrue: [
            recoveredBlock866Block875Stack1 := nil.
            recoveredBlock866Block875PC := 883.
        ].
        recoveredBlock866Block875Step = 883 ifTrue: [
            recoveredBlock866Block875Stack2 := recoveredBlock866Block875Arg1.
            recoveredBlock866Block875PC := 884.
        ].
        recoveredBlock866Block875Step = 884 ifTrue: [
            recoveredBlock866Block875Stack3 := recoveredLocal4.
            recoveredBlock866Block875PC := 887.
        ].
        recoveredBlock866Block875Step = 887 ifTrue: [
            recoveredBlock866Block875Stack3 := (recoveredBlock866Block875Stack3) rightExpr.
            recoveredBlock866Block875PC := 888.
        ].
        recoveredBlock866Block875Step = 888 ifTrue: [
            recoveredBlock866Block875Stack2 := (recoveredBlock866Block875Stack2) isIleIdentical: (recoveredBlock866Block875Stack3).
            recoveredBlock866Block875PC := 890.
        ].
        recoveredBlock866Block875Step = 890 ifTrue: [
            (recoveredBlock866Block875Stack2) ifTrue: [recoveredBlock866Block875PC := 894] ifFalse: [recoveredBlock866Block875PC := 907].
        ].
        recoveredBlock866Block875Step = 894 ifTrue: [
            recoveredBlock866Block875PC := 895.
        ].
        recoveredBlock866Block875Step = 895 ifTrue: [
            recoveredBlock866Block875Stack1 := recoveredBlock866Block875Arg1.
            recoveredBlock866Block875PC := 896.
        ].
        recoveredBlock866Block875Step = 896 ifTrue: [
            recoveredLocal2 := recoveredBlock866Block875Stack1.
            recoveredBlock866Block875PC := 899.
        ].
        recoveredBlock866Block875Step = 899 ifTrue: [
            recoveredBlock866Block875Stack1 := recoveredBlock866Block875Arg2.
            recoveredBlock866Block875PC := 900.
        ].
        recoveredBlock866Block875Step = 900 ifTrue: [
            recoveredBlock866Block875Stack2 := self.
            recoveredBlock866Block875PC := 901.
        ].
        recoveredBlock866Block875Step = 901 ifTrue: [
            recoveredBlock866Block875Stack2 := (recoveredBlock866Block875Stack2) ileBuilder.
            recoveredBlock866Block875PC := 903.
        ].
        recoveredBlock866Block875Step = 903 ifTrue: [
            recoveredBlock866Block875Stack2 := (recoveredBlock866Block875Stack2) literalTrue.
            recoveredBlock866Block875PC := 905.
        ].
        recoveredBlock866Block875Step = 905 ifTrue: [
            recoveredBlock866Block875Stack1 := (recoveredBlock866Block875Stack1) value: (recoveredBlock866Block875Stack2).
            recoveredBlock866Block875PC := 907.
        ].
        recoveredBlock866Block875Step = 907 ifTrue: [
            recoveredBlock866Block875Result := recoveredBlock866Block875Stack1.
            recoveredBlock866Block875Done := true.
        ].
    ].
    recoveredBlock866Block875Result
].
    recoveredBlock866Value2 := [:recoveredBlock866Block908Arg1 | 
    | recoveredBlock866Block908Value0 recoveredBlock866Block908Value1 recoveredBlock866Block908Value2 recoveredBlock866Block908Value3 recoveredBlock866Block908Value4 recoveredBlock866Block908Value5 recoveredBlock866Block908Value6 recoveredBlock866Block908Value7 |
    recoveredBlock866Block908Value0 := recoveredBlock866Arg2.
    recoveredBlock866Block908Value1 := recoveredBlock866Block908Arg1.
    recoveredBlock866Block908Value2 := recoveredLocal4.
    recoveredBlock866Block908Value3 := (recoveredBlock866Block908Value2) leftExpr.
    recoveredBlock866Block908Value4 := (recoveredBlock866Block908Value1) orExpr: (recoveredBlock866Block908Value3).
    recoveredBlock866Block908Value5 := recoveredLocal2.
    recoveredBlock866Block908Value6 := (recoveredBlock866Block908Value4) andExpr: (recoveredBlock866Block908Value5).
    recoveredBlock866Block908Value7 := (recoveredBlock866Block908Value0) value: (recoveredBlock866Block908Value6).
    recoveredBlock866Block908Value7
].
    recoveredBlock866Value3 := (recoveredBlock866Value0) ileOptExpressionSimplificationRightAndLeafDo: (recoveredBlock866Value1) onSuccess: (recoveredBlock866Value2).
    recoveredBlock866Value3
].
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack2 := [:recoveredBlock935Arg1 | 
    | recoveredBlock935Value0 recoveredBlock935Value1 |
    recoveredBlock935Value0 := recoveredBlock935Arg1.
    recoveredBlock935Value1 := recoveredBlock935Value0.
    recoveredLocal5 := recoveredBlock935Value1.
    recoveredBlock935Value0
].
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationRightOrLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 960] ifFalse: [recoveredPC := 956].
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack0 := SGIlReplaceSystemConstantNoTempVarTransformation.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalFalse.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack0 := (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1008] ifFalse: [recoveredPC := 998].
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

