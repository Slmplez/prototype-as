"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d29c; bytecode file offset 0x909e08"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlAbstractInterface: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d3bc; bytecode file offset 0x909e08"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
logicNode: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d4ac; bytecode file offset 0x909e08"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlInitValueUnused: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2002a724; bytecode file offset 0x934580"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
skipFurtherAnalysis
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) skipFurtherAnalysis.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d338; bytecode file offset 0x93bf94"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
importsTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := (recoveredValue0) importList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003de68; bytecode file offset 0x93bf94"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodeManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c334; bytecode file offset 0x959680"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20085410; bytecode file offset 0x981cc8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
processDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) semAnaInlining: (recoveredValue0).
    ^true
! !

"ASDBase.ic method 0x200969a4; bytecode file offset 0x9932f0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlInterrunnableVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super mdlInterrunnableVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8f5c; bytecode file offset 0x9c5818"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaClass: recoveredArg1 withCast: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) source.
    recoveredValue4 := (self) semAnaClass: (recoveredValue0) withCast: (recoveredValue1) assignSource: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e70cc; bytecode file offset 0x9e3994"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
lookupInImportList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    recoveredValue2 := (recoveredValue1) importList.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue2) lookup: (recoveredValue3) ifFail: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fe15c; bytecode file offset 0x9faa30"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlLoop: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) semAnaIsBoolean: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) exprChild.
    (self) semAnaBoolNoAssign: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x200fe170; bytecode file offset 0x9faa30"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) semAnaIsBoolean: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) exprChild.
    (self) semAnaBoolNoAssign: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x200fe3f0; bytecode file offset 0x9facfc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) semAnaExpressionHasEffect: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super exprStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fe4c4; bytecode file offset 0x9fad84"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaIsIntegerOrAbstractEnum: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) semAnaIsInteger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fe50c; bytecode file offset 0x9fadcc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaIsRelational: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumerationType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaIsArithmetic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20111a88; bytecode file offset 0xa0e34c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaClass: recoveredArg1 withCastLeft: recoveredArg2 right: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) errLabelWithoutRefDeref.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) mdlClass.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) source.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) semAnaClass: (recoveredValue0) withCastLeft: (recoveredValue2) type: (recoveredValue4) source: (recoveredValue6) right: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201205f4; bytecode file offset 0xa1ceb4"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
exitStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVoid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 53.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201456cc; bytecode file offset 0xa41f90"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaNotFixed: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgFixedCharTableInModel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 670.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149070; bytecode file offset 0xa45934"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaClass: recoveredArg1 withCastLeft: recoveredArg2 type: recoveredArg3 source: recoveredArg4 right: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg5.
    recoveredValue2 := (recoveredValue1) mdlClass.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue5) errLabelWithoutRefDeref.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg5.
    recoveredValue9 := (recoveredValue8) source.
    recoveredValue10 := (recoveredValue0) semAnaOperationType: (recoveredValue2) operation: (recoveredValue3) leftLabel: (recoveredValue4) rightLabel: (recoveredValue6) leftSource: (recoveredValue7) rightSource: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20154774; bytecode file offset 0xa5103c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaBoolNoAssign: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlAssignExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 31.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154820; bytecode file offset 0xa510e8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlAbstractComponentInterface: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasInstanceVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) cgOptSinglelnstance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super mdlAbstractComponentInterface: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154850; bytecode file offset 0xa51114"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaIsBoolean: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaIsANSIC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBoolean.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) mdlSemErrExpectedBoolean.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154a20; bytecode file offset 0xa512fc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlSRInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sortedInstVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) semAnaKindVariable: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) mdlAbstractDataTypeInterface: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20154a38; bytecode file offset 0xa512fc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlDataInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sortedInstVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) semAnaKindVariable: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) mdlAbstractDataTypeInterface: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20154b34; bytecode file offset 0xa513f8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlARTimingEvent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) period.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isZero.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 124.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20166020; bytecode file offset 0xa628e8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) child.
    recoveredValue3 := (recoveredValue2) asMdlDereferencedExpr.
    (recoveredValue0) child: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) child.
    (self) semAnaIsBoolean: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) child.
    (self) semAnaBoolNoAssign: (recoveredValue7).
    ^true
! !

"ASDBase.ic method 0x20169aec; bytecode file offset 0xa663b0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaTypeMismatch: recoveredArg1 with: recoveredArg2 assignSource: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) errLabelWithoutRefDeref.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) source.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) mdlClass.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) errLabelWithoutRefDeref.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) source.
    recoveredValue12 := recoveredArg3.
    (recoveredValue1) semAnaTypeMismatch: (recoveredValue3) leftSource: (recoveredValue5) right: (recoveredValue7) rightErrLabel: (recoveredValue9) rightSource: (recoveredValue11) source: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2017d240; bytecode file offset 0xa79b2c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
varDeclForAlias: recoveredArg1 scope: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    recoveredValue2 := (recoveredValue1) importList.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) mdlKey.
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue2) lookup: (recoveredValue4) ifFail: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [].
    recoveredValue10 := (recoveredValue7) lookup: (recoveredValue8) ifFail: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201a4348; bytecode file offset 0xaa0c24"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlInitValueAbstractComplex: recoveredArg1
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
    'Semantic analysis should be implemented for each MdInitValueAbstractComplex'
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

"ASDBase.ic method 0x201a61e8; bytecode file offset 0xaa2ab0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
task: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'main'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 341.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'task'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ed95c; bytecode file offset 0xaea224"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super fieldAccess: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) semanticAnalysis.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) semAnaFieldAccessRead: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020e084; bytecode file offset 0xb0a95c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
specialEnumCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertToNumericalMethodName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'unknown special function ('.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) mdlFatalExpect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020e0d0; bytecode file offset 0xb0a9a8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
classVarDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithGenericPhysicalUnit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 23.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := 'with scope exported or imported'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := (recoveredStack5) physicalUnit.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) iaSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := super classVarDecl: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021b878; bytecode file offset 0xb18144"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
attribute: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'typeSize'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'basicType'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 26.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021e7e8; bytecode file offset 0xb1b0a4"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaClass: recoveredArg1 withCast: recoveredArg2 assignSource: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Arg2.
    recoveredBlock13Value2 := recoveredArg3.
    recoveredBlock13Value3 := (self) semAnaTypeMismatch: (recoveredBlock13Value0) with: (recoveredBlock13Value1) assignSource: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    recoveredValue4 := (self) semAnaClass: (recoveredValue0) withCast: (recoveredValue1) assignSource: (recoveredValue2) onReferenceError: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20234f58; bytecode file offset 0xb31828"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaImplementation: recoveredArg1 as: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 610.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20238388; bytecode file offset 0xb34c50"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) semAnaIsBoolean: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) semAnaBoolNoAssign: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) exprChild.
    recoveredValue7 := (recoveredValue6) at: (1).
    (self) semAnaExpressionHasEffect: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) exprChild.
    recoveredValue10 := (recoveredValue9) at: (3).
    (self) semAnaExpressionHasEffect: (recoveredValue10).
    ^true
! !

"ASDBase.ic method 0x2023eb34; bytecode file offset 0xb3b408"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEmptyStmnt.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasMdlUnconditionalReturnOrEndCase.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMethodDecl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrBlockDiagram.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 885.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202415c8; bytecode file offset 0xb3dea0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaIllegalModuleType: recoveredArg1 errNo: recoveredArg2 errLabel: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComplexClassNoEnumType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModule.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024acec; bytecode file offset 0xb475bc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftChild.
    recoveredValue3 := (recoveredValue2) asMdlDereferencedExpr.
    (recoveredValue0) leftChild: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) rightChild.
    recoveredValue7 := (recoveredValue6) asMdlDereferencedExpr.
    (recoveredValue4) rightChild: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) leftChild.
    (self) semAnaIsBoolean: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) leftChild.
    (self) semAnaBoolNoAssign: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) rightChild.
    (self) semAnaIsBoolean: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) rightChild.
    (self) semAnaBoolNoAssign: (recoveredValue15).
    ^true
! !

"ASDBase.ic method 0x2024b04c; bytecode file offset 0xb47918"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaSystemConstant: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSystemConstant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSystemConstantPermitted.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 93.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202782cc; bytecode file offset 0xb74ba8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
createMultiSource: recoveredArg1 forVarDecls: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280e1000Arg1 | 
    | block280e1000Value0 block280e1000Value1 |
    block280e1000Value0 := block280e1000Arg1.
    block280e1000Value1 := (block280e1000Value0) source.
    block280e1000Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := [:block280e1024Arg1 | 
    | block280e1024Value0 block280e1024Value1 block280e1024Value2 block280e1024Value3 block280e1024Value4 block280e1024Value5 block280e1024Value6 |
    block280e1024Value0 := block280e1024Arg1.
    block280e1024Value1 := (block280e1024Value0) errLabel.
    block280e1024Value2 := (block280e1024Value1) , (' uses model type ').
    block280e1024Value3 := block280e1024Arg1.
    block280e1024Value4 := (block280e1024Value3) mdlClass.
    block280e1024Value5 := (block280e1024Value4) asModelType.
    block280e1024Value6 := (block280e1024Value2) , (block280e1024Value5).
    block280e1024Value6
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMultiSource: (recoveredStack2) labels: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20285a54; bytecode file offset 0xb8231c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
isErrorDueToReadWriteFlagsLhs: recoveredArg1 rhs: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleScalarType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleScalarType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeCompatibleNoBaseType: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeIdentical: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20292c28; bytecode file offset 0xb8f500"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) child: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super unaryArithmeticExpr: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) child.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaOperation: (recoveredStack1) leftLabel: (recoveredStack2) leftSource: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a162c; bytecode file offset 0xb9df0c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlVarDeclWithInit: recoveredArg1
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
            (recoveredStack0) semAnaVirtual: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrDeprecatedCClassReference.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 793.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) semAnaNVRAMVarDeclWithInit: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) semAnaExternStructVarDeclWithInit: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) semAnaRedundantData: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := super mdlVarDeclWithInit: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a16ec; bytecode file offset 0xb9dfc0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaVirtual: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVirtual.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 452.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrVolatile.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 400.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ac054; bytecode file offset 0xba8928"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaReferenceReadWrite: recoveredArg1 lValue: recoveredArg2 expr: recoveredArg3 onError: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlPrimitiveBaseClassType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIndexedExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCompatibleReadWriteReference: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrImplicitReference.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlExplicitReference.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c9af4; bytecode file offset 0xbc63d4"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
specialConvertContCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCgDereferencedType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleScalarType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeAssignmentCompatibleFrom: (recoveredStack2) generator: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) semAnaTypeMismatch: (recoveredStack2) with: (recoveredStack3) assignSource: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d12f8; bytecode file offset 0xbcdbd0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaCheckServiceRoutine: recoveredArg1 type: recoveredArg2 errLabel: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAllowedInServiceRoutine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrProductionCodeOnly.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 105.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabelWithoutReadWrite.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202daa78; bytecode file offset 0xbd7358"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaAssignReferenceReadWrite: recoveredArg1 lValue: recoveredArg2 expr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) mdlClass.
    recoveredValue3 := (recoveredValue2) internalAccess.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) errLabel.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) mdlClass.
    recoveredValue8 := (recoveredValue7) internalAccess.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) errLabel.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) source.
    recoveredValue13 := Array.
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := (recoveredValue14) source.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) source.
    recoveredValue18 := (recoveredValue13) with: (recoveredValue15) with: (recoveredValue17).
    recoveredValue19 := Array.
    recoveredValue20 := recoveredArg3.
    recoveredValue21 := (recoveredValue20) errLabel.
    recoveredValue22 := ('assignment expression: ') , (recoveredValue21).
    recoveredValue23 := recoveredArg2.
    recoveredValue24 := (recoveredValue23) errLabel.
    recoveredValue25 := ('assignment target: ') , (recoveredValue24).
    recoveredValue26 := (recoveredValue19) with: (recoveredValue22) with: (recoveredValue25).
    recoveredValue27 := (recoveredValue12) createMultiSource: (recoveredValue18) labels: (recoveredValue26).
    (recoveredValue0) mdlSemErrNo: (301) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue8) with: (recoveredValue10) source: (recoveredValue27).
    ^self
! !

"ASDBase.ic method 0x203001e8; bytecode file offset 0xbfcac0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super ifThenElseStmnt: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBlock.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArtificialBlock.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIfStmnt.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseChild.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 882.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030cb10; bytecode file offset 0xc093f0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaCTBlockReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasMdlReferenceType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasCtBlockScope.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgComplexClassType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrInputOrOutput.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgClassNoStruct.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 639.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) scope.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) componentTypeLabel.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030d730; bytecode file offset 0xc0a014"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaReturnReferenceReadWrite: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlClass.
    recoveredValue3 := (recoveredValue2) internalAccess.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) errLabel.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) methodDecl.
    recoveredValue8 := (recoveredValue7) mdlClass.
    recoveredValue9 := (recoveredValue8) internalAccess.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) methodDecl.
    recoveredValue12 := (recoveredValue11) errLabel.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) source.
    recoveredValue15 := Array.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) source.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) source.
    recoveredValue20 := (recoveredValue15) with: (recoveredValue17) with: (recoveredValue19).
    recoveredValue21 := Array.
    recoveredValue22 := recoveredArg2.
    recoveredValue23 := (recoveredValue22) errLabel.
    recoveredValue24 := ('return expression: ') , (recoveredValue23).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) methodDecl.
    recoveredValue27 := (recoveredValue26) errLabel.
    recoveredValue28 := ('method: ') , (recoveredValue27).
    recoveredValue29 := (recoveredValue21) with: (recoveredValue24) with: (recoveredValue28).
    recoveredValue30 := (recoveredValue14) createMultiSource: (recoveredValue20) labels: (recoveredValue29).
    (recoveredValue0) mdlSemErrNo: (607) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue9) with: (recoveredValue12) source: (recoveredValue30).
    ^self
! !

"ASDBase.ic method 0x20317ad0; bytecode file offset 0xc143a8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCastLeft: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlConvert: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) leftChild: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlConvert: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20317e4c; bytecode file offset 0xc14724"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlInitTask: recoveredArg1
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
            recoveredStack0 := super mdlInitTask: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) opModes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 31.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) opModes.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) opModes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031f234; bytecode file offset 0xc1bb0c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
shouldForceContentAssignmentFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCgDereferencedType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleScalarType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageOut.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageInOut.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgRecordType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgArrayType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableArrayReferenceType.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20323f74; bytecode file offset 0xc2085c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('getXOneD' 'setXOneD' 'getXTwoD' 'getYTwoD' 'setXTwoD' 'setYTwoD').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
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
            (recoveredStack1) semAnaNotFixed: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'set'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeOfReferencedObject.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 94.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20333ee4; bytecode file offset 0xc307c0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
checkConstantMaxSize: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgFixedDimension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) isCgVariableDimension.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariantDimension.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) isControllerVariant.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) suppressCheckForUpperVariantBound.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [
    'Unknown kind of array/matrix dimension.'
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033b570; bytecode file offset 0xc37e44"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaRteCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRTEMacroCall.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRteCall.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) rightChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlClass.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightChild.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := (recoveredStack6) errLabel.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033d4b0; bytecode file offset 0xc39d94"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
implCast: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) adaptIntervalAttributes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCast: (recoveredStack2) assignSource: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoImplementation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConvertSpecialCall.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConvertSpecialCall.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034ad8c; bytecode file offset 0xc47660"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlRedundantVerifyExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasCCodeScope.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 373.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRedundantDataMaster.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIndexedExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRedundantDataMaster.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 371.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20368fd8; bytecode file offset 0xc658b8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlAbstractDataTypeInterface: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlPrototype.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlServiceRoutineComponent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAscetClassInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 211.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedInstVars.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (self) semAnaCharTable: (recoveredBlock33Value0).
    recoveredBlock33Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedClassVars.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (self) semAnaCharTable: (recoveredBlock49Value0).
    recoveredBlock49Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := super mdlAbstractDataTypeInterface: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036c088; bytecode file offset 0xc6898c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) disableBDETempVariables.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'Build\Code Generation\Optimization'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectOptionSource: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 204.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := 'use <Project Properties/Build/Code Generation/Optimization/Disable BDE Temp Variable Generation> to disable all BDE temp variables'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := 'use <Project Properties/Build/Code Generation/Optimization/Common Subexpression Elimination> to get code size and runtime optimizations nevertheless'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMultiSource: (recoveredStack3) labels: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindings.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) allObjects.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:block280f13e0Arg1 | 
    | block280f13e0Value0 block280f13e0Value1 |
    block280f13e0Value0 := block280f13e0Arg1.
    block280f13e0Value1 := (block280f13e0Value0) semanticAnalysis.
    block280f13e0Value1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20395404; bytecode file offset 0xc91cf0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
blockVarDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComplexClassNoEnumType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) semAnaReferenceType: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) checkDeprecatedDiscreteTypeFor: (recoveredStack2) logicNode: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrNeedImpl.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNonScalarType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 6201.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b6c30; bytecode file offset 0xcb3514"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlTimerTask: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super mdlTimerTask: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) opModes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 31.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) deadline.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) deadline.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) period.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 102.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) deadline.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSecondsFromMicroSeconds.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) period.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) asSecondsFromMicroSeconds.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e9a4c; bytecode file offset 0xce6344"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlParmDecl: recoveredArg1
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
            super mdlParmDecl: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSetAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReference.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Default'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 60.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClass.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) mdlInfoNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Default'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) memoryClass: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArgumentUsageInOut.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlComplexClassNoEnumType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRecordType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 108.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'complex type'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ed364; bytecode file offset 0xce9c48"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaRelationExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeComparisonCompatibleTo: (recoveredStack2) generator: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeComparisonCompatibleTo: (recoveredStack2) generator: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabelWithoutRefDeref.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftChild.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) rightChild.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabelWithoutRefDeref.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightChild.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack7 := (recoveredStack7) source.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) semAnaTypeMismatch: (recoveredStack2) leftSource: (recoveredStack3) right: (recoveredStack4) rightErrLabel: (recoveredStack5) rightSource: (recoveredStack6) source: (recoveredStack7).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftChild.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlConvert: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlConvert: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203eefb0; bytecode file offset 0xceb8a0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlSWComponentInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) instVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlProvidePort.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 82].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlClass.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isMdlCalPrmInterfaceType.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 26] ifFalse: [recoveredBlock6PC := 38].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := 1285.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) errLabel.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack4 := 'calibration interface'.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            (recoveredBlock6Stack1) mdlSemErrNo: (recoveredBlock6Stack2) with: (recoveredBlock6Stack3) with: (recoveredBlock6Stack4).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClass.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlSRInterfaceType.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 46] ifFalse: [recoveredBlock6PC := 82].
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClass.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlImplKey.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) lookupInImportList: (recoveredBlock6Stack2).
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local1.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 80] ifFalse: [recoveredBlock6PC := 60].
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local1.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlARModeSwitchInterface.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 66] ifFalse: [recoveredBlock6PC := 80].
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 68.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack2 := 1285.
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) errLabel.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack4 := 'mode group interface'.
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlSemErrNo: (recoveredBlock6Stack2) with: (recoveredBlock6Stack3) with: (recoveredBlock6Stack4).
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack2 := nil.
            recoveredBlock6PC := 81.
        ].
        recoveredBlock6Step = 81 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := super mdlSWComponentInterface: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203f38ac; bytecode file offset 0xcf0190"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaAssign: recoveredArg1 referenceReadWrite: recoveredArg2 lValue: recoveredArg3 expr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 recoveredBlock13Value11 recoveredBlock13Value12 recoveredBlock13Value13 recoveredBlock13Value14 recoveredBlock13Value15 recoveredBlock13Value16 recoveredBlock13Value17 recoveredBlock13Value18 recoveredBlock13Value19 recoveredBlock13Value20 recoveredBlock13Value21 recoveredBlock13Value22 recoveredBlock13Value23 recoveredBlock13Value24 recoveredBlock13Value25 recoveredBlock13Value26 recoveredBlock13Value27 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := recoveredArg4.
    recoveredBlock13Value2 := recoveredArg2.
    recoveredBlock13Value3 := (recoveredBlock13Value1) internalAccess: (recoveredBlock13Value2).
    recoveredBlock13Value4 := recoveredArg4.
    recoveredBlock13Value5 := (recoveredBlock13Value4) errLabel.
    recoveredBlock13Value6 := recoveredArg2.
    recoveredBlock13Value7 := (recoveredBlock13Value6) internalAccess.
    recoveredBlock13Value8 := recoveredArg3.
    recoveredBlock13Value9 := (recoveredBlock13Value8) errLabel.
    recoveredBlock13Value10 := recoveredArg1.
    recoveredBlock13Value11 := (recoveredBlock13Value10) source.
    recoveredBlock13Value12 := Array.
    recoveredBlock13Value13 := recoveredArg4.
    recoveredBlock13Value14 := (recoveredBlock13Value13) source.
    recoveredBlock13Value15 := recoveredArg3.
    recoveredBlock13Value16 := (recoveredBlock13Value15) source.
    recoveredBlock13Value17 := (recoveredBlock13Value12) with: (recoveredBlock13Value14) with: (recoveredBlock13Value16).
    recoveredBlock13Value18 := Array.
    recoveredBlock13Value19 := recoveredArg4.
    recoveredBlock13Value20 := (recoveredBlock13Value19) errLabel.
    recoveredBlock13Value21 := ('assignment expression: ') , (recoveredBlock13Value20).
    recoveredBlock13Value22 := recoveredArg3.
    recoveredBlock13Value23 := (recoveredBlock13Value22) errLabel.
    recoveredBlock13Value24 := ('assignment target: ') , (recoveredBlock13Value23).
    recoveredBlock13Value25 := (recoveredBlock13Value18) with: (recoveredBlock13Value21) with: (recoveredBlock13Value24).
    recoveredBlock13Value26 := (recoveredBlock13Value11) createMultiSource: (recoveredBlock13Value17) labels: (recoveredBlock13Value25).
    recoveredBlock13Value27 := (recoveredBlock13Value0) mdlSemErrNo: (301) with: (recoveredBlock13Value3) with: (recoveredBlock13Value5) with: (recoveredBlock13Value7) with: (recoveredBlock13Value9) source: (recoveredBlock13Value26).
    recoveredBlock13Value27
].
    (self) semAnaReferenceReadWrite: (recoveredValue0) lValue: (recoveredValue1) expr: (recoveredValue2) onError: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2040cd34; bytecode file offset 0xd09630"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaKindVariable: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVariable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
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
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Parameter'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARInterrunnableVariable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Interrunnable Variable'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConstant.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'Constant'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSystemConstant.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'System Constant'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 652.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 'kind ='.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := (recoveredStack5) scope.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := 'kind=Variable'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20425c84; bytecode file offset 0xd22574"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBoolean.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlBoolean.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 60.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftChild.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaRelationExpr: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) semAnaCompareCont.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20430b6c; bytecode file offset 0xd2d454"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
binaryRelationExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaIsRelational: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaIsRelational: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftChild.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContMoebiusFixedPointType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 623.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelFormula.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContMoebiusFixedPointType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 623.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelFormula.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaRelationExpr: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043674c; bytecode file offset 0xd33044"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaExpressionHasEffect: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlAssignExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodCall.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIncrement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDecrement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlANSICCCode.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSpecialCall.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRTEMacroCall.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCommaExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodCall.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodDecl.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSideEffectFree.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVoid.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 962.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 120.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20437538; bytecode file offset 0xd33e2c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAUTOSARReturnType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARApplicationErrorType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 308.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 'AUTOSAR standard return type'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := [:recoveredBlock50Arg1 :recoveredBlock50Arg2 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredArg1.
    recoveredBlock50Value1 := recoveredBlock50Arg2.
    recoveredBlock50Value2 := (self) semAnaReturnReferenceReadWrite: (recoveredBlock50Value0) expr: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCast: (recoveredStack2) assignSource: (recoveredStack3) onReferenceError: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) child: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'as a return value'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) semAnaNoStackVariable: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043ef04; bytecode file offset 0xd3b7f0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaIndexType: recoveredArg1 dim: recoveredArg2 source: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlUInt.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAbstractEnumType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModeGroupType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAUTOSARReturnType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 63.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSInt.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsSigned.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 74.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 63.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20442c68; bytecode file offset 0xd3f568"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlProcessDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAUTOSARActive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlBuilder.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) classInterface.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlSWComponent.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlModule.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksSettings.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) mustPerformExternalBuildTool.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 28.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := 'use EHOOKS configuration to activate process'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 28.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 'use OS specification to activate process'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRunnableDecl.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 280.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := super methodCall: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044683c; bytecode file offset 0xd4312c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
muxExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) exprChild: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) semAnaIsBoolean: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) semAnaBoolNoAssign: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCastLeft: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlConvert: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) leftChild: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlConvert: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20466098; bytecode file offset 0xd62994"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaInlining: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrPreprocessorInlining.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSideEffectFree.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 97.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'not side effect free'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgUsePrototype.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 97.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := 'component is not prototype class'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrCompilerInlining.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SGMdBuilder.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMdlBuilder.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := nil.
            recoveredBlock76PC := 83.
        ].
        recoveredBlock76Step = 83 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 84.
        ].
        recoveredBlock76Step = 84 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) supportsOSConfiguration.
            recoveredBlock76PC := 86.
        ].
        recoveredBlock76Step = 86 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 116] ifFalse: [recoveredBlock76PC := 90].
        ].
        recoveredBlock76Step = 90 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 91.
        ].
        recoveredBlock76Step = 91 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) supportsCompilerInlining.
            recoveredBlock76PC := 93.
        ].
        recoveredBlock76Step = 93 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 116] ifFalse: [recoveredBlock76PC := 96].
        ].
        recoveredBlock76Step = 96 ifTrue: [
            recoveredBlock76PC := 97.
        ].
        recoveredBlock76Step = 97 ifTrue: [
            recoveredBlock76Stack1 := recoveredArg1.
            recoveredBlock76PC := 100.
        ].
        recoveredBlock76Step = 100 ifTrue: [
            recoveredBlock76Stack2 := 100.
            recoveredBlock76PC := 104.
        ].
        recoveredBlock76Step = 104 ifTrue: [
            recoveredBlock76Stack3 := recoveredArg1.
            recoveredBlock76PC := 107.
        ].
        recoveredBlock76Step = 107 ifTrue: [
            recoveredBlock76Stack3 := (recoveredBlock76Stack3) errLabel.
            recoveredBlock76PC := 108.
        ].
        recoveredBlock76Step = 108 ifTrue: [
            (recoveredBlock76Stack1) mdlWarningNo: (recoveredBlock76Stack2) with: (recoveredBlock76Stack3).
            recoveredBlock76PC := 110.
        ].
        recoveredBlock76Step = 110 ifTrue: [
            recoveredBlock76Stack1 := recoveredArg1.
            recoveredBlock76PC := 113.
        ].
        recoveredBlock76Step = 113 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) attributes.
            recoveredBlock76PC := 114.
        ].
        recoveredBlock76Step = 114 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) cgAttrNoInlining.
            recoveredBlock76PC := 116.
        ].
        recoveredBlock76Step = 116 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204685f0; bytecode file offset 0xd64edc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlInitValueAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReference.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) semAnaReferenceInitValue: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaInitValue: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := [:recoveredBlock66Arg1 :recoveredBlock66Arg2 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 recoveredBlock66Value6 recoveredBlock66Value7 recoveredBlock66Value8 recoveredBlock66Value9 recoveredBlock66Value10 recoveredBlock66Value11 |
    recoveredBlock66Value0 := recoveredArg1.
    recoveredBlock66Value1 := recoveredBlock66Arg2.
    recoveredBlock66Value2 := (recoveredBlock66Value1) mdlClass.
    recoveredBlock66Value3 := (recoveredBlock66Value2) internalAccess.
    recoveredBlock66Value4 := recoveredBlock66Arg2.
    recoveredBlock66Value5 := (recoveredBlock66Value4) errLabel.
    recoveredBlock66Value6 := recoveredBlock66Arg1.
    recoveredBlock66Value7 := (recoveredBlock66Value6) mdlClass.
    recoveredBlock66Value8 := (recoveredBlock66Value7) internalAccess.
    recoveredBlock66Value9 := recoveredBlock66Arg1.
    recoveredBlock66Value10 := (recoveredBlock66Value9) errLabel.
    recoveredBlock66Value11 := (recoveredBlock66Value0) mdlSemErrNo: (305) with: (recoveredBlock66Value3) with: (recoveredBlock66Value5) with: (recoveredBlock66Value8) with: (recoveredBlock66Value10).
    recoveredBlock66Value11
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCast: (recoveredStack2) assignSource: (recoveredStack3) onReferenceError: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204855d4; bytecode file offset 0xd81ec8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaClass: recoveredArg1 withParamAssign: recoveredArg2 assignSource: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDET108032Exception.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 68.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelWithoutRefDeref.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodCall.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodDecl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := [:recoveredBlock49Arg1 :recoveredBlock49Arg2 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg2.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) variable.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isMdlArgumentUsageIn.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 66] ifFalse: [recoveredBlock49PC := 78].
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg2.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) rightChild.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack2 := 104.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack3 := 'IN'.
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            (recoveredBlock49Stack1) semAnaInOutLValueErrNo: (recoveredBlock49Stack2) direction: (recoveredBlock49Stack3).
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg2.
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) variable.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isMdlArgumentUsageInOut.
            recoveredBlock49PC := 85.
        ].
        recoveredBlock49Step = 85 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 88] ifFalse: [recoveredBlock49PC := 100].
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg2.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) rightChild.
            recoveredBlock49PC := 92.
        ].
        recoveredBlock49Step = 92 ifTrue: [
            recoveredBlock49Stack2 := 104.
            recoveredBlock49PC := 96.
        ].
        recoveredBlock49Step = 96 ifTrue: [
            recoveredBlock49Stack3 := 'INOUT'.
            recoveredBlock49PC := 98.
        ].
        recoveredBlock49Step = 98 ifTrue: [
            (recoveredBlock49Stack1) semAnaInOutLValueErrNo: (recoveredBlock49Stack2) direction: (recoveredBlock49Stack3).
            recoveredBlock49PC := 100.
        ].
        recoveredBlock49Step = 100 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 101.
        ].
        recoveredBlock49Step = 101 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg2.
            recoveredBlock49PC := 104.
        ].
        recoveredBlock49Step = 104 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) variable.
            recoveredBlock49PC := 106.
        ].
        recoveredBlock49Step = 106 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) isMdlArgumentUsageOut.
            recoveredBlock49PC := 108.
        ].
        recoveredBlock49Step = 108 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 112] ifFalse: [recoveredBlock49PC := 124].
        ].
        recoveredBlock49Step = 112 ifTrue: [
            recoveredBlock49PC := 113.
        ].
        recoveredBlock49Step = 113 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg2.
            recoveredBlock49PC := 116.
        ].
        recoveredBlock49Step = 116 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) rightChild.
            recoveredBlock49PC := 117.
        ].
        recoveredBlock49Step = 117 ifTrue: [
            recoveredBlock49Stack2 := 104.
            recoveredBlock49PC := 120.
        ].
        recoveredBlock49Step = 120 ifTrue: [
            recoveredBlock49Stack3 := 'OUT'.
            recoveredBlock49PC := 122.
        ].
        recoveredBlock49Step = 122 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) semAnaInOutLValueErrNo: (recoveredBlock49Stack2) direction: (recoveredBlock49Stack3).
            recoveredBlock49PC := 124.
        ].
        recoveredBlock49Step = 124 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCast: (recoveredStack2) assignSource: (recoveredStack3) onReferenceError: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20490a40; bytecode file offset 0xd8d35c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
instVarDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) semAnaCTBlockReferences: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMessage.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) cgAttrNoSetAccess.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) cgAttrNoGetAccess.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Call_74429'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'element'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) semAnaImplementation: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgRescalableType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlProject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 471.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) asImplDeclSource.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeWithGenericPhysicalUnit.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlProject.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 23.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := ' in a project '.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) physicalUnit.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeWithGenericPhysicalUnitWithOffset.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 23.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := ' with local scope '.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) physicalUnit.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) iaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := super instVarDecl: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cc468; bytecode file offset 0xdc8d74"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
identifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlImplCastDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 181.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVirtual.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 33.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) ansiCArrayAccess.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDtVarDecl.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) cgOptUsed.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) cgOptUsed.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageOut.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAssignLHS.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) classType.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgCCodeBlock.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 103.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e73e4; bytecode file offset 0xde3ce8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaCharTableAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlOneDCharTable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTwoDCharTable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) interpolation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) interpolation.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightChild.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 'Left hand side '.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := (recoveredStack5) variable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := 'Right hand side '.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightChild.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := (recoveredStack6) errLabel.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMultiSource: (recoveredStack2) labels: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 602.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 66.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) extrapolation.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) extrapolation.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 67.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f4738; bytecode file offset 0xdf102c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) argChildren.
    recoveredValue2 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) variable.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isMdlArgumentUsageOut.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 32] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) variable.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isMdlArgumentUsageInOut.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 32] ifFalse: [recoveredBlock8PC := 166].
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) argChildren.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block37Arg1 :recoveredBlock8Block37Arg2 | 
    | recoveredBlock8Block37Stack0 recoveredBlock8Block37Stack1 recoveredBlock8Block37Stack2 recoveredBlock8Block37Stack3 recoveredBlock8Block37Stack4 recoveredBlock8Block37Stack5 recoveredBlock8Block37PC recoveredBlock8Block37Step recoveredBlock8Block37Done recoveredBlock8Block37Result |
    recoveredBlock8Block37Stack0 := nil.
    recoveredBlock8Block37PC := 44.
    recoveredBlock8Block37Done := false.
    [recoveredBlock8Block37Done not] whileTrue: [
        recoveredBlock8Block37Step := recoveredBlock8Block37PC.
        recoveredBlock8Block37Step = 44 ifTrue: [
            recoveredBlock8Block37Stack1 := nil.
            recoveredBlock8Block37PC := 45.
        ].
        recoveredBlock8Block37Step = 45 ifTrue: [
            recoveredBlock8Block37Stack2 := recoveredBlock8Block37Arg2.
            recoveredBlock8Block37PC := 46.
        ].
        recoveredBlock8Block37Step = 46 ifTrue: [
            recoveredBlock8Block37Stack3 := recoveredBlock8Arg2.
            recoveredBlock8Block37PC := 49.
        ].
        recoveredBlock8Block37Step = 49 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) > (recoveredBlock8Block37Stack3).
            recoveredBlock8Block37PC := 50.
        ].
        recoveredBlock8Block37Step = 50 ifTrue: [
            (recoveredBlock8Block37Stack2) ifTrue: [recoveredBlock8Block37PC := 54] ifFalse: [recoveredBlock8Block37PC := 163].
        ].
        recoveredBlock8Block37Step = 54 ifTrue: [
            recoveredBlock8Block37Stack2 := recoveredBlock8Block37Arg1.
            recoveredBlock8Block37PC := 55.
        ].
        recoveredBlock8Block37Step = 55 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) variable.
            recoveredBlock8Block37PC := 56.
        ].
        recoveredBlock8Block37Step = 56 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) isMdlArgumentUsageOut.
            recoveredBlock8Block37PC := 57.
        ].
        recoveredBlock8Block37Step = 57 ifTrue: [
            (recoveredBlock8Block37Stack2) ifTrue: [recoveredBlock8Block37PC := 66] ifFalse: [recoveredBlock8Block37PC := 60].
        ].
        recoveredBlock8Block37Step = 60 ifTrue: [
            recoveredBlock8Block37Stack2 := recoveredBlock8Block37Arg1.
            recoveredBlock8Block37PC := 61.
        ].
        recoveredBlock8Block37Step = 61 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) variable.
            recoveredBlock8Block37PC := 62.
        ].
        recoveredBlock8Block37Step = 62 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) isMdlArgumentUsageInOut.
            recoveredBlock8Block37PC := 63.
        ].
        recoveredBlock8Block37Step = 63 ifTrue: [
            (recoveredBlock8Block37Stack2) ifTrue: [recoveredBlock8Block37PC := 66] ifFalse: [recoveredBlock8Block37PC := 163].
        ].
        recoveredBlock8Block37Step = 66 ifTrue: [
            recoveredBlock8Block37Stack2 := recoveredBlock8Arg1.
            recoveredBlock8Block37PC := 69.
        ].
        recoveredBlock8Block37Step = 69 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) rightChild.
            recoveredBlock8Block37PC := 71.
        ].
        recoveredBlock8Block37Step = 71 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) isMdlReferencedIdentifier.
            recoveredBlock8Block37PC := 73.
        ].
        recoveredBlock8Block37Step = 73 ifTrue: [
            (recoveredBlock8Block37Stack2) ifTrue: [recoveredBlock8Block37PC := 76] ifFalse: [recoveredBlock8Block37PC := 163].
        ].
        recoveredBlock8Block37Step = 76 ifTrue: [
            recoveredBlock8Block37Stack2 := recoveredBlock8Block37Arg1.
            recoveredBlock8Block37PC := 77.
        ].
        recoveredBlock8Block37Step = 77 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) rightChild.
            recoveredBlock8Block37PC := 79.
        ].
        recoveredBlock8Block37Step = 79 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) isMdlReferencedIdentifier.
            recoveredBlock8Block37PC := 81.
        ].
        recoveredBlock8Block37Step = 81 ifTrue: [
            (recoveredBlock8Block37Stack2) ifTrue: [recoveredBlock8Block37PC := 84] ifFalse: [recoveredBlock8Block37PC := 163].
        ].
        recoveredBlock8Block37Step = 84 ifTrue: [
            recoveredBlock8Block37Stack2 := recoveredBlock8Arg1.
            recoveredBlock8Block37PC := 87.
        ].
        recoveredBlock8Block37Step = 87 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) rightChild.
            recoveredBlock8Block37PC := 89.
        ].
        recoveredBlock8Block37Step = 89 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) mdlName.
            recoveredBlock8Block37PC := 91.
        ].
        recoveredBlock8Block37Step = 91 ifTrue: [
            recoveredBlock8Block37Stack3 := recoveredBlock8Block37Arg1.
            recoveredBlock8Block37PC := 92.
        ].
        recoveredBlock8Block37Step = 92 ifTrue: [
            recoveredBlock8Block37Stack3 := (recoveredBlock8Block37Stack3) rightChild.
            recoveredBlock8Block37PC := 94.
        ].
        recoveredBlock8Block37Step = 94 ifTrue: [
            recoveredBlock8Block37Stack3 := (recoveredBlock8Block37Stack3) mdlName.
            recoveredBlock8Block37PC := 96.
        ].
        recoveredBlock8Block37Step = 96 ifTrue: [
            recoveredBlock8Block37Stack2 := (recoveredBlock8Block37Stack2) equals: (recoveredBlock8Block37Stack3).
            recoveredBlock8Block37PC := 98.
        ].
        recoveredBlock8Block37Step = 98 ifTrue: [
            (recoveredBlock8Block37Stack2) ifTrue: [recoveredBlock8Block37PC := 102] ifFalse: [recoveredBlock8Block37PC := 163].
        ].
        recoveredBlock8Block37Step = 102 ifTrue: [
            recoveredBlock8Block37PC := 103.
        ].
        recoveredBlock8Block37Step = 103 ifTrue: [
            recoveredBlock8Block37Stack1 := recoveredBlock8Arg1.
            recoveredBlock8Block37PC := 106.
        ].
        recoveredBlock8Block37Step = 106 ifTrue: [
            recoveredBlock8Block37Stack1 := (recoveredBlock8Block37Stack1) rightChild.
            recoveredBlock8Block37PC := 108.
        ].
        recoveredBlock8Block37Step = 108 ifTrue: [
            recoveredBlock8Block37Stack1 := (recoveredBlock8Block37Stack1) varDecl.
            recoveredBlock8Block37PC := 110.
        ].
        recoveredBlock8Block37Step = 110 ifTrue: [
            recoveredBlock8Block37Stack1 := (recoveredBlock8Block37Stack1) mdlClass.
            recoveredBlock8Block37PC := 112.
        ].
        recoveredBlock8Block37Step = 112 ifTrue: [
            recoveredBlock8Block37Stack1 := (recoveredBlock8Block37Stack1) isMdlTypeNeedsReference.
            recoveredBlock8Block37PC := 114.
        ].
        recoveredBlock8Block37Step = 114 ifTrue: [
            (recoveredBlock8Block37Stack1) ifTrue: [recoveredBlock8Block37PC := 118] ifFalse: [recoveredBlock8Block37PC := 142].
        ].
        recoveredBlock8Block37Step = 118 ifTrue: [
            recoveredBlock8Block37Stack1 := recoveredArg1.
            recoveredBlock8Block37PC := 121.
        ].
        recoveredBlock8Block37Step = 121 ifTrue: [
            recoveredBlock8Block37Stack2 := 201.
            recoveredBlock8Block37PC := 124.
        ].
        recoveredBlock8Block37Step = 124 ifTrue: [
            recoveredBlock8Block37Stack3 := recoveredArg1.
            recoveredBlock8Block37PC := 127.
        ].
        recoveredBlock8Block37Step = 127 ifTrue: [
            recoveredBlock8Block37Stack3 := (recoveredBlock8Block37Stack3) errLabel.
            recoveredBlock8Block37PC := 129.
        ].
        recoveredBlock8Block37Step = 129 ifTrue: [
            recoveredBlock8Block37Stack4 := recoveredBlock8Arg1.
            recoveredBlock8Block37PC := 132.
        ].
        recoveredBlock8Block37Step = 132 ifTrue: [
            recoveredBlock8Block37Stack4 := (recoveredBlock8Block37Stack4) rightChild.
            recoveredBlock8Block37PC := 134.
        ].
        recoveredBlock8Block37Step = 134 ifTrue: [
            recoveredBlock8Block37Stack4 := (recoveredBlock8Block37Stack4) errLabelWithoutRefDeref.
            recoveredBlock8Block37PC := 136.
        ].
        recoveredBlock8Block37Step = 136 ifTrue: [
            recoveredBlock8Block37Stack1 := (recoveredBlock8Block37Stack1) mdlWarningNo: (recoveredBlock8Block37Stack2) with: (recoveredBlock8Block37Stack3) with: (recoveredBlock8Block37Stack4).
            recoveredBlock8Block37PC := 139.
        ].
        recoveredBlock8Block37Step = 139 ifTrue: [
            recoveredBlock8Block37PC := 163.
        ].
        recoveredBlock8Block37Step = 142 ifTrue: [
            recoveredBlock8Block37Stack1 := recoveredArg1.
            recoveredBlock8Block37PC := 145.
        ].
        recoveredBlock8Block37Step = 145 ifTrue: [
            recoveredBlock8Block37Stack2 := 201.
            recoveredBlock8Block37PC := 148.
        ].
        recoveredBlock8Block37Step = 148 ifTrue: [
            recoveredBlock8Block37Stack3 := recoveredArg1.
            recoveredBlock8Block37PC := 151.
        ].
        recoveredBlock8Block37Step = 151 ifTrue: [
            recoveredBlock8Block37Stack3 := (recoveredBlock8Block37Stack3) errLabel.
            recoveredBlock8Block37PC := 153.
        ].
        recoveredBlock8Block37Step = 153 ifTrue: [
            recoveredBlock8Block37Stack4 := recoveredBlock8Arg1.
            recoveredBlock8Block37PC := 156.
        ].
        recoveredBlock8Block37Step = 156 ifTrue: [
            recoveredBlock8Block37Stack4 := (recoveredBlock8Block37Stack4) rightChild.
            recoveredBlock8Block37PC := 158.
        ].
        recoveredBlock8Block37Step = 158 ifTrue: [
            recoveredBlock8Block37Stack4 := (recoveredBlock8Block37Stack4) errLabelWithoutRefDeref.
            recoveredBlock8Block37PC := 160.
        ].
        recoveredBlock8Block37Step = 160 ifTrue: [
            recoveredBlock8Block37Stack1 := (recoveredBlock8Block37Stack1) mdlSemErrNo: (recoveredBlock8Block37Stack2) with: (recoveredBlock8Block37Stack3) with: (recoveredBlock8Block37Stack4).
            recoveredBlock8Block37PC := 163.
        ].
        recoveredBlock8Block37Step = 163 ifTrue: [
            recoveredBlock8Block37Result := recoveredBlock8Block37Stack1.
            recoveredBlock8Block37Done := true.
        ].
    ].
    recoveredBlock8Block37Result
].
            recoveredBlock8PC := 164.
        ].
        recoveredBlock8Step = 164 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) doWithIndex: (recoveredBlock8Stack2).
            recoveredBlock8PC := 166.
        ].
        recoveredBlock8Step = 166 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) doWithIndex: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x20509b0c; bytecode file offset 0xe06424"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaRedundantData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRedundantDataMaster.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 'redundant data items within record are not allowed'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrVolatile.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := 'redundant data and non-volatile can not be combined'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrVirtual.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 'redundant data and virtual can not be combined'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := 'redundant data for local variables not possible'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReference.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := 'redundant data for references not possible'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARInterrunnableVarDecl.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := 'redundant data for interrunable variables not possible'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReal.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBoolean.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := 'redundant data only supported for elements of type log/enum/sdisc/udisc/cont/array/matrix'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050a944; bytecode file offset 0xe07258"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
ehooksConfiguration: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFunctions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) attributes.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) controlVariable.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack3 := [
    | block2810ae90Value0 block2810ae90Value1 |
    block2810ae90Value0 := OrderedCollection.
    block2810ae90Value1 := (block2810ae90Value0) new.
    block2810ae90Value1
].
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) ifAbsentPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) mdlName.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) attributes.
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) enablerParameter.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack3 := [
    | block2810aeb4Value0 block2810aeb4Value1 |
    block2810aeb4Value0 := OrderedCollection.
    block2810aeb4Value1 := (block2810aeb4Value0) new.
    block2810aeb4Value1
].
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) ifAbsentPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 79.
        ].
        recoveredBlock30Step = 79 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) mdlName.
            recoveredBlock30PC := 81.
        ].
        recoveredBlock30Step = 81 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 83.
        ].
        recoveredBlock30Step = 83 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 87.
        ].
        recoveredBlock30Step = 87 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) attributes.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) indicatorVariable.
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            recoveredBlock30Stack3 := [
    | block2810aed8Value0 block2810aed8Value1 |
    block2810aed8Value0 := OrderedCollection.
    block2810aed8Value1 := (block2810aed8Value0) new.
    block2810aed8Value1
].
            recoveredBlock30PC := 92.
        ].
        recoveredBlock30Step = 92 ifTrue: [
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) ifAbsentPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 102.
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 103.
        ].
        recoveredBlock30Step = 103 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) mdlName.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 107.
        ].
        recoveredBlock30Step = 107 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 108.
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) attributes.
            recoveredBlock30PC := 109.
        ].
        recoveredBlock30Step = 109 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) dispatchPoint.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) isEmpty.
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 116] ifFalse: [recoveredBlock30PC := 128].
        ].
        recoveredBlock30Step = 116 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 117.
        ].
        recoveredBlock30Step = 117 ifTrue: [
            recoveredBlock30Stack2 := 491.
            recoveredBlock30PC := 120.
        ].
        recoveredBlock30Step = 120 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 121.
        ].
        recoveredBlock30Step = 121 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) mdlLabel.
            recoveredBlock30PC := 123.
        ].
        recoveredBlock30Step = 123 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) mdlWarningNo: (recoveredBlock30Stack2) with: (recoveredBlock30Stack3).
            recoveredBlock30PC := 125.
        ].
        recoveredBlock30Step = 125 ifTrue: [
            recoveredBlock30PC := 133.
        ].
        recoveredBlock30Step = 128 ifTrue: [
            recoveredBlock30Stack1 := false.
            recoveredBlock30PC := 129.
        ].
        recoveredBlock30Step = 129 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 130 ifTrue: [
            recoveredLocal4 := recoveredBlock30Stack2.
            recoveredBlock30PC := 133.
        ].
        recoveredBlock30Step = 133 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := 'control variable'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) checkMultipleEntriesInTable: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := 'enabler parameter'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) checkMultipleEntriesInTable: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := 'indicator variable'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) checkMultipleEntriesInTable: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 490.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2051d9cc; bytecode file offset 0xe1a2c8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block2810c168Arg1 | 
    | block2810c168Value0 block2810c168Value1 block2810c168Value2 block2810c168Value3 block2810c168Value4 |
    block2810c168Value0 := block2810c168Arg1.
    block2810c168Value1 := block2810c168Arg1.
    block2810c168Value2 := (block2810c168Value1) exprChild.
    block2810c168Value3 := (block2810c168Value2) asMdlReferencedExpr.
    block2810c168Value4 := (block2810c168Value0) exprChild: (block2810c168Value3).
    block2810c168Value4
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) defaultExprChild: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:block2810c18cArg1 | 
    | block2810c18cValue0 block2810c18cValue1 block2810c18cValue2 block2810c18cValue3 block2810c18cValue4 |
    block2810c18cValue0 := block2810c18cArg1.
    block2810c18cValue1 := block2810c18cArg1.
    block2810c18cValue2 := (block2810c18cValue1) exprChild.
    block2810c18cValue3 := (block2810c18cValue2) asMdlDereferencedExpr.
    block2810c18cValue4 := (block2810c18cValue0) exprChild: (block2810c18cValue3).
    block2810c18cValue4
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) defaultExprChild: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) switchExprChild.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) switchExprChild: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchExprChild.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) semAnaIsIntegerOrAbstractEnum: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) multiplexExprCalculateMdlClass: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) choiceChildren.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Local1 recoveredBlock114Stack0 recoveredBlock114Stack1 recoveredBlock114Stack2 recoveredBlock114Stack3 recoveredBlock114PC recoveredBlock114Step recoveredBlock114Done recoveredBlock114Result |
    recoveredBlock114Stack0 := self.
    recoveredBlock114PC := 120.
    recoveredBlock114Done := false.
    [recoveredBlock114Done not] whileTrue: [
        recoveredBlock114Step := recoveredBlock114PC.
        recoveredBlock114Step = 120 ifTrue: [
            recoveredBlock114Stack1 := recoveredArg1.
            recoveredBlock114PC := 123.
        ].
        recoveredBlock114Step = 123 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Arg1.
            recoveredBlock114PC := 124.
        ].
        recoveredBlock114Step = 124 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) exprChild.
            recoveredBlock114PC := 126.
        ].
        recoveredBlock114Step = 126 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) semAnaClass: (recoveredBlock114Stack1) withCast: (recoveredBlock114Stack2).
            recoveredBlock114PC := 128.
        ].
        recoveredBlock114Step = 128 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Stack0.
            recoveredBlock114PC := 129.
        ].
        recoveredBlock114Step = 129 ifTrue: [
            recoveredBlock114Local1 := recoveredBlock114Stack1.
            recoveredBlock114PC := 130.
        ].
        recoveredBlock114Step = 130 ifTrue: [
            (recoveredBlock114Stack0 == nil) ifTrue: [recoveredBlock114PC := 142] ifFalse: [recoveredBlock114PC := 134].
        ].
        recoveredBlock114Step = 134 ifTrue: [
            recoveredBlock114Stack0 := recoveredBlock114Arg1.
            recoveredBlock114PC := 135.
        ].
        recoveredBlock114Step = 135 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Local1.
            recoveredBlock114PC := 136.
        ].
        recoveredBlock114Step = 136 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) exprChild: (recoveredBlock114Stack1).
            recoveredBlock114PC := 138.
        ].
        recoveredBlock114Step = 138 ifTrue: [
            recoveredBlock114PC := 149.
        ].
        recoveredBlock114Step = 142 ifTrue: [
            recoveredBlock114Stack0 := self.
            recoveredBlock114PC := 143.
        ].
        recoveredBlock114Step = 143 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) skipFurtherAnalysis.
            recoveredBlock114PC := 145.
        ].
        recoveredBlock114Step = 145 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Stack0.
            recoveredBlock114PC := 146.
        ].
        recoveredBlock114Step = 146 ifTrue: [
            recoveredLocal1 := recoveredBlock114Stack1.
            recoveredBlock114PC := 149.
        ].
        recoveredBlock114Step = 149 ifTrue: [
            recoveredBlock114Result := recoveredBlock114Stack0.
            recoveredBlock114Done := true.
        ].
    ].
    recoveredBlock114Result
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 152.
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCast: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) defaultExprChild: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051f1f8; bytecode file offset 0xe1bb14"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
eventTask: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super eventTask: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSERCOSEK43Enabled.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 648.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) event.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) event.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) mdlSemErrMissingISRSource: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) event.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) mdlSemErrUndeclaredISRSource: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) prio.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) event.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) minPrio.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) prio.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) event.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxPrio.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := '['.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) event.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) minPrio.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := '..'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) event.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxPrio.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := ' using ISR source "'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := (recoveredStack4) event.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := '"'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) minPeriod.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 189] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) minPeriod.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetFeatureMinTaskCycleTime.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 101.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) minPeriod.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSecondsFromMicroSeconds.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := (recoveredStack4) generator.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetFeatureMinTaskCycleTime.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053671c; bytecode file offset 0xe33010"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftChild.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) semAnaIsRelational: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) semAnaIsRelational: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) semAnaIsRelational: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 623.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) operator.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftChild.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabelFormula.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 623.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) operator.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) exprChild.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabelFormula.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 623.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) operator.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightChild.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabelFormula.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlCommonType.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaOperand: (recoveredStack2) commonType: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaOperand: (recoveredStack2) commonType: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaOperand: (recoveredStack2) commonType: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlConvert: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) exprChild: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftChild.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlConvert: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) leftChild: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlConvert: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20553570; bytecode file offset 0xe4fe70"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaClass: recoveredArg1 withCast: recoveredArg2 assignSource: recoveredArg3 onReferenceError: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredArg2.
    recoveredBlock37Value1 := recoveredArg2.
    recoveredBlock37Value2 := (recoveredBlock37Value1) errLabel.
    (recoveredBlock37Value0) mdlSemErrNo: (3001) with: (recoveredBlock37Value2).
    ^nil
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlReferencedExprOnError: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaClass: (recoveredStack2) withCast: (recoveredStack3) assignSource: (recoveredStack4) onReferenceError: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlDereferencedExpr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaClass: (recoveredStack2) withCast: (recoveredStack3) assignSource: (recoveredStack4) onReferenceError: (recoveredStack5).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeAssignmentCompatibleFrom: (recoveredStack2) generator: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 191] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) isErrorDueToReadWriteFlagsLhs: (recoveredStack2) rhs: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) semAnaTypeMismatch: (recoveredStack2) with: (recoveredStack3) assignSource: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlBuilder.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := (recoveredStack3) compileTimeRestrictions.
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
            (recoveredStack1) semAnaWarnings: (recoveredStack2) compileTimeRestrictions: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlConvert: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack2) isTypeOfLeftHandSide: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205691d8; bytecode file offset 0xe65ae0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
multiplexExprCalculateMdlClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block281114ccArg1 | 
    | block281114ccValue0 block281114ccValue1 block281114ccValue2 |
    block281114ccValue0 := block281114ccArg1.
    block281114ccValue1 := (block281114ccValue0) mdlClass.
    block281114ccValue2 := (block281114ccValue1) isCgArithmeticType.
    block281114ccValue2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:block281114f0Arg1 | 
    | block281114f0Value0 block281114f0Value1 block281114f0Value2 block281114f0Value3 block281114f0Value4 |
    block281114f0Value0 := block281114f0Arg1.
    block281114f0Value1 := block281114f0Arg1.
    block281114f0Value2 := (block281114f0Value1) exprChild.
    block281114f0Value3 := (block281114f0Value2) convertEnumToNumExpr.
    block281114f0Value4 := (block281114f0Value0) exprChild: (block281114f0Value3).
    block281114f0Value4
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertEnumToNumExpr.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) defaultExprChild: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:recoveredBlock99Arg1 :recoveredBlock99Arg2 | 
    | recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99Stack5 recoveredBlock99Stack6 recoveredBlock99Stack7 recoveredBlock99Stack8 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := nil.
            recoveredBlock99PC := 107.
        ].
        recoveredBlock99Step = 107 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 108.
        ].
        recoveredBlock99Step = 108 ifTrue: [
            recoveredBlock99Stack3 := recoveredArg1.
            recoveredBlock99PC := 111.
        ].
        recoveredBlock99Step = 111 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) choiceChildren.
            recoveredBlock99PC := 112.
        ].
        recoveredBlock99Step = 112 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) first.
            recoveredBlock99PC := 114.
        ].
        recoveredBlock99Step = 114 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) ~= (recoveredBlock99Stack3).
            recoveredBlock99PC := 115.
        ].
        recoveredBlock99Step = 115 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 118] ifFalse: [recoveredBlock99PC := 161].
        ].
        recoveredBlock99Step = 118 ifTrue: [
            recoveredBlock99PC := 119.
        ].
        recoveredBlock99Step = 119 ifTrue: [
            recoveredBlock99Stack1 := nil.
            recoveredBlock99PC := 120.
        ].
        recoveredBlock99Step = 120 ifTrue: [
            recoveredBlock99Stack2 := self.
            recoveredBlock99PC := 121.
        ].
        recoveredBlock99Step = 121 ifTrue: [
            recoveredBlock99Stack3 := recoveredArg1.
            recoveredBlock99PC := 124.
        ].
        recoveredBlock99Step = 124 ifTrue: [
            recoveredBlock99Stack4 := 'Choices 1..'.
            recoveredBlock99PC := 126.
        ].
        recoveredBlock99Step = 126 ifTrue: [
            recoveredBlock99Stack5 := recoveredBlock99Arg2.
            recoveredBlock99PC := 127.
        ].
        recoveredBlock99Step = 127 ifTrue: [
            recoveredBlock99Stack5 := (recoveredBlock99Stack5) asString.
            recoveredBlock99PC := 129.
        ].
        recoveredBlock99Step = 129 ifTrue: [
            recoveredBlock99Stack4 := (recoveredBlock99Stack4) , (recoveredBlock99Stack5).
            recoveredBlock99PC := 131.
        ].
        recoveredBlock99Step = 131 ifTrue: [
            recoveredBlock99Stack5 := recoveredLocal3.
            recoveredBlock99PC := 134.
        ].
        recoveredBlock99Step = 134 ifTrue: [
            recoveredBlock99Stack6 := nil.
            recoveredBlock99PC := 135.
        ].
        recoveredBlock99Step = 135 ifTrue: [
            recoveredBlock99Stack7 := recoveredBlock99Arg1.
            recoveredBlock99PC := 136.
        ].
        recoveredBlock99Step = 136 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) semAnaClass: (recoveredBlock99Stack3) withCastLeft: (recoveredBlock99Stack4) type: (recoveredBlock99Stack5) source: (recoveredBlock99Stack6) right: (recoveredBlock99Stack7).
            recoveredBlock99PC := 139.
        ].
        recoveredBlock99Step = 139 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Stack2.
            recoveredBlock99PC := 140.
        ].
        recoveredBlock99Step = 140 ifTrue: [
            recoveredLocal1 := recoveredBlock99Stack3.
            recoveredBlock99PC := 143.
        ].
        recoveredBlock99Step = 143 ifTrue: [
            (recoveredBlock99Stack2 == nil) ifTrue: [recoveredBlock99PC := 161] ifFalse: [recoveredBlock99PC := 146].
        ].
        recoveredBlock99Step = 146 ifTrue: [
            recoveredBlock99PC := 147.
        ].
        recoveredBlock99Step = 147 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal1.
            recoveredBlock99PC := 150.
        ].
        recoveredBlock99Step = 150 ifTrue: [
            recoveredLocal3 := recoveredBlock99Stack1.
            recoveredBlock99PC := 153.
        ].
        recoveredBlock99Step = 153 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal2.
            recoveredBlock99PC := 156.
        ].
        recoveredBlock99Step = 156 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) + (1).
            recoveredBlock99PC := 157.
        ].
        recoveredBlock99Step = 157 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Stack1.
            recoveredBlock99PC := 158.
        ].
        recoveredBlock99Step = 158 ifTrue: [
            recoveredLocal2 := recoveredBlock99Stack2.
            recoveredBlock99PC := 161.
        ].
        recoveredBlock99Step = 161 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack1.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 'Choices'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack6 := (recoveredStack6) defaultExprChild.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaClass: (recoveredStack2) withCastLeft: (recoveredStack3) type: (recoveredStack4) source: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) choiceChildren.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056a060; bytecode file offset 0xe6698c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
method: recoveredArg1
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
            recoveredStack2 := 640.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) declaration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) semAnaIllegalModuleType: (recoveredStack1) errNo: (recoveredStack2) errLabel: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) declaration.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) semAnaReferenceType: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) localVars.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isMdlBlockVarDecl.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 50] ifFalse: [recoveredBlock35PC := 79].
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isMdlTempVar.
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 79] ifFalse: [recoveredBlock35PC := 56].
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) optimizations.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isCgOptUsed.
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 79] ifFalse: [recoveredBlock35PC := 64].
        ].
        recoveredBlock35Step = 64 ifTrue: [
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            recoveredBlock35Stack2 := 91.
            recoveredBlock35PC := 70.
        ].
        recoveredBlock35Step = 70 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Arg1.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) errLabel.
            recoveredBlock35PC := 72.
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack4 := recoveredArg1.
            recoveredBlock35PC := 75.
        ].
        recoveredBlock35Step = 75 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) errLabel.
            recoveredBlock35PC := 76.
        ].
        recoveredBlock35Step = 76 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) mdlInfoNo: (recoveredBlock35Stack2) with: (recoveredBlock35Stack3) with: (recoveredBlock35Stack4).
            recoveredBlock35PC := 79.
        ].
        recoveredBlock35Step = 79 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrAdditional.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 105.
        ].
        recoveredBlock98Step = 105 ifTrue: [
            recoveredBlock98Stack2 := 641.
            recoveredBlock98PC := 108.
        ].
        recoveredBlock98Step = 108 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Arg1.
            recoveredBlock98PC := 109.
        ].
        recoveredBlock98Step = 109 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) errLabel.
            recoveredBlock98PC := 110.
        ].
        recoveredBlock98Step = 110 ifTrue: [
            (recoveredBlock98Stack0) semAnaIllegalModuleType: (recoveredBlock98Stack1) errNo: (recoveredBlock98Stack2) errLabel: (recoveredBlock98Stack3).
            recoveredBlock98PC := 113.
        ].
        recoveredBlock98Step = 113 ifTrue: [
            recoveredBlock98Stack0 := nil.
            recoveredBlock98PC := 114.
        ].
        recoveredBlock98Step = 114 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 115.
        ].
        recoveredBlock98Step = 115 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) optimizations.
            recoveredBlock98PC := 117.
        ].
        recoveredBlock98Step = 117 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isCgOptUsed.
            recoveredBlock98PC := 119.
        ].
        recoveredBlock98Step = 119 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 137] ifFalse: [recoveredBlock98PC := 122].
        ].
        recoveredBlock98Step = 122 ifTrue: [
            recoveredBlock98PC := 123.
        ].
        recoveredBlock98Step = 123 ifTrue: [
            recoveredBlock98Stack0 := recoveredBlock98Arg1.
            recoveredBlock98PC := 124.
        ].
        recoveredBlock98Step = 124 ifTrue: [
            recoveredBlock98Stack1 := 92.
            recoveredBlock98PC := 128.
        ].
        recoveredBlock98Step = 128 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 129.
        ].
        recoveredBlock98Step = 129 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) errLabel.
            recoveredBlock98PC := 130.
        ].
        recoveredBlock98Step = 130 ifTrue: [
            recoveredBlock98Stack3 := recoveredArg1.
            recoveredBlock98PC := 133.
        ].
        recoveredBlock98Step = 133 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) errLabel.
            recoveredBlock98PC := 134.
        ].
        recoveredBlock98Step = 134 ifTrue: [
            recoveredBlock98Stack0 := (recoveredBlock98Stack0) mdlInfoNo: (recoveredBlock98Stack1) with: (recoveredBlock98Stack2) with: (recoveredBlock98Stack3).
            recoveredBlock98PC := 137.
        ].
        recoveredBlock98Step = 137 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack0.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSideEffectFree.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := [:block281115ecArg1 | 
    | block281115ecValue0 block281115ecValue1 block281115ecValue2 |
    block281115ecValue0 := block281115ecArg1.
    block281115ecValue1 := (block281115ecValue0) attributes.
    block281115ecValue2 := (block281115ecValue1) isCgAttrArgumentOut.
    block281115ecValue2
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 96.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := 'has in/out or out arguments'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVoidType.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 961.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock213Value0 recoveredBlock213Value1 recoveredBlock213Value2 recoveredBlock213Value3 recoveredBlock213Value4 recoveredBlock213Value5 recoveredBlock213Value6 |
    recoveredBlock213Value0 := SGMdCheckMethodSideEffectFree.
    recoveredBlock213Value1 := (recoveredBlock213Value0) create.
    recoveredBlock213Value2 := recoveredBlock213Value1.
    recoveredBlock213Value3 := recoveredArg1.
    (recoveredBlock213Value2) prepareAnalysis: (recoveredBlock213Value3).
    recoveredBlock213Value4 := recoveredArg1.
    recoveredBlock213Value5 := (recoveredBlock213Value4) child.
    recoveredBlock213Value6 := (recoveredBlock213Value1) visitMdlNode: (recoveredBlock213Value5).
    recoveredBlock213Value6
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) disableMemClassReadCostsDo: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056a1d4; bytecode file offset 0xe66af0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlRecordInterface: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgExternalStructOrTypedef.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 50.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentInfo.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentTypeLabel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := SGMdBuilder.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := (recoveredStack5) currentMdlBuilder.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgExternalStructOrTypedef.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68Stack4 recoveredBlock68Stack5 recoveredBlock68Stack6 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := nil.
            recoveredBlock68PC := 75.
        ].
        recoveredBlock68Step = 75 ifTrue: [
            recoveredBlock68Stack2 := recoveredBlock68Arg1.
            recoveredBlock68PC := 76.
        ].
        recoveredBlock68Step = 76 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) mdlClass.
            recoveredBlock68PC := 78.
        ].
        recoveredBlock68Step = 78 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) isIleScalarType.
            recoveredBlock68PC := 80.
        ].
        recoveredBlock68Step = 80 ifTrue: [
            (recoveredBlock68Stack2) ifTrue: [recoveredBlock68PC := 106] ifFalse: [recoveredBlock68PC := 84].
        ].
        recoveredBlock68Step = 84 ifTrue: [
            recoveredBlock68PC := 85.
        ].
        recoveredBlock68Step = 85 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 86.
        ].
        recoveredBlock68Step = 86 ifTrue: [
            recoveredBlock68Stack2 := 6421.
            recoveredBlock68PC := 90.
        ].
        recoveredBlock68Step = 90 ifTrue: [
            recoveredBlock68Stack3 := recoveredArg1.
            recoveredBlock68PC := 93.
        ].
        recoveredBlock68Step = 93 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) errLabel.
            recoveredBlock68PC := 95.
        ].
        recoveredBlock68Step = 95 ifTrue: [
            recoveredBlock68Stack4 := recoveredBlock68Arg1.
            recoveredBlock68PC := 96.
        ].
        recoveredBlock68Step = 96 ifTrue: [
            recoveredBlock68Stack4 := (recoveredBlock68Stack4) errLabel.
            recoveredBlock68PC := 98.
        ].
        recoveredBlock68Step = 98 ifTrue: [
            recoveredBlock68Stack5 := recoveredBlock68Arg1.
            recoveredBlock68PC := 99.
        ].
        recoveredBlock68Step = 99 ifTrue: [
            recoveredBlock68Stack5 := (recoveredBlock68Stack5) mdlClass.
            recoveredBlock68PC := 101.
        ].
        recoveredBlock68Step = 101 ifTrue: [
            recoveredBlock68Stack5 := (recoveredBlock68Stack5) errLabel.
            recoveredBlock68PC := 103.
        ].
        recoveredBlock68Step = 103 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) mdlSemErrNo: (recoveredBlock68Stack2) with: (recoveredBlock68Stack3) with: (recoveredBlock68Stack4) with: (recoveredBlock68Stack5).
            recoveredBlock68PC := 106.
        ].
        recoveredBlock68Step = 106 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgOrderedElements.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 510.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := SGMdBuilder.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := (recoveredStack4) currentMdlBuilder.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := [:recoveredBlock154Arg1 | 
    | recoveredBlock154Stack0 recoveredBlock154Stack1 recoveredBlock154Stack2 recoveredBlock154Stack3 recoveredBlock154Stack4 recoveredBlock154PC recoveredBlock154Step recoveredBlock154Done recoveredBlock154Result |
    recoveredBlock154Stack0 := self.
    recoveredBlock154PC := 160.
    recoveredBlock154Done := false.
    [recoveredBlock154Done not] whileTrue: [
        recoveredBlock154Step := recoveredBlock154PC.
        recoveredBlock154Step = 160 ifTrue: [
            recoveredBlock154Stack1 := nil.
            recoveredBlock154PC := 161.
        ].
        recoveredBlock154Step = 161 ifTrue: [
            recoveredBlock154Stack2 := recoveredBlock154Arg1.
            recoveredBlock154PC := 164.
        ].
        recoveredBlock154Step = 164 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) mdlClass.
            recoveredBlock154PC := 166.
        ].
        recoveredBlock154Step = 166 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) isCgRecordType.
            recoveredBlock154PC := 168.
        ].
        recoveredBlock154Step = 168 ifTrue: [
            (recoveredBlock154Stack2) ifTrue: [recoveredBlock154PC := 172] ifFalse: [recoveredBlock154PC := 231].
        ].
        recoveredBlock154Step = 172 ifTrue: [
            recoveredBlock154PC := 173.
        ].
        recoveredBlock154Step = 173 ifTrue: [
            recoveredBlock154Stack1 := recoveredBlock154Arg1.
            recoveredBlock154PC := 176.
        ].
        recoveredBlock154Step = 176 ifTrue: [
            recoveredBlock154Stack1 := (recoveredBlock154Stack1) mdlBuilder.
            recoveredBlock154PC := 178.
        ].
        recoveredBlock154Step = 178 ifTrue: [
            recoveredBlock154Stack2 := recoveredBlock154Arg1.
            recoveredBlock154PC := 181.
        ].
        recoveredBlock154Step = 181 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) mdlClass.
            recoveredBlock154PC := 183.
        ].
        recoveredBlock154Step = 183 ifTrue: [
            recoveredBlock154Stack3 := [].
            recoveredBlock154PC := 185.
        ].
        recoveredBlock154Step = 185 ifTrue: [
            recoveredBlock154Stack1 := (recoveredBlock154Stack1) lookupClassInterface: (recoveredBlock154Stack2) ifFail: (recoveredBlock154Stack3).
            recoveredBlock154PC := 187.
        ].
        recoveredBlock154Step = 187 ifTrue: [
            recoveredBlock154Stack2 := [:recoveredBlock154Block187Arg1 | 
    | recoveredBlock154Block187Stack0 recoveredBlock154Block187Stack1 recoveredBlock154Block187Stack2 recoveredBlock154Block187Stack3 recoveredBlock154Block187Stack4 recoveredBlock154Block187Stack5 recoveredBlock154Block187Stack6 recoveredBlock154Block187PC recoveredBlock154Block187Step recoveredBlock154Block187Done recoveredBlock154Block187Result |
    recoveredBlock154Block187Stack0 := nil.
    recoveredBlock154Block187PC := 194.
    recoveredBlock154Block187Done := false.
    [recoveredBlock154Block187Done not] whileTrue: [
        recoveredBlock154Block187Step := recoveredBlock154Block187PC.
        recoveredBlock154Block187Step = 194 ifTrue: [
            recoveredBlock154Block187Stack1 := nil.
            recoveredBlock154Block187PC := 195.
        ].
        recoveredBlock154Block187Step = 195 ifTrue: [
            recoveredBlock154Block187Stack2 := recoveredBlock154Block187Arg1.
            recoveredBlock154Block187PC := 196.
        ].
        recoveredBlock154Block187Step = 196 ifTrue: [
            recoveredBlock154Block187Stack2 := (recoveredBlock154Block187Stack2) isCgExternalStructOrTypedef.
            recoveredBlock154Block187PC := 197.
        ].
        recoveredBlock154Block187Step = 197 ifTrue: [
            (recoveredBlock154Block187Stack2) ifTrue: [recoveredBlock154Block187PC := 228] ifFalse: [recoveredBlock154Block187PC := 200].
        ].
        recoveredBlock154Block187Step = 200 ifTrue: [
            recoveredBlock154Block187PC := 201.
        ].
        recoveredBlock154Block187Step = 201 ifTrue: [
            recoveredBlock154Block187Stack1 := recoveredArg1.
            recoveredBlock154Block187PC := 204.
        ].
        recoveredBlock154Block187Step = 204 ifTrue: [
            recoveredBlock154Block187Stack2 := 502.
            recoveredBlock154Block187PC := 208.
        ].
        recoveredBlock154Block187Step = 208 ifTrue: [
            recoveredBlock154Block187Stack3 := recoveredArg1.
            recoveredBlock154Block187PC := 211.
        ].
        recoveredBlock154Block187Step = 211 ifTrue: [
            recoveredBlock154Block187Stack3 := (recoveredBlock154Block187Stack3) errLabel.
            recoveredBlock154Block187PC := 213.
        ].
        recoveredBlock154Block187Step = 213 ifTrue: [
            recoveredBlock154Block187Stack4 := recoveredBlock154Arg1.
            recoveredBlock154Block187PC := 216.
        ].
        recoveredBlock154Block187Step = 216 ifTrue: [
            recoveredBlock154Block187Stack4 := (recoveredBlock154Block187Stack4) errLabel.
            recoveredBlock154Block187PC := 218.
        ].
        recoveredBlock154Block187Step = 218 ifTrue: [
            recoveredBlock154Block187Stack5 := recoveredBlock154Arg1.
            recoveredBlock154Block187PC := 221.
        ].
        recoveredBlock154Block187Step = 221 ifTrue: [
            recoveredBlock154Block187Stack5 := (recoveredBlock154Block187Stack5) mdlClass.
            recoveredBlock154Block187PC := 223.
        ].
        recoveredBlock154Block187Step = 223 ifTrue: [
            recoveredBlock154Block187Stack5 := (recoveredBlock154Block187Stack5) errLabel.
            recoveredBlock154Block187PC := 225.
        ].
        recoveredBlock154Block187Step = 225 ifTrue: [
            recoveredBlock154Block187Stack1 := (recoveredBlock154Block187Stack1) mdlSemErrNo: (recoveredBlock154Block187Stack2) with: (recoveredBlock154Block187Stack3) with: (recoveredBlock154Block187Stack4) with: (recoveredBlock154Block187Stack5).
            recoveredBlock154Block187PC := 228.
        ].
        recoveredBlock154Block187Step = 228 ifTrue: [
            recoveredBlock154Block187Result := recoveredBlock154Block187Stack1.
            recoveredBlock154Block187Done := true.
        ].
    ].
    recoveredBlock154Block187Result
].
            recoveredBlock154PC := 229.
        ].
        recoveredBlock154Step = 229 ifTrue: [
            recoveredBlock154Stack1 := (recoveredBlock154Stack1) ifNotNil: (recoveredBlock154Stack2).
            recoveredBlock154PC := 231.
        ].
        recoveredBlock154Step = 231 ifTrue: [
            recoveredBlock154Result := recoveredBlock154Stack1.
            recoveredBlock154Done := true.
        ].
    ].
    recoveredBlock154Result
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := super mdlRecordInterface: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056a90c; bytecode file offset 0xe67234"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlRecordFieldsMapping: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldMapping.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    (recoveredBlock8Value0) semanticAnalysis.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) source.
    recoveredBlock8Value3 := [:recoveredBlock8Block19Arg1 | 
    | recoveredBlock8Block19Value0 recoveredBlock8Block19Value1 |
    recoveredBlock8Block19Value0 := recoveredBlock8Block19Arg1.
    recoveredBlock8Block19Value1 := recoveredBlock8Block19Value0.
    recoveredLocal3 := recoveredBlock8Block19Value1.
    recoveredBlock8Block19Value0
].
    recoveredBlock8Value4 := (recoveredBlock8Value2) ifNotNil: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlInterface.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 |
    recoveredBlock50Value0 := recoveredArg1.
    recoveredBlock50Value1 := (recoveredBlock50Value0) fieldMapping.
    recoveredBlock50Value2 := recoveredBlock50Arg1.
    recoveredBlock50Value3 := (recoveredBlock50Value2) mdlLabel.
    recoveredBlock50Value4 := [
    | recoveredBlock50Block65Value0 recoveredBlock50Block65Value1 recoveredBlock50Block65Value2 |
    recoveredBlock50Block65Value0 := recoveredLocal4.
    recoveredBlock50Block65Value1 := recoveredBlock50Arg1.
    recoveredBlock50Block65Value2 := (recoveredBlock50Block65Value0) add: (recoveredBlock50Block65Value1).
    recoveredBlock50Block65Value2
].
    recoveredBlock50Value5 := (recoveredBlock50Value1) at: (recoveredBlock50Value3) ifAbsent: (recoveredBlock50Value4).
    recoveredBlock50Value5
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 recoveredBlock102Value4 |
    recoveredBlock102Value0 := recoveredLocal2.
    recoveredBlock102Value1 := recoveredBlock102Arg1.
    recoveredBlock102Value2 := (recoveredBlock102Value1) errLabel.
    recoveredBlock102Value3 := (recoveredBlock102Value0) , (recoveredBlock102Value2).
    recoveredBlock102Value4 := recoveredBlock102Value3.
    recoveredLocal2 := recoveredBlock102Value4.
    recoveredBlock102Value3
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 |
    recoveredBlock121Value0 := recoveredLocal2.
    recoveredBlock121Value1 := (recoveredBlock121Value0) , (', ').
    recoveredBlock121Value2 := recoveredBlock121Value1.
    recoveredLocal2 := recoveredBlock121Value2.
    recoveredBlock121Value1
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) andBetweenDo: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := (recoveredBlock145Value0) deepCopy.
    recoveredLocal1 := recoveredBlock145Value1.
    recoveredBlock145Value2 := recoveredLocal1.
    recoveredBlock145Value3 := recoveredArg1.
    recoveredBlock145Value4 := (recoveredBlock145Value3) label.
    recoveredBlock145Value5 := (recoveredBlock145Value2) displayName: (recoveredBlock145Value4).
    recoveredBlock145Value5
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataStructureGenerator.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowsSparseRecordFieldsMapping.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 275.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromVarDeclPath.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 275.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromVarDeclPath.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := super mdlRecordFieldsMapping: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057f1bc; bytecode file offset 0xe7baf8"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
varDecl: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) semAnaReferenceType: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) semAnaSystemConstant: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInstVarDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReference.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDistribution.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialCallParmDecl.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 302.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'distribution type'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArrayType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArray.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReference.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 787.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMessage.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReference.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 794.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReference.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgRecordType.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlImported.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupClassInterface: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 173] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 173].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := 501.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlParmDecl.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 249] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentScope.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgPrototype.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgServiceRoutineComponent.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 245].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAllowedInServiceRoutine.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 245] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArrayType.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArray.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrProductionCodeOnly.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 245] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := 106.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelWithoutReadWrite.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) checkDeprecatedDiscreteTypeFor: (recoveredStack1) logicNode: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058de18; bytecode file offset 0xe8a744"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
methodDecl: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComplexClassNoEnumType.
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlANSIC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) cgOptCreateNoWrapper.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cgAttrReference.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableArray.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnAttributes.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) cgAttrPointerType.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 'method'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) semAnaImplementation: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgDirectAccessMethod.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) cgOptCreateNoWrapper.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedParmChildren.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:block28114628Arg1 | 
    | block28114628Stack0 block28114628Stack1 block28114628Stack2 block28114628Stack3 block28114628PC block28114628Step block28114628Done block28114628Result |
    block28114628Stack0 := self.
    block28114628PC := 4.
    block28114628Done := false.
    [block28114628Done not] whileTrue: [
        block28114628Step := block28114628PC.
        block28114628Step = 4 ifTrue: [
            block28114628Stack1 := true.
            block28114628PC := 5.
        ].
        block28114628Step = 5 ifTrue: [
            block28114628Stack2 := block28114628Arg1.
            block28114628PC := 6.
        ].
        block28114628Step = 6 ifTrue: [
            block28114628Stack2 := (block28114628Stack2) mdlClass.
            block28114628PC := 7.
        ].
        block28114628Step = 7 ifTrue: [
            block28114628Stack2 := (block28114628Stack2) isMdlComplexClassNoEnumType.
            block28114628PC := 8.
        ].
        block28114628Step = 8 ifTrue: [
            (block28114628Stack2) ifTrue: [block28114628PC := 16] ifFalse: [block28114628PC := 12].
        ].
        block28114628Step = 12 ifTrue: [
            block28114628PC := 13.
        ].
        block28114628Step = 13 ifTrue: [
            block28114628Stack1 := block28114628Arg1.
            block28114628PC := 14.
        ].
        block28114628Step = 14 ifTrue: [
            block28114628Stack1 := (block28114628Stack1) mdlClass.
            block28114628PC := 15.
        ].
        block28114628Step = 15 ifTrue: [
            block28114628Stack1 := (block28114628Stack1) isMdlANSIC.
            block28114628PC := 16.
        ].
        block28114628Step = 16 ifTrue: [
            block28114628Result := block28114628Stack1.
            block28114628Done := true.
        ].
    ].
    block28114628Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) cgOptCreateNoWrapper.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRunnableDecl.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:block2811464cArg1 | 
    | block2811464cValue0 block2811464cValue1 block2811464cValue2 |
    block2811464cValue0 := block2811464cArg1.
    block2811464cValue1 := (block2811464cValue0) mdlClass.
    block2811464cValue2 := (block2811464cValue1) isCgVariableArray.
    block2811464cValue2
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 790.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRunnableDecl.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrNoInlining.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrAutomaticInlining.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := 357.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) semAnaInlining: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgUsePrototype.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgUseServiceRoutine.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := 'return'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) semAnaCheckServiceRoutine: (recoveredStack1) type: (recoveredStack2) errLabel: (recoveredStack3).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := [:recoveredBlock252Arg1 | 
    | recoveredBlock252Value0 recoveredBlock252Value1 recoveredBlock252Value2 recoveredBlock252Value3 recoveredBlock252Value4 recoveredBlock252Value5 |
    recoveredBlock252Value0 := recoveredArg1.
    recoveredBlock252Value1 := recoveredBlock252Arg1.
    recoveredBlock252Value2 := (recoveredBlock252Value1) mdlClass.
    recoveredBlock252Value3 := recoveredBlock252Arg1.
    recoveredBlock252Value4 := (recoveredBlock252Value3) errLabel.
    recoveredBlock252Value5 := (self) semAnaCheckServiceRoutine: (recoveredBlock252Value0) type: (recoveredBlock252Value2) errLabel: (recoveredBlock252Value4).
    recoveredBlock252Value5
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20592be0; bytecode file offset 0xe8f51c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) shouldForceContentAssignmentFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlDereferencedExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) variable: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlDereferencedExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) semAnaLeftHandSide.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaElementHasImplementation: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArrayType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrReference.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrWriteForReferencedObject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) semAnaCheckNoRedundantElement: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := [:recoveredBlock121Arg1 :recoveredBlock121Arg2 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 recoveredBlock121Value3 |
    recoveredBlock121Value0 := recoveredArg1.
    recoveredBlock121Value1 := recoveredBlock121Arg1.
    recoveredBlock121Value2 := recoveredBlock121Arg2.
    recoveredBlock121Value3 := (self) semAnaAssignReferenceReadWrite: (recoveredBlock121Value0) lValue: (recoveredBlock121Value1) expr: (recoveredBlock121Value2).
    recoveredBlock121Value3
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withCast: (recoveredStack2) assignSource: (recoveredStack3) onReferenceError: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) semAnaCharTableAssign: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) semAnaRteCall: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) semAnaBoolNoAssign: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodScopedVarDecl.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := 'for assignment to non-local reference variable'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) semAnaNoStackVariable: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTempVar.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgSDiscOrUDisc.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalVariant.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) isQuantVariant.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlMaybeUnsuitablePhysicalType.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 211.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a0724; bytecode file offset 0xe9d040"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlARInvokeOperationEvent: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationDecl.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmChildren.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) runnableRef.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) parmChildren.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationDecl.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmChildren.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) runnableRef.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) parmChildren.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:recoveredBlock47Arg1 :recoveredBlock47Arg2 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47Stack5 recoveredBlock47Stack6 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) errLabel.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) errLabel.
            recoveredBlock47PC := 60.
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) equals: (recoveredBlock47Stack2).
            recoveredBlock47PC := 62.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 86] ifFalse: [recoveredBlock47PC := 66].
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack2 := recoveredArg1.
            recoveredBlock47PC := 72.
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) runnableRef.
            recoveredBlock47PC := 74.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47Stack3 := recoveredArg1.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) operationDecl.
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            recoveredBlock47Stack4 := 'name'.
            recoveredBlock47PC := 80.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47Stack5 := recoveredBlock47Arg1.
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) errLabel.
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 83 ifTrue: [
            (recoveredBlock47Stack1) mdlSemErrServerRunnableDecl: (recoveredBlock47Stack2) mismatchedOperationDecl: (recoveredBlock47Stack3) reason: (recoveredBlock47Stack4) argument: (recoveredBlock47Stack5).
            recoveredBlock47PC := 86.
        ].
        recoveredBlock47Step = 86 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) isMdlArgumentUsageIn.
            recoveredBlock47PC := 89.
        ].
        recoveredBlock47Step = 89 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 90.
        ].
        recoveredBlock47Step = 90 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) isMdlArgumentUsageIn.
            recoveredBlock47PC := 92.
        ].
        recoveredBlock47Step = 92 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) ~= (recoveredBlock47Stack2).
            recoveredBlock47PC := 93.
        ].
        recoveredBlock47Step = 93 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 116] ifFalse: [recoveredBlock47PC := 96].
        ].
        recoveredBlock47Step = 96 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 97.
        ].
        recoveredBlock47Step = 97 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) isMdlArgumentUsageOut.
            recoveredBlock47PC := 99.
        ].
        recoveredBlock47Step = 99 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 100.
        ].
        recoveredBlock47Step = 100 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) isMdlArgumentUsageOut.
            recoveredBlock47PC := 102.
        ].
        recoveredBlock47Step = 102 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) ~= (recoveredBlock47Stack2).
            recoveredBlock47PC := 103.
        ].
        recoveredBlock47Step = 103 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 116] ifFalse: [recoveredBlock47PC := 106].
        ].
        recoveredBlock47Step = 106 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 107.
        ].
        recoveredBlock47Step = 107 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) isMdlArgumentUsageInOut.
            recoveredBlock47PC := 109.
        ].
        recoveredBlock47Step = 109 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 110.
        ].
        recoveredBlock47Step = 110 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) isMdlArgumentUsageInOut.
            recoveredBlock47PC := 112.
        ].
        recoveredBlock47Step = 112 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) ~= (recoveredBlock47Stack2).
            recoveredBlock47PC := 113.
        ].
        recoveredBlock47Step = 113 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 116] ifFalse: [recoveredBlock47PC := 136].
        ].
        recoveredBlock47Step = 116 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 119.
        ].
        recoveredBlock47Step = 119 ifTrue: [
            recoveredBlock47Stack2 := recoveredArg1.
            recoveredBlock47PC := 122.
        ].
        recoveredBlock47Step = 122 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) runnableRef.
            recoveredBlock47PC := 124.
        ].
        recoveredBlock47Step = 124 ifTrue: [
            recoveredBlock47Stack3 := recoveredArg1.
            recoveredBlock47PC := 127.
        ].
        recoveredBlock47Step = 127 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) operationDecl.
            recoveredBlock47PC := 128.
        ].
        recoveredBlock47Step = 128 ifTrue: [
            recoveredBlock47Stack4 := 'direction'.
            recoveredBlock47PC := 130.
        ].
        recoveredBlock47Step = 130 ifTrue: [
            recoveredBlock47Stack5 := recoveredBlock47Arg1.
            recoveredBlock47PC := 131.
        ].
        recoveredBlock47Step = 131 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) errLabel.
            recoveredBlock47PC := 133.
        ].
        recoveredBlock47Step = 133 ifTrue: [
            (recoveredBlock47Stack1) mdlSemErrServerRunnableDecl: (recoveredBlock47Stack2) mismatchedOperationDecl: (recoveredBlock47Stack3) reason: (recoveredBlock47Stack4) argument: (recoveredBlock47Stack5).
            recoveredBlock47PC := 136.
        ].
        recoveredBlock47Step = 136 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 137.
        ].
        recoveredBlock47Step = 137 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg1.
            recoveredBlock47PC := 138.
        ].
        recoveredBlock47Step = 138 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) mdlClass.
            recoveredBlock47PC := 140.
        ].
        recoveredBlock47Step = 140 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Arg2.
            recoveredBlock47PC := 141.
        ].
        recoveredBlock47Step = 141 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) mdlClass.
            recoveredBlock47PC := 143.
        ].
        recoveredBlock47Step = 143 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) isCgTypeIdentical: (recoveredBlock47Stack3).
            recoveredBlock47PC := 145.
        ].
        recoveredBlock47Step = 145 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 169] ifFalse: [recoveredBlock47PC := 148].
        ].
        recoveredBlock47Step = 148 ifTrue: [
            recoveredBlock47PC := 149.
        ].
        recoveredBlock47Step = 149 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 152.
        ].
        recoveredBlock47Step = 152 ifTrue: [
            recoveredBlock47Stack2 := recoveredArg1.
            recoveredBlock47PC := 155.
        ].
        recoveredBlock47Step = 155 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) runnableRef.
            recoveredBlock47PC := 157.
        ].
        recoveredBlock47Step = 157 ifTrue: [
            recoveredBlock47Stack3 := recoveredArg1.
            recoveredBlock47PC := 160.
        ].
        recoveredBlock47Step = 160 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) operationDecl.
            recoveredBlock47PC := 161.
        ].
        recoveredBlock47Step = 161 ifTrue: [
            recoveredBlock47Stack4 := 'type'.
            recoveredBlock47PC := 163.
        ].
        recoveredBlock47Step = 163 ifTrue: [
            recoveredBlock47Stack5 := recoveredBlock47Arg1.
            recoveredBlock47PC := 164.
        ].
        recoveredBlock47Step = 164 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) errLabel.
            recoveredBlock47PC := 166.
        ].
        recoveredBlock47Step = 166 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) mdlSemErrServerRunnableDecl: (recoveredBlock47Stack2) mismatchedOperationDecl: (recoveredBlock47Stack3) reason: (recoveredBlock47Stack4) argument: (recoveredBlock47Stack5).
            recoveredBlock47PC := 169.
        ].
        recoveredBlock47Step = 169 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableRef.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVoid.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationDecl.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAUTOSARStandardReturnType.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 231] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableRef.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) operationDecl.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeIdentical: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 231] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := (recoveredStack2) runnableRef.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) operationDecl.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := 'return type'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) mdlSemErrServerRunnableDecl: (recoveredStack2) mismatchedOperationDecl: (recoveredStack3) reason: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableRef.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmChildren.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) operationDecl.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) parmChildren.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := [:block28115798Arg1 :block28115798Arg2 | 
    | block28115798Value0 block28115798Value1 block28115798Value2 block28115798Value3 block28115798Value4 |
    block28115798Value0 := block28115798Arg1.
    block28115798Value1 := block28115798Arg2.
    block28115798Value2 := (block28115798Value1) mdlClass.
    block28115798Value3 := (block28115798Value2) copy.
    block28115798Value4 := (block28115798Value0) mdlClass: (block28115798Value3).
    block28115798Value4
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := (recoveredStack2) runnableRef.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := (recoveredStack3) operationDecl.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := 'signature'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) mdlSemErrServerRunnableDecl: (recoveredStack2) mismatchedOperationDecl: (recoveredStack3) reason: (recoveredStack4).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableRef.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := (recoveredStack2) operationDecl.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) operationDecl: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205a7fc8; bytecode file offset 0xea491c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaCase: recoveredArg1 switch: recoveredArg2 values: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) switchStmnt: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) literal.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaIsIntegerOrAbstractEnum: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaIsConstantExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIdentifier.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 201] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) literal.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMdlConstantValue.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [
    | block281161b8Value0 block281161b8Value1 |
    block281161b8Value0 := OrderedCollection.
    block281161b8Value1 := (block281161b8Value0) new.
    block281161b8Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlARApplicationErrorType.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 190.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := [:block281161dcArg1 | 
    | block281161dcValue0 block281161dcValue1 block281161dcValue2 |
    block281161dcValue0 := block281161dcArg1.
    block281161dcValue1 := (block281161dcValue0) literal.
    block281161dcValue2 := (block281161dcValue1) source.
    block281161dcValue2
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack5) addFirst: (recoveredStack6).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack6 := [:block28116200Arg1 | 
    | block28116200Value0 block28116200Value1 block28116200Value2 block28116200Value3 block28116200Value4 block28116200Value5 block28116200Value6 block28116200Value7 block28116200Value8 block28116200Value9 |
    block28116200Value0 := block28116200Arg1.
    block28116200Value1 := (block28116200Value0) literal.
    block28116200Value2 := (block28116200Value1) errLabel.
    block28116200Value3 := ('"') , (block28116200Value2).
    block28116200Value4 := (block28116200Value3) , ('" ==> ').
    block28116200Value5 := block28116200Arg1.
    block28116200Value6 := (block28116200Value5) literal.
    block28116200Value7 := (block28116200Value6) evaluateMdlConstantValue.
    block28116200Value8 := (block28116200Value7) asString.
    block28116200Value9 := (block28116200Value4) , (block28116200Value8).
    block28116200Value9
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := (recoveredStack5) collect: (recoveredStack6).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack7 := '"'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack8 := (recoveredStack8) literal.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack8 := (recoveredStack8) errLabel.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack8 := '" ==> '.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack8 := (recoveredStack8) literal.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack8 := (recoveredStack8) evaluateMdlConstantValue.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack8 := (recoveredStack8) asString.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack6) addFirst: (recoveredStack7).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) literal.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMdlConstantValue.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := [
    | block28116224Value0 block28116224Value1 |
    block28116224Value0 := OrderedCollection.
    block28116224Value1 := (block28116224Value0) new.
    block28116224Value1
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxEnumerationValue.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) semAnaExceedsEnumRange: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) switchExpr.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConstantValue.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 299] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlUInt.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgNewDiscreteType.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSigned.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 299] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) literal.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 710.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) literal.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateMdlConstantValue.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c37c0; bytecode file offset 0xec00f4"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlAutosarMapping: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
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
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isMdlTargetMissing.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 198] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) fromVarDeclReceiver.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlImported.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 36] ifFalse: [recoveredBlock13PC := 82].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) fromVarDeclReceiver.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlMissingExportDecl.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 46] ifFalse: [recoveredBlock13PC := 82].
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) toVarDecl.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) mdlClass.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) fromVarDecl.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) mdlClass.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack4 := self.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) generator.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isCgTypeMappableNoImpl: (recoveredBlock13Stack3) generator: (recoveredBlock13Stack4).
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 79] ifFalse: [recoveredBlock13PC := 68].
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := 2.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13PC := 198.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlDestClass.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) mdlClass.
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) generator.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isCgTypeMappableTo: (recoveredBlock13Stack2) generator: (recoveredBlock13Stack3).
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 96] ifFalse: [recoveredBlock13PC := 188].
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlDestClass.
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isCgEnumType.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) mdlClass.
            recoveredBlock13PC := 104.
        ].
        recoveredBlock13Step = 104 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isCgEnumType.
            recoveredBlock13PC := 106.
        ].
        recoveredBlock13Step = 106 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) xor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 108.
        ].
        recoveredBlock13Step = 108 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 188] ifFalse: [recoveredBlock13PC := 112].
        ].
        recoveredBlock13Step = 112 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 113.
        ].
        recoveredBlock13Step = 113 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 114.
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) mdlDestClass.
            recoveredBlock13PC := 116.
        ].
        recoveredBlock13Step = 116 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) mdlClass.
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isCgTypeIdentical: (recoveredBlock13Stack3).
            recoveredBlock13PC := 121.
        ].
        recoveredBlock13Step = 121 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 185] ifFalse: [recoveredBlock13PC := 124].
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 126.
        ].
        recoveredBlock13Step = 126 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlDestClass.
            recoveredBlock13PC := 128.
        ].
        recoveredBlock13Step = 128 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlArithmetic.
            recoveredBlock13PC := 130.
        ].
        recoveredBlock13Step = 130 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 134] ifFalse: [recoveredBlock13PC := 164].
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 135.
        ].
        recoveredBlock13Step = 135 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlDestClass.
            recoveredBlock13PC := 137.
        ].
        recoveredBlock13Step = 137 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isCgContRealType.
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) mdlClass.
            recoveredBlock13PC := 142.
        ].
        recoveredBlock13Step = 142 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isCgContRealType.
            recoveredBlock13PC := 144.
        ].
        recoveredBlock13Step = 144 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) xor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 146.
        ].
        recoveredBlock13Step = 146 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 150] ifFalse: [recoveredBlock13PC := 164].
        ].
        recoveredBlock13Step = 150 ifTrue: [
            recoveredBlock13Stack1 := 2.
            recoveredBlock13PC := 152.
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 155.
        ].
        recoveredBlock13Step = 155 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 157.
        ].
        recoveredBlock13Step = 157 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 160.
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 164 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal4.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack3 := 1.
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) < (recoveredBlock13Stack3).
            recoveredBlock13PC := 171.
        ].
        recoveredBlock13Step = 171 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 174] ifFalse: [recoveredBlock13PC := 185].
        ].
        recoveredBlock13Step = 174 ifTrue: [
            recoveredBlock13PC := 175.
        ].
        recoveredBlock13Step = 175 ifTrue: [
            recoveredBlock13Stack1 := 1.
            recoveredBlock13PC := 177.
        ].
        recoveredBlock13Step = 177 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 180.
        ].
        recoveredBlock13Step = 180 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 181.
        ].
        recoveredBlock13Step = 181 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 182.
        ].
        recoveredBlock13Step = 182 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 185 ifTrue: [
            recoveredBlock13PC := 198.
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Stack1 := 2.
            recoveredBlock13PC := 190.
        ].
        recoveredBlock13Step = 190 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 194.
        ].
        recoveredBlock13Step = 194 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 195.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 198.
        ].
        recoveredBlock13Step = 198 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := 'message'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 'parameter'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := 'non identical implementation'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := 'non compatible types'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := (recoveredStack4) = (recoveredStack5).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) mdlSemAnaTypeMismatch: (recoveredStack2) reason: (recoveredStack3) warning: (recoveredStack4) invalidMapping: (recoveredStack5).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) semAnaMappingAR: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRedundantDataMaster.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 329].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := 37.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromVarDecl.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := 'redundant data and mapped messages can not be combined'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack4 := (recoveredStack4) fromVarDecl.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack6 := 'jump to mapping'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := (recoveredStack4) createMultiSource: (recoveredStack5) labels: (recoveredStack6).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c48ec; bytecode file offset 0xec1230"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
mdlCSInterface: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) methodDecls.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) generatorFactory.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) mdlBuilder.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) importsTable.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) createCodeGenerationContext: (recoveredBlock8Stack1).
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) parmChildren.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := [:recoveredBlock8Block30Arg1 | 
    | recoveredBlock8Block30Value0 recoveredBlock8Block30Value1 recoveredBlock8Block30Value2 recoveredBlock8Block30Value3 recoveredBlock8Block30Value4 |
    recoveredBlock8Block30Value0 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Value1 := recoveredBlock8Local1.
    recoveredBlock8Block30Value2 := (recoveredBlock8Block30Value0) mdlAllowedElementForCSInterfaceContext: (recoveredBlock8Block30Value1).
    recoveredBlock8Block30Value3 := [:recoveredBlock8Block30Block44Arg1 | 
    | recoveredBlock8Block30Block44Value0 recoveredBlock8Block30Block44Value1 recoveredBlock8Block30Block44Value2 recoveredBlock8Block30Block44Value3 recoveredBlock8Block30Block44Value4 recoveredBlock8Block30Block44Value5 recoveredBlock8Block30Block44Value6 recoveredBlock8Block30Block44Value7 recoveredBlock8Block30Block44Value8 recoveredBlock8Block30Block44Value9 recoveredBlock8Block30Block44Value10 recoveredBlock8Block30Block44Value11 recoveredBlock8Block30Block44Value12 recoveredBlock8Block30Block44Value13 recoveredBlock8Block30Block44Value14 recoveredBlock8Block30Block44Value15 recoveredBlock8Block30Block44Value16 recoveredBlock8Block30Block44Value17 recoveredBlock8Block30Block44Value18 recoveredBlock8Block30Block44Value19 recoveredBlock8Block30Block44Value20 recoveredBlock8Block30Block44Value21 recoveredBlock8Block30Block44Value22 recoveredBlock8Block30Block44Value23 recoveredBlock8Block30Block44Value24 recoveredBlock8Block30Block44Value25 recoveredBlock8Block30Block44Value26 recoveredBlock8Block30Block44Value27 recoveredBlock8Block30Block44Value28 recoveredBlock8Block30Block44Value29 recoveredBlock8Block30Block44Value30 recoveredBlock8Block30Block44Value31 recoveredBlock8Block30Block44Value32 recoveredBlock8Block30Block44Value33 recoveredBlock8Block30Block44Value34 recoveredBlock8Block30Block44Value35 recoveredBlock8Block30Block44Value36 recoveredBlock8Block30Block44Value37 recoveredBlock8Block30Block44Value38 recoveredBlock8Block30Block44Value39 recoveredBlock8Block30Block44Value40 recoveredBlock8Block30Block44Value41 recoveredBlock8Block30Block44Value42 recoveredBlock8Block30Block44Value43 recoveredBlock8Block30Block44Value44 recoveredBlock8Block30Block44Value45 |
    recoveredBlock8Block30Block44Value0 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value1 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value2 := (recoveredBlock8Block30Block44Value1) errLabel.
    recoveredBlock8Block30Block44Value3 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value4 := (recoveredBlock8Block30Block44Value3) mdlClass.
    recoveredBlock8Block30Block44Value5 := (recoveredBlock8Block30Block44Value4) errLabel.
    recoveredBlock8Block30Block44Value6 := recoveredBlock8Arg1.
    recoveredBlock8Block30Block44Value7 := (recoveredBlock8Block30Block44Value6) errLabel.
    recoveredBlock8Block30Block44Value8 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value9 := (recoveredBlock8Block30Block44Value8) source.
    recoveredBlock8Block30Block44Value10 := Array.
    recoveredBlock8Block30Block44Value11 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value12 := (recoveredBlock8Block30Block44Value11) source.
    recoveredBlock8Block30Block44Value13 := recoveredBlock8Block30Block44Arg1.
    recoveredBlock8Block30Block44Value14 := (recoveredBlock8Block30Block44Value13) source.
    recoveredBlock8Block30Block44Value15 := (recoveredBlock8Block30Block44Value10) with: (recoveredBlock8Block30Block44Value12) with: (recoveredBlock8Block30Block44Value14).
    recoveredBlock8Block30Block44Value16 := Array.
    recoveredBlock8Block30Block44Value17 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value18 := (recoveredBlock8Block30Block44Value17) errLabel.
    recoveredBlock8Block30Block44Value19 := ('Argument "') , (recoveredBlock8Block30Block44Value18).
    recoveredBlock8Block30Block44Value20 := (recoveredBlock8Block30Block44Value19) , ('" of type ').
    recoveredBlock8Block30Block44Value21 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value22 := (recoveredBlock8Block30Block44Value21) mdlClass.
    recoveredBlock8Block30Block44Value23 := (recoveredBlock8Block30Block44Value22) errLabel.
    recoveredBlock8Block30Block44Value24 := (recoveredBlock8Block30Block44Value20) , (recoveredBlock8Block30Block44Value23).
    recoveredBlock8Block30Block44Value25 := (recoveredBlock8Block30Block44Value24) , (' in client/server operation "').
    recoveredBlock8Block30Block44Value26 := recoveredBlock8Arg1.
    recoveredBlock8Block30Block44Value27 := (recoveredBlock8Block30Block44Value26) errLabel.
    recoveredBlock8Block30Block44Value28 := (recoveredBlock8Block30Block44Value25) , (recoveredBlock8Block30Block44Value27).
    recoveredBlock8Block30Block44Value29 := (recoveredBlock8Block30Block44Value28) , ('"').
    recoveredBlock8Block30Block44Value30 := recoveredBlock8Block30Block44Arg1.
    recoveredBlock8Block30Block44Value31 := (recoveredBlock8Block30Block44Value30) errLabel.
    recoveredBlock8Block30Block44Value32 := ('Element "') , (recoveredBlock8Block30Block44Value31).
    recoveredBlock8Block30Block44Value33 := (recoveredBlock8Block30Block44Value32) , ('" of type ').
    recoveredBlock8Block30Block44Value34 := recoveredBlock8Block30Block44Arg1.
    recoveredBlock8Block30Block44Value35 := (recoveredBlock8Block30Block44Value34) mdlClass.
    recoveredBlock8Block30Block44Value36 := (recoveredBlock8Block30Block44Value35) errLabel.
    recoveredBlock8Block30Block44Value37 := (recoveredBlock8Block30Block44Value33) , (recoveredBlock8Block30Block44Value36).
    recoveredBlock8Block30Block44Value38 := (recoveredBlock8Block30Block44Value37) , (' in ').
    recoveredBlock8Block30Block44Value39 := recoveredBlock8Block30Arg1.
    recoveredBlock8Block30Block44Value40 := (recoveredBlock8Block30Block44Value39) mdlClass.
    recoveredBlock8Block30Block44Value41 := (recoveredBlock8Block30Block44Value40) errLabel.
    recoveredBlock8Block30Block44Value42 := (recoveredBlock8Block30Block44Value38) , (recoveredBlock8Block30Block44Value41).
    recoveredBlock8Block30Block44Value43 := (recoveredBlock8Block30Block44Value16) with: (recoveredBlock8Block30Block44Value29) with: (recoveredBlock8Block30Block44Value42).
    recoveredBlock8Block30Block44Value44 := (recoveredBlock8Block30Block44Value9) createMultiSource: (recoveredBlock8Block30Block44Value15) labels: (recoveredBlock8Block30Block44Value43).
    recoveredBlock8Block30Block44Value45 := (recoveredBlock8Block30Block44Value0) mdlSemErrNo: (646) with: (recoveredBlock8Block30Block44Value2) with: (recoveredBlock8Block30Block44Value5) with: (recoveredBlock8Block30Block44Value7) source: (recoveredBlock8Block30Block44Value44).
    recoveredBlock8Block30Block44Value45
].
    recoveredBlock8Block30Value4 := (recoveredBlock8Block30Value2) ifNotNil: (recoveredBlock8Block30Value3).
    recoveredBlock8Block30Value4
].
            recoveredBlock8PC := 171.
        ].
        recoveredBlock8Step = 171 ifTrue: [
            (recoveredBlock8Stack0) do: (recoveredBlock8Stack1).
            recoveredBlock8PC := 173.
        ].
        recoveredBlock8Step = 173 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 174.
        ].
        recoveredBlock8Step = 174 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 177.
        ].
        recoveredBlock8Step = 177 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) mdlClass.
            recoveredBlock8PC := 179.
        ].
        recoveredBlock8Step = 179 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 180.
        ].
        recoveredBlock8Step = 180 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack2.
            recoveredBlock8PC := 183.
        ].
        recoveredBlock8Step = 183 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isMdlAUTOSARReturnType.
            recoveredBlock8PC := 185.
        ].
        recoveredBlock8Step = 185 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 209] ifFalse: [recoveredBlock8PC := 188].
        ].
        recoveredBlock8Step = 188 ifTrue: [
            recoveredBlock8PC := 189.
        ].
        recoveredBlock8Step = 189 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 192.
        ].
        recoveredBlock8Step = 192 ifTrue: [
            recoveredBlock8Stack1 := 647.
            recoveredBlock8PC := 196.
        ].
        recoveredBlock8Step = 196 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 199.
        ].
        recoveredBlock8Step = 199 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) errLabel.
            recoveredBlock8PC := 201.
        ].
        recoveredBlock8Step = 201 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 204.
        ].
        recoveredBlock8Step = 204 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) errLabel.
            recoveredBlock8PC := 206.
        ].
        recoveredBlock8Step = 206 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) mdlSemErrNo: (recoveredBlock8Stack1) with: (recoveredBlock8Stack2) with: (recoveredBlock8Stack3).
            recoveredBlock8PC := 209.
        ].
        recoveredBlock8Step = 209 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedApplicationErrorTable.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 331].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedApplicationErrorTable.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := [:recoveredBlock238Arg1 | 
    | recoveredBlock238Value0 recoveredBlock238Value1 recoveredBlock238Value2 recoveredBlock238Value3 recoveredBlock238Value4 |
    recoveredBlock238Value0 := recoveredLocal2.
    recoveredBlock238Value1 := recoveredBlock238Arg1.
    recoveredBlock238Value2 := (recoveredBlock238Value1) errLabel.
    recoveredBlock238Value3 := (recoveredBlock238Value0) , (recoveredBlock238Value2).
    recoveredBlock238Value4 := recoveredBlock238Value3.
    recoveredLocal2 := recoveredBlock238Value4.
    recoveredBlock238Value3
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock257Value0 recoveredBlock257Value1 recoveredBlock257Value2 |
    recoveredBlock257Value0 := recoveredLocal2.
    recoveredBlock257Value1 := (recoveredBlock257Value0) , (', ').
    recoveredBlock257Value2 := recoveredBlock257Value1.
    recoveredLocal2 := recoveredBlock257Value2.
    recoveredBlock257Value1
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) andBetweenDo: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecls.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := [:block2811842cArg1 | 
    | block2811842cValue0 block2811842cValue1 block2811842cValue2 |
    block2811842cValue0 := block2811842cArg1.
    block2811842cValue1 := (block2811842cValue0) mdlClass.
    block2811842cValue2 := (block2811842cValue1) isMdlARApplicationErrorType.
    block2811842cValue2
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 323] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 1288.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlLabel.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205cc5c0; bytecode file offset 0xec8f24"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) semAnaIsIntegerOrAbstractEnum: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
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
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isMdlCaseStmnt.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 50].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack3 := recoveredArg1.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack4 := recoveredLocal4.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) semAnaCase: (recoveredBlock23Stack2) switch: (recoveredBlock23Stack3) values: (recoveredBlock23Stack4).
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 |
    recoveredBlock62Value0 := recoveredLocal3.
    recoveredBlock62Value1 := recoveredBlock62Arg1.
    recoveredBlock62Value2 := (recoveredBlock62Value0) addAll: (recoveredBlock62Value1).
    recoveredBlock62Value2
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) exprChild.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:block28118fb4Arg1 | 
    | block28118fb4Value0 block28118fb4Value1 block28118fb4Value2 block28118fb4Value3 block28118fb4Value4 |
    block28118fb4Value0 := block28118fb4Arg1.
    block28118fb4Value1 := (block28118fb4Value0) literal.
    block28118fb4Value2 := (block28118fb4Value1) mdlClass.
    block28118fb4Value3 := (block28118fb4Value2) isMdlEnumType.
    block28118fb4Value4 := (block28118fb4Value3) not.
    block28118fb4Value4
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertEnumToNumExpr.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) exprChild: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) semAnaCovertCaseLiteralToUdisc.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:block28118fd8Arg1 | 
    | block28118fd8Value0 block28118fd8Value1 block28118fd8Value2 block28118fd8Value3 |
    block28118fd8Value0 := block28118fd8Arg1.
    block28118fd8Value1 := (block28118fd8Value0) literal.
    block28118fd8Value2 := (block28118fd8Value1) mdlClass.
    block28118fd8Value3 := (block28118fd8Value2) isMdlEnumType.
    block28118fd8Value3
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) semAnaCovertCaseLiteralToUdisc.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := [:recoveredBlock164Arg1 | 
    | recoveredBlock164Local1 recoveredBlock164Stack0 recoveredBlock164Stack1 recoveredBlock164Stack2 recoveredBlock164Stack3 recoveredBlock164Stack4 recoveredBlock164Stack5 recoveredBlock164PC recoveredBlock164Step recoveredBlock164Done recoveredBlock164Result |
    recoveredBlock164Stack0 := self.
    recoveredBlock164PC := 170.
    recoveredBlock164Done := false.
    [recoveredBlock164Done not] whileTrue: [
        recoveredBlock164Step := recoveredBlock164PC.
        recoveredBlock164Step = 170 ifTrue: [
            recoveredBlock164Stack1 := recoveredBlock164Arg1.
            recoveredBlock164PC := 171.
        ].
        recoveredBlock164Step = 171 ifTrue: [
            recoveredBlock164Stack1 := (recoveredBlock164Stack1) literal.
            recoveredBlock164PC := 173.
        ].
        recoveredBlock164Step = 173 ifTrue: [
            recoveredBlock164Local1 := recoveredBlock164Stack1.
            recoveredBlock164PC := 174.
        ].
        recoveredBlock164Step = 174 ifTrue: [
            recoveredBlock164Stack1 := nil.
            recoveredBlock164PC := 175.
        ].
        recoveredBlock164Step = 175 ifTrue: [
            recoveredBlock164Stack2 := recoveredBlock164Local1.
            recoveredBlock164PC := 176.
        ].
        recoveredBlock164Step = 176 ifTrue: [
            recoveredBlock164Stack2 := (recoveredBlock164Stack2) mdlClass.
            recoveredBlock164PC := 178.
        ].
        recoveredBlock164Step = 178 ifTrue: [
            recoveredBlock164Stack3 := recoveredArg1.
            recoveredBlock164PC := 181.
        ].
        recoveredBlock164Step = 181 ifTrue: [
            recoveredBlock164Stack3 := (recoveredBlock164Stack3) exprChild.
            recoveredBlock164PC := 182.
        ].
        recoveredBlock164Step = 182 ifTrue: [
            recoveredBlock164Stack3 := (recoveredBlock164Stack3) mdlClass.
            recoveredBlock164PC := 184.
        ].
        recoveredBlock164Step = 184 ifTrue: [
            recoveredBlock164Stack4 := self.
            recoveredBlock164PC := 185.
        ].
        recoveredBlock164Step = 185 ifTrue: [
            recoveredBlock164Stack4 := (recoveredBlock164Stack4) generator.
            recoveredBlock164PC := 187.
        ].
        recoveredBlock164Step = 187 ifTrue: [
            recoveredBlock164Stack2 := (recoveredBlock164Stack2) isCgTypeCompatible: (recoveredBlock164Stack3) generator: (recoveredBlock164Stack4).
            recoveredBlock164PC := 189.
        ].
        recoveredBlock164Step = 189 ifTrue: [
            (recoveredBlock164Stack2) ifTrue: [recoveredBlock164PC := 212] ifFalse: [recoveredBlock164PC := 192].
        ].
        recoveredBlock164Step = 192 ifTrue: [
            recoveredBlock164PC := 193.
        ].
        recoveredBlock164Step = 193 ifTrue: [
            recoveredBlock164Stack1 := recoveredBlock164Arg1.
            recoveredBlock164PC := 194.
        ].
        recoveredBlock164Step = 194 ifTrue: [
            recoveredBlock164Stack2 := 60.
            recoveredBlock164PC := 196.
        ].
        recoveredBlock164Step = 196 ifTrue: [
            recoveredBlock164Stack3 := recoveredArg1.
            recoveredBlock164PC := 199.
        ].
        recoveredBlock164Step = 199 ifTrue: [
            recoveredBlock164Stack3 := (recoveredBlock164Stack3) exprChild.
            recoveredBlock164PC := 200.
        ].
        recoveredBlock164Step = 200 ifTrue: [
            recoveredBlock164Stack3 := (recoveredBlock164Stack3) mdlClass.
            recoveredBlock164PC := 202.
        ].
        recoveredBlock164Step = 202 ifTrue: [
            recoveredBlock164Stack3 := (recoveredBlock164Stack3) errLabel.
            recoveredBlock164PC := 204.
        ].
        recoveredBlock164Step = 204 ifTrue: [
            recoveredBlock164Stack4 := recoveredBlock164Local1.
            recoveredBlock164PC := 205.
        ].
        recoveredBlock164Step = 205 ifTrue: [
            recoveredBlock164Stack4 := (recoveredBlock164Stack4) mdlClass.
            recoveredBlock164PC := 207.
        ].
        recoveredBlock164Step = 207 ifTrue: [
            recoveredBlock164Stack4 := (recoveredBlock164Stack4) errLabel.
            recoveredBlock164PC := 209.
        ].
        recoveredBlock164Step = 209 ifTrue: [
            recoveredBlock164Stack1 := (recoveredBlock164Stack1) mdlSemErrNo: (recoveredBlock164Stack2) with: (recoveredBlock164Stack3) with: (recoveredBlock164Stack4).
            recoveredBlock164PC := 212.
        ].
        recoveredBlock164Step = 212 ifTrue: [
            recoveredBlock164Result := recoveredBlock164Stack1.
            recoveredBlock164Done := true.
        ].
    ].
    recoveredBlock164Result
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := [:block28118ffcArg1 | 
    | block28118ffcValue0 block28118ffcValue1 |
    block28118ffcValue0 := block28118ffcArg1.
    block28118ffcValue1 := (block28118ffcValue0) isMdlDefaultStmnt.
    block28118ffcValue1
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := 76.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 314.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDefaultStmnt.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) classType.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgSmClass.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := 883.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := #('Default clause').
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMultiSource: (recoveredStack3) labels: (recoveredStack4).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := [:block28119020Arg1 | 
    | block28119020Value0 block28119020Value1 block28119020Value2 |
    block28119020Value0 := block28119020Arg1.
    block28119020Value1 := (block28119020Value0) isMdlCaseStmnt.
    block28119020Value2 := (block28119020Value1) not.
    block28119020Value2
].
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := 884.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d4fc4; bytecode file offset 0xed1908"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
autosarRTECall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super autosarRTECall: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRteCall.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) importsTable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeGenerationContext: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) argChildren.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59Stack5 recoveredBlock59Stack6 recoveredBlock59Stack7 recoveredBlock59Stack8 recoveredBlock59Stack9 recoveredBlock59Stack10 recoveredBlock59Stack11 recoveredBlock59Stack12 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) variable.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) varDecl.
            recoveredBlock59PC := 72.
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal1.
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) mdlAllowedElementForCSInterfaceContext: (recoveredBlock59Stack3).
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Stack2.
            recoveredBlock59PC := 78.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredLocal2 := recoveredBlock59Stack3.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            (recoveredBlock59Stack2 == nil) ifTrue: [recoveredBlock59PC := 159] ifFalse: [recoveredBlock59PC := 84].
        ].
        recoveredBlock59Step = 84 ifTrue: [
            recoveredBlock59PC := 85.
        ].
        recoveredBlock59Step = 85 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 88.
        ].
        recoveredBlock59Step = 88 ifTrue: [
            recoveredBlock59Stack2 := 646.
            recoveredBlock59PC := 92.
        ].
        recoveredBlock59Step = 92 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 93.
        ].
        recoveredBlock59Step = 93 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) errLabel.
            recoveredBlock59PC := 95.
        ].
        recoveredBlock59Step = 95 ifTrue: [
            recoveredBlock59Stack4 := recoveredBlock59Arg1.
            recoveredBlock59PC := 96.
        ].
        recoveredBlock59Step = 96 ifTrue: [
            recoveredBlock59Stack4 := (recoveredBlock59Stack4) mdlClass.
            recoveredBlock59PC := 98.
        ].
        recoveredBlock59Step = 98 ifTrue: [
            recoveredBlock59Stack4 := (recoveredBlock59Stack4) errLabel.
            recoveredBlock59PC := 100.
        ].
        recoveredBlock59Step = 100 ifTrue: [
            recoveredBlock59Stack5 := recoveredLocal3.
            recoveredBlock59PC := 103.
        ].
        recoveredBlock59Step = 103 ifTrue: [
            recoveredBlock59Stack5 := (recoveredBlock59Stack5) errLabel.
            recoveredBlock59PC := 105.
        ].
        recoveredBlock59Step = 105 ifTrue: [
            recoveredBlock59Stack6 := recoveredArg1.
            recoveredBlock59PC := 108.
        ].
        recoveredBlock59Step = 108 ifTrue: [
            recoveredBlock59Stack6 := (recoveredBlock59Stack6) source.
            recoveredBlock59PC := 110.
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredBlock59Stack7 := Array.
            recoveredBlock59PC := 112.
        ].
        recoveredBlock59Step = 112 ifTrue: [
            recoveredBlock59Stack8 := recoveredBlock59Arg1.
            recoveredBlock59PC := 113.
        ].
        recoveredBlock59Step = 113 ifTrue: [
            recoveredBlock59Stack8 := (recoveredBlock59Stack8) variable.
            recoveredBlock59PC := 115.
        ].
        recoveredBlock59Step = 115 ifTrue: [
            recoveredBlock59Stack8 := (recoveredBlock59Stack8) varDecl.
            recoveredBlock59PC := 117.
        ].
        recoveredBlock59Step = 117 ifTrue: [
            recoveredBlock59Stack8 := (recoveredBlock59Stack8) source.
            recoveredBlock59PC := 119.
        ].
        recoveredBlock59Step = 119 ifTrue: [
            recoveredBlock59Stack9 := recoveredLocal2.
            recoveredBlock59PC := 122.
        ].
        recoveredBlock59Step = 122 ifTrue: [
            recoveredBlock59Stack9 := (recoveredBlock59Stack9) source.
            recoveredBlock59PC := 124.
        ].
        recoveredBlock59Step = 124 ifTrue: [
            recoveredBlock59Stack7 := (recoveredBlock59Stack7) with: (recoveredBlock59Stack8) with: (recoveredBlock59Stack9).
            recoveredBlock59PC := 126.
        ].
        recoveredBlock59Step = 126 ifTrue: [
            recoveredBlock59Stack8 := Array.
            recoveredBlock59PC := 128.
        ].
        recoveredBlock59Step = 128 ifTrue: [
            recoveredBlock59Stack9 := 'Client/Server interface operation argument'.
            recoveredBlock59PC := 130.
        ].
        recoveredBlock59Step = 130 ifTrue: [
            recoveredBlock59Stack10 := 'Illegal element "'.
            recoveredBlock59PC := 132.
        ].
        recoveredBlock59Step = 132 ifTrue: [
            recoveredBlock59Stack11 := recoveredLocal2.
            recoveredBlock59PC := 135.
        ].
        recoveredBlock59Step = 135 ifTrue: [
            recoveredBlock59Stack11 := (recoveredBlock59Stack11) errLabel.
            recoveredBlock59PC := 137.
        ].
        recoveredBlock59Step = 137 ifTrue: [
            recoveredBlock59Stack10 := (recoveredBlock59Stack10) , (recoveredBlock59Stack11).
            recoveredBlock59PC := 139.
        ].
        recoveredBlock59Step = 139 ifTrue: [
            recoveredBlock59Stack11 := '" of type '.
            recoveredBlock59PC := 141.
        ].
        recoveredBlock59Step = 141 ifTrue: [
            recoveredBlock59Stack10 := (recoveredBlock59Stack10) , (recoveredBlock59Stack11).
            recoveredBlock59PC := 143.
        ].
        recoveredBlock59Step = 143 ifTrue: [
            recoveredBlock59Stack11 := recoveredLocal2.
            recoveredBlock59PC := 146.
        ].
        recoveredBlock59Step = 146 ifTrue: [
            recoveredBlock59Stack11 := (recoveredBlock59Stack11) mdlClass.
            recoveredBlock59PC := 148.
        ].
        recoveredBlock59Step = 148 ifTrue: [
            recoveredBlock59Stack11 := (recoveredBlock59Stack11) errLabel.
            recoveredBlock59PC := 150.
        ].
        recoveredBlock59Step = 150 ifTrue: [
            recoveredBlock59Stack10 := (recoveredBlock59Stack10) , (recoveredBlock59Stack11).
            recoveredBlock59PC := 152.
        ].
        recoveredBlock59Step = 152 ifTrue: [
            recoveredBlock59Stack8 := (recoveredBlock59Stack8) with: (recoveredBlock59Stack9) with: (recoveredBlock59Stack10).
            recoveredBlock59PC := 154.
        ].
        recoveredBlock59Step = 154 ifTrue: [
            recoveredBlock59Stack6 := (recoveredBlock59Stack6) createMultiSource: (recoveredBlock59Stack7) labels: (recoveredBlock59Stack8).
            recoveredBlock59PC := 156.
        ].
        recoveredBlock59Step = 156 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) mdlSemErrNo: (recoveredBlock59Stack2) with: (recoveredBlock59Stack3) with: (recoveredBlock59Stack4) with: (recoveredBlock59Stack5) source: (recoveredBlock59Stack6).
            recoveredBlock59PC := 159.
        ].
        recoveredBlock59Step = 159 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlAllowedElementForCSInterfaceContext: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 647.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack7 := (recoveredStack7) source.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack6 := Array.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack7 := 'Client/Server interface operation return'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack8 := 'Illegal element "'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack9 := (recoveredStack9) errLabel.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack8 := (recoveredStack8) , (recoveredStack9).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack9 := '" of type '.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack8 := (recoveredStack8) , (recoveredStack9).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack9 := (recoveredStack9) mdlClass.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack9 := (recoveredStack9) errLabel.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack8 := (recoveredStack8) , (recoveredStack9).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack6 := (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := (recoveredStack4) createMultiSource: (recoveredStack5) labels: (recoveredStack6).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlVariableReadAccess.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlPort.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := [:recoveredBlock273Arg1 | 
    | recoveredBlock273Stack0 recoveredBlock273Stack1 recoveredBlock273Stack2 recoveredBlock273Stack3 recoveredBlock273Stack4 recoveredBlock273PC recoveredBlock273Step recoveredBlock273Done recoveredBlock273Result |
    recoveredBlock273Stack0 := self.
    recoveredBlock273PC := 280.
    recoveredBlock273Done := false.
    [recoveredBlock273Done not] whileTrue: [
        recoveredBlock273Step := recoveredBlock273PC.
        recoveredBlock273Step = 280 ifTrue: [
            recoveredBlock273Stack1 := nil.
            recoveredBlock273PC := 281.
        ].
        recoveredBlock273Step = 281 ifTrue: [
            recoveredBlock273Stack2 := recoveredBlock273Arg1.
            recoveredBlock273PC := 282.
        ].
        recoveredBlock273Step = 282 ifTrue: [
            recoveredBlock273Stack2 := (recoveredBlock273Stack2) isMdlProvidePort.
            recoveredBlock273PC := 284.
        ].
        recoveredBlock273Step = 284 ifTrue: [
            (recoveredBlock273Stack2) ifTrue: [recoveredBlock273PC := 288] ifFalse: [recoveredBlock273PC := 299].
        ].
        recoveredBlock273Step = 288 ifTrue: [
            recoveredBlock273PC := 289.
        ].
        recoveredBlock273Step = 289 ifTrue: [
            recoveredBlock273Stack1 := recoveredArg1.
            recoveredBlock273PC := 292.
        ].
        recoveredBlock273Step = 292 ifTrue: [
            recoveredBlock273Stack2 := 106.
            recoveredBlock273PC := 296.
        ].
        recoveredBlock273Step = 296 ifTrue: [
            recoveredBlock273Stack3 := recoveredBlock273Arg1.
            recoveredBlock273PC := 297.
        ].
        recoveredBlock273Step = 297 ifTrue: [
            recoveredBlock273Stack1 := (recoveredBlock273Stack1) mdlRteCallPortAccessErrNo: (recoveredBlock273Stack2) port: (recoveredBlock273Stack3).
            recoveredBlock273PC := 299.
        ].
        recoveredBlock273Step = 299 ifTrue: [
            recoveredBlock273Result := recoveredBlock273Stack1.
            recoveredBlock273Done := true.
        ].
    ].
    recoveredBlock273Result
].
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlVariableWriteAccess.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlPort.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := [:recoveredBlock315Arg1 | 
    | recoveredBlock315Stack0 recoveredBlock315Stack1 recoveredBlock315Stack2 recoveredBlock315Stack3 recoveredBlock315Stack4 recoveredBlock315PC recoveredBlock315Step recoveredBlock315Done recoveredBlock315Result |
    recoveredBlock315Stack0 := self.
    recoveredBlock315PC := 322.
    recoveredBlock315Done := false.
    [recoveredBlock315Done not] whileTrue: [
        recoveredBlock315Step := recoveredBlock315PC.
        recoveredBlock315Step = 322 ifTrue: [
            recoveredBlock315Stack1 := nil.
            recoveredBlock315PC := 323.
        ].
        recoveredBlock315Step = 323 ifTrue: [
            recoveredBlock315Stack2 := recoveredBlock315Arg1.
            recoveredBlock315PC := 324.
        ].
        recoveredBlock315Step = 324 ifTrue: [
            recoveredBlock315Stack2 := (recoveredBlock315Stack2) isMdlRequirePort.
            recoveredBlock315PC := 326.
        ].
        recoveredBlock315Step = 326 ifTrue: [
            (recoveredBlock315Stack2) ifTrue: [recoveredBlock315PC := 330] ifFalse: [recoveredBlock315PC := 341].
        ].
        recoveredBlock315Step = 330 ifTrue: [
            recoveredBlock315PC := 331.
        ].
        recoveredBlock315Step = 331 ifTrue: [
            recoveredBlock315Stack1 := recoveredArg1.
            recoveredBlock315PC := 334.
        ].
        recoveredBlock315Step = 334 ifTrue: [
            recoveredBlock315Stack2 := 107.
            recoveredBlock315PC := 338.
        ].
        recoveredBlock315Step = 338 ifTrue: [
            recoveredBlock315Stack3 := recoveredBlock315Arg1.
            recoveredBlock315PC := 339.
        ].
        recoveredBlock315Step = 339 ifTrue: [
            recoveredBlock315Stack1 := (recoveredBlock315Stack1) mdlRteCallPortAccessErrNo: (recoveredBlock315Stack2) port: (recoveredBlock315Stack3).
            recoveredBlock315PC := 341.
        ].
        recoveredBlock315Step = 341 ifTrue: [
            recoveredBlock315Result := recoveredBlock315Stack1.
            recoveredBlock315Done := true.
        ].
    ].
    recoveredBlock315Result
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarStrategy.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) semAnaRteMacroCall: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20606840; bytecode file offset 0xf03164"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaPrioLevels: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := Infinity.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) minus.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Infinity.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) minus.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Local1 recoveredBlock36Local2 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
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
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isMdlSoftwareTask.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 50] ifFalse: [recoveredBlock36PC := 92].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) attributes.
            recoveredBlock36PC := 54.
        ].
        recoveredBlock36Step = 54 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) isCgAttrSchedulingCooperative.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 60] ifFalse: [recoveredBlock36PC := 76].
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal1.
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) prio.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) max: (recoveredBlock36Stack2).
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock36Stack2.
            recoveredBlock36PC := 72.
        ].
        recoveredBlock36Step = 72 ifTrue: [
            recoveredBlock36PC := 88.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) prio.
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) max: (recoveredBlock36Stack2).
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 85.
        ].
        recoveredBlock36Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock36Stack2.
            recoveredBlock36PC := 88.
        ].
        recoveredBlock36Step = 88 ifTrue: [
            recoveredBlock36Stack2 := nil.
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 90.
        ].
        recoveredBlock36Step = 90 ifTrue: [
            recoveredBlock36Local2 := recoveredBlock36Stack3.
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack2.
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) numPreempLevels.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) preempLevelsMaximum: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 291.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) numPreempLevels.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 291.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) numPreempLevels.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCoopLevels.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) coopLevelsMaximum: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 247].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := 292.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCoopLevels.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 247.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := 292.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCoopLevels.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCoopLevels.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) numPreempLevels.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) prioLevelsMaximum: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 357].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCoopLevels.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := 293.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCoopLevels.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := (recoveredStack3) numPreempLevels.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredPC := 357.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := 293.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCoopLevels.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := (recoveredStack3) numPreempLevels.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := [:recoveredBlock362Arg1 | 
    | recoveredBlock362Local1 recoveredBlock362Local2 recoveredBlock362Stack0 recoveredBlock362Stack1 recoveredBlock362Stack2 recoveredBlock362Stack3 recoveredBlock362Stack4 recoveredBlock362Stack5 recoveredBlock362Stack6 recoveredBlock362Stack7 recoveredBlock362PC recoveredBlock362Step recoveredBlock362Done recoveredBlock362Result |
    recoveredBlock362Stack0 := self.
    recoveredBlock362PC := 368.
    recoveredBlock362Done := false.
    [recoveredBlock362Done not] whileTrue: [
        recoveredBlock362Step := recoveredBlock362PC.
        recoveredBlock362Step = 368 ifTrue: [
            recoveredBlock362Stack1 := nil.
            recoveredBlock362PC := 369.
        ].
        recoveredBlock362Step = 369 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Arg1.
            recoveredBlock362PC := 370.
        ].
        recoveredBlock362Step = 370 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) isMdlSoftwareTask.
            recoveredBlock362PC := 372.
        ].
        recoveredBlock362Step = 372 ifTrue: [
            (recoveredBlock362Stack2) ifTrue: [recoveredBlock362PC := 376] ifFalse: [recoveredBlock362PC := 455].
        ].
        recoveredBlock362Step = 376 ifTrue: [
            recoveredBlock362PC := 377.
        ].
        recoveredBlock362Step = 377 ifTrue: [
            recoveredBlock362Stack1 := recoveredBlock362Arg1.
            recoveredBlock362PC := 378.
        ].
        recoveredBlock362Step = 378 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) attributes.
            recoveredBlock362PC := 380.
        ].
        recoveredBlock362Step = 380 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) isCgAttrSchedulingCooperative.
            recoveredBlock362PC := 382.
        ].
        recoveredBlock362Step = 382 ifTrue: [
            (recoveredBlock362Stack1) ifTrue: [recoveredBlock362PC := 386] ifFalse: [recoveredBlock362PC := 398].
        ].
        recoveredBlock362Step = 386 ifTrue: [
            recoveredBlock362Stack1 := recoveredArg1.
            recoveredBlock362PC := 389.
        ].
        recoveredBlock362Step = 389 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) numCoopLevels.
            recoveredBlock362PC := 391.
        ].
        recoveredBlock362Step = 391 ifTrue: [
            recoveredBlock362Local2 := recoveredBlock362Stack1.
            recoveredBlock362PC := 392.
        ].
        recoveredBlock362Step = 392 ifTrue: [
            recoveredBlock362Stack1 := ' with cooperative scheduling'.
            recoveredBlock362PC := 394.
        ].
        recoveredBlock362Step = 394 ifTrue: [
            recoveredBlock362Local1 := recoveredBlock362Stack1.
            recoveredBlock362PC := 395.
        ].
        recoveredBlock362Step = 395 ifTrue: [
            recoveredBlock362PC := 407.
        ].
        recoveredBlock362Step = 398 ifTrue: [
            recoveredBlock362Stack1 := recoveredArg1.
            recoveredBlock362PC := 401.
        ].
        recoveredBlock362Step = 401 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) numPreempLevels.
            recoveredBlock362PC := 403.
        ].
        recoveredBlock362Step = 403 ifTrue: [
            recoveredBlock362Local2 := recoveredBlock362Stack1.
            recoveredBlock362PC := 404.
        ].
        recoveredBlock362Step = 404 ifTrue: [
            recoveredBlock362Stack1 := ' with preemtive scheduling'.
            recoveredBlock362PC := 406.
        ].
        recoveredBlock362Step = 406 ifTrue: [
            recoveredBlock362Local1 := recoveredBlock362Stack1.
            recoveredBlock362PC := 407.
        ].
        recoveredBlock362Step = 407 ifTrue: [
            recoveredBlock362Stack1 := nil.
            recoveredBlock362PC := 408.
        ].
        recoveredBlock362Step = 408 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Arg1.
            recoveredBlock362PC := 409.
        ].
        recoveredBlock362Step = 409 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) prio.
            recoveredBlock362PC := 411.
        ].
        recoveredBlock362Step = 411 ifTrue: [
            recoveredBlock362Stack3 := 0.
            recoveredBlock362PC := 413.
        ].
        recoveredBlock362Step = 413 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) < (recoveredBlock362Stack3).
            recoveredBlock362PC := 414.
        ].
        recoveredBlock362Step = 414 ifTrue: [
            (recoveredBlock362Stack2) ifTrue: [recoveredBlock362PC := 426] ifFalse: [recoveredBlock362PC := 418].
        ].
        recoveredBlock362Step = 418 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Arg1.
            recoveredBlock362PC := 419.
        ].
        recoveredBlock362Step = 419 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) prio.
            recoveredBlock362PC := 421.
        ].
        recoveredBlock362Step = 421 ifTrue: [
            recoveredBlock362Stack3 := recoveredBlock362Local2.
            recoveredBlock362PC := 422.
        ].
        recoveredBlock362Step = 422 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) >= (recoveredBlock362Stack3).
            recoveredBlock362PC := 423.
        ].
        recoveredBlock362Step = 423 ifTrue: [
            (recoveredBlock362Stack2) ifTrue: [recoveredBlock362PC := 426] ifFalse: [recoveredBlock362PC := 451].
        ].
        recoveredBlock362Step = 426 ifTrue: [
            recoveredBlock362PC := 427.
        ].
        recoveredBlock362Step = 427 ifTrue: [
            recoveredBlock362Stack1 := recoveredBlock362Arg1.
            recoveredBlock362PC := 428.
        ].
        recoveredBlock362Step = 428 ifTrue: [
            recoveredBlock362Stack2 := 100.
            recoveredBlock362PC := 432.
        ].
        recoveredBlock362Step = 432 ifTrue: [
            recoveredBlock362Stack3 := recoveredBlock362Arg1.
            recoveredBlock362PC := 433.
        ].
        recoveredBlock362Step = 433 ifTrue: [
            recoveredBlock362Stack3 := (recoveredBlock362Stack3) errLabel.
            recoveredBlock362PC := 435.
        ].
        recoveredBlock362Step = 435 ifTrue: [
            recoveredBlock362Stack4 := recoveredBlock362Local1.
            recoveredBlock362PC := 436.
        ].
        recoveredBlock362Step = 436 ifTrue: [
            recoveredBlock362Stack5 := '[0..'.
            recoveredBlock362PC := 438.
        ].
        recoveredBlock362Step = 438 ifTrue: [
            recoveredBlock362Stack6 := recoveredBlock362Local2.
            recoveredBlock362PC := 439.
        ].
        recoveredBlock362Step = 439 ifTrue: [
            recoveredBlock362Stack6 := (recoveredBlock362Stack6) + (-1).
            recoveredBlock362PC := 440.
        ].
        recoveredBlock362Step = 440 ifTrue: [
            recoveredBlock362Stack6 := (recoveredBlock362Stack6) asString.
            recoveredBlock362PC := 442.
        ].
        recoveredBlock362Step = 442 ifTrue: [
            recoveredBlock362Stack5 := (recoveredBlock362Stack5) , (recoveredBlock362Stack6).
            recoveredBlock362PC := 444.
        ].
        recoveredBlock362Step = 444 ifTrue: [
            recoveredBlock362Stack6 := ']'.
            recoveredBlock362PC := 446.
        ].
        recoveredBlock362Step = 446 ifTrue: [
            recoveredBlock362Stack5 := (recoveredBlock362Stack5) , (recoveredBlock362Stack6).
            recoveredBlock362PC := 448.
        ].
        recoveredBlock362Step = 448 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) mdlSemErrNo: (recoveredBlock362Stack2) with: (recoveredBlock362Stack3) with: (recoveredBlock362Stack4) with: (recoveredBlock362Stack5).
            recoveredBlock362PC := 451.
        ].
        recoveredBlock362Step = 451 ifTrue: [
            recoveredBlock362Stack2 := nil.
            recoveredBlock362PC := 452.
        ].
        recoveredBlock362Step = 452 ifTrue: [
            recoveredBlock362Stack3 := recoveredBlock362Stack2.
            recoveredBlock362PC := 453.
        ].
        recoveredBlock362Step = 453 ifTrue: [
            recoveredBlock362Local2 := recoveredBlock362Stack3.
            recoveredBlock362PC := 454.
        ].
        recoveredBlock362Step = 454 ifTrue: [
            recoveredBlock362Local1 := recoveredBlock362Stack2.
            recoveredBlock362PC := 455.
        ].
        recoveredBlock362Step = 455 ifTrue: [
            recoveredBlock362Result := recoveredBlock362Stack1.
            recoveredBlock362Done := true.
        ].
    ].
    recoveredBlock362Result
].
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060dca4; bytecode file offset 0xf0a5fc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaCharTable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCharTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 478].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistributionType.
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTwoDCharTable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistributionType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueElementType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowMixedFloatIntCharTable.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTwoDCharTable.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReal.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReal.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReal.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlGroupCharTable.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDeclForAlias: (recoveredStack2) scope: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistributionAlias.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDeclForAlias: (recoveredStack2) scope: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMultiSource: (recoveredStack2) forVarDecls: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 601.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 214 ifTrue: [
            recoveredPC := 328.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReal.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReal.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInteger.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlGroupCharTable.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDeclForAlias: (recoveredStack2) scope: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMultiSource: (recoveredStack2) forVarDecls: (recoveredStack3).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredPC := 307.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := 600.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTwoDCharTable.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 478].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAUROSAROptimizableMap.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 478].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) interpolation.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := [:recoveredBlock363Arg1 | 
    | recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 recoveredBlock363Value4 |
    recoveredBlock363Value0 := recoveredBlock363Arg1.
    recoveredBlock363Value1 := (recoveredBlock363Value0) identifier.
    recoveredBlock363Value2 := recoveredArg1.
    recoveredBlock363Value3 := (recoveredBlock363Value2) interpolation.
    recoveredBlock363Value4 := (recoveredBlock363Value1) = (recoveredBlock363Value3).
    recoveredBlock363Value4
].
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 394].
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOptimizedMaps.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 402] ifFalse: [recoveredPC := 474].
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := 604.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack6 := (recoveredStack6) asImplDeclSource.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack6 := 'The interpolation "'.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack7 := (recoveredStack7) label.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack7 := '" requires the optimization of map values'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack7 := 'The axis type combination '.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack8 := recoveredLocal6.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack8 := (recoveredStack8) getImplType.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack8 := (recoveredStack8) asCType.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack8 := '/'.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack8 := recoveredLocal5.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack8 := (recoveredStack8) getImplType.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack8 := (recoveredStack8) asCType.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack8 := ' requires the optimization of map values'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060e3e8; bytecode file offset 0xf0ad2c"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2811d7fcArg1 | 
    | block2811d7fcValue0 block2811d7fcValue1 |
    block2811d7fcValue0 := block2811d7fcArg1.
    block2811d7fcValue1 := (block2811d7fcValue0) asMdlDereferencedExpr.
    block2811d7fcValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) indexChild: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 51.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 52.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIndexable.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlComponentClassType.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) dimensions.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexChild.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) dimensions.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexChild.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := [:recoveredBlock257Arg1 :recoveredBlock257Arg2 | 
    | recoveredBlock257Local1 recoveredBlock257Local2 recoveredBlock257Stack0 recoveredBlock257Stack1 recoveredBlock257Stack2 recoveredBlock257Stack3 recoveredBlock257Stack4 recoveredBlock257PC recoveredBlock257Step recoveredBlock257Done recoveredBlock257Result |
    recoveredBlock257Stack0 := self.
    recoveredBlock257PC := 264.
    recoveredBlock257Done := false.
    [recoveredBlock257Done not] whileTrue: [
        recoveredBlock257Step := recoveredBlock257PC.
        recoveredBlock257Step = 264 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Arg2.
            recoveredBlock257PC := 265.
        ].
        recoveredBlock257Step = 265 ifTrue: [
            recoveredBlock257Stack2 := recoveredBlock257Arg1.
            recoveredBlock257PC := 266.
        ].
        recoveredBlock257Step = 266 ifTrue: [
            recoveredBlock257Stack3 := recoveredArg1.
            recoveredBlock257PC := 269.
        ].
        recoveredBlock257Step = 269 ifTrue: [
            recoveredBlock257Stack3 := (recoveredBlock257Stack3) exprChild.
            recoveredBlock257PC := 271.
        ].
        recoveredBlock257Step = 271 ifTrue: [
            recoveredBlock257Stack3 := (recoveredBlock257Stack3) source.
            recoveredBlock257PC := 273.
        ].
        recoveredBlock257Step = 273 ifTrue: [
            recoveredBlock257Stack0 := (recoveredBlock257Stack0) semAnaIndexType: (recoveredBlock257Stack1) dim: (recoveredBlock257Stack2) source: (recoveredBlock257Stack3).
            recoveredBlock257PC := 276.
        ].
        recoveredBlock257Step = 276 ifTrue: [
            (recoveredBlock257Stack0) ifTrue: [recoveredBlock257PC := 280] ifFalse: [recoveredBlock257PC := 350].
        ].
        recoveredBlock257Step = 280 ifTrue: [
            recoveredBlock257Stack0 := nil.
            recoveredBlock257PC := 281.
        ].
        recoveredBlock257Step = 281 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Arg2.
            recoveredBlock257PC := 282.
        ].
        recoveredBlock257Step = 282 ifTrue: [
            recoveredBlock257Stack1 := (recoveredBlock257Stack1) isMdlConstantValue.
            recoveredBlock257PC := 284.
        ].
        recoveredBlock257Step = 284 ifTrue: [
            (recoveredBlock257Stack1) ifTrue: [recoveredBlock257PC := 288] ifFalse: [recoveredBlock257PC := 347].
        ].
        recoveredBlock257Step = 288 ifTrue: [
            recoveredBlock257PC := 289.
        ].
        recoveredBlock257Step = 289 ifTrue: [
            recoveredBlock257Stack0 := recoveredBlock257Arg2.
            recoveredBlock257PC := 290.
        ].
        recoveredBlock257Step = 290 ifTrue: [
            recoveredBlock257Stack0 := (recoveredBlock257Stack0) evaluateMdlConstantValue.
            recoveredBlock257PC := 292.
        ].
        recoveredBlock257Step = 292 ifTrue: [
            recoveredBlock257Local2 := recoveredBlock257Stack0.
            recoveredBlock257PC := 293.
        ].
        recoveredBlock257Step = 293 ifTrue: [
            recoveredBlock257Stack0 := recoveredBlock257Arg1.
            recoveredBlock257PC := 294.
        ].
        recoveredBlock257Step = 294 ifTrue: [
            recoveredBlock257Stack0 := (recoveredBlock257Stack0) maxSize.
            recoveredBlock257PC := 296.
        ].
        recoveredBlock257Step = 296 ifTrue: [
            recoveredBlock257Local1 := recoveredBlock257Stack0.
            recoveredBlock257PC := 297.
        ].
        recoveredBlock257Step = 297 ifTrue: [
            recoveredBlock257Stack0 := nil.
            recoveredBlock257PC := 298.
        ].
        recoveredBlock257Step = 298 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Local2.
            recoveredBlock257PC := 299.
        ].
        recoveredBlock257Step = 299 ifTrue: [
            recoveredBlock257Stack2 := 0.
            recoveredBlock257PC := 301.
        ].
        recoveredBlock257Step = 301 ifTrue: [
            recoveredBlock257Stack1 := (recoveredBlock257Stack1) < (recoveredBlock257Stack2).
            recoveredBlock257PC := 302.
        ].
        recoveredBlock257Step = 302 ifTrue: [
            (recoveredBlock257Stack1) ifTrue: [recoveredBlock257PC := 320] ifFalse: [recoveredBlock257PC := 306].
        ].
        recoveredBlock257Step = 306 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Local2.
            recoveredBlock257PC := 307.
        ].
        recoveredBlock257Step = 307 ifTrue: [
            recoveredBlock257Stack2 := recoveredBlock257Local1.
            recoveredBlock257PC := 308.
        ].
        recoveredBlock257Step = 308 ifTrue: [
            recoveredBlock257Stack1 := (recoveredBlock257Stack1) >= (recoveredBlock257Stack2).
            recoveredBlock257PC := 309.
        ].
        recoveredBlock257Step = 309 ifTrue: [
            (recoveredBlock257Stack1) ifTrue: [recoveredBlock257PC := 312] ifFalse: [recoveredBlock257PC := 343].
        ].
        recoveredBlock257Step = 312 ifTrue: [
            recoveredBlock257Stack1 := self.
            recoveredBlock257PC := 313.
        ].
        recoveredBlock257Step = 313 ifTrue: [
            recoveredBlock257Stack2 := recoveredBlock257Arg1.
            recoveredBlock257PC := 314.
        ].
        recoveredBlock257Step = 314 ifTrue: [
            recoveredBlock257Stack1 := (recoveredBlock257Stack1) checkConstantMaxSize: (recoveredBlock257Stack2).
            recoveredBlock257PC := 316.
        ].
        recoveredBlock257Step = 316 ifTrue: [
            (recoveredBlock257Stack1) ifTrue: [recoveredBlock257PC := 320] ifFalse: [recoveredBlock257PC := 343].
        ].
        recoveredBlock257Step = 320 ifTrue: [
            recoveredBlock257PC := 321.
        ].
        recoveredBlock257Step = 321 ifTrue: [
            recoveredBlock257Stack0 := recoveredArg1.
            recoveredBlock257PC := 324.
        ].
        recoveredBlock257Step = 324 ifTrue: [
            recoveredBlock257Stack0 := (recoveredBlock257Stack0) exprChild.
            recoveredBlock257PC := 326.
        ].
        recoveredBlock257Step = 326 ifTrue: [
            recoveredBlock257Stack1 := 77.
            recoveredBlock257PC := 330.
        ].
        recoveredBlock257Step = 330 ifTrue: [
            recoveredBlock257Stack2 := recoveredBlock257Local2.
            recoveredBlock257PC := 331.
        ].
        recoveredBlock257Step = 331 ifTrue: [
            recoveredBlock257Stack2 := (recoveredBlock257Stack2) asString.
            recoveredBlock257PC := 333.
        ].
        recoveredBlock257Step = 333 ifTrue: [
            recoveredBlock257Stack3 := recoveredArg1.
            recoveredBlock257PC := 336.
        ].
        recoveredBlock257Step = 336 ifTrue: [
            recoveredBlock257Stack3 := (recoveredBlock257Stack3) exprChild.
            recoveredBlock257PC := 338.
        ].
        recoveredBlock257Step = 338 ifTrue: [
            recoveredBlock257Stack3 := (recoveredBlock257Stack3) errLabel.
            recoveredBlock257PC := 340.
        ].
        recoveredBlock257Step = 340 ifTrue: [
            recoveredBlock257Stack0 := (recoveredBlock257Stack0) mdlSemErrNo: (recoveredBlock257Stack1) with: (recoveredBlock257Stack2) with: (recoveredBlock257Stack3).
            recoveredBlock257PC := 343.
        ].
        recoveredBlock257Step = 343 ifTrue: [
            recoveredBlock257Stack1 := nil.
            recoveredBlock257PC := 344.
        ].
        recoveredBlock257Step = 344 ifTrue: [
            recoveredBlock257Stack2 := recoveredBlock257Stack1.
            recoveredBlock257PC := 345.
        ].
        recoveredBlock257Step = 345 ifTrue: [
            recoveredBlock257Local2 := recoveredBlock257Stack2.
            recoveredBlock257PC := 346.
        ].
        recoveredBlock257Step = 346 ifTrue: [
            recoveredBlock257Local1 := recoveredBlock257Stack1.
            recoveredBlock257PC := 347.
        ].
        recoveredBlock257Step = 347 ifTrue: [
            recoveredBlock257PC := 355.
        ].
        recoveredBlock257Step = 350 ifTrue: [
            recoveredBlock257Stack0 := true.
            recoveredBlock257PC := 351.
        ].
        recoveredBlock257Step = 351 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Stack0.
            recoveredBlock257PC := 352.
        ].
        recoveredBlock257Step = 352 ifTrue: [
            recoveredLocal1 := recoveredBlock257Stack1.
            recoveredBlock257PC := 355.
        ].
        recoveredBlock257Step = 355 ifTrue: [
            recoveredBlock257Result := recoveredBlock257Stack0.
            recoveredBlock257Done := true.
        ].
    ].
    recoveredBlock257Result
].
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) semanticAnalysis.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 390] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgMixedArray.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 402] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlVariableArray.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack1) exprChild: (recoveredStack2).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 476] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexChild.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := (recoveredStack2) dimensions.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := [:recoveredBlock440Arg1 :recoveredBlock440Arg2 | 
    | recoveredBlock440Value0 recoveredBlock440Value1 recoveredBlock440Value2 recoveredBlock440Value3 recoveredBlock440Value4 recoveredBlock440Value5 recoveredBlock440Value6 |
    recoveredBlock440Value0 := recoveredLocal1.
    recoveredBlock440Value1 := recoveredBlock440Arg2.
    recoveredBlock440Value2 := (recoveredBlock440Value1) indexType.
    recoveredBlock440Value3 := recoveredBlock440Arg1.
    recoveredBlock440Value4 := (recoveredBlock440Value2) mdlConvert: (recoveredBlock440Value3).
    recoveredBlock440Value5 := recoveredBlock440Value4.
    (recoveredBlock440Value5) isTypeOfLeftHandSide: (true).
    recoveredBlock440Value6 := (recoveredBlock440Value0) add: (recoveredBlock440Value4).
    recoveredBlock440Value6
].
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) indexChild: (recoveredStack2).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206262ac; bytecode file offset 0xf22c34"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) rightChild.
    recoveredBlock21Value2 := recoveredArg1.
    recoveredBlock21Value3 := (recoveredBlock21Value2) rightChild.
    recoveredBlock21Value4 := (recoveredBlock21Value3) errLabelWithoutRefDeref.
    (recoveredBlock21Value1) mdlSemErrNo: (104) with: (recoveredBlock21Value4) with: ('expression').
    recoveredBlock21Value5 := (self) skipFurtherAnalysis.
    ^recoveredBlock21Value5
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlReferencedExprOnError: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlDereferencedExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) rightChild: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgCopyableType.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 104.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelWithoutRefDeref.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) variable.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) semAnaElementHasImplementation: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipFurtherAnalysis.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := SGCgVarAttributes.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrArgumentIn.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) cgAttrRead.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrArgumentOut.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) cgAttrWrite.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) variable.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightChild.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) semAnaAssign: (recoveredStack1) referenceReadWrite: (recoveredStack2) lValue: (recoveredStack3) expr: (recoveredStack4).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArrayType.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrArgumentOut.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) semAnaCheckNoRedundantElement: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCgDereferencedType.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCgDereferencedType.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrArgumentOut.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleScalarType.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeCompatibleNoBaseType: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeAssignmentCompatibleTo: (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrArgumentIn.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeAssignmentCompatibleTo: (recoveredStack1) generator: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredPC := 359.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) semAnaClass: (recoveredStack1) withParamAssign: (recoveredStack2) assignSource: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock340Value0 |
    recoveredBlock340Value0 := (self) skipFurtherAnalysis.
    ^recoveredBlock340Value0
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack0) rightChild: (recoveredStack1).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) semanticAnalysis: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArgumentUsageInOut.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 469].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArithmetic.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 469].
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 469] ifFalse: [recoveredPC := 402].
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := 121.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelWithoutRefDeref.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack7 := (recoveredStack7) rightChild.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack7 := (recoveredStack7) source.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack6 := Array.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack7 := 'implementation of argument: '.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack8 := (recoveredStack8) mdlClass.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack8 := (recoveredStack8) errLabelWithImpl.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack8 := 'implementation of actual value: '.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack9 := (recoveredStack9) rightChild.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack9 := (recoveredStack9) mdlClass.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack9 := (recoveredStack9) errLabelWithImpl.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack8 := (recoveredStack8) , (recoveredStack9).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack6 := (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack4 := (recoveredStack4) createMultiSource: (recoveredStack5) labels: (recoveredStack6).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReferencedIdentifier.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 542].
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlResource.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 495].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := 'resource type'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModeGroupType.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 508] ifFalse: [recoveredPC := 513].
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := 'mode group type'.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 538] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := 105.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 552] ifFalse: [recoveredPC := 559].
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack0) semAnaBoolNoAssign: (recoveredStack1).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlCopySemantics.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 568] ifFalse: [recoveredPC := 570].
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063670c; bytecode file offset 0xf330cc"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
semAnaMappingAR: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondaryMapping.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondaryMapping.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) semAnaMappingAR: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTargetMissing.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDeclReceiver.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingsTo.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := true.
            recoveredBlock65PC := 73.
        ].
        recoveredBlock65Step = 73 ifTrue: [
            recoveredBlock65Stack2 := recoveredArg1.
            recoveredBlock65PC := 76.
        ].
        recoveredBlock65Step = 76 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 77.
        ].
        recoveredBlock65Step = 77 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) isCompatibleMapping: (recoveredBlock65Stack3).
            recoveredBlock65PC := 79.
        ].
        recoveredBlock65Step = 79 ifTrue: [
            (recoveredBlock65Stack2) ifTrue: [recoveredBlock65PC := 90] ifFalse: [recoveredBlock65PC := 82].
        ].
        recoveredBlock65Step = 82 ifTrue: [
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 87.
        ].
        recoveredBlock65Step = 87 ifTrue: [
            (recoveredBlock65Stack1) mdlSemErrMultipleMappings: (recoveredBlock65Stack2).
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            recoveredBlock65Stack1 := false.
            recoveredBlock65PC := 90.
        ].
        recoveredBlock65Step = 90 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'message'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) toReceiverVarDecl.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARInterrunnableVarDecl.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlImported.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMissingExportDecl.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDecl.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) initValue.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlHasSameValueAs: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 55.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := 'IRV'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelToVarDecl: (recoveredStack4).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabelInitValue.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack6 := recoveredLocal6.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack6 := (recoveredStack6) errLabelInitValue.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) importsTable.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectInterface.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromVarDecl.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMsgUsageInfo: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := (recoveredStack2) isFlowDirectionSend.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFlowDirectionReceive.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := 'elements with send and receive access'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := 'message "%1" missing Read&Write Internal Access'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3) withMultiSource: (recoveredStack4).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARInterrunnableVarDecl.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlWritableARDataInterfaceType.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 314].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := 'IRV or NVData-/SR-Interface element'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDeclReceiver.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := 'parameter'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) toReceiverVarDecl.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCalPrmInterfaceType.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 362].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := 'Calibration-Interface element'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := 'unknown'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 405].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := 276.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelFromVarDecl.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabelToVarDecl.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlValid.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 416] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 446].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := SGCgMessageUsageInfo.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromVarDecl.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack2) flowDirectionFromAttributes: (recoveredStack3).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredPC := 461.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) importsTable.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectInterface.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromVarDecl.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMsgUsageInfo: (recoveredStack2).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) messageUsage: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdExternalMapping.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 616].
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 578] ifFalse: [recoveredPC := 488].
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFlowDirectionSendReceive.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 496] ifFalse: [recoveredPC := 578].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionSendReceive.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 578] ifFalse: [recoveredPC := 504].
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionSend.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 514] ifFalse: [recoveredPC := 540].
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlProvidePort.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 540] ifFalse: [recoveredPC := 528].
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := 'external access'.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack3 := 'elements of provide port'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3).
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionReceive.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 550] ifFalse: [recoveredPC := 576].
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRequirePort.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 576] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := 'external access'.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack3 := 'elements of require port'.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFlowDirectionSendReceive.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 586] ifFalse: [recoveredPC := 612].
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlProvidePort.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 612] ifFalse: [recoveredPC := 600].
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack2 := 'external access'.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack3 := 'elements of provide port'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3).
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredPC := 646.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdInternalMapping.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 626] ifFalse: [recoveredPC := 646].
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFlowDirectionSendReceive.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 634].
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack2 := 'internal access'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack3 := 'elements of IRV'.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMapping: (recoveredStack2) supported: (recoveredStack3).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066dc78; bytecode file offset 0xf6a6b0"
!SGMdSemAnaGeneralPart methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableOSToolTypes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredLocal7.
    recoveredBlock25Value2 := (recoveredBlock25Value1) identifier.
    recoveredBlock25Value3 := (recoveredBlock25Value0) = (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContainsLegacyHwcVariable.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContainsLegacyHwxProjectFiles.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack6 := #(nil).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack7 := #('Please use menu entry Tools->RTIO->Convert Configuration to migrate the hardware configuration').
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) osErrorNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContainsLegacyHwcVariable.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack6 := #(nil).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack7 := #('Please delete the HWC variable and change to ERCOSEK4.3').
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) osErrorNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) osErrorNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNonOptCopyTask.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) tasks.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 351.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := TGTarget.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) messageUsageVariantNonOptCopyTask.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 278.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) tasks.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := [:recoveredBlock228Arg1 | 
    | recoveredBlock228Value0 recoveredBlock228Value1 recoveredBlock228Value2 recoveredBlock228Value3 |
    recoveredBlock228Value0 := recoveredBlock228Arg1.
    recoveredBlock228Value1 := (recoveredBlock228Value0) processSeq.
    recoveredBlock228Value2 := [:recoveredBlock228Block239Arg1 | 
    | recoveredBlock228Block239Stack0 recoveredBlock228Block239Stack1 recoveredBlock228Block239Stack2 recoveredBlock228Block239Stack3 recoveredBlock228Block239Stack4 recoveredBlock228Block239PC recoveredBlock228Block239Step recoveredBlock228Block239Done recoveredBlock228Block239Result |
    recoveredBlock228Block239Stack0 := nil.
    recoveredBlock228Block239PC := 246.
    recoveredBlock228Block239Done := false.
    [recoveredBlock228Block239Done not] whileTrue: [
        recoveredBlock228Block239Step := recoveredBlock228Block239PC.
        recoveredBlock228Block239Step = 246 ifTrue: [
            recoveredBlock228Block239Stack1 := recoveredLocal2.
            recoveredBlock228Block239PC := 249.
        ].
        recoveredBlock228Block239Step = 249 ifTrue: [
            recoveredBlock228Block239Stack2 := recoveredBlock228Block239Arg1.
            recoveredBlock228Block239PC := 250.
        ].
        recoveredBlock228Block239Step = 250 ifTrue: [
            recoveredBlock228Block239Stack3 := [
    | block281267d8Value0 block281267d8Value1 |
    block281267d8Value0 := OrderedCollection.
    block281267d8Value1 := (block281267d8Value0) new.
    block281267d8Value1
].
            recoveredBlock228Block239PC := 252.
        ].
        recoveredBlock228Block239Step = 252 ifTrue: [
            recoveredBlock228Block239PC := 261.
        ].
        recoveredBlock228Block239Step = 261 ifTrue: [
            recoveredBlock228Block239Stack1 := (recoveredBlock228Block239Stack1) at: (recoveredBlock228Block239Stack2) ifAbsentPut: (recoveredBlock228Block239Stack3).
            recoveredBlock228Block239PC := 263.
        ].
        recoveredBlock228Block239Step = 263 ifTrue: [
            recoveredBlock228Block239Stack2 := recoveredBlock228Arg1.
            recoveredBlock228Block239PC := 266.
        ].
        recoveredBlock228Block239Step = 266 ifTrue: [
            recoveredBlock228Block239Stack1 := (recoveredBlock228Block239Stack1) add: (recoveredBlock228Block239Stack2).
            recoveredBlock228Block239PC := 268.
        ].
        recoveredBlock228Block239Step = 268 ifTrue: [
            recoveredBlock228Block239Result := recoveredBlock228Block239Stack1.
            recoveredBlock228Block239Done := true.
        ].
    ].
    recoveredBlock228Block239Result
].
    recoveredBlock228Value3 := (recoveredBlock228Value1) do: (recoveredBlock228Value2).
    recoveredBlock228Value3
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) tasks.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := [:recoveredBlock290Arg1 | 
    | recoveredBlock290Value0 recoveredBlock290Value1 recoveredBlock290Value2 recoveredBlock290Value3 |
    recoveredBlock290Value0 := recoveredBlock290Arg1.
    recoveredBlock290Value1 := (recoveredBlock290Value0) processSeq.
    recoveredBlock290Value2 := [:recoveredBlock290Block301Arg1 | 
    | recoveredBlock290Block301Stack0 recoveredBlock290Block301Stack1 recoveredBlock290Block301Stack2 recoveredBlock290Block301Stack3 recoveredBlock290Block301Stack4 recoveredBlock290Block301PC recoveredBlock290Block301Step recoveredBlock290Block301Done recoveredBlock290Block301Result |
    recoveredBlock290Block301Stack0 := nil.
    recoveredBlock290Block301PC := 308.
    recoveredBlock290Block301Done := false.
    [recoveredBlock290Block301Done not] whileTrue: [
        recoveredBlock290Block301Step := recoveredBlock290Block301PC.
        recoveredBlock290Block301Step = 308 ifTrue: [
            recoveredBlock290Block301Stack1 := recoveredLocal9.
            recoveredBlock290Block301PC := 311.
        ].
        recoveredBlock290Block301Step = 311 ifTrue: [
            recoveredBlock290Block301Stack2 := recoveredBlock290Block301Arg1.
            recoveredBlock290Block301PC := 312.
        ].
        recoveredBlock290Block301Step = 312 ifTrue: [
            recoveredBlock290Block301Stack3 := [
    | block281267fcValue0 block281267fcValue1 |
    block281267fcValue0 := OrderedCollection.
    block281267fcValue1 := (block281267fcValue0) new.
    block281267fcValue1
].
            recoveredBlock290Block301PC := 314.
        ].
        recoveredBlock290Block301Step = 314 ifTrue: [
            recoveredBlock290Block301PC := 323.
        ].
        recoveredBlock290Block301Step = 323 ifTrue: [
            recoveredBlock290Block301Stack1 := (recoveredBlock290Block301Stack1) at: (recoveredBlock290Block301Stack2) ifAbsentPut: (recoveredBlock290Block301Stack3).
            recoveredBlock290Block301PC := 325.
        ].
        recoveredBlock290Block301Step = 325 ifTrue: [
            recoveredBlock290Block301Stack2 := recoveredBlock290Arg1.
            recoveredBlock290Block301PC := 328.
        ].
        recoveredBlock290Block301Step = 328 ifTrue: [
            recoveredBlock290Block301Stack1 := (recoveredBlock290Block301Stack1) add: (recoveredBlock290Block301Stack2).
            recoveredBlock290Block301PC := 330.
        ].
        recoveredBlock290Block301Step = 330 ifTrue: [
            recoveredBlock290Block301Result := recoveredBlock290Block301Stack1.
            recoveredBlock290Block301Done := true.
        ].
    ].
    recoveredBlock290Block301Result
].
    recoveredBlock290Value3 := (recoveredBlock290Value1) do: (recoveredBlock290Value2).
    recoveredBlock290Value3
].
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := [:recoveredBlock339Arg1 :recoveredBlock339Arg2 | 
    | recoveredBlock339Stack0 recoveredBlock339Stack1 recoveredBlock339Stack2 recoveredBlock339Stack3 recoveredBlock339Stack4 recoveredBlock339Stack5 recoveredBlock339Stack6 recoveredBlock339Stack7 recoveredBlock339Stack8 recoveredBlock339PC recoveredBlock339Step recoveredBlock339Done recoveredBlock339Result |
    recoveredBlock339Stack0 := self.
    recoveredBlock339PC := 346.
    recoveredBlock339Done := false.
    [recoveredBlock339Done not] whileTrue: [
        recoveredBlock339Step := recoveredBlock339PC.
        recoveredBlock339Step = 346 ifTrue: [
            recoveredBlock339Stack1 := nil.
            recoveredBlock339PC := 347.
        ].
        recoveredBlock339Step = 347 ifTrue: [
            recoveredBlock339Stack2 := recoveredBlock339Arg2.
            recoveredBlock339PC := 348.
        ].
        recoveredBlock339Step = 348 ifTrue: [
            recoveredBlock339Stack2 := (recoveredBlock339Stack2) size.
            recoveredBlock339PC := 350.
        ].
        recoveredBlock339Step = 350 ifTrue: [
            recoveredBlock339Stack3 := 1.
            recoveredBlock339PC := 352.
        ].
        recoveredBlock339Step = 352 ifTrue: [
            recoveredBlock339Stack2 := (recoveredBlock339Stack2) > (recoveredBlock339Stack3).
            recoveredBlock339PC := 353.
        ].
        recoveredBlock339Step = 353 ifTrue: [
            (recoveredBlock339Stack2) ifTrue: [recoveredBlock339PC := 356] ifFalse: [recoveredBlock339PC := 496].
        ].
        recoveredBlock339Step = 356 ifTrue: [
            recoveredBlock339PC := 357.
        ].
        recoveredBlock339Step = 357 ifTrue: [
            recoveredBlock339Stack1 := recoveredArg1.
            recoveredBlock339PC := 360.
        ].
        recoveredBlock339Step = 360 ifTrue: [
            recoveredBlock339Stack1 := (recoveredBlock339Stack1) generator.
            recoveredBlock339PC := 361.
        ].
        recoveredBlock339Step = 361 ifTrue: [
            recoveredBlock339Stack1 := (recoveredBlock339Stack1) isOSERCOSEK43Enabled.
            recoveredBlock339PC := 363.
        ].
        recoveredBlock339Step = 363 ifTrue: [
            (recoveredBlock339Stack1) ifTrue: [recoveredBlock339PC := 366] ifFalse: [recoveredBlock339PC := 448].
        ].
        recoveredBlock339Step = 366 ifTrue: [
            recoveredBlock339Stack1 := nil.
            recoveredBlock339PC := 367.
        ].
        recoveredBlock339Step = 367 ifTrue: [
            recoveredBlock339Stack2 := recoveredBlock339Arg2.
            recoveredBlock339PC := 368.
        ].
        recoveredBlock339Step = 368 ifTrue: [
            recoveredBlock339Stack3 := [:block28126820Arg1 | 
    | block28126820Value0 block28126820Value1 |
    block28126820Value0 := block28126820Arg1.
    block28126820Value1 := (block28126820Value0) isMdlInitTask.
    block28126820Value1
].
            recoveredBlock339PC := 370.
        ].
        recoveredBlock339Step = 370 ifTrue: [
            recoveredBlock339PC := 378.
        ].
        recoveredBlock339Step = 378 ifTrue: [
            recoveredBlock339Stack2 := (recoveredBlock339Stack2) anySatisfy: (recoveredBlock339Stack3).
            recoveredBlock339PC := 380.
        ].
        recoveredBlock339Step = 380 ifTrue: [
            (recoveredBlock339Stack2) ifTrue: [recoveredBlock339PC := 384] ifFalse: [recoveredBlock339PC := 444].
        ].
        recoveredBlock339Step = 384 ifTrue: [
            recoveredBlock339Stack2 := recoveredBlock339Arg2.
            recoveredBlock339PC := 385.
        ].
        recoveredBlock339Step = 385 ifTrue: [
            recoveredBlock339Stack3 := [:block28126844Arg1 | 
    | block28126844Value0 block28126844Value1 block28126844Value2 |
    block28126844Value0 := block28126844Arg1.
    block28126844Value1 := (block28126844Value0) isMdlInitTask.
    block28126844Value2 := (block28126844Value1) not.
    block28126844Value2
].
            recoveredBlock339PC := 387.
        ].
        recoveredBlock339Step = 387 ifTrue: [
            recoveredBlock339PC := 395.
        ].
        recoveredBlock339Step = 395 ifTrue: [
            recoveredBlock339Stack2 := (recoveredBlock339Stack2) anySatisfy: (recoveredBlock339Stack3).
            recoveredBlock339PC := 397.
        ].
        recoveredBlock339Step = 397 ifTrue: [
            (recoveredBlock339Stack2) ifTrue: [recoveredBlock339PC := 400] ifFalse: [recoveredBlock339PC := 444].
        ].
        recoveredBlock339Step = 400 ifTrue: [
            recoveredBlock339PC := 401.
        ].
        recoveredBlock339Step = 401 ifTrue: [
            recoveredBlock339Stack1 := recoveredArg1.
            recoveredBlock339PC := 404.
        ].
        recoveredBlock339Step = 404 ifTrue: [
            recoveredBlock339Stack2 := 345.
            recoveredBlock339PC := 408.
        ].
        recoveredBlock339Step = 408 ifTrue: [
            recoveredBlock339Stack3 := recoveredBlock339Arg1.
            recoveredBlock339PC := 409.
        ].
        recoveredBlock339Step = 409 ifTrue: [
            recoveredBlock339Stack3 := (recoveredBlock339Stack3) errLabel.
            recoveredBlock339PC := 411.
        ].
        recoveredBlock339Step = 411 ifTrue: [
            recoveredBlock339Stack4 := recoveredBlock339Arg1.
            recoveredBlock339PC := 412.
        ].
        recoveredBlock339Step = 412 ifTrue: [
            recoveredBlock339Stack4 := (recoveredBlock339Stack4) scope.
            recoveredBlock339PC := 414.
        ].
        recoveredBlock339Step = 414 ifTrue: [
            recoveredBlock339Stack4 := (recoveredBlock339Stack4) className.
            recoveredBlock339PC := 416.
        ].
        recoveredBlock339Step = 416 ifTrue: [
            recoveredBlock339Stack5 := recoveredBlock339Arg2.
            recoveredBlock339PC := 417.
        ].
        recoveredBlock339Step = 417 ifTrue: [
            recoveredBlock339Stack6 := ''.
            recoveredBlock339PC := 419.
        ].
        recoveredBlock339Step = 419 ifTrue: [
            recoveredBlock339Stack7 := [:block28126868Arg1 :block28126868Arg2 | 
    | block28126868Value0 block28126868Value1 block28126868Value2 block28126868Value3 block28126868Value4 block28126868Value5 |
    block28126868Value0 := block28126868Arg1.
    block28126868Value1 := (block28126868Value0) , ('<').
    block28126868Value2 := block28126868Arg2.
    block28126868Value3 := (block28126868Value2) errLabel.
    block28126868Value4 := (block28126868Value1) , (block28126868Value3).
    block28126868Value5 := (block28126868Value4) , ('>').
    block28126868Value5
].
            recoveredBlock339PC := 421.
        ].
        recoveredBlock339Step = 421 ifTrue: [
            recoveredBlock339PC := 439.
        ].
        recoveredBlock339Step = 439 ifTrue: [
            recoveredBlock339Stack5 := (recoveredBlock339Stack5) inject: (recoveredBlock339Stack6) into: (recoveredBlock339Stack7).
            recoveredBlock339PC := 441.
        ].
        recoveredBlock339Step = 441 ifTrue: [
            recoveredBlock339Stack1 := (recoveredBlock339Stack1) mdlSemErrNo: (recoveredBlock339Stack2) with: (recoveredBlock339Stack3) with: (recoveredBlock339Stack4) with: (recoveredBlock339Stack5).
            recoveredBlock339PC := 444.
        ].
        recoveredBlock339Step = 444 ifTrue: [
            recoveredBlock339PC := 496.
        ].
        recoveredBlock339Step = 448 ifTrue: [
            recoveredBlock339Stack1 := recoveredArg1.
            recoveredBlock339PC := 451.
        ].
        recoveredBlock339Step = 451 ifTrue: [
            recoveredBlock339Stack2 := 14.
            recoveredBlock339PC := 453.
        ].
        recoveredBlock339Step = 453 ifTrue: [
            recoveredBlock339Stack3 := recoveredBlock339Arg1.
            recoveredBlock339PC := 454.
        ].
        recoveredBlock339Step = 454 ifTrue: [
            recoveredBlock339Stack3 := (recoveredBlock339Stack3) scope.
            recoveredBlock339PC := 456.
        ].
        recoveredBlock339Step = 456 ifTrue: [
            recoveredBlock339Stack3 := (recoveredBlock339Stack3) errLabel.
            recoveredBlock339PC := 458.
        ].
        recoveredBlock339Step = 458 ifTrue: [
            recoveredBlock339Stack4 := '::'.
            recoveredBlock339PC := 460.
        ].
        recoveredBlock339Step = 460 ifTrue: [
            recoveredBlock339Stack3 := (recoveredBlock339Stack3) , (recoveredBlock339Stack4).
            recoveredBlock339PC := 462.
        ].
        recoveredBlock339Step = 462 ifTrue: [
            recoveredBlock339Stack4 := recoveredBlock339Arg1.
            recoveredBlock339PC := 463.
        ].
        recoveredBlock339Step = 463 ifTrue: [
            recoveredBlock339Stack4 := (recoveredBlock339Stack4) errLabel.
            recoveredBlock339PC := 465.
        ].
        recoveredBlock339Step = 465 ifTrue: [
            recoveredBlock339Stack3 := (recoveredBlock339Stack3) , (recoveredBlock339Stack4).
            recoveredBlock339PC := 467.
        ].
        recoveredBlock339Step = 467 ifTrue: [
            recoveredBlock339Stack4 := recoveredBlock339Arg2.
            recoveredBlock339PC := 468.
        ].
        recoveredBlock339Step = 468 ifTrue: [
            recoveredBlock339Stack5 := ''.
            recoveredBlock339PC := 470.
        ].
        recoveredBlock339Step = 470 ifTrue: [
            recoveredBlock339Stack6 := [:block2812688cArg1 :block2812688cArg2 | 
    | block2812688cValue0 block2812688cValue1 block2812688cValue2 block2812688cValue3 block2812688cValue4 block2812688cValue5 |
    block2812688cValue0 := block2812688cArg1.
    block2812688cValue1 := (block2812688cValue0) , ('<').
    block2812688cValue2 := block2812688cArg2.
    block2812688cValue3 := (block2812688cValue2) errLabel.
    block2812688cValue4 := (block2812688cValue1) , (block2812688cValue3).
    block2812688cValue5 := (block2812688cValue4) , ('>').
    block2812688cValue5
].
            recoveredBlock339PC := 472.
        ].
        recoveredBlock339Step = 472 ifTrue: [
            recoveredBlock339PC := 491.
        ].
        recoveredBlock339Step = 491 ifTrue: [
            recoveredBlock339Stack4 := (recoveredBlock339Stack4) inject: (recoveredBlock339Stack5) into: (recoveredBlock339Stack6).
            recoveredBlock339PC := 493.
        ].
        recoveredBlock339Step = 493 ifTrue: [
            recoveredBlock339Stack1 := (recoveredBlock339Stack1) mdlWarningNo: (recoveredBlock339Stack2) with: (recoveredBlock339Stack3) with: (recoveredBlock339Stack4).
            recoveredBlock339PC := 496.
        ].
        recoveredBlock339Step = 496 ifTrue: [
            recoveredBlock339Result := recoveredBlock339Stack1.
            recoveredBlock339Done := true.
        ].
    ].
    recoveredBlock339Result
].
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) initTasks.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := [:recoveredBlock511Arg1 | 
    | recoveredBlock511Value0 recoveredBlock511Value1 recoveredBlock511Value2 recoveredBlock511Value3 |
    recoveredBlock511Value0 := recoveredBlock511Arg1.
    recoveredBlock511Value1 := (recoveredBlock511Value0) opModes.
    recoveredBlock511Value2 := [:recoveredBlock511Block523Arg1 | 
    | recoveredBlock511Block523Stack0 recoveredBlock511Block523Stack1 recoveredBlock511Block523Stack2 recoveredBlock511Block523Stack3 recoveredBlock511Block523Stack4 recoveredBlock511Block523PC recoveredBlock511Block523Step recoveredBlock511Block523Done recoveredBlock511Block523Result |
    recoveredBlock511Block523Stack0 := nil.
    recoveredBlock511Block523PC := 530.
    recoveredBlock511Block523Done := false.
    [recoveredBlock511Block523Done not] whileTrue: [
        recoveredBlock511Block523Step := recoveredBlock511Block523PC.
        recoveredBlock511Block523Step = 530 ifTrue: [
            recoveredBlock511Block523Stack1 := recoveredLocal9.
            recoveredBlock511Block523PC := 533.
        ].
        recoveredBlock511Block523Step = 533 ifTrue: [
            recoveredBlock511Block523Stack2 := recoveredBlock511Block523Arg1.
            recoveredBlock511Block523PC := 534.
        ].
        recoveredBlock511Block523Step = 534 ifTrue: [
            recoveredBlock511Block523Stack3 := [
    | block281268b0Value0 block281268b0Value1 |
    block281268b0Value0 := OrderedCollection.
    block281268b0Value1 := (block281268b0Value0) new.
    block281268b0Value1
].
            recoveredBlock511Block523PC := 538.
        ].
        recoveredBlock511Block523Step = 538 ifTrue: [
            recoveredBlock511Block523PC := 547.
        ].
        recoveredBlock511Block523Step = 547 ifTrue: [
            recoveredBlock511Block523Stack1 := (recoveredBlock511Block523Stack1) at: (recoveredBlock511Block523Stack2) ifAbsentPut: (recoveredBlock511Block523Stack3).
            recoveredBlock511Block523PC := 549.
        ].
        recoveredBlock511Block523Step = 549 ifTrue: [
            recoveredBlock511Block523Stack2 := recoveredBlock511Arg1.
            recoveredBlock511Block523PC := 552.
        ].
        recoveredBlock511Block523Step = 552 ifTrue: [
            recoveredBlock511Block523Stack1 := (recoveredBlock511Block523Stack1) add: (recoveredBlock511Block523Stack2).
            recoveredBlock511Block523PC := 554.
        ].
        recoveredBlock511Block523Step = 554 ifTrue: [
            recoveredBlock511Block523Result := recoveredBlock511Block523Stack1.
            recoveredBlock511Block523Done := true.
        ].
    ].
    recoveredBlock511Block523Result
].
    recoveredBlock511Value3 := (recoveredBlock511Value1) do: (recoveredBlock511Value2).
    recoveredBlock511Value3
].
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := (recoveredStack1) opModes.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := [:block281268d4Arg1 | 
    | block281268d4Stack0 block281268d4Stack1 block281268d4Stack2 block281268d4Stack3 block281268d4Stack4 block281268d4PC block281268d4Step block281268d4Done block281268d4Result |
    block281268d4Stack0 := self.
    block281268d4PC := 4.
    block281268d4Done := false.
    [block281268d4Done not] whileTrue: [
        block281268d4Step := block281268d4PC.
        block281268d4Step = 4 ifTrue: [
            block281268d4Stack1 := nil.
            block281268d4PC := 5.
        ].
        block281268d4Step = 5 ifTrue: [
            block281268d4Stack2 := block281268d4Arg1.
            block281268d4PC := 6.
        ].
        block281268d4Step = 6 ifTrue: [
            block281268d4Stack2 := (block281268d4Stack2) isMdlInactiveMode.
            block281268d4PC := 11.
        ].
        block281268d4Step = 11 ifTrue: [
            (block281268d4Stack2) ifTrue: [block281268d4PC := 45] ifFalse: [block281268d4PC := 14].
        ].
        block281268d4Step = 14 ifTrue: [
            block281268d4Stack2 := block281268d4Arg1.
            block281268d4PC := 15.
        ].
        block281268d4Step = 15 ifTrue: [
            block281268d4Stack2 := (block281268d4Stack2) startMode.
            block281268d4PC := 19.
        ].
        block281268d4Step = 19 ifTrue: [
            (block281268d4Stack2) ifTrue: [block281268d4PC := 45] ifFalse: [block281268d4PC := 22].
        ].
        block281268d4Step = 22 ifTrue: [
            block281268d4PC := 23.
        ].
        block281268d4Step = 23 ifTrue: [
            block281268d4Stack1 := nil.
            block281268d4PC := 24.
        ].
        block281268d4Step = 24 ifTrue: [
            block281268d4Stack2 := block281268d4Arg1.
            block281268d4PC := 25.
        ].
        block281268d4Step = 25 ifTrue: [
            block281268d4Stack2 := (block281268d4Stack2) initTasks.
            block281268d4PC := 27.
        ].
        block281268d4Step = 27 ifTrue: [
            block281268d4Stack2 := (block281268d4Stack2) isEmpty.
            block281268d4PC := 29.
        ].
        block281268d4Step = 29 ifTrue: [
            (block281268d4Stack2) ifTrue: [block281268d4PC := 32] ifFalse: [block281268d4PC := 45].
        ].
        block281268d4Step = 32 ifTrue: [
            block281268d4PC := 33.
        ].
        block281268d4Step = 33 ifTrue: [
            block281268d4Stack1 := block281268d4Arg1.
            block281268d4PC := 34.
        ].
        block281268d4Step = 34 ifTrue: [
            block281268d4Stack2 := 311.
            block281268d4PC := 38.
        ].
        block281268d4Step = 38 ifTrue: [
            block281268d4Stack3 := block281268d4Arg1.
            block281268d4PC := 39.
        ].
        block281268d4Step = 39 ifTrue: [
            block281268d4Stack3 := (block281268d4Stack3) errLabel.
            block281268d4PC := 41.
        ].
        block281268d4Step = 41 ifTrue: [
            block281268d4Stack1 := (block281268d4Stack1) mdlWarningNo: (block281268d4Stack2) with: (block281268d4Stack3).
            block281268d4PC := 45.
        ].
        block281268d4Step = 45 ifTrue: [
            block281268d4Result := block281268d4Stack1.
            block281268d4Done := true.
        ].
    ].
    block281268d4Result
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := [:recoveredBlock619Arg1 :recoveredBlock619Arg2 | 
    | recoveredBlock619Stack0 recoveredBlock619Stack1 recoveredBlock619Stack2 recoveredBlock619Stack3 recoveredBlock619Stack4 recoveredBlock619Stack5 recoveredBlock619Stack6 recoveredBlock619Stack7 recoveredBlock619Stack8 recoveredBlock619PC recoveredBlock619Step recoveredBlock619Done recoveredBlock619Result |
    recoveredBlock619Stack0 := self.
    recoveredBlock619PC := 626.
    recoveredBlock619Done := false.
    [recoveredBlock619Done not] whileTrue: [
        recoveredBlock619Step := recoveredBlock619PC.
        recoveredBlock619Step = 626 ifTrue: [
            recoveredBlock619Stack1 := nil.
            recoveredBlock619PC := 627.
        ].
        recoveredBlock619Step = 627 ifTrue: [
            recoveredBlock619Stack2 := recoveredBlock619Arg2.
            recoveredBlock619PC := 628.
        ].
        recoveredBlock619Step = 628 ifTrue: [
            recoveredBlock619Stack2 := (recoveredBlock619Stack2) size.
            recoveredBlock619PC := 630.
        ].
        recoveredBlock619Step = 630 ifTrue: [
            recoveredBlock619Stack3 := 1.
            recoveredBlock619PC := 632.
        ].
        recoveredBlock619Step = 632 ifTrue: [
            recoveredBlock619Stack2 := (recoveredBlock619Stack2) > (recoveredBlock619Stack3).
            recoveredBlock619PC := 633.
        ].
        recoveredBlock619Step = 633 ifTrue: [
            (recoveredBlock619Stack2) ifTrue: [recoveredBlock619PC := 636] ifFalse: [recoveredBlock619PC := 837].
        ].
        recoveredBlock619Step = 636 ifTrue: [
            recoveredBlock619PC := 637.
        ].
        recoveredBlock619Step = 637 ifTrue: [
            recoveredBlock619Stack1 := recoveredArg1.
            recoveredBlock619PC := 640.
        ].
        recoveredBlock619Step = 640 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) generator.
            recoveredBlock619PC := 641.
        ].
        recoveredBlock619Step = 641 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) targetFeatureOSType.
            recoveredBlock619PC := 645.
        ].
        recoveredBlock619Step = 645 ifTrue: [
            recoveredBlock619Stack2 := TGTarget.
            recoveredBlock619PC := 647.
        ].
        recoveredBlock619Step = 647 ifTrue: [
            recoveredBlock619Stack2 := (recoveredBlock619Stack2) ercosekId.
            recoveredBlock619PC := 651.
        ].
        recoveredBlock619Step = 651 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) equals: (recoveredBlock619Stack2).
            recoveredBlock619PC := 655.
        ].
        recoveredBlock619Step = 655 ifTrue: [
            (recoveredBlock619Stack1) ifTrue: [recoveredBlock619PC := 742] ifFalse: [recoveredBlock619PC := 658].
        ].
        recoveredBlock619Step = 658 ifTrue: [
            recoveredBlock619Stack1 := recoveredArg1.
            recoveredBlock619PC := 661.
        ].
        recoveredBlock619Step = 661 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) generator.
            recoveredBlock619PC := 662.
        ].
        recoveredBlock619Step = 662 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) targetFeatureType.
            recoveredBlock619PC := 667.
        ].
        recoveredBlock619Step = 667 ifTrue: [
            recoveredBlock619Stack2 := TGTargetPC.
            recoveredBlock619PC := 670.
        ].
        recoveredBlock619Step = 670 ifTrue: [
            recoveredBlock619Stack2 := (recoveredBlock619Stack2) targetType.
            recoveredBlock619PC := 675.
        ].
        recoveredBlock619Step = 675 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) equals: (recoveredBlock619Stack2).
            recoveredBlock619PC := 679.
        ].
        recoveredBlock619Step = 679 ifTrue: [
            (recoveredBlock619Stack1) ifTrue: [recoveredBlock619PC := 742] ifFalse: [recoveredBlock619PC := 682].
        ].
        recoveredBlock619Step = 682 ifTrue: [
            recoveredBlock619Stack1 := recoveredBlock619Arg2.
            recoveredBlock619PC := 683.
        ].
        recoveredBlock619Step = 683 ifTrue: [
            recoveredBlock619Stack2 := [:recoveredBlock619Block683Arg1 | 
    | recoveredBlock619Block683Value0 recoveredBlock619Block683Value1 recoveredBlock619Block683Value2 recoveredBlock619Block683Value3 recoveredBlock619Block683Value4 |
    recoveredBlock619Block683Value0 := recoveredBlock619Block683Arg1.
    recoveredBlock619Block683Value1 := (recoveredBlock619Block683Value0) errLabel.
    recoveredBlock619Block683Value2 := recoveredArg1.
    recoveredBlock619Block683Value3 := (recoveredBlock619Block683Value2) initCTTaskname.
    recoveredBlock619Block683Value4 := (recoveredBlock619Block683Value1) equals: (recoveredBlock619Block683Value3).
    recoveredBlock619Block683Value4
].
            recoveredBlock619PC := 706.
        ].
        recoveredBlock619Step = 706 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) anySatisfy: (recoveredBlock619Stack2).
            recoveredBlock619PC := 708.
        ].
        recoveredBlock619Step = 708 ifTrue: [
            (recoveredBlock619Stack1) ifTrue: [recoveredBlock619PC := 742] ifFalse: [recoveredBlock619PC := 712].
        ].
        recoveredBlock619Step = 712 ifTrue: [
            recoveredBlock619Stack1 := recoveredBlock619Arg2.
            recoveredBlock619PC := 713.
        ].
        recoveredBlock619Step = 713 ifTrue: [
            recoveredBlock619Stack2 := [:recoveredBlock619Block713Arg1 | 
    | recoveredBlock619Block713Value0 recoveredBlock619Block713Value1 recoveredBlock619Block713Value2 recoveredBlock619Block713Value3 recoveredBlock619Block713Value4 |
    recoveredBlock619Block713Value0 := recoveredBlock619Block713Arg1.
    recoveredBlock619Block713Value1 := (recoveredBlock619Block713Value0) errLabel.
    recoveredBlock619Block713Value2 := recoveredArg1.
    recoveredBlock619Block713Value3 := (recoveredBlock619Block713Value2) terminateCTTaskname.
    recoveredBlock619Block713Value4 := (recoveredBlock619Block713Value1) equals: (recoveredBlock619Block713Value3).
    recoveredBlock619Block713Value4
].
            recoveredBlock619PC := 736.
        ].
        recoveredBlock619Step = 736 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) anySatisfy: (recoveredBlock619Stack2).
            recoveredBlock619PC := 738.
        ].
        recoveredBlock619Step = 738 ifTrue: [
            (recoveredBlock619Stack1) ifTrue: [recoveredBlock619PC := 742] ifFalse: [recoveredBlock619PC := 790].
        ].
        recoveredBlock619Step = 742 ifTrue: [
            recoveredBlock619Stack1 := recoveredArg1.
            recoveredBlock619PC := 745.
        ].
        recoveredBlock619Step = 745 ifTrue: [
            recoveredBlock619Stack2 := 310.
            recoveredBlock619PC := 748.
        ].
        recoveredBlock619Step = 748 ifTrue: [
            recoveredBlock619Stack3 := recoveredBlock619Arg1.
            recoveredBlock619PC := 749.
        ].
        recoveredBlock619Step = 749 ifTrue: [
            recoveredBlock619Stack4 := '" '.
            recoveredBlock619PC := 752.
        ].
        recoveredBlock619Step = 752 ifTrue: [
            recoveredBlock619Stack5 := recoveredBlock619Arg2.
            recoveredBlock619PC := 753.
        ].
        recoveredBlock619Step = 753 ifTrue: [
            recoveredBlock619Stack6 := ''.
            recoveredBlock619PC := 755.
        ].
        recoveredBlock619Step = 755 ifTrue: [
            recoveredBlock619Stack7 := [:block281268f8Arg1 :block281268f8Arg2 | 
    | block281268f8Value0 block281268f8Value1 block281268f8Value2 block281268f8Value3 block281268f8Value4 |
    block281268f8Value0 := block281268f8Arg1.
    block281268f8Value1 := block281268f8Arg2.
    block281268f8Value2 := (block281268f8Value1) errLabel.
    block281268f8Value3 := (block281268f8Value0) , (block281268f8Value2).
    block281268f8Value4 := (block281268f8Value3) , (' ').
    block281268f8Value4
].
            recoveredBlock619PC := 758.
        ].
        recoveredBlock619Step = 758 ifTrue: [
            recoveredBlock619PC := 775.
        ].
        recoveredBlock619Step = 775 ifTrue: [
            recoveredBlock619Stack5 := (recoveredBlock619Stack5) inject: (recoveredBlock619Stack6) into: (recoveredBlock619Stack7).
            recoveredBlock619PC := 777.
        ].
        recoveredBlock619Step = 777 ifTrue: [
            recoveredBlock619Stack4 := (recoveredBlock619Stack4) , (recoveredBlock619Stack5).
            recoveredBlock619PC := 779.
        ].
        recoveredBlock619Step = 779 ifTrue: [
            recoveredBlock619Stack5 := '"'.
            recoveredBlock619PC := 782.
        ].
        recoveredBlock619Step = 782 ifTrue: [
            recoveredBlock619Stack4 := (recoveredBlock619Stack4) , (recoveredBlock619Stack5).
            recoveredBlock619PC := 784.
        ].
        recoveredBlock619Step = 784 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) mdlWarningNo: (recoveredBlock619Stack2) with: (recoveredBlock619Stack3) with: (recoveredBlock619Stack4).
            recoveredBlock619PC := 787.
        ].
        recoveredBlock619Step = 787 ifTrue: [
            recoveredBlock619PC := 837.
        ].
        recoveredBlock619Step = 790 ifTrue: [
            recoveredBlock619Stack1 := recoveredArg1.
            recoveredBlock619PC := 793.
        ].
        recoveredBlock619Step = 793 ifTrue: [
            recoveredBlock619Stack2 := 310.
            recoveredBlock619PC := 796.
        ].
        recoveredBlock619Step = 796 ifTrue: [
            recoveredBlock619Stack3 := recoveredBlock619Arg1.
            recoveredBlock619PC := 797.
        ].
        recoveredBlock619Step = 797 ifTrue: [
            recoveredBlock619Stack4 := '" '.
            recoveredBlock619PC := 800.
        ].
        recoveredBlock619Step = 800 ifTrue: [
            recoveredBlock619Stack5 := recoveredBlock619Arg2.
            recoveredBlock619PC := 801.
        ].
        recoveredBlock619Step = 801 ifTrue: [
            recoveredBlock619Stack6 := ''.
            recoveredBlock619PC := 803.
        ].
        recoveredBlock619Step = 803 ifTrue: [
            recoveredBlock619Stack7 := [:block2812691cArg1 :block2812691cArg2 | 
    | block2812691cValue0 block2812691cValue1 block2812691cValue2 block2812691cValue3 block2812691cValue4 |
    block2812691cValue0 := block2812691cArg1.
    block2812691cValue1 := block2812691cArg2.
    block2812691cValue2 := (block2812691cValue1) errLabel.
    block2812691cValue3 := (block2812691cValue0) , (block2812691cValue2).
    block2812691cValue4 := (block2812691cValue3) , (' ').
    block2812691cValue4
].
            recoveredBlock619PC := 806.
        ].
        recoveredBlock619Step = 806 ifTrue: [
            recoveredBlock619PC := 823.
        ].
        recoveredBlock619Step = 823 ifTrue: [
            recoveredBlock619Stack5 := (recoveredBlock619Stack5) inject: (recoveredBlock619Stack6) into: (recoveredBlock619Stack7).
            recoveredBlock619PC := 825.
        ].
        recoveredBlock619Step = 825 ifTrue: [
            recoveredBlock619Stack4 := (recoveredBlock619Stack4) , (recoveredBlock619Stack5).
            recoveredBlock619PC := 827.
        ].
        recoveredBlock619Step = 827 ifTrue: [
            recoveredBlock619Stack5 := '"'.
            recoveredBlock619PC := 830.
        ].
        recoveredBlock619Step = 830 ifTrue: [
            recoveredBlock619Stack4 := (recoveredBlock619Stack4) , (recoveredBlock619Stack5).
            recoveredBlock619PC := 832.
        ].
        recoveredBlock619Step = 832 ifTrue: [
            recoveredBlock619Stack1 := (recoveredBlock619Stack1) mdlSemErrNo: (recoveredBlock619Stack2) with: (recoveredBlock619Stack3) with: (recoveredBlock619Stack4).
            recoveredBlock619PC := 837.
        ].
        recoveredBlock619Step = 837 ifTrue: [
            recoveredBlock619Result := recoveredBlock619Stack1.
            recoveredBlock619Done := true.
        ].
    ].
    recoveredBlock619Result
].
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            (recoveredStack0) semAnaPrioLevels: (recoveredStack1).
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectDecl.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack1 := [:recoveredBlock867Arg1 | 
    | recoveredBlock867Local1 recoveredBlock867Stack0 recoveredBlock867Stack1 recoveredBlock867Stack2 recoveredBlock867Stack3 recoveredBlock867PC recoveredBlock867Step recoveredBlock867Done recoveredBlock867Result |
    recoveredBlock867Stack0 := self.
    recoveredBlock867PC := 874.
    recoveredBlock867Done := false.
    [recoveredBlock867Done not] whileTrue: [
        recoveredBlock867Step := recoveredBlock867PC.
        recoveredBlock867Step = 874 ifTrue: [
            recoveredBlock867Stack1 := nil.
            recoveredBlock867PC := 875.
        ].
        recoveredBlock867Step = 875 ifTrue: [
            recoveredBlock867Stack2 := recoveredBlock867Arg1.
            recoveredBlock867PC := 876.
        ].
        recoveredBlock867Step = 876 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) mdlClass.
            recoveredBlock867PC := 881.
        ].
        recoveredBlock867Step = 881 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) isMdlComplexClassType.
            recoveredBlock867PC := 885.
        ].
        recoveredBlock867Step = 885 ifTrue: [
            (recoveredBlock867Stack2) ifTrue: [recoveredBlock867PC := 888] ifFalse: [recoveredBlock867PC := 941].
        ].
        recoveredBlock867Step = 888 ifTrue: [
            recoveredBlock867PC := 889.
        ].
        recoveredBlock867Step = 889 ifTrue: [
            recoveredBlock867Stack1 := self.
            recoveredBlock867PC := 890.
        ].
        recoveredBlock867Step = 890 ifTrue: [
            recoveredBlock867Stack1 := (recoveredBlock867Stack1) generator.
            recoveredBlock867PC := 891.
        ].
        recoveredBlock867Step = 891 ifTrue: [
            recoveredBlock867Stack1 := (recoveredBlock867Stack1) genContext.
            recoveredBlock867PC := 892.
        ].
        recoveredBlock867Step = 892 ifTrue: [
            recoveredBlock867Stack1 := (recoveredBlock867Stack1) importsTable.
            recoveredBlock867PC := 897.
        ].
        recoveredBlock867Step = 897 ifTrue: [
            recoveredBlock867Stack1 := (recoveredBlock867Stack1) symbols.
            recoveredBlock867PC := 901.
        ].
        recoveredBlock867Step = 901 ifTrue: [
            recoveredBlock867Stack2 := recoveredBlock867Arg1.
            recoveredBlock867PC := 902.
        ].
        recoveredBlock867Step = 902 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) mdlClass.
            recoveredBlock867PC := 907.
        ].
        recoveredBlock867Step = 907 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) mdlKey.
            recoveredBlock867PC := 911.
        ].
        recoveredBlock867Step = 911 ifTrue: [
            recoveredBlock867Stack1 := (recoveredBlock867Stack1) at: (recoveredBlock867Stack2).
            recoveredBlock867PC := 915.
        ].
        recoveredBlock867Step = 915 ifTrue: [
            recoveredBlock867Local1 := recoveredBlock867Stack1.
            recoveredBlock867PC := 916.
        ].
        recoveredBlock867Step = 916 ifTrue: [
            recoveredBlock867Stack1 := nil.
            recoveredBlock867PC := 917.
        ].
        recoveredBlock867Step = 917 ifTrue: [
            recoveredBlock867Stack2 := recoveredBlock867Local1.
            recoveredBlock867PC := 918.
        ].
        recoveredBlock867Step = 918 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) optimizations.
            recoveredBlock867PC := 920.
        ].
        recoveredBlock867Step = 920 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) isCgGenericComponent.
            recoveredBlock867PC := 925.
        ].
        recoveredBlock867Step = 925 ifTrue: [
            (recoveredBlock867Stack2) ifTrue: [recoveredBlock867PC := 928] ifFalse: [recoveredBlock867PC := 941].
        ].
        recoveredBlock867Step = 928 ifTrue: [
            recoveredBlock867PC := 929.
        ].
        recoveredBlock867Step = 929 ifTrue: [
            recoveredBlock867Stack1 := recoveredLocal4.
            recoveredBlock867PC := 932.
        ].
        recoveredBlock867Step = 932 ifTrue: [
            recoveredBlock867Stack2 := recoveredBlock867Local1.
            recoveredBlock867PC := 933.
        ].
        recoveredBlock867Step = 933 ifTrue: [
            recoveredBlock867Stack2 := (recoveredBlock867Stack2) processDecls.
            recoveredBlock867PC := 937.
        ].
        recoveredBlock867Step = 937 ifTrue: [
            recoveredBlock867Stack1 := (recoveredBlock867Stack1) addAll: (recoveredBlock867Stack2).
            recoveredBlock867PC := 941.
        ].
        recoveredBlock867Step = 941 ifTrue: [
            recoveredBlock867Result := recoveredBlock867Stack1.
            recoveredBlock867Done := true.
        ].
    ].
    recoveredBlock867Result
].
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := [:recoveredBlock949Arg1 | 
    | recoveredBlock949Value0 recoveredBlock949Value1 recoveredBlock949Value2 recoveredBlock949Value3 |
    recoveredBlock949Value0 := recoveredBlock949Arg1.
    recoveredBlock949Value1 := (recoveredBlock949Value0) processSeq.
    recoveredBlock949Value2 := [:recoveredBlock949Block959Arg1 | 
    | recoveredBlock949Block959Value0 recoveredBlock949Block959Value1 recoveredBlock949Block959Value2 recoveredBlock949Block959Value3 |
    recoveredBlock949Block959Value0 := recoveredLocal4.
    recoveredBlock949Block959Value1 := recoveredBlock949Block959Arg1.
    recoveredBlock949Block959Value2 := [].
    recoveredBlock949Block959Value3 := (recoveredBlock949Block959Value0) remove: (recoveredBlock949Block959Value1) ifAbsent: (recoveredBlock949Block959Value2).
    recoveredBlock949Block959Value3
].
    recoveredBlock949Value3 := (recoveredBlock949Value1) do: (recoveredBlock949Value2).
    recoveredBlock949Value3
].
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack1 := [:block28126940Arg1 | 
    | block28126940Value0 block28126940Value1 block28126940Value2 block28126940Value3 block28126940Value4 block28126940Value5 block28126940Value6 |
    block28126940Value0 := block28126940Arg1.
    block28126940Value1 := block28126940Arg1.
    block28126940Value2 := (block28126940Value1) errLabel.
    block28126940Value3 := block28126940Arg1.
    block28126940Value4 := (block28126940Value3) scope.
    block28126940Value5 := (block28126940Value4) errLabel.
    block28126940Value6 := (block28126940Value0) mdlWarningNo: (315) with: (block28126940Value2) with: (block28126940Value5).
    block28126940Value6
].
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetFeatureOSType.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack2 := (recoveredStack2) ercosekId.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1043] ifFalse: [recoveredPC := 1036].
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSERCOSEK43Enabled.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack1 := [:block28126964Arg1 | 
    | block28126964Value0 block28126964Value1 block28126964Value2 block28126964Value3 |
    block28126964Value0 := block28126964Arg1.
    block28126964Value1 := (block28126964Value0) processSeq.
    block28126964Value2 := [:block28126964Block9Arg1 | 
    | block28126964Block9Stack0 block28126964Block9Stack1 block28126964Block9Stack2 block28126964Block9Stack3 block28126964Block9Stack4 block28126964Block9Stack5 block28126964Block9PC block28126964Block9Step block28126964Block9Done block28126964Block9Result |
    block28126964Block9Stack0 := nil.
    block28126964Block9PC := 16.
    block28126964Block9Done := false.
    [block28126964Block9Done not] whileTrue: [
        block28126964Block9Step := block28126964Block9PC.
        block28126964Block9Step = 16 ifTrue: [
            block28126964Block9Stack1 := nil.
            block28126964Block9PC := 17.
        ].
        block28126964Block9Step = 17 ifTrue: [
            block28126964Block9Stack2 := block28126964Block9Arg1.
            block28126964Block9PC := 18.
        ].
        block28126964Block9Step = 18 ifTrue: [
            block28126964Block9Stack2 := (block28126964Block9Stack2) attributes.
            block28126964Block9PC := 23.
        ].
        block28126964Block9Step = 23 ifTrue: [
            block28126964Block9Stack2 := (block28126964Block9Stack2) isCgAttrNoInlining.
            block28126964Block9PC := 27.
        ].
        block28126964Block9Step = 27 ifTrue: [
            (block28126964Block9Stack2) ifTrue: [block28126964Block9PC := 61] ifFalse: [block28126964Block9PC := 30].
        ].
        block28126964Block9Step = 30 ifTrue: [
            block28126964Block9Stack2 := block28126964Block9Arg1.
            block28126964Block9PC := 31.
        ].
        block28126964Block9Step = 31 ifTrue: [
            block28126964Block9Stack2 := (block28126964Block9Stack2) attributes.
            block28126964Block9PC := 35.
        ].
        block28126964Block9Step = 35 ifTrue: [
            block28126964Block9Stack2 := (block28126964Block9Stack2) isCgAttrAutomaticInlining.
            block28126964Block9PC := 39.
        ].
        block28126964Block9Step = 39 ifTrue: [
            (block28126964Block9Stack2) ifTrue: [block28126964Block9PC := 61] ifFalse: [block28126964Block9PC := 42].
        ].
        block28126964Block9Step = 42 ifTrue: [
            block28126964Block9PC := 43.
        ].
        block28126964Block9Step = 43 ifTrue: [
            block28126964Block9Stack1 := block28126964Block9Arg1.
            block28126964Block9PC := 44.
        ].
        block28126964Block9Step = 44 ifTrue: [
            block28126964Block9Stack2 := 356.
            block28126964Block9PC := 48.
        ].
        block28126964Block9Step = 48 ifTrue: [
            block28126964Block9Stack3 := block28126964Block9Arg1.
            block28126964Block9PC := 49.
        ].
        block28126964Block9Step = 49 ifTrue: [
            block28126964Block9Stack3 := (block28126964Block9Stack3) errLabel.
            block28126964Block9PC := 51.
        ].
        block28126964Block9Step = 51 ifTrue: [
            block28126964Block9Stack4 := block28126964Arg1.
            block28126964Block9PC := 54.
        ].
        block28126964Block9Step = 54 ifTrue: [
            block28126964Block9Stack4 := (block28126964Block9Stack4) errLabel.
            block28126964Block9PC := 56.
        ].
        block28126964Block9Step = 56 ifTrue: [
            block28126964Block9Stack1 := (block28126964Block9Stack1) mdlSemErrNo: (block28126964Block9Stack2) with: (block28126964Block9Stack3) with: (block28126964Block9Stack4).
            block28126964Block9PC := 61.
        ].
        block28126964Block9Step = 61 ifTrue: [
            block28126964Block9Result := block28126964Block9Stack1.
            block28126964Block9Done := true.
        ].
    ].
    block28126964Block9Result
].
    block28126964Value3 := (block28126964Value1) do: (block28126964Value2).
    block28126964Value3
].
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack0 := (recoveredStack0) skipFurtherAnalysis.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

