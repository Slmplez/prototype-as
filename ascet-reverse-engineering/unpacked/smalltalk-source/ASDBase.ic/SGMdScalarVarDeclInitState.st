"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000acd0; bytecode file offset 0x908be4"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
copy
    | recoveredValue0 |
    recoveredValue0 := (self) shallowCopy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066934; bytecode file offset 0x963428"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
minCondition
    | recoveredValue0 |
    recoveredValue0 := minCondition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066cdc; bytecode file offset 0x9646f8"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
maxCondition
    | recoveredValue0 |
    recoveredValue0 := maxCondition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200691bc; bytecode file offset 0x965b90"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
errInfo
    | recoveredValue0 |
    recoveredValue0 := errInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f50; bytecode file offset 0x966bdc"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
errorNo
    | recoveredValue0 |
    recoveredValue0 := errorNo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097294; bytecode file offset 0x993b54"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
isCompletelyUninitialized: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) maxCondition.
    recoveredValue1 := (recoveredValue0) not.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) andExpr: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) isIleConstantValueTrue.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20164d98; bytecode file offset 0xa61658"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
isMdlIdenticalState: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) minCondition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) minCondition.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasIleAlternativelyTheSameValueAs: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxCondition.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxCondition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20168efc; bytecode file offset 0xa657c4"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
optimizedCheckExpr: recoveredArg1 isImpliedBy: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalFalse.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileOptimizeExprByTrueFalseDistinction.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017868c; bytecode file offset 0xa74f4c"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
initializeErrorNo: recoveredArg1 condition: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) initialize.
    recoveredValue0 := recoveredArg2.
    minCondition := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    maxCondition := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    errInfo := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    errorNo := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201a8e68; bytecode file offset 0xaa575c"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
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
    'This method should not be called for ScalarVarDeclInitState.'
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

"ASDBase.ic method 0x201a9a6c; bytecode file offset 0xaa6360"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
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
    'This method should not be called for ScalarVarDeclInitState.'
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

"ASDBase.ic method 0x201dc798; bytecode file offset 0xad9064"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
addPossibleWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := maxCondition.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) optimizedOrLeft: (recoveredValue0) right: (recoveredValue1).
    maxCondition := recoveredValue2.
    recoveredValue3 := Set.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: ('possibly ') with: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) with: (recoveredValue7).
    errInfo := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x2020fe6c; bytecode file offset 0xb0c734"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
printStateOn: recoveredArg1 keyErrLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) nextPutAll: (' -> ').
    recoveredValue3 := minCondition.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printCCodeOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) nextPutAll: (' // ').
    recoveredValue6 := maxCondition.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) printCCodeOn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) cr.
    ^self
! !

"ASDBase.ic method 0x20241210; bytecode file offset 0xb3dadc"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
addWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := minCondition.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) optimizedOrLeft: (recoveredValue0) right: (recoveredValue1).
    minCondition := recoveredValue2.
    recoveredValue3 := maxCondition.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) optimizedOrLeft: (recoveredValue3) right: (recoveredValue4).
    maxCondition := recoveredValue5.
    recoveredValue6 := Set.
    recoveredValue7 := Array.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue7) with: (recoveredValue8) with: ('') with: (recoveredValue9).
    recoveredValue11 := (recoveredValue6) with: (recoveredValue10).
    errInfo := recoveredValue11.
    ^self
! !

"ASDBase.ic method 0x202993c0; bytecode file offset 0xb95c80"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
optimizedAndLeft: recoveredArg1 right: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20299400; bytecode file offset 0xb95cc0"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
optimizedOrLeft: recoveredArg1 right: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033bdd0; bytecode file offset 0xc386ac"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
unionWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (self) class.
    recoveredBlock4Value2 := (recoveredBlock4Value0) isKindOf: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    'merge is only implementated for same kind of states'
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := minCondition.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) minCondition.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizedOrLeft: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            minCondition := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := maxCondition.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxCondition.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizedOrLeft: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            maxCondition := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := errInfo.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) errInfo.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033be40; bytecode file offset 0xc38720"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
intersectWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (self) class.
    recoveredBlock4Value2 := (recoveredBlock4Value0) isKindOf: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    'merge is only implementated for same kind of states'
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := minCondition.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) minCondition.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizedAndLeft: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            minCondition := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := maxCondition.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxCondition.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizedOrLeft: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            maxCondition := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := errInfo.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) errInfo.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039c278; bytecode file offset 0xc98b4c"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
checkReadAccessVarDecl: recoveredArg1 accessChain: recoveredArg2 currentCondition: recoveredArg3 errLabelBlock: recoveredArg4 onlyWarning: recoveredArg5 source: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 822.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := maxCondition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizedCheckExpr: (recoveredStack2) isImpliedBy: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorNo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredArg6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack7 := maxCondition.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) messageSource: (recoveredStack5) currentCondition: (recoveredStack6) writeCondition: (recoveredStack7).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := minCondition.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizedCheckExpr: (recoveredStack1) isImpliedBy: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValueFalse.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNo.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := recoveredArg6.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack6 := minCondition.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) messageSource: (recoveredStack4) currentCondition: (recoveredStack5) writeCondition: (recoveredStack6).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e1f5c; bytecode file offset 0xdde860"
!SGMdScalarVarDeclInitState methodsFor: 'recovered'!
messageSource: recoveredArg1 currentCondition: recoveredArg2 writeCondition: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'The variable has never been assigned'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) errInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block2810867cArg1 :block2810867cArg2 | 
    | block2810867cValue0 block2810867cValue1 block2810867cValue2 block2810867cValue3 block2810867cValue4 block2810867cValue5 block2810867cValue6 |
    block2810867cValue0 := block2810867cArg1.
    block2810867cValue1 := (block2810867cValue0) at: (1).
    block2810867cValue2 := (block2810867cValue1) ascetLink.
    block2810867cValue3 := block2810867cArg2.
    block2810867cValue4 := (block2810867cValue3) at: (1).
    block2810867cValue5 := (block2810867cValue4) ascetLink.
    block2810867cValue6 := (block2810867cValue2) <= (block2810867cValue5).
    block2810867cValue6
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 recoveredBlock64Value7 recoveredBlock64Value8 recoveredBlock64Value9 recoveredBlock64Value10 recoveredBlock64Value11 |
    recoveredBlock64Value0 := recoveredLocal2.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) first.
    (recoveredBlock64Value0) add: (recoveredBlock64Value2).
    recoveredBlock64Value3 := recoveredLocal1.
    recoveredBlock64Value4 := recoveredBlock64Arg1.
    recoveredBlock64Value5 := (recoveredBlock64Value4) at: (2).
    recoveredBlock64Value6 := ('Condition for write access: ') , (recoveredBlock64Value5).
    recoveredBlock64Value7 := recoveredBlock64Arg1.
    recoveredBlock64Value8 := (recoveredBlock64Value7) last.
    recoveredBlock64Value9 := (recoveredBlock64Value8) debugCode.
    recoveredBlock64Value10 := (recoveredBlock64Value6) , (recoveredBlock64Value9).
    recoveredBlock64Value11 := (recoveredBlock64Value3) add: (recoveredBlock64Value10).
    recoveredBlock64Value11
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'Common condition for assignment: '.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) debugCode.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValueTrue.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'Condition for read access: '.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) debugCode.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiSource: (recoveredStack1) labels: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

