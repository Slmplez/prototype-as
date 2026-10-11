"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009599c; bytecode file offset 0x992290"
!SGIlExpressionSimplification methodsFor: 'recovered'!
addExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addSubExpr: (recoveredValue0) factor: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200959d8; bytecode file offset 0x992290"
!SGIlExpressionSimplification methodsFor: 'recovered'!
mulExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mulDivExpr: (recoveredValue0) exponent: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20095a2c; bytecode file offset 0x9922e4"
!SGIlExpressionSimplification methodsFor: 'recovered'!
subExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addSubExpr: (recoveredValue0) factor: (-1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20165064; bytecode file offset 0xa6191c"
!SGIlExpressionSimplification methodsFor: 'recovered'!
allowFirstExprOverflow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    allowFirstOverflow := true.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    allowFirstOverflow := false.
    false
].
    recoveredValue2 := (recoveredValue0) ensure: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016a924; bytecode file offset 0xa671d8"
!SGIlExpressionSimplification methodsFor: 'recovered'!
allowOverflow
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allowFirstOverflow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            allowFirstOverflow := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := allowFirstOverflow.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            allowFirstOverflow := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204611ac; bytecode file offset 0xd5da88"
!SGIlExpressionSimplification methodsFor: 'recovered'!
mulDivExpr: recoveredArg1 exponent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 :recoveredBlock8Arg3 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) hasIleNoSideEffects.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 49].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Arg2.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack5 := 1.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ileOptExpressionSimplificationMulDiv: (recoveredBlock8Stack3) rightExponent: (recoveredBlock8Stack4) exponent: (recoveredBlock8Stack5).
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock8Stack3.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 49] ifFalse: [recoveredBlock8PC := 40].
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg3.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ileBuilder.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) literalOne.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) value: (recoveredBlock8Stack2).
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg1.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal2.
            recoveredBlock53PC := 66.
        ].
        recoveredBlock53Step = 66 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Arg1.
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) createOpLeftExpr: (recoveredBlock53Stack2) rightExpr: (recoveredBlock53Stack3).
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 72.
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isIleRepresentable.
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 88] ifFalse: [recoveredBlock53PC := 80].
        ].
        recoveredBlock53Step = 80 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg1.
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isIleRepresentable.
            recoveredBlock53PC := 85.
        ].
        recoveredBlock53Step = 85 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 94] ifFalse: [recoveredBlock53PC := 88].
        ].
        recoveredBlock53Step = 88 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 91.
        ].
        recoveredBlock53Step = 91 ifTrue: [
            recoveredBlock53PC := 99.
        ].
        recoveredBlock53Step = 94 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 95.
        ].
        recoveredBlock53Step = 95 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 96.
        ].
        recoveredBlock53Step = 96 ifTrue: [
            recoveredLocal1 := recoveredBlock53Stack2.
            recoveredBlock53PC := 99.
        ].
        recoveredBlock53Step = 99 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoMulDivChildrenDo: (recoveredStack2) exponent: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204fb95c; bytecode file offset 0xdf8250"
!SGIlExpressionSimplification methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
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
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredArg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) rightExpr.
    recoveredBlock26Value2 := [:recoveredBlock26Block36Arg1 :recoveredBlock26Block36Arg2 :recoveredBlock26Block36Arg3 | 
    | recoveredBlock26Block36Local1 recoveredBlock26Block36Local2 recoveredBlock26Block36Stack0 recoveredBlock26Block36Stack1 recoveredBlock26Block36Stack2 recoveredBlock26Block36Stack3 recoveredBlock26Block36Stack4 recoveredBlock26Block36Stack5 recoveredBlock26Block36PC recoveredBlock26Block36Step recoveredBlock26Block36Done recoveredBlock26Block36Result |
    recoveredBlock26Block36Stack0 := self.
    recoveredBlock26Block36PC := 42.
    recoveredBlock26Block36Done := false.
    [recoveredBlock26Block36Done not] whileTrue: [
        recoveredBlock26Block36Step := recoveredBlock26Block36PC.
        recoveredBlock26Block36Step = 42 ifTrue: [
            recoveredBlock26Block36Stack1 := nil.
            recoveredBlock26Block36PC := 43.
        ].
        recoveredBlock26Block36Step = 43 ifTrue: [
            recoveredBlock26Block36Stack2 := recoveredBlock26Block36Arg1.
            recoveredBlock26Block36PC := 45.
        ].
        recoveredBlock26Block36Step = 45 ifTrue: [
            recoveredBlock26Block36Stack2 := (recoveredBlock26Block36Stack2) hasIleNoSideEffects.
            recoveredBlock26Block36PC := 47.
        ].
        recoveredBlock26Block36Step = 47 ifTrue: [
            (recoveredBlock26Block36Stack2) ifTrue: [recoveredBlock26Block36PC := 50] ifFalse: [recoveredBlock26Block36PC := 101].
        ].
        recoveredBlock26Block36Step = 50 ifTrue: [
            recoveredBlock26Block36PC := 51.
        ].
        recoveredBlock26Block36Step = 51 ifTrue: [
            recoveredBlock26Block36Stack1 := recoveredBlock26Block36Arg1.
            recoveredBlock26Block36PC := 53.
        ].
        recoveredBlock26Block36Step = 53 ifTrue: [
            recoveredBlock26Block36Stack2 := self.
            recoveredBlock26Block36PC := 54.
        ].
        recoveredBlock26Block36Step = 54 ifTrue: [
            recoveredBlock26Block36Stack2 := (recoveredBlock26Block36Stack2) ileBuilder.
            recoveredBlock26Block36PC := 56.
        ].
        recoveredBlock26Block36Step = 56 ifTrue: [
            recoveredBlock26Block36Stack3 := recoveredBlock26Block36Arg2.
            recoveredBlock26Block36PC := 57.
        ].
        recoveredBlock26Block36Step = 57 ifTrue: [
            recoveredBlock26Block36Stack3 := (recoveredBlock26Block36Stack3) negated.
            recoveredBlock26Block36PC := 59.
        ].
        recoveredBlock26Block36Step = 59 ifTrue: [
            recoveredBlock26Block36Stack2 := (recoveredBlock26Block36Stack2) scalarConstant: (recoveredBlock26Block36Stack3).
            recoveredBlock26Block36PC := 61.
        ].
        recoveredBlock26Block36Step = 61 ifTrue: [
            recoveredBlock26Block36Stack1 := (recoveredBlock26Block36Stack1) ileOptExpressionSimplificationLeafFactor: (recoveredBlock26Block36Stack2).
            recoveredBlock26Block36PC := 63.
        ].
        recoveredBlock26Block36Step = 63 ifTrue: [
            recoveredBlock26Block36Local2 := recoveredBlock26Block36Stack1.
            recoveredBlock26Block36PC := 64.
        ].
        recoveredBlock26Block36Step = 64 ifTrue: [
            recoveredBlock26Block36Stack1 := recoveredLocal2.
            recoveredBlock26Block36PC := 67.
        ].
        recoveredBlock26Block36Step = 67 ifTrue: [
            recoveredBlock26Block36Stack2 := recoveredBlock26Block36Local2.
            recoveredBlock26Block36PC := 68.
        ].
        recoveredBlock26Block36Step = 68 ifTrue: [
            recoveredBlock26Block36Stack3 := 1.
            recoveredBlock26Block36PC := 70.
        ].
        recoveredBlock26Block36Step = 70 ifTrue: [
            recoveredBlock26Block36Stack4 := true.
            recoveredBlock26Block36PC := 71.
        ].
        recoveredBlock26Block36Step = 71 ifTrue: [
            recoveredBlock26Block36Stack1 := (recoveredBlock26Block36Stack1) ileOptExpressionSimplificationAddSub: (recoveredBlock26Block36Stack2) factor: (recoveredBlock26Block36Stack3) noOverflow: (recoveredBlock26Block36Stack4).
            recoveredBlock26Block36PC := 74.
        ].
        recoveredBlock26Block36Step = 74 ifTrue: [
            recoveredBlock26Block36Local1 := recoveredBlock26Block36Stack1.
            recoveredBlock26Block36PC := 75.
        ].
        recoveredBlock26Block36Step = 75 ifTrue: [
            recoveredBlock26Block36Stack1 := recoveredBlock26Block36Local1.
            recoveredBlock26Block36PC := 76.
        ].
        recoveredBlock26Block36Step = 76 ifTrue: [
            (recoveredBlock26Block36Stack1 == nil) ifTrue: [recoveredBlock26Block36PC := 96] ifFalse: [recoveredBlock26Block36PC := 80].
        ].
        recoveredBlock26Block36Step = 80 ifTrue: [
            recoveredBlock26Block36Stack1 := recoveredBlock26Block36Local1.
            recoveredBlock26Block36PC := 81.
        ].
        recoveredBlock26Block36Step = 81 ifTrue: [
            recoveredLocal2 := recoveredBlock26Block36Stack1.
            recoveredBlock26Block36PC := 84.
        ].
        recoveredBlock26Block36Step = 84 ifTrue: [
            recoveredBlock26Block36Stack1 := recoveredBlock26Block36Arg3.
            recoveredBlock26Block36PC := 85.
        ].
        recoveredBlock26Block36Step = 85 ifTrue: [
            recoveredBlock26Block36Stack2 := self.
            recoveredBlock26Block36PC := 86.
        ].
        recoveredBlock26Block36Step = 86 ifTrue: [
            recoveredBlock26Block36Stack2 := (recoveredBlock26Block36Stack2) ileBuilder.
            recoveredBlock26Block36PC := 88.
        ].
        recoveredBlock26Block36Step = 88 ifTrue: [
            recoveredBlock26Block36Stack2 := (recoveredBlock26Block36Stack2) literalZero.
            recoveredBlock26Block36PC := 90.
        ].
        recoveredBlock26Block36Step = 90 ifTrue: [
            recoveredBlock26Block36Stack1 := (recoveredBlock26Block36Stack1) value: (recoveredBlock26Block36Stack2).
            recoveredBlock26Block36PC := 92.
        ].
        recoveredBlock26Block36Step = 92 ifTrue: [
            recoveredBlock26Block36PC := 97.
        ].
        recoveredBlock26Block36Step = 96 ifTrue: [
            recoveredBlock26Block36Stack1 := nil.
            recoveredBlock26Block36PC := 97.
        ].
        recoveredBlock26Block36Step = 97 ifTrue: [
            recoveredBlock26Block36Stack2 := nil.
            recoveredBlock26Block36PC := 98.
        ].
        recoveredBlock26Block36Step = 98 ifTrue: [
            recoveredBlock26Block36Stack3 := recoveredBlock26Block36Stack2.
            recoveredBlock26Block36PC := 99.
        ].
        recoveredBlock26Block36Step = 99 ifTrue: [
            recoveredBlock26Block36Local2 := recoveredBlock26Block36Stack3.
            recoveredBlock26Block36PC := 100.
        ].
        recoveredBlock26Block36Step = 100 ifTrue: [
            recoveredBlock26Block36Local1 := recoveredBlock26Block36Stack2.
            recoveredBlock26Block36PC := 101.
        ].
        recoveredBlock26Block36Step = 101 ifTrue: [
            recoveredBlock26Block36Result := recoveredBlock26Block36Stack1.
            recoveredBlock26Block36Done := true.
        ].
    ].
    recoveredBlock26Block36Result
].
    recoveredBlock26Value3 := [:recoveredBlock26Block105Arg1 | 
    | recoveredBlock26Block105Local1 recoveredBlock26Block105Stack0 recoveredBlock26Block105Stack1 recoveredBlock26Block105Stack2 recoveredBlock26Block105Stack3 recoveredBlock26Block105Stack4 recoveredBlock26Block105PC recoveredBlock26Block105Step recoveredBlock26Block105Done recoveredBlock26Block105Result |
    recoveredBlock26Block105Stack0 := nil.
    recoveredBlock26Block105PC := 112.
    recoveredBlock26Block105Done := false.
    [recoveredBlock26Block105Done not] whileTrue: [
        recoveredBlock26Block105Step := recoveredBlock26Block105PC.
        recoveredBlock26Block105Step = 112 ifTrue: [
            recoveredBlock26Block105Stack1 := recoveredBlock26Block105Arg1.
            recoveredBlock26Block105PC := 113.
        ].
        recoveredBlock26Block105Step = 113 ifTrue: [
            recoveredBlock26Block105Local1 := recoveredBlock26Block105Stack1.
            recoveredBlock26Block105PC := 114.
        ].
        recoveredBlock26Block105Step = 114 ifTrue: [
            recoveredBlock26Block105Stack1 := nil.
            recoveredBlock26Block105PC := 115.
        ].
        recoveredBlock26Block105Step = 115 ifTrue: [
            recoveredBlock26Block105Stack2 := recoveredLocal2.
            recoveredBlock26Block105PC := 118.
        ].
        recoveredBlock26Block105Step = 118 ifTrue: [
            recoveredBlock26Block105Stack3 := recoveredArg1.
            recoveredBlock26Block105PC := 121.
        ].
        recoveredBlock26Block105Step = 121 ifTrue: [
            recoveredBlock26Block105Stack3 := (recoveredBlock26Block105Stack3) leftExpr.
            recoveredBlock26Block105PC := 122.
        ].
        recoveredBlock26Block105Step = 122 ifTrue: [
            recoveredBlock26Block105Stack2 := (recoveredBlock26Block105Stack2) isIleIdentical: (recoveredBlock26Block105Stack3).
            recoveredBlock26Block105PC := 124.
        ].
        recoveredBlock26Block105Step = 124 ifTrue: [
            (recoveredBlock26Block105Stack2) ifTrue: [recoveredBlock26Block105PC := 128] ifFalse: [recoveredBlock26Block105PC := 138].
        ].
        recoveredBlock26Block105Step = 128 ifTrue: [
            recoveredBlock26Block105Stack2 := recoveredBlock26Block105Local1.
            recoveredBlock26Block105PC := 129.
        ].
        recoveredBlock26Block105Step = 129 ifTrue: [
            recoveredBlock26Block105Stack3 := recoveredArg1.
            recoveredBlock26Block105PC := 132.
        ].
        recoveredBlock26Block105Step = 132 ifTrue: [
            recoveredBlock26Block105Stack3 := (recoveredBlock26Block105Stack3) rightExpr.
            recoveredBlock26Block105PC := 133.
        ].
        recoveredBlock26Block105Step = 133 ifTrue: [
            recoveredBlock26Block105Stack2 := (recoveredBlock26Block105Stack2) isIleIdentical: (recoveredBlock26Block105Stack3).
            recoveredBlock26Block105PC := 135.
        ].
        recoveredBlock26Block105Step = 135 ifTrue: [
            (recoveredBlock26Block105Stack2) ifTrue: [recoveredBlock26Block105PC := 152] ifFalse: [recoveredBlock26Block105PC := 138].
        ].
        recoveredBlock26Block105Step = 138 ifTrue: [
            recoveredBlock26Block105PC := 139.
        ].
        recoveredBlock26Block105Step = 139 ifTrue: [
            recoveredBlock26Block105Stack1 := recoveredArg1.
            recoveredBlock26Block105PC := 142.
        ].
        recoveredBlock26Block105Step = 142 ifTrue: [
            recoveredBlock26Block105Stack2 := recoveredLocal2.
            recoveredBlock26Block105PC := 145.
        ].
        recoveredBlock26Block105Step = 145 ifTrue: [
            recoveredBlock26Block105Stack3 := recoveredBlock26Block105Local1.
            recoveredBlock26Block105PC := 146.
        ].
        recoveredBlock26Block105Step = 146 ifTrue: [
            recoveredBlock26Block105Stack1 := (recoveredBlock26Block105Stack1) createOpLeftExpr: (recoveredBlock26Block105Stack2) rightExpr: (recoveredBlock26Block105Stack3).
            recoveredBlock26Block105PC := 148.
        ].
        recoveredBlock26Block105Step = 148 ifTrue: [
            recoveredBlock26Block105Stack2 := recoveredBlock26Block105Stack1.
            recoveredBlock26Block105PC := 149.
        ].
        recoveredBlock26Block105Step = 149 ifTrue: [
            recoveredLocal1 := recoveredBlock26Block105Stack2.
            recoveredBlock26Block105PC := 152.
        ].
        recoveredBlock26Block105Step = 152 ifTrue: [
            recoveredBlock26Block105Result := recoveredBlock26Block105Stack1.
            recoveredBlock26Block105Done := true.
        ].
    ].
    recoveredBlock26Block105Result
].
    recoveredBlock26Value4 := (recoveredBlock26Value1) ileOptExpressionSimplificationNoAddSubChildrenDo: (recoveredBlock26Value2) factor: (1) noOverflow: (true) onSuccess: (recoveredBlock26Value3).
    recoveredBlock26Value4
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20577a84; bytecode file offset 0xe74378"
!SGIlExpressionSimplification methodsFor: 'recovered'!
remExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
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
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 40].
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
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalZero.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntegerVariant.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := [:recoveredBlock87Arg1 :recoveredBlock87Arg2 :recoveredBlock87Arg3 | 
    | recoveredBlock87Stack0 recoveredBlock87Stack1 recoveredBlock87Stack2 recoveredBlock87Stack3 recoveredBlock87Stack4 recoveredBlock87Stack5 recoveredBlock87PC recoveredBlock87Step recoveredBlock87Done recoveredBlock87Result |
    recoveredBlock87Stack0 := self.
    recoveredBlock87PC := 94.
    recoveredBlock87Done := false.
    [recoveredBlock87Done not] whileTrue: [
        recoveredBlock87Step := recoveredBlock87PC.
        recoveredBlock87Step = 94 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 97.
        ].
        recoveredBlock87Step = 97 ifTrue: [
            recoveredBlock87Stack2 := recoveredLocal2.
            recoveredBlock87PC := 100.
        ].
        recoveredBlock87Step = 100 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) isIleIdentical: (recoveredBlock87Stack2).
            recoveredBlock87PC := 101.
        ].
        recoveredBlock87Step = 101 ifTrue: [
            (recoveredBlock87Stack1) ifTrue: [recoveredBlock87PC := 104] ifFalse: [recoveredBlock87PC := 126].
        ].
        recoveredBlock87Step = 104 ifTrue: [
            recoveredBlock87Stack1 := recoveredLocal2.
            recoveredBlock87PC := 107.
        ].
        recoveredBlock87Step = 107 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) hasIleNoSideEffects.
            recoveredBlock87PC := 108.
        ].
        recoveredBlock87Step = 108 ifTrue: [
            (recoveredBlock87Stack1) ifTrue: [recoveredBlock87PC := 112] ifFalse: [recoveredBlock87PC := 126].
        ].
        recoveredBlock87Step = 112 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg3.
            recoveredBlock87PC := 115.
        ].
        recoveredBlock87Step = 115 ifTrue: [
            recoveredBlock87Stack2 := self.
            recoveredBlock87PC := 116.
        ].
        recoveredBlock87Step = 116 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) ileBuilder.
            recoveredBlock87PC := 118.
        ].
        recoveredBlock87Step = 118 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) literalZero.
            recoveredBlock87PC := 120.
        ].
        recoveredBlock87Step = 120 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) value: (recoveredBlock87Stack2).
            recoveredBlock87PC := 122.
        ].
        recoveredBlock87Step = 122 ifTrue: [
            recoveredBlock87PC := 182.
        ].
        recoveredBlock87Step = 126 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 129.
        ].
        recoveredBlock87Step = 129 ifTrue: [
            recoveredBlock87Stack2 := [:recoveredBlock87Block129Arg1 :recoveredBlock87Block129Arg2 :recoveredBlock87Block129Arg3 | 
    | recoveredBlock87Block129Stack0 recoveredBlock87Block129Stack1 recoveredBlock87Block129Stack2 recoveredBlock87Block129Stack3 recoveredBlock87Block129Stack4 recoveredBlock87Block129PC recoveredBlock87Block129Step recoveredBlock87Block129Done recoveredBlock87Block129Result |
    recoveredBlock87Block129Stack0 := self.
    recoveredBlock87Block129PC := 136.
    recoveredBlock87Block129Done := false.
    [recoveredBlock87Block129Done not] whileTrue: [
        recoveredBlock87Block129Step := recoveredBlock87Block129PC.
        recoveredBlock87Block129Step = 136 ifTrue: [
            recoveredBlock87Block129Stack1 := nil.
            recoveredBlock87Block129PC := 137.
        ].
        recoveredBlock87Block129Step = 137 ifTrue: [
            recoveredBlock87Block129Stack2 := recoveredBlock87Block129Arg1.
            recoveredBlock87Block129PC := 138.
        ].
        recoveredBlock87Block129Step = 138 ifTrue: [
            recoveredBlock87Block129Stack3 := recoveredLocal2.
            recoveredBlock87Block129PC := 141.
        ].
        recoveredBlock87Block129Step = 141 ifTrue: [
            recoveredBlock87Block129Stack2 := (recoveredBlock87Block129Stack2) isIleIdentical: (recoveredBlock87Block129Stack3).
            recoveredBlock87Block129PC := 142.
        ].
        recoveredBlock87Block129Step = 142 ifTrue: [
            (recoveredBlock87Block129Stack2) ifTrue: [recoveredBlock87Block129PC := 146] ifFalse: [recoveredBlock87Block129PC := 163].
        ].
        recoveredBlock87Block129Step = 146 ifTrue: [
            recoveredBlock87Block129Stack2 := recoveredLocal2.
            recoveredBlock87Block129PC := 149.
        ].
        recoveredBlock87Block129Step = 149 ifTrue: [
            recoveredBlock87Block129Stack2 := (recoveredBlock87Block129Stack2) hasIleNoSideEffects.
            recoveredBlock87Block129PC := 150.
        ].
        recoveredBlock87Block129Step = 150 ifTrue: [
            (recoveredBlock87Block129Stack2) ifTrue: [recoveredBlock87Block129PC := 154] ifFalse: [recoveredBlock87Block129PC := 163].
        ].
        recoveredBlock87Block129Step = 154 ifTrue: [
            recoveredBlock87Block129PC := 155.
        ].
        recoveredBlock87Block129Step = 155 ifTrue: [
            recoveredBlock87Block129Stack1 := recoveredBlock87Block129Arg3.
            recoveredBlock87Block129PC := 156.
        ].
        recoveredBlock87Block129Step = 156 ifTrue: [
            recoveredBlock87Block129Stack2 := self.
            recoveredBlock87Block129PC := 157.
        ].
        recoveredBlock87Block129Step = 157 ifTrue: [
            recoveredBlock87Block129Stack2 := (recoveredBlock87Block129Stack2) ileBuilder.
            recoveredBlock87Block129PC := 159.
        ].
        recoveredBlock87Block129Step = 159 ifTrue: [
            recoveredBlock87Block129Stack2 := (recoveredBlock87Block129Stack2) literalZero.
            recoveredBlock87Block129PC := 161.
        ].
        recoveredBlock87Block129Step = 161 ifTrue: [
            recoveredBlock87Block129Stack1 := (recoveredBlock87Block129Stack1) value: (recoveredBlock87Block129Stack2).
            recoveredBlock87Block129PC := 163.
        ].
        recoveredBlock87Block129Step = 163 ifTrue: [
            recoveredBlock87Block129Result := recoveredBlock87Block129Stack1.
            recoveredBlock87Block129Done := true.
        ].
    ].
    recoveredBlock87Block129Result
].
            recoveredBlock87PC := 164.
        ].
        recoveredBlock87Step = 164 ifTrue: [
            recoveredBlock87Stack3 := 1.
            recoveredBlock87PC := 166.
        ].
        recoveredBlock87Step = 166 ifTrue: [
            recoveredBlock87Stack4 := [:recoveredBlock87Block166Arg1 | 
    | recoveredBlock87Block166Value0 recoveredBlock87Block166Value1 recoveredBlock87Block166Value2 |
    recoveredBlock87Block166Value0 := recoveredBlock87Arg3.
    recoveredBlock87Block166Value1 := recoveredBlock87Block166Arg1.
    recoveredBlock87Block166Value2 := (recoveredBlock87Block166Value0) value: (recoveredBlock87Block166Value1).
    recoveredBlock87Block166Value2
].
            recoveredBlock87PC := 179.
        ].
        recoveredBlock87Step = 179 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) ileOptExpressionSimplificationNoMulDivChildrenDo: (recoveredBlock87Stack2) exponent: (recoveredBlock87Stack3) onSuccess: (recoveredBlock87Stack4).
            recoveredBlock87PC := 182.
        ].
        recoveredBlock87Step = 182 ifTrue: [
            recoveredBlock87Result := recoveredBlock87Stack1.
            recoveredBlock87Done := true.
        ].
    ].
    recoveredBlock87Result
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack5 := [:recoveredBlock186Arg1 | 
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186Stack4 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := nil.
            recoveredBlock186PC := 193.
        ].
        recoveredBlock186Step = 193 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 194.
        ].
        recoveredBlock186Step = 194 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) interval.
            recoveredBlock186PC := 196.
        ].
        recoveredBlock186Step = 196 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) left.
            recoveredBlock186PC := 198.
        ].
        recoveredBlock186Step = 198 ifTrue: [
            recoveredBlock186Stack3 := 0.
            recoveredBlock186PC := 200.
        ].
        recoveredBlock186Step = 200 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) >= (recoveredBlock186Stack3).
            recoveredBlock186PC := 201.
        ].
        recoveredBlock186Step = 201 ifTrue: [
            (recoveredBlock186Stack2) ifTrue: [recoveredBlock186PC := 204] ifFalse: [recoveredBlock186PC := 220].
        ].
        recoveredBlock186Step = 204 ifTrue: [
            recoveredBlock186PC := 205.
        ].
        recoveredBlock186Step = 205 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Arg1.
            recoveredBlock186PC := 206.
        ].
        recoveredBlock186Step = 206 ifTrue: [
            recoveredBlock186Stack2 := recoveredLocal2.
            recoveredBlock186PC := 209.
        ].
        recoveredBlock186Step = 209 ifTrue: [
            recoveredBlock186Stack3 := recoveredArg1.
            recoveredBlock186PC := 212.
        ].
        recoveredBlock186Step = 212 ifTrue: [
            recoveredBlock186Stack3 := (recoveredBlock186Stack3) ileBasicType.
            recoveredBlock186PC := 214.
        ].
        recoveredBlock186Step = 214 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) rem: (recoveredBlock186Stack2) type: (recoveredBlock186Stack3).
            recoveredBlock186PC := 216.
        ].
        recoveredBlock186Step = 216 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Stack1.
            recoveredBlock186PC := 217.
        ].
        recoveredBlock186Step = 217 ifTrue: [
            recoveredLocal1 := recoveredBlock186Stack2.
            recoveredBlock186PC := 220.
        ].
        recoveredBlock186Step = 220 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack1.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAddSubChildrenDo: (recoveredStack2) factor: (recoveredStack3) noOverflow: (recoveredStack4) onSuccess: (recoveredStack5).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205a2428; bytecode file offset 0xe9ed18"
!SGIlExpressionSimplification methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulDivExpr: (recoveredStack1) exponent: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulNoOverflowExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 :recoveredBlock40Arg2 :recoveredBlock40Arg3 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40Stack6 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) hasIleNoSideEffects.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 99].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg1.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) leftExpr.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) originalExpr.
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg2.
            recoveredBlock40PC := 64.
        ].
        recoveredBlock40Step = 64 ifTrue: [
            recoveredBlock40Stack5 := 1.
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) ileOptExpressionSimplificationMulDiv: (recoveredBlock40Stack3) rightExponent: (recoveredBlock40Stack4) exponent: (recoveredBlock40Stack5).
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Stack2.
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock40Stack3.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 99] ifFalse: [recoveredBlock40PC := 76].
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg1.
            recoveredBlock40PC := 83.
        ].
        recoveredBlock40Step = 83 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) leftExpr.
            recoveredBlock40PC := 84.
        ].
        recoveredBlock40Step = 84 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) goalInterval.
            recoveredBlock40PC := 86.
        ].
        recoveredBlock40Step = 86 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) asIleLimitOverflowExprGoalInterval: (recoveredBlock40Stack2).
            recoveredBlock40PC := 88.
        ].
        recoveredBlock40Step = 88 ifTrue: [
            recoveredLocal1 := recoveredBlock40Stack1.
            recoveredBlock40PC := 91.
        ].
        recoveredBlock40Step = 91 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg3.
            recoveredBlock40PC := 92.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 93.
        ].
        recoveredBlock40Step = 93 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) ileBuilder.
            recoveredBlock40PC := 95.
        ].
        recoveredBlock40Step = 95 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) literalOne.
            recoveredBlock40PC := 97.
        ].
        recoveredBlock40Step = 97 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) value: (recoveredBlock40Stack2).
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102Stack4 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := recoveredArg1.
            recoveredBlock102PC := 111.
        ].
        recoveredBlock102Step = 111 ifTrue: [
            recoveredBlock102Stack2 := recoveredLocal1.
            recoveredBlock102PC := 114.
        ].
        recoveredBlock102Step = 114 ifTrue: [
            recoveredBlock102Stack3 := recoveredBlock102Arg1.
            recoveredBlock102PC := 115.
        ].
        recoveredBlock102Step = 115 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) createOpLeftExpr: (recoveredBlock102Stack2) rightExpr: (recoveredBlock102Stack3).
            recoveredBlock102PC := 117.
        ].
        recoveredBlock102Step = 117 ifTrue: [
            recoveredLocal2 := recoveredBlock102Stack1.
            recoveredBlock102PC := 120.
        ].
        recoveredBlock102Step = 120 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal2.
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) isIleRepresentable.
            recoveredBlock102PC := 125.
        ].
        recoveredBlock102Step = 125 ifTrue: [
            (recoveredBlock102Stack1) ifTrue: [recoveredBlock102PC := 136] ifFalse: [recoveredBlock102PC := 128].
        ].
        recoveredBlock102Step = 128 ifTrue: [
            recoveredBlock102Stack1 := recoveredArg1.
            recoveredBlock102PC := 131.
        ].
        recoveredBlock102Step = 131 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) isIleRepresentable.
            recoveredBlock102PC := 133.
        ].
        recoveredBlock102Step = 133 ifTrue: [
            (recoveredBlock102Stack1) ifTrue: [recoveredBlock102PC := 142] ifFalse: [recoveredBlock102PC := 136].
        ].
        recoveredBlock102Step = 136 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal2.
            recoveredBlock102PC := 139.
        ].
        recoveredBlock102Step = 139 ifTrue: [
            recoveredBlock102PC := 147.
        ].
        recoveredBlock102Step = 142 ifTrue: [
            recoveredBlock102Stack1 := nil.
            recoveredBlock102PC := 143.
        ].
        recoveredBlock102Step = 143 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Stack1.
            recoveredBlock102PC := 144.
        ].
        recoveredBlock102Step = 144 ifTrue: [
            recoveredLocal2 := recoveredBlock102Stack2.
            recoveredBlock102PC := 147.
        ].
        recoveredBlock102Step = 147 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoMulDivChildrenDo: (recoveredStack1) exponent: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulNoOverflowExpr.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 290].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := [:recoveredBlock176Arg1 :recoveredBlock176Arg2 :recoveredBlock176Arg3 | 
    | recoveredBlock176Stack0 recoveredBlock176Stack1 recoveredBlock176Stack2 recoveredBlock176Stack3 recoveredBlock176Stack4 recoveredBlock176Stack5 recoveredBlock176Stack6 recoveredBlock176PC recoveredBlock176Step recoveredBlock176Done recoveredBlock176Result |
    recoveredBlock176Stack0 := self.
    recoveredBlock176PC := 182.
    recoveredBlock176Done := false.
    [recoveredBlock176Done not] whileTrue: [
        recoveredBlock176Step := recoveredBlock176PC.
        recoveredBlock176Step = 182 ifTrue: [
            recoveredBlock176Stack1 := nil.
            recoveredBlock176PC := 183.
        ].
        recoveredBlock176Step = 183 ifTrue: [
            recoveredBlock176Stack2 := recoveredBlock176Arg1.
            recoveredBlock176PC := 184.
        ].
        recoveredBlock176Step = 184 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) hasIleNoSideEffects.
            recoveredBlock176PC := 186.
        ].
        recoveredBlock176Step = 186 ifTrue: [
            (recoveredBlock176Stack2) ifTrue: [recoveredBlock176PC := 190] ifFalse: [recoveredBlock176PC := 219].
        ].
        recoveredBlock176Step = 190 ifTrue: [
            recoveredBlock176PC := 191.
        ].
        recoveredBlock176Step = 191 ifTrue: [
            recoveredBlock176Stack1 := nil.
            recoveredBlock176PC := 192.
        ].
        recoveredBlock176Step = 192 ifTrue: [
            recoveredBlock176Stack2 := recoveredArg1.
            recoveredBlock176PC := 195.
        ].
        recoveredBlock176Step = 195 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) leftExpr.
            recoveredBlock176PC := 196.
        ].
        recoveredBlock176Step = 196 ifTrue: [
            recoveredBlock176Stack3 := recoveredBlock176Arg1.
            recoveredBlock176PC := 197.
        ].
        recoveredBlock176Step = 197 ifTrue: [
            recoveredBlock176Stack4 := recoveredBlock176Arg2.
            recoveredBlock176PC := 198.
        ].
        recoveredBlock176Step = 198 ifTrue: [
            recoveredBlock176Stack5 := 1.
            recoveredBlock176PC := 200.
        ].
        recoveredBlock176Step = 200 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) ileOptExpressionSimplificationMulDiv: (recoveredBlock176Stack3) rightExponent: (recoveredBlock176Stack4) exponent: (recoveredBlock176Stack5).
            recoveredBlock176PC := 203.
        ].
        recoveredBlock176Step = 203 ifTrue: [
            recoveredBlock176Stack3 := recoveredBlock176Stack2.
            recoveredBlock176PC := 204.
        ].
        recoveredBlock176Step = 204 ifTrue: [
            recoveredLocal1 := recoveredBlock176Stack3.
            recoveredBlock176PC := 207.
        ].
        recoveredBlock176Step = 207 ifTrue: [
            (recoveredBlock176Stack2 == nil) ifTrue: [recoveredBlock176PC := 219] ifFalse: [recoveredBlock176PC := 210].
        ].
        recoveredBlock176Step = 210 ifTrue: [
            recoveredBlock176PC := 211.
        ].
        recoveredBlock176Step = 211 ifTrue: [
            recoveredBlock176Stack1 := recoveredBlock176Arg3.
            recoveredBlock176PC := 212.
        ].
        recoveredBlock176Step = 212 ifTrue: [
            recoveredBlock176Stack2 := self.
            recoveredBlock176PC := 213.
        ].
        recoveredBlock176Step = 213 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) ileBuilder.
            recoveredBlock176PC := 215.
        ].
        recoveredBlock176Step = 215 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) literalOne.
            recoveredBlock176PC := 217.
        ].
        recoveredBlock176Step = 217 ifTrue: [
            recoveredBlock176Stack1 := (recoveredBlock176Stack1) value: (recoveredBlock176Stack2).
            recoveredBlock176PC := 219.
        ].
        recoveredBlock176Step = 219 ifTrue: [
            recoveredBlock176Result := recoveredBlock176Stack1.
            recoveredBlock176Done := true.
        ].
    ].
    recoveredBlock176Result
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := [:recoveredBlock222Arg1 | 
    | recoveredBlock222Stack0 recoveredBlock222Stack1 recoveredBlock222Stack2 recoveredBlock222Stack3 recoveredBlock222Stack4 recoveredBlock222Stack5 recoveredBlock222PC recoveredBlock222Step recoveredBlock222Done recoveredBlock222Result |
    recoveredBlock222Stack0 := self.
    recoveredBlock222PC := 228.
    recoveredBlock222Done := false.
    [recoveredBlock222Done not] whileTrue: [
        recoveredBlock222Step := recoveredBlock222PC.
        recoveredBlock222Step = 228 ifTrue: [
            recoveredBlock222Stack1 := recoveredArg1.
            recoveredBlock222PC := 231.
        ].
        recoveredBlock222Step = 231 ifTrue: [
            recoveredBlock222Stack2 := recoveredLocal1.
            recoveredBlock222PC := 234.
        ].
        recoveredBlock222Step = 234 ifTrue: [
            recoveredBlock222Stack3 := recoveredBlock222Arg1.
            recoveredBlock222PC := 235.
        ].
        recoveredBlock222Step = 235 ifTrue: [
            recoveredBlock222Stack4 := recoveredArg1.
            recoveredBlock222PC := 238.
        ].
        recoveredBlock222Step = 238 ifTrue: [
            recoveredBlock222Stack4 := (recoveredBlock222Stack4) rightExpr.
            recoveredBlock222PC := 239.
        ].
        recoveredBlock222Step = 239 ifTrue: [
            recoveredBlock222Stack4 := (recoveredBlock222Stack4) goalInterval.
            recoveredBlock222PC := 241.
        ].
        recoveredBlock222Step = 241 ifTrue: [
            recoveredBlock222Stack3 := (recoveredBlock222Stack3) asIleLimitOverflowExprGoalInterval: (recoveredBlock222Stack4).
            recoveredBlock222PC := 243.
        ].
        recoveredBlock222Step = 243 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) createOpLeftExpr: (recoveredBlock222Stack2) rightExpr: (recoveredBlock222Stack3).
            recoveredBlock222PC := 245.
        ].
        recoveredBlock222Step = 245 ifTrue: [
            recoveredLocal2 := recoveredBlock222Stack1.
            recoveredBlock222PC := 248.
        ].
        recoveredBlock222Step = 248 ifTrue: [
            recoveredBlock222Stack1 := recoveredLocal2.
            recoveredBlock222PC := 251.
        ].
        recoveredBlock222Step = 251 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) isIleRepresentable.
            recoveredBlock222PC := 253.
        ].
        recoveredBlock222Step = 253 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 264] ifFalse: [recoveredBlock222PC := 256].
        ].
        recoveredBlock222Step = 256 ifTrue: [
            recoveredBlock222Stack1 := recoveredArg1.
            recoveredBlock222PC := 259.
        ].
        recoveredBlock222Step = 259 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) isIleRepresentable.
            recoveredBlock222PC := 261.
        ].
        recoveredBlock222Step = 261 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 270] ifFalse: [recoveredBlock222PC := 264].
        ].
        recoveredBlock222Step = 264 ifTrue: [
            recoveredBlock222Stack1 := recoveredLocal2.
            recoveredBlock222PC := 267.
        ].
        recoveredBlock222Step = 267 ifTrue: [
            recoveredBlock222PC := 275.
        ].
        recoveredBlock222Step = 270 ifTrue: [
            recoveredBlock222Stack1 := nil.
            recoveredBlock222PC := 271.
        ].
        recoveredBlock222Step = 271 ifTrue: [
            recoveredBlock222Stack2 := recoveredBlock222Stack1.
            recoveredBlock222PC := 272.
        ].
        recoveredBlock222Step = 272 ifTrue: [
            recoveredLocal2 := recoveredBlock222Stack2.
            recoveredBlock222PC := 275.
        ].
        recoveredBlock222Step = 275 ifTrue: [
            recoveredBlock222Result := recoveredBlock222Stack1.
            recoveredBlock222Done := true.
        ].
    ].
    recoveredBlock222Result
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoMulDivChildrenDo: (recoveredStack1) exponent: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20622d48; bytecode file offset 0xf1f664"
!SGIlExpressionSimplification methodsFor: 'recovered'!
addSubExpr: recoveredArg1 factor: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 :recoveredBlock8Arg3 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) hasIleNoSideEffects.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 68].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ileBuilder.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg2.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) scalarConstant: (recoveredBlock8Stack3).
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ileOptExpressionSimplificationLeafFactor: (recoveredBlock8Stack2).
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local1.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack4 := 1.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) ileBuilder.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) optimizationFactory.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) expressionSimplificationVisitor.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) allowOverflow.
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) not.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ileOptExpressionSimplificationAddSub: (recoveredBlock8Stack3) factor: (recoveredBlock8Stack4) noOverflow: (recoveredBlock8Stack5).
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredLocal9 := recoveredBlock8Stack3.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 66] ifFalse: [recoveredBlock8PC := 58].
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg3.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ileBuilder.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) literalZero.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) value: (recoveredBlock8Stack2).
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack2 := nil.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 |
    recoveredBlock73Value0 := recoveredArg1.
    recoveredBlock73Value1 := recoveredLocal9.
    recoveredBlock73Value2 := recoveredBlock73Arg1.
    recoveredBlock73Value3 := (recoveredBlock73Value0) createOpLeftExpr: (recoveredBlock73Value1) rightExpr: (recoveredBlock73Value2).
    recoveredBlock73Value4 := recoveredBlock73Value3.
    recoveredLocal8 := recoveredBlock73Value4.
    recoveredBlock73Value3
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAddSubChildrenDo: (recoveredStack2) factor: (recoveredStack3) noOverflow: (recoveredStack4) onSuccess: (recoveredStack5).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSameOperator: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 554].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileOptExpressionSimplificationLeafFactor: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileOptExpressionSimplificationLeafFactor: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := [:recoveredBlock292Arg1 :recoveredBlock292Arg2 :recoveredBlock292Arg3 | 
    | recoveredBlock292Stack0 recoveredBlock292Stack1 recoveredBlock292Stack2 recoveredBlock292Stack3 recoveredBlock292Stack4 recoveredBlock292PC recoveredBlock292Step recoveredBlock292Done recoveredBlock292Result |
    recoveredBlock292Stack0 := self.
    recoveredBlock292PC := 298.
    recoveredBlock292Done := false.
    [recoveredBlock292Done not] whileTrue: [
        recoveredBlock292Step := recoveredBlock292PC.
        recoveredBlock292Step = 298 ifTrue: [
            recoveredBlock292Stack1 := nil.
            recoveredBlock292PC := 299.
        ].
        recoveredBlock292Step = 299 ifTrue: [
            recoveredBlock292Stack2 := recoveredBlock292Arg1.
            recoveredBlock292PC := 300.
        ].
        recoveredBlock292Step = 300 ifTrue: [
            recoveredBlock292Stack2 := (recoveredBlock292Stack2) hasIleNoSideEffects.
            recoveredBlock292PC := 301.
        ].
        recoveredBlock292Step = 301 ifTrue: [
            (recoveredBlock292Stack2) ifTrue: [recoveredBlock292PC := 304] ifFalse: [recoveredBlock292PC := 344].
        ].
        recoveredBlock292Step = 304 ifTrue: [
            recoveredBlock292Stack2 := recoveredBlock292Arg1.
            recoveredBlock292PC := 305.
        ].
        recoveredBlock292Step = 305 ifTrue: [
            recoveredBlock292Stack3 := recoveredLocal3.
            recoveredBlock292PC := 308.
        ].
        recoveredBlock292Step = 308 ifTrue: [
            recoveredBlock292Stack3 := (recoveredBlock292Stack3) last.
            recoveredBlock292PC := 310.
        ].
        recoveredBlock292Step = 310 ifTrue: [
            recoveredBlock292Stack2 := (recoveredBlock292Stack2) isIleIdentical: (recoveredBlock292Stack3).
            recoveredBlock292PC := 312.
        ].
        recoveredBlock292Step = 312 ifTrue: [
            (recoveredBlock292Stack2) ifTrue: [recoveredBlock292PC := 328] ifFalse: [recoveredBlock292PC := 316].
        ].
        recoveredBlock292Step = 316 ifTrue: [
            recoveredBlock292Stack2 := recoveredBlock292Arg1.
            recoveredBlock292PC := 317.
        ].
        recoveredBlock292Step = 317 ifTrue: [
            recoveredBlock292Stack3 := recoveredLocal2.
            recoveredBlock292PC := 320.
        ].
        recoveredBlock292Step = 320 ifTrue: [
            recoveredBlock292Stack3 := (recoveredBlock292Stack3) last.
            recoveredBlock292PC := 322.
        ].
        recoveredBlock292Step = 322 ifTrue: [
            recoveredBlock292Stack2 := (recoveredBlock292Stack2) isIleIdentical: (recoveredBlock292Stack3).
            recoveredBlock292PC := 324.
        ].
        recoveredBlock292Step = 324 ifTrue: [
            (recoveredBlock292Stack2) ifTrue: [recoveredBlock292PC := 328] ifFalse: [recoveredBlock292PC := 344].
        ].
        recoveredBlock292Step = 328 ifTrue: [
            recoveredBlock292PC := 329.
        ].
        recoveredBlock292Step = 329 ifTrue: [
            recoveredBlock292Stack1 := recoveredBlock292Arg1.
            recoveredBlock292PC := 330.
        ].
        recoveredBlock292Step = 330 ifTrue: [
            recoveredLocal5 := recoveredBlock292Stack1.
            recoveredBlock292PC := 333.
        ].
        recoveredBlock292Step = 333 ifTrue: [
            recoveredBlock292Stack1 := recoveredBlock292Arg2.
            recoveredBlock292PC := 334.
        ].
        recoveredBlock292Step = 334 ifTrue: [
            recoveredLocal4 := recoveredBlock292Stack1.
            recoveredBlock292PC := 337.
        ].
        recoveredBlock292Step = 337 ifTrue: [
            recoveredBlock292Stack1 := recoveredBlock292Arg3.
            recoveredBlock292PC := 338.
        ].
        recoveredBlock292Step = 338 ifTrue: [
            recoveredBlock292Stack2 := self.
            recoveredBlock292PC := 339.
        ].
        recoveredBlock292Step = 339 ifTrue: [
            recoveredBlock292Stack2 := (recoveredBlock292Stack2) ileBuilder.
            recoveredBlock292PC := 340.
        ].
        recoveredBlock292Step = 340 ifTrue: [
            recoveredBlock292Stack2 := (recoveredBlock292Stack2) literalZero.
            recoveredBlock292PC := 342.
        ].
        recoveredBlock292Step = 342 ifTrue: [
            recoveredBlock292Stack1 := (recoveredBlock292Stack1) value: (recoveredBlock292Stack2).
            recoveredBlock292PC := 344.
        ].
        recoveredBlock292Step = 344 ifTrue: [
            recoveredBlock292Result := recoveredBlock292Stack1.
            recoveredBlock292Done := true.
        ].
    ].
    recoveredBlock292Result
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack5 := [:recoveredBlock348Arg1 | 
    | recoveredBlock348Value0 recoveredBlock348Value1 |
    recoveredBlock348Value0 := recoveredBlock348Arg1.
    recoveredBlock348Value1 := recoveredBlock348Value0.
    recoveredLocal9 := recoveredBlock348Value1.
    recoveredBlock348Value0
].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAddSubChildrenDo: (recoveredStack2) factor: (recoveredStack3) noOverflow: (recoveredStack4) onSuccess: (recoveredStack5).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 538] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicType.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := (recoveredStack3) scalarConstant: (recoveredStack4).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 538].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := (recoveredStack3) scalarConstant: (recoveredStack4).
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 464] ifFalse: [recoveredPC := 538].
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 492].
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredPC := 514.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 522] ifFalse: [recoveredPC := 534].
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

