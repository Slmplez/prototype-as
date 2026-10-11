"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20095984; bytecode file offset 0x992290"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
asIfStmntList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asIfStmntList: (recoveredValue0) index: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20099020; bytecode file offset 0x9958dc"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalTrue.
    currentCondition := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac888; bytecode file offset 0x9a9170"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
listSysConst: recoveredArg1 checkFloat: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := collectSysConst.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) collect: (recoveredValue1) checkFloat: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad48c; bytecode file offset 0x9a9d5c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
sysConstTransformedStmnt: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) sysConstTransformedStmnt: (recoveredValue0) expr: (recoveredValue1) checkFloat: (false).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d76e0; bytecode file offset 0x9d3f9c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
countSysConst: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := collectSysConst.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) collectSystemConstants: (recoveredValue1).
    recoveredValue2 := collectSysConst.
    recoveredValue3 := (recoveredValue2) exprCount.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201760a0; bytecode file offset 0xa72964"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
hasFloatConstant: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) hasIleFloatConstant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) semErrNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017dfe8; bytecode file offset 0xa7a8a8"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
protectConditionDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := currentCondition.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) ileBuilder.
    recoveredValue2 := (recoveredValue1) literalFalse.
    currentCondition := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) value.
    recoveredValue4 := currentCondition.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    currentCondition := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201cae18; bytecode file offset 0xac76e8"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalFalse.
    currentCondition := recoveredValue1.
    recoveredValue2 := SGIlSystemConstantExpressionCollector.
    recoveredValue3 := (recoveredValue2) create.
    collectSysConst := recoveredValue3.
    recoveredValue4 := SGIlReplaceSystemConstantTransformation.
    recoveredValue5 := (recoveredValue4) create.
    replaceSysConst := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201fc4c8; bytecode file offset 0xaf8d90"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
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
            recoveredStack0 := super exprStmnt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022a738; bytecode file offset 0xb26ffc"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
replaceSysConst: recoveredArg1 with: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := replaceSysConst.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := recoveredArg2.
    recoveredBlock9Value3 := recoveredArg3.
    recoveredBlock9Value4 := (recoveredBlock9Value0) replace: (recoveredBlock9Value1) with: (recoveredBlock9Value2) in: (recoveredBlock9Value3).
    recoveredBlock9Value4
].
    recoveredValue4 := (recoveredValue0) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20245fac; bytecode file offset 0xb4287c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalTrue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super returnStmnt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028a208; bytecode file offset 0xb86b2c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 35].
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
            recoveredStack0 := super whileStmnt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleUnconditionalExitStmnt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBoolConstant: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028a230; bytecode file offset 0xb86b2c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 35].
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
            recoveredStack0 := super forStmnt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleUnconditionalExitStmnt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBoolConstant: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028a258; bytecode file offset 0xb86b2c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 35].
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
            recoveredStack0 := super repeatStmnt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleUnconditionalExitStmnt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBoolConstant: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e220; bytecode file offset 0xb9ab1c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2) checkFloat: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super ifThenStmnt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleUnconditionalExitStmnt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBoolConstant: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e248; bytecode file offset 0xb9ab1c"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstTransformedStmnt: (recoveredStack1) expr: (recoveredStack2) checkFloat: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super ifThenElseStmnt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleUnconditionalExitStmnt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBoolConstant: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c77f0; bytecode file offset 0xcc40d4"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
clauseCondition: recoveredArg1 of: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIleDefaultStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isIleDefaultStmnt.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 57] ifFalse: [recoveredBlock24PC := 36].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg2.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) expr.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) constantExpr.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) equal: (recoveredBlock24Stack3).
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) not.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) andExpr: (recoveredBlock24Stack2).
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) constantExpr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) equal: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e1760; bytecode file offset 0xcde050"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
switchStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleScalarConstant.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCompileTimeConstantExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmnt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := super abstractStatementList: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasIleUnconditionalExitStmnt.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBoolConstant: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            currentCondition := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 recoveredBlock52Value5 recoveredBlock52Value6 |
    recoveredBlock52Value0 := (self) ileBuilder.
    recoveredBlock52Value1 := recoveredArg1.
    recoveredBlock52Value2 := (recoveredBlock52Value1) expr.
    recoveredBlock52Value3 := recoveredLocal1.
    recoveredBlock52Value4 := recoveredArg1.
    recoveredBlock52Value5 := (recoveredBlock52Value4) expressionContext.
    recoveredBlock52Value6 := (recoveredBlock52Value0) switchExpr: (recoveredBlock52Value2) stmnt: (recoveredBlock52Value3) expressionContext: (recoveredBlock52Value5).
    recoveredBlock52Value6
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) useStatementSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIfStmntList: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20424a04; bytecode file offset 0xd212e0"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
cppIfThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) thenStmnt.
    recoveredBlock13Value2 := (self) visitNode: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal2 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectConditionDo: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := currentCondition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 |
    recoveredBlock80Value0 := recoveredLocal3.
    recoveredBlock80Value1 := recoveredLocal2.
    recoveredBlock80Value2 := (recoveredBlock80Value0) cppIfThenStmnt: (recoveredBlock80Value1).
    recoveredBlock80Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) useStatementSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c6dd0; bytecode file offset 0xdc36cc"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) blockedStmntList: (#()).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) ileBuilder.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := (self) ileBuilder.
    recoveredBlock14Value1 := (recoveredBlock14Value0) literalFalse.
    recoveredBlock14Value1
].
    recoveredValue4 := (recoveredValue2) useSource: (nil) for: (recoveredValue3).
    currentCondition := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) stmntList.
    recoveredValue7 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Local2 recoveredBlock32Local3 recoveredBlock32Local4 recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 recoveredBlock32Value7 recoveredBlock32Value8 recoveredBlock32Value9 |
    recoveredBlock32Value0 := [
    | recoveredBlock32Block38Value0 recoveredBlock32Block38Value1 recoveredBlock32Block38Value2 |
    recoveredBlock32Block38Value0 := recoveredBlock32Arg1.
    recoveredBlock32Block38Value1 := (self) visitNode: (recoveredBlock32Block38Value0).
    recoveredBlock32Block38Value2 := recoveredBlock32Block38Value1.
    recoveredBlock32Local3 := recoveredBlock32Block38Value2.
    recoveredBlock32Block38Value1
].
    recoveredBlock32Value1 := (self) protectConditionDo: (recoveredBlock32Value0).
    recoveredBlock32Local4 := recoveredBlock32Value1.
    recoveredBlock32Value2 := (self) ileBuilder.
    recoveredBlock32Value3 := [
    | recoveredBlock32Block62Value0 recoveredBlock32Block62Value1 recoveredBlock32Block62Value2 |
    recoveredBlock32Block62Value0 := recoveredBlock32Local4.
    recoveredBlock32Block62Value1 := currentCondition.
    recoveredBlock32Block62Value2 := (recoveredBlock32Block62Value0) orExpr: (recoveredBlock32Block62Value1).
    recoveredBlock32Block62Value2
].
    recoveredBlock32Value4 := (recoveredBlock32Value2) useSource: (nil) for: (recoveredBlock32Value3).
    currentCondition := recoveredBlock32Value4.
    recoveredBlock32Value5 := (self) ileBuilder.
    recoveredBlock32Value6 := recoveredBlock32Arg1.
    recoveredBlock32Value7 := (recoveredBlock32Value6) source.
    recoveredBlock32Value8 := [
    | recoveredBlock32Block87Value0 recoveredBlock32Block87Value1 recoveredBlock32Block87Value2 recoveredBlock32Block87Value3 recoveredBlock32Block87Value4 recoveredBlock32Block87Value5 recoveredBlock32Block87Value6 recoveredBlock32Block87Value7 recoveredBlock32Block87Value8 recoveredBlock32Block87Value9 recoveredBlock32Block87Value10 recoveredBlock32Block87Value11 recoveredBlock32Block87Value12 recoveredBlock32Block87Value13 |
    recoveredBlock32Block87Value0 := (self) ileBuilder.
    recoveredBlock32Block87Value1 := (recoveredBlock32Block87Value0) blockedStmntList: (#()).
    recoveredBlock32Local2 := recoveredBlock32Block87Value1.
    recoveredBlock32Block87Value2 := recoveredBlock32Local4.
    recoveredBlock32Block87Value3 := recoveredBlock32Local2.
    recoveredBlock32Block87Value4 := recoveredLocal1.
    recoveredBlock32Block87Value5 := (recoveredBlock32Block87Value4) asBlockedStatementList.
    recoveredBlock32Block87Value6 := (recoveredBlock32Block87Value2) cppIfThenStmnt: (recoveredBlock32Block87Value3) elseStmnt: (recoveredBlock32Block87Value5).
    recoveredBlock32Local1 := recoveredBlock32Block87Value6.
    recoveredBlock32Block87Value7 := (self) ileBuilder.
    recoveredBlock32Block87Value8 := OrderedCollection.
    recoveredBlock32Block87Value9 := recoveredBlock32Local3.
    recoveredBlock32Block87Value10 := recoveredBlock32Local1.
    recoveredBlock32Block87Value11 := (recoveredBlock32Block87Value8) with: (recoveredBlock32Block87Value9) with: (recoveredBlock32Block87Value10).
    recoveredBlock32Block87Value12 := (recoveredBlock32Block87Value7) stmntList: (recoveredBlock32Block87Value11).
    recoveredBlock32Block87Value13 := recoveredBlock32Block87Value12.
    recoveredLocal1 := recoveredBlock32Block87Value13.
    recoveredBlock32Block87Value12
].
    recoveredBlock32Value9 := (recoveredBlock32Value5) useStatementSource: (recoveredBlock32Value7) for: (recoveredBlock32Value8).
    recoveredBlock32Value9
].
    (recoveredValue6) reverseDo: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) stmntList.
    recoveredValue11 := (recoveredValue8) createWithChildren: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x204d5858; bytecode file offset 0xdd2138"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) thenStmnt.
    recoveredBlock13Value2 := (self) visitNode: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal2 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectConditionDo: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredArg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) elseStmnt.
    recoveredBlock35Value2 := (self) visitNode: (recoveredBlock35Value1).
    recoveredBlock35Value3 := recoveredBlock35Value2.
    recoveredLocal1 := recoveredBlock35Value3.
    recoveredBlock35Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectConditionDo: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := currentCondition.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := currentCondition.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 |
    recoveredBlock132Value0 := recoveredLocal5.
    recoveredBlock132Value1 := recoveredLocal2.
    recoveredBlock132Value2 := recoveredLocal1.
    recoveredBlock132Value3 := (recoveredBlock132Value0) cppIfThenStmnt: (recoveredBlock132Value1) elseStmnt: (recoveredBlock132Value2).
    recoveredBlock132Value3
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) useStatementSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054c448; bytecode file offset 0xe48d64"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
asIfStmntList: recoveredArg1 index: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) stmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyStmnt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDefaultStmnt.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) clauseCondition: (recoveredStack2) of: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock95Local1 recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal5.
            recoveredBlock95PC := 105.
        ].
        recoveredBlock95Step = 105 ifTrue: [
            recoveredBlock95Stack2 := recoveredLocal3.
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) at: (recoveredBlock95Stack2).
            recoveredBlock95PC := 110.
        ].
        recoveredBlock95Step = 110 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack1.
            recoveredBlock95PC := 111.
        ].
        recoveredBlock95Step = 111 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal1.
            recoveredBlock95PC := 114.
        ].
        recoveredBlock95Step = 114 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Local1.
            recoveredBlock95PC := 115.
        ].
        recoveredBlock95Step = 115 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) stmnt.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) asIleCopy.
            recoveredBlock95PC := 118.
        ].
        recoveredBlock95Step = 118 ifTrue: [
            (recoveredBlock95Stack1) add: (recoveredBlock95Stack2).
            recoveredBlock95PC := 120.
        ].
        recoveredBlock95Step = 120 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal3.
            recoveredBlock95PC := 123.
        ].
        recoveredBlock95Step = 123 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) + (1).
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredLocal3 := recoveredBlock95Stack1.
            recoveredBlock95PC := 127.
        ].
        recoveredBlock95Step = 127 ifTrue: [
            recoveredBlock95Stack1 := false.
            recoveredBlock95PC := 128.
        ].
        recoveredBlock95Step = 128 ifTrue: [
            recoveredBlock95Stack2 := recoveredLocal3.
            recoveredBlock95PC := 131.
        ].
        recoveredBlock95Step = 131 ifTrue: [
            recoveredBlock95Stack3 := recoveredLocal5.
            recoveredBlock95PC := 134.
        ].
        recoveredBlock95Step = 134 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) size.
            recoveredBlock95PC := 135.
        ].
        recoveredBlock95Step = 135 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) <= (recoveredBlock95Stack3).
            recoveredBlock95PC := 136.
        ].
        recoveredBlock95Step = 136 ifTrue: [
            (recoveredBlock95Stack2) ifTrue: [recoveredBlock95PC := 140] ifFalse: [recoveredBlock95PC := 145].
        ].
        recoveredBlock95Step = 140 ifTrue: [
            recoveredBlock95PC := 141.
        ].
        recoveredBlock95Step = 141 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Local1.
            recoveredBlock95PC := 142.
        ].
        recoveredBlock95Step = 142 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock95PC := 144.
        ].
        recoveredBlock95Step = 144 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) not.
            recoveredBlock95PC := 145.
        ].
        recoveredBlock95Step = 145 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) whileTrue.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock154Local1 recoveredBlock154Stack0 recoveredBlock154Stack1 recoveredBlock154Stack2 recoveredBlock154Stack3 recoveredBlock154Stack4 recoveredBlock154Stack5 recoveredBlock154Stack6 recoveredBlock154PC recoveredBlock154Step recoveredBlock154Done recoveredBlock154Result |
    recoveredBlock154Stack0 := self.
    recoveredBlock154PC := 160.
    recoveredBlock154Done := false.
    [recoveredBlock154Done not] whileTrue: [
        recoveredBlock154Step := recoveredBlock154PC.
        recoveredBlock154Step = 160 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) ileBuilder.
            recoveredBlock154PC := 161.
        ].
        recoveredBlock154Step = 161 ifTrue: [
            recoveredBlock154Stack1 := recoveredLocal1.
            recoveredBlock154PC := 164.
        ].
        recoveredBlock154Step = 164 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) blockedStmntList: (recoveredBlock154Stack1).
            recoveredBlock154PC := 166.
        ].
        recoveredBlock154Step = 166 ifTrue: [
            recoveredBlock154Local1 := recoveredBlock154Stack0.
            recoveredBlock154PC := 167.
        ].
        recoveredBlock154Step = 167 ifTrue: [
            recoveredBlock154Stack0 := recoveredBlock154Local1.
            recoveredBlock154PC := 168.
        ].
        recoveredBlock154Step = 168 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) isIleOpimizableLabeledStmnt.
            recoveredBlock154PC := 170.
        ].
        recoveredBlock154Step = 170 ifTrue: [
            (recoveredBlock154Stack0) ifTrue: [recoveredBlock154PC := 174] ifFalse: [recoveredBlock154PC := 182].
        ].
        recoveredBlock154Step = 174 ifTrue: [
            recoveredBlock154Stack0 := recoveredBlock154Local1.
            recoveredBlock154PC := 175.
        ].
        recoveredBlock154Step = 175 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) asIleOpimizedLabeledStmnt.
            recoveredBlock154PC := 177.
        ].
        recoveredBlock154Step = 177 ifTrue: [
            recoveredBlock154Local1 := recoveredBlock154Stack0.
            recoveredBlock154PC := 178.
        ].
        recoveredBlock154Step = 178 ifTrue: [
            recoveredBlock154PC := 186.
        ].
        recoveredBlock154Step = 182 ifTrue: [
            recoveredBlock154Stack0 := recoveredBlock154Local1.
            recoveredBlock154PC := 183.
        ].
        recoveredBlock154Step = 183 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) asIleSwitchWrapped.
            recoveredBlock154PC := 185.
        ].
        recoveredBlock154Step = 185 ifTrue: [
            recoveredBlock154Local1 := recoveredBlock154Stack0.
            recoveredBlock154PC := 186.
        ].
        recoveredBlock154Step = 186 ifTrue: [
            recoveredBlock154Stack0 := self.
            recoveredBlock154PC := 187.
        ].
        recoveredBlock154Step = 187 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) ileBuilder.
            recoveredBlock154PC := 188.
        ].
        recoveredBlock154Step = 188 ifTrue: [
            recoveredBlock154Stack1 := recoveredLocal2.
            recoveredBlock154PC := 191.
        ].
        recoveredBlock154Step = 191 ifTrue: [
            recoveredBlock154Stack2 := recoveredBlock154Local1.
            recoveredBlock154PC := 192.
        ].
        recoveredBlock154Step = 192 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) asBlockedStatementList.
            recoveredBlock154PC := 194.
        ].
        recoveredBlock154Step = 194 ifTrue: [
            recoveredBlock154Stack3 := self.
            recoveredBlock154PC := 195.
        ].
        recoveredBlock154Step = 195 ifTrue: [
            recoveredBlock154Stack4 := recoveredArg1.
            recoveredBlock154PC := 198.
        ].
        recoveredBlock154Step = 198 ifTrue: [
            recoveredBlock154Stack5 := recoveredArg2.
            recoveredBlock154PC := 201.
        ].
        recoveredBlock154Step = 201 ifTrue: [
            recoveredBlock154Stack5 := (recoveredBlock154Stack5) + (1).
            recoveredBlock154PC := 202.
        ].
        recoveredBlock154Step = 202 ifTrue: [
            recoveredBlock154Stack3 := (recoveredBlock154Stack3) asIfStmntList: (recoveredBlock154Stack4) index: (recoveredBlock154Stack5).
            recoveredBlock154PC := 204.
        ].
        recoveredBlock154Step = 204 ifTrue: [
            recoveredBlock154Stack3 := (recoveredBlock154Stack3) asBlockedStatementList.
            recoveredBlock154PC := 206.
        ].
        recoveredBlock154Step = 206 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) ifExpr: (recoveredBlock154Stack1) thenStmnt: (recoveredBlock154Stack2) elseStmnt: (recoveredBlock154Stack3).
            recoveredBlock154PC := 209.
        ].
        recoveredBlock154Step = 209 ifTrue: [
            recoveredBlock154Stack1 := recoveredLocal4.
            recoveredBlock154PC := 212.
        ].
        recoveredBlock154Step = 212 ifTrue: [
            recoveredBlock154Stack1 := (recoveredBlock154Stack1) comments.
            recoveredBlock154PC := 214.
        ].
        recoveredBlock154Step = 214 ifTrue: [
            recoveredBlock154Stack0 := (recoveredBlock154Stack0) createNoOpComments: (recoveredBlock154Stack1).
            recoveredBlock154PC := 216.
        ].
        recoveredBlock154Step = 216 ifTrue: [
            recoveredBlock154Result := recoveredBlock154Stack0.
            recoveredBlock154Done := true.
        ].
    ].
    recoveredBlock154Result
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) useStatementSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20610f38; bytecode file offset 0xf0d880"
!SGIlResolveSystemConstantsAtCompileTimeStmnt60Transformation methodsFor: 'recovered'!
sysConstTransformedStmnt: recoveredArg1 expr: recoveredArg2 checkFloat: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) listSysConst: (recoveredStack1) checkFloat: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := collectSysConst.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 141] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalTrue.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleReplaceSystemConstantTransformationCopy.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceSysConst: (recoveredStack1) with: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalFalse.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleReplaceSystemConstantTransformationCopy.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceSysConst: (recoveredStack1) with: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 recoveredBlock102Value4 recoveredBlock102Value5 recoveredBlock102Value6 recoveredBlock102Value7 recoveredBlock102Value8 recoveredBlock102Value9 recoveredBlock102Value10 recoveredBlock102Value11 |
    recoveredBlock102Value0 := recoveredLocal6.
    recoveredBlock102Value1 := (self) ileBuilder.
    recoveredBlock102Value2 := Array.
    recoveredBlock102Value3 := recoveredLocal4.
    recoveredBlock102Value4 := (recoveredBlock102Value2) with: (recoveredBlock102Value3).
    recoveredBlock102Value5 := (recoveredBlock102Value1) blockedStmntList: (recoveredBlock102Value4).
    recoveredBlock102Value6 := (self) ileBuilder.
    recoveredBlock102Value7 := Array.
    recoveredBlock102Value8 := recoveredLocal3.
    recoveredBlock102Value9 := (recoveredBlock102Value7) with: (recoveredBlock102Value8).
    recoveredBlock102Value10 := (recoveredBlock102Value6) blockedStmntList: (recoveredBlock102Value9).
    recoveredBlock102Value11 := (recoveredBlock102Value0) cppIfThenStmnt: (recoveredBlock102Value5) elseStmnt: (recoveredBlock102Value10).
    recoveredBlock102Value11
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 241.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := (recoveredStack4) createIntConstant: (recoveredStack5).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIleReplaceSystemConstantTransformationCopy.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := (recoveredStack5) first.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) replaceSysConst: (recoveredStack3) with: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := (recoveredStack4) breakStmnt.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock209Value0 recoveredBlock209Value1 recoveredBlock209Value2 recoveredBlock209Value3 recoveredBlock209Value4 recoveredBlock209Value5 recoveredBlock209Value6 recoveredBlock209Value7 |
    recoveredBlock209Value0 := (self) ileBuilder.
    recoveredBlock209Value1 := (self) ileBuilder.
    recoveredBlock209Value2 := recoveredLocal1.
    recoveredBlock209Value3 := (recoveredBlock209Value1) createIntConstant: (recoveredBlock209Value2).
    recoveredBlock209Value4 := (self) ileBuilder.
    recoveredBlock209Value5 := recoveredLocal3.
    recoveredBlock209Value6 := (recoveredBlock209Value4) stmntList: (recoveredBlock209Value5).
    recoveredBlock209Value7 := (recoveredBlock209Value0) expr: (recoveredBlock209Value3) caseStmnt: (recoveredBlock209Value6).
    recoveredBlock209Value7
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) useSource: (recoveredStack4) for: (recoveredStack5).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 156] ifFalse: [recoveredPC := 269]] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 265] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleReplaceSystemConstantTransformationCopy.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceSysConst: (recoveredStack1) with: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 399] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSingleton.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIntConstant: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredPC := 390.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceSysConst: (recoveredStack1) with: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := (recoveredStack2) breakStmnt.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock425Value0 recoveredBlock425Value1 recoveredBlock425Value2 recoveredBlock425Value3 recoveredBlock425Value4 |
    recoveredBlock425Value0 := (self) ileBuilder.
    recoveredBlock425Value1 := (self) ileBuilder.
    recoveredBlock425Value2 := recoveredLocal3.
    recoveredBlock425Value3 := (recoveredBlock425Value1) stmntList: (recoveredBlock425Value2).
    recoveredBlock425Value4 := (recoveredBlock425Value0) defaultStmnt: (recoveredBlock425Value3).
    recoveredBlock425Value4
].
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock457Value0 recoveredBlock457Value1 recoveredBlock457Value2 recoveredBlock457Value3 recoveredBlock457Value4 recoveredBlock457Value5 recoveredBlock457Value6 recoveredBlock457Value7 |
    recoveredBlock457Value0 := (self) ileBuilder.
    recoveredBlock457Value1 := recoveredLocal6.
    recoveredBlock457Value2 := (self) ileBuilder.
    recoveredBlock457Value3 := recoveredLocal4.
    recoveredBlock457Value4 := (recoveredBlock457Value2) stmntList: (recoveredBlock457Value3).
    recoveredBlock457Value5 := SGCgExpressionContext.
    recoveredBlock457Value6 := (recoveredBlock457Value5) uintContext.
    recoveredBlock457Value7 := (recoveredBlock457Value0) switchExpr: (recoveredBlock457Value1) stmnt: (recoveredBlock457Value4) expressionContext: (recoveredBlock457Value6).
    recoveredBlock457Value7
].
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

