"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002718; bytecode file offset 0x8ffcfc"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
checkBDETempVariableDoesNotContainSideEffects
    ^self
! !

"ASDBase.ic method 0x20004080; bytecode file offset 0x90206c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
importAll: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004110; bytecode file offset 0x90206c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
tempVarInfo: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200046b0; bytecode file offset 0x90206c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
additionalMethodAnalysis: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a30; bytecode file offset 0x90206c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
obsolete: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005008; bytecode file offset 0x90206c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
comment: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200058b0; bytecode file offset 0x902744"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analyzeVariables: recoveredArg1 block: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006558; bytecode file offset 0x902ecc"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
propagateImpl: recoveredArg1 from: recoveredArg2 attributes: recoveredArg3 constantValue: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x2000d52c; bytecode file offset 0x909e08"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
tempVarRequired: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d94c; bytecode file offset 0x90a4b8"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
semAnaNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f39c; bytecode file offset 0x90bc70"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analysisInfoForBody: recoveredArg1 method: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x20029644; bytecode file offset 0x934580"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
configForModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) configForModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e044; bytecode file offset 0x934580"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
sgClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfigForModule.
    recoveredValue1 := (recoveredValue0) sgClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031464; bytecode file offset 0x934580"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicModel.
    recoveredValue1 := (recoveredValue0) currentMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c9d8; bytecode file offset 0x93bf94"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
makeConfigForModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) makeConfigForModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cae8; bytecode file offset 0x93bf94"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
logicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentLogicModel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e288; bytecode file offset 0x93bf94"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
logicManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ecb8; bytecode file offset 0x93bf94"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
specification
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentModelSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070fc8; bytecode file offset 0x96d87c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctAccessTable
    | recoveredValue0 |
    recoveredValue0 := ctAccessTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007100c; bytecode file offset 0x96d928"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctLinkTable
    | recoveredValue0 |
    recoveredValue0 := ctLinkTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071098; bytecode file offset 0x96d9d4"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctMacroAccessTable
    | recoveredValue0 |
    recoveredValue0 := ctMacroAccessTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071194; bytecode file offset 0x96da70"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctSymbolTable
    | recoveredValue0 |
    recoveredValue0 := ctSymbolTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075384; bytecode file offset 0x9757c8"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
isLmBlockAnalyzer
    ^true
! !

"ASDBase.ic method 0x200835f4; bytecode file offset 0x97ff54"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
literalId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) id: (recoveredValue0) warnMissingEnum: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20084204; bytecode file offset 0x981ca4"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
pushImplCast: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086110; bytecode file offset 0x982a70"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
lookupVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentMethod.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlKey.
    recoveredValue3 := (recoveredValue0) lookupVariable: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097e84; bytecode file offset 0x995850"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analyzeIdCt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSymbolTable.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) readAccessToCt: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bd464; bytecode file offset 0x9b9d70"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
lookupLocalVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) currentMethod.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlKey.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) lookupLocalVar: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d6234; bytecode file offset 0x9d3134"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
baseInitialize
    super baseInitialize.
    (self) resetCtTables.
    ^self
! !

"ASDBase.ic method 0x200dcba8; bytecode file offset 0x9d9468"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
undeclaredId: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) accessChain.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) makeNoVarDecl: (recoveredValue2).
    (recoveredValue1) addFirst: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de9d4; bytecode file offset 0x9db320"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
propagateMdlClass: recoveredArg1 varName: recoveredArg2 attributes: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) propagateMdlClass: (recoveredValue1) varName: (recoveredValue2) attributes: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011823c; bytecode file offset 0xa14cb0"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
needsCtAnalyzing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) specification.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCTSpec.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicModel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isASDLUnit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013309c; bytecode file offset 0xa2f964"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
tempVarId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super tempVarId: (recoveredValue0).
    recoveredValue1 := (self) usedTempVars.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) errLabel.
    (recoveredValue1) at: (recoveredValue3) put: (true).
    ^self
! !

"ASDBase.ic method 0x20140ba4; bytecode file offset 0xa3d480"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
endMethod
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super endMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) endMethodCt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201463e8; bytecode file offset 0xa42d14"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctaWarningNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue3) category: ('Cta') source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20146448; bytecode file offset 0xa42d14"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctaSemErrNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) source.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue3) category: ('Cta') source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014e8f0; bytecode file offset 0xa4b1a4"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
resetCtTables
    ctAccessTable := nil.
    ctLinkTable := nil.
    ctMacroAccessTable := nil.
    ctSymbolTable := nil.
    ctDataModelStateTable := nil.
    ^self
! !

"ASDBase.ic method 0x2015747c; bytecode file offset 0xa53fc8"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctaWarningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue4) category: ('Cta') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201575fc; bytecode file offset 0xa53fc8"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctaSemErrNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Cta') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20175c6c; bytecode file offset 0xa7252c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analyzeId: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlTempVar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
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
            (recoveredStack0) analyzeIdCt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179890; bytecode file offset 0xa7623c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctaSemErrNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue5) category: ('Cta') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201a9b08; bytecode file offset 0xaa6408"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
ctaSemErrNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := recoveredArg6.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue7) category: ('Cta') source: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201acda0; bytecode file offset 0xaa9668"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super checkForSpecialCall: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSymbolTable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) writeAccessToCt: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e63b0; bytecode file offset 0xae2c8c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
pushUnaryArithmetic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGMdUnaryArithmeticExpr.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) popExpr.
    (recoveredValue3) child: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) mdlRealType.
    (recoveredValue5) mdlClass: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue2) operator: (recoveredValue8).
    (self) pushStack: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202038e0; bytecode file offset 0xb001a8"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
checkContinuosState: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupVariable: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContinuous.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 45.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ctaSemErrNo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023f3e0; bytecode file offset 0xb3bcd4"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
import: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) importList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) importList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) mdlSemErrAlreadyDeclaredClass: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) importList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) decl: (recoveredStack1) id: (recoveredStack2) ifFail: (recoveredStack3).
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

"ASDBase.ic method 0x2027da6c; bytecode file offset 0xb7a338"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
pushMacroCall: recoveredArg1 args: recoveredArg2 receiver: recoveredArg3 inArgList: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) analyzeForCtMarcoCall: (recoveredStack1) args: (recoveredStack2) receiver: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            super pushMacroCall: (recoveredStack1) args: (recoveredStack2) receiver: (recoveredStack3) inArgList: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20328aa0; bytecode file offset 0xc2537c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
initializeDataModelStateTable
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) logicManager.
    recoveredValue3 := (recoveredValue2) instVarsOfClass.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) dataModelRef.
    recoveredBlock12Value2 := recoveredBlock12Value1.
    recoveredLocal1 := recoveredBlock12Value2.
    recoveredBlock12Value3 := [
    | recoveredBlock12Block27Value0 recoveredBlock12Block27Value1 recoveredBlock12Block27Value2 recoveredBlock12Block27Value3 recoveredBlock12Block27Value4 recoveredBlock12Block27Value5 |
    recoveredBlock12Block27Value0 := recoveredLocal2.
    recoveredBlock12Block27Value1 := recoveredBlock12Arg1.
    recoveredBlock12Block27Value2 := (recoveredBlock12Block27Value1) mdlKey.
    recoveredBlock12Block27Value3 := recoveredLocal1.
    recoveredBlock12Block27Value4 := (recoveredBlock12Block27Value3) isCTDirect.
    recoveredBlock12Block27Value5 := (recoveredBlock12Block27Value0) at: (recoveredBlock12Block27Value2) put: (recoveredBlock12Block27Value4).
    recoveredBlock12Block27Value5
].
    recoveredBlock12Value4 := (recoveredBlock12Value1) notNil: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203a0990; bytecode file offset 0xc9d284"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analyzeForCtMarcoCall: recoveredArg1 args: recoveredArg2 receiver: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctMacroAccessTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block280f4344Value0 block280f4344Value1 |
    block280f4344Value0 := Dictionary.
    block280f4344Value1 := (block280f4344Value0) new.
    block280f4344Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    '+'
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 66.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ctaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := '_get*'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) analyzeIdCt: (recoveredStack1).
            recoveredPC := 74.
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

"ASDBase.ic method 0x203e1190; bytecode file offset 0xcdda84"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
postCTAnalyzing
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71072'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarsOfClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) dataModelRef.
    recoveredBlock18Value2 := recoveredBlock18Value1.
    recoveredLocal1 := recoveredBlock18Value2.
    recoveredBlock18Value3 := [
    | recoveredBlock18Block33Stack0 recoveredBlock18Block33Stack1 recoveredBlock18Block33Stack2 recoveredBlock18Block33Stack3 recoveredBlock18Block33Stack4 recoveredBlock18Block33Stack5 recoveredBlock18Block33PC recoveredBlock18Block33Step recoveredBlock18Block33Done recoveredBlock18Block33Result |
    recoveredBlock18Block33Stack0 := self.
    recoveredBlock18Block33PC := 40.
    recoveredBlock18Block33Done := false.
    [recoveredBlock18Block33Done not] whileTrue: [
        recoveredBlock18Block33Step := recoveredBlock18Block33PC.
        recoveredBlock18Block33Step = 40 ifTrue: [
            recoveredBlock18Block33Stack1 := nil.
            recoveredBlock18Block33PC := 41.
        ].
        recoveredBlock18Block33Step = 41 ifTrue: [
            recoveredBlock18Block33Stack2 := ctDataModelStateTable.
            recoveredBlock18Block33PC := 43.
        ].
        recoveredBlock18Block33Step = 43 ifTrue: [
            recoveredBlock18Block33Stack3 := recoveredBlock18Arg1.
            recoveredBlock18Block33PC := 46.
        ].
        recoveredBlock18Block33Step = 46 ifTrue: [
            recoveredBlock18Block33Stack3 := (recoveredBlock18Block33Stack3) mdlKey.
            recoveredBlock18Block33PC := 48.
        ].
        recoveredBlock18Block33Step = 48 ifTrue: [
            recoveredBlock18Block33Stack4 := [].
            recoveredBlock18Block33PC := 50.
        ].
        recoveredBlock18Block33Step = 50 ifTrue: [
            recoveredBlock18Block33Stack2 := (recoveredBlock18Block33Stack2) at: (recoveredBlock18Block33Stack3) ifAbsent: (recoveredBlock18Block33Stack4).
            recoveredBlock18Block33PC := 52.
        ].
        recoveredBlock18Block33Step = 52 ifTrue: [
            recoveredBlock18Block33Stack3 := recoveredLocal1.
            recoveredBlock18Block33PC := 55.
        ].
        recoveredBlock18Block33Step = 55 ifTrue: [
            recoveredBlock18Block33Stack3 := (recoveredBlock18Block33Stack3) isCTDirect.
            recoveredBlock18Block33PC := 57.
        ].
        recoveredBlock18Block33Step = 57 ifTrue: [
            (recoveredBlock18Block33Stack2 == recoveredBlock18Block33Stack3) ifTrue: [recoveredBlock18Block33PC := 80] ifFalse: [recoveredBlock18Block33PC := 60].
        ].
        recoveredBlock18Block33Step = 60 ifTrue: [
            recoveredBlock18Block33PC := 61.
        ].
        recoveredBlock18Block33Step = 61 ifTrue: [
            recoveredBlock18Block33Stack1 := self.
            recoveredBlock18Block33PC := 62.
        ].
        recoveredBlock18Block33Step = 62 ifTrue: [
            recoveredBlock18Block33Stack1 := (recoveredBlock18Block33Stack1) sgClass.
            recoveredBlock18Block33PC := 64.
        ].
        recoveredBlock18Block33Step = 64 ifTrue: [
            recoveredBlock18Block33Stack1 := (recoveredBlock18Block33Stack1) specifications.
            recoveredBlock18Block33PC := 66.
        ].
        recoveredBlock18Block33Step = 66 ifTrue: [
            recoveredBlock18Block33Stack2 := [:block280f8418Arg1 | 
    | block280f8418Value0 block280f8418Value1 |
    block280f8418Value0 := block280f8418Arg1.
    block280f8418Value1 := (block280f8418Value0) updateMethodsTimeStamp.
    block280f8418Value1
].
            recoveredBlock18Block33PC := 68.
        ].
        recoveredBlock18Block33Step = 68 ifTrue: [
            recoveredBlock18Block33PC := 76.
        ].
        recoveredBlock18Block33Step = 76 ifTrue: [
            (recoveredBlock18Block33Stack1) do: (recoveredBlock18Block33Stack2).
            recoveredBlock18Block33PC := 78.
        ].
        recoveredBlock18Block33Step = 78 ifTrue: [
            recoveredBlock18Block33Stack1 := self.
            recoveredBlock18Block33PC := 79.
        ].
        recoveredBlock18Block33Step = 79 ifTrue: [
            ^recoveredBlock18Block33Stack1
        ].
        recoveredBlock18Block33Step = 80 ifTrue: [
            recoveredBlock18Block33Result := recoveredBlock18Block33Stack1.
            recoveredBlock18Block33Done := true.
        ].
    ].
    recoveredBlock18Block33Result
].
    recoveredBlock18Value4 := (recoveredBlock18Value1) notNil: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e16cc; bytecode file offset 0xcddfb4"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
kindLabel: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'ddt*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock42Value0 |
    recoveredBlock42Value0 := recoveredArg1.
    (self) ctaSemErrNo: (60) with: (recoveredBlock42Value0).
    ^'Unknown'
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookupVarLabel: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isContinuous.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Derivative'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'Unknown'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookupVariable: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) kindLabel.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e38f0; bytecode file offset 0xce01e4"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
setDirectLinkInfo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftHandSide.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessRoot.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupVarLabel: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctLinkTable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDirectLinkLookup: (recoveredStack1) or: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) nondirectOutputMethodName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ctaWarningNo: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) directOutputMethodName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 51.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ctaWarningNo: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) directOutputMethodName.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) changeDirectNoTimeStampTo: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e8b84; bytecode file offset 0xce5474"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analyzeAssign: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftHandSide.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTempVar.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIndexedExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookupLocalVar: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsCtAnalyzing.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctLinkTable.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) assignExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) ctLinkTable.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := (recoveredStack5) logicManager.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasDirectLinkLookup: (recoveredStack4) or: (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) analyzeAssignCt: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040b2c0; bytecode file offset 0xd07bc0"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
preCtAnalyzing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCtAnalyzing.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_71072'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeAccessTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ctAccessTable := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ctLinkTable := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeMacroAccessTable.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ctMacroAccessTable := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := SGCgSymbolTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ctSymbolTable := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeDataModelStateTable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ctDataModelStateTable := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarsOfClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280fac74Arg1 | 
    | block280fac74Local1 block280fac74Value0 block280fac74Value1 block280fac74Value2 block280fac74Value3 block280fac74Value4 |
    block280fac74Value0 := block280fac74Arg1.
    block280fac74Value1 := (block280fac74Value0) dataModelRef.
    block280fac74Value2 := block280fac74Value1.
    block280fac74Local1 := block280fac74Value2.
    block280fac74Value3 := [
    | block280fac74Block13Stack0 block280fac74Block13Stack1 block280fac74Block13Stack2 block280fac74Block13Stack3 block280fac74Block13PC block280fac74Block13Step block280fac74Block13Done block280fac74Block13Result |
    block280fac74Block13Stack0 := nil.
    block280fac74Block13PC := 20.
    block280fac74Block13Done := false.
    [block280fac74Block13Done not] whileTrue: [
        block280fac74Block13Step := block280fac74Block13PC.
        block280fac74Block13Step = 20 ifTrue: [
            block280fac74Block13Stack1 := nil.
            block280fac74Block13PC := 21.
        ].
        block280fac74Block13Step = 21 ifTrue: [
            block280fac74Block13Stack2 := block280fac74Local1.
            block280fac74Block13PC := 24.
        ].
        block280fac74Block13Step = 24 ifTrue: [
            block280fac74Block13Stack2 := (block280fac74Block13Stack2) isCTOutput.
            block280fac74Block13PC := 26.
        ].
        block280fac74Block13Step = 26 ifTrue: [
            (block280fac74Block13Stack2) ifTrue: [block280fac74Block13PC := 30] ifFalse: [block280fac74Block13PC := 37].
        ].
        block280fac74Block13Step = 30 ifTrue: [
            block280fac74Block13PC := 31.
        ].
        block280fac74Block13Step = 31 ifTrue: [
            block280fac74Block13Stack1 := block280fac74Local1.
            block280fac74Block13PC := 34.
        ].
        block280fac74Block13Step = 34 ifTrue: [
            block280fac74Block13Stack2 := false.
            block280fac74Block13PC := 35.
        ].
        block280fac74Block13Step = 35 ifTrue: [
            block280fac74Block13Stack1 := (block280fac74Block13Stack1) changeDirectNoTimeStampTo: (block280fac74Block13Stack2).
            block280fac74Block13PC := 37.
        ].
        block280fac74Block13Step = 37 ifTrue: [
            block280fac74Block13Result := block280fac74Block13Stack1.
            block280fac74Block13Done := true.
        ].
    ].
    block280fac74Block13Result
].
    block280fac74Value4 := (block280fac74Value1) notNil: (block280fac74Value3).
    block280fac74Value4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) resetCtTables.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042c8e8; bytecode file offset 0xd291e8"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
updateLinkTable: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftHandSide.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessRoot.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) ctLinkTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasDirectLinkLookup: (recoveredStack2) or: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctLinkTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) kindLabel: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Input'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctLinkTable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctLinkTable.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) kindLabel: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Output'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 52.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftHandSide.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ctaWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupVariable: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) changeDirectNoTimeStampTo: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204866f0; bytecode file offset 0xd83004"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
endMethodCt
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) ctSymbolTable.
    recoveredValue1 := (recoveredValue0) varsReadAccess.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6Stack6 recoveredBlock6Stack7 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlKey.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) kindLabel: (recoveredBlock6Stack1).
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) currentMethod.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) mdlLabel.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) ctAccessTable.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal2.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack2 := [
    | block28102ce8Value0 block28102ce8Value1 |
    block28102ce8Value0 := Dictionary.
    block28102ce8Value1 := (block28102ce8Value0) new.
    block28102ce8Value1
].
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1) ifAbsent: (recoveredBlock6Stack2).
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal3.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack2 := [
    'rw'
].
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1) ifAbsent: (recoveredBlock6Stack2).
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 66.
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack2 := $r.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) includes: (recoveredBlock6Stack2).
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 99] ifFalse: [recoveredBlock6PC := 76].
        ].
        recoveredBlock6Step = 76 ifTrue: [
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 78.
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack1 := 33.
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack2 := 'read'.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal3.
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) asLowercase.
            recoveredBlock6PC := 87.
        ].
        recoveredBlock6Step = 87 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 88.
        ].
        recoveredBlock6Step = 88 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) errLabel.
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Stack5 := recoveredLocal2.
            recoveredBlock6PC := 93.
        ].
        recoveredBlock6Step = 93 ifTrue: [
            recoveredBlock6Stack6 := recoveredBlock6Arg1.
            recoveredBlock6PC := 94.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            recoveredBlock6Stack6 := (recoveredBlock6Stack6) source.
            recoveredBlock6PC := 96.
        ].
        recoveredBlock6Step = 96 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) ctaSemErrNo: (recoveredBlock6Stack1) with: (recoveredBlock6Stack2) with: (recoveredBlock6Stack3) with: (recoveredBlock6Stack4) with: (recoveredBlock6Stack5) source: (recoveredBlock6Stack6).
            recoveredBlock6PC := 99.
        ].
        recoveredBlock6Step = 99 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) ctSymbolTable.
    (recoveredValue3) reset.
    recoveredValue4 := (self) currentMethod.
    recoveredValue5 := (recoveredValue4) locals.
    recoveredValue6 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 |
    recoveredBlock111Value0 := (self) ctLinkTable.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value0) at: (recoveredBlock111Value1) put: (nil).
    recoveredBlock111Value2
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x204ec2a8; bytecode file offset 0xde8be0"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
analyzeAssignCt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTextMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMethodCall.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftHandSide.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIndexedExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftHandSide.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) exprChild.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftHandSide.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSymbolTable.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) writeAccessToCt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) updateLinkTable: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftHandSide.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessRoot.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) kindLabel: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'Derivative'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) checkDerivative.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'Output'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) setDirectLinkInfo: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctAccessTable.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := [
    | block28109324Value0 block28109324Value1 |
    block28109324Value0 := Dictionary.
    block28109324Value1 := (block28109324Value0) new.
    block28109324Value1
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [
    'rw'
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := $w.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 33.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 'write'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) variable.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) accessRoot.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ctaSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) source: (recoveredStack6).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205193cc; bytecode file offset 0xe15cc0"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
initializeMacroAccessTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) at: ('init') put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := Dictionary.
    recoveredValue8 := (recoveredValue7) new.
    (recoveredValue6) at: ('derivatives') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := Dictionary.
    recoveredValue11 := (recoveredValue10) new.
    (recoveredValue9) at: ('update') put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := Dictionary.
    recoveredValue14 := (recoveredValue13) new.
    (recoveredValue12) at: ('directOutputs') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := Dictionary.
    recoveredValue17 := (recoveredValue16) new.
    (recoveredValue15) at: ('nondirectOutputs') put: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := Dictionary.
    recoveredValue20 := (recoveredValue19) new.
    (recoveredValue18) at: ('terminate') put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := Dictionary.
    recoveredValue23 := (recoveredValue22) new.
    (recoveredValue21) at: ('events') put: (recoveredValue23).
    recoveredValue24 := recoveredValue2.
    recoveredValue25 := Dictionary.
    recoveredValue26 := (recoveredValue25) new.
    (recoveredValue24) at: ('dependentParameters') put: (recoveredValue26).
    recoveredValue27 := Dictionary.
    recoveredValue28 := (recoveredValue27) new.
    (recoveredValue2) at: ('stateEvents') put: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue29) at: ('derivatives').
    recoveredValue31 := recoveredValue30.
    (recoveredValue31) at: ('resetContinuousState') put: ('-').
    (recoveredValue30) at: ('resetCTSolver') put: ('-').
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := (recoveredValue32) at: ('directOutputs').
    recoveredValue34 := recoveredValue33.
    (recoveredValue34) at: ('resetContinuousState') put: ('-').
    (recoveredValue33) at: ('resetCTSolver') put: ('-').
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue35) at: ('nondirectOutputs').
    recoveredValue37 := recoveredValue36.
    (recoveredValue37) at: ('resetContinuousState') put: ('-').
    (recoveredValue36) at: ('resetCTSolver') put: ('-').
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := (recoveredValue38) at: ('terminate').
    recoveredValue40 := recoveredValue39.
    (recoveredValue40) at: ('resetContinuousState') put: ('-').
    (recoveredValue39) at: ('resetCTSolver') put: ('-').
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := (recoveredValue41) at: ('events').
    recoveredValue43 := recoveredValue42.
    (recoveredValue43) at: ('resetContinuousState') put: ('-').
    (recoveredValue42) at: ('resetCTSolver') put: ('-').
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue44) at: ('dependentParameters').
    recoveredValue46 := recoveredValue45.
    (recoveredValue46) at: ('resetContinuousState') put: ('-').
    (recoveredValue45) at: ('resetCTSolver') put: ('-').
    recoveredValue47 := recoveredLocal1.
    ^recoveredValue47
! !

"ASDBase.ic method 0x2063cf84; bytecode file offset 0xf3989c"
!SGLmBlockAnalyzer methodsFor: 'recovered'!
initializeAccessTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) at: ('init') put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := Dictionary.
    recoveredValue8 := (recoveredValue7) new.
    (recoveredValue6) at: ('derivatives') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := Dictionary.
    recoveredValue11 := (recoveredValue10) new.
    (recoveredValue9) at: ('update') put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := Dictionary.
    recoveredValue14 := (recoveredValue13) new.
    (recoveredValue12) at: ('directOutputs') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := Dictionary.
    recoveredValue17 := (recoveredValue16) new.
    (recoveredValue15) at: ('nondirectOutputs') put: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := Dictionary.
    recoveredValue20 := (recoveredValue19) new.
    (recoveredValue18) at: ('terminate') put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := Dictionary.
    recoveredValue23 := (recoveredValue22) new.
    (recoveredValue21) at: ('events') put: (recoveredValue23).
    recoveredValue24 := recoveredValue2.
    recoveredValue25 := Dictionary.
    recoveredValue26 := (recoveredValue25) new.
    (recoveredValue24) at: ('dependentParameters') put: (recoveredValue26).
    recoveredValue27 := Dictionary.
    recoveredValue28 := (recoveredValue27) new.
    (recoveredValue2) at: ('stateEvents') put: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue29) at: ('init').
    recoveredValue31 := recoveredValue30.
    (recoveredValue31) at: ('Input') put: ('r').
    recoveredValue32 := recoveredValue30.
    (recoveredValue32) at: ('Output') put: ('rw').
    recoveredValue33 := recoveredValue30.
    (recoveredValue33) at: ('DiscreteState') put: ('rw').
    recoveredValue34 := recoveredValue30.
    (recoveredValue34) at: ('ContinuousState') put: ('r').
    recoveredValue35 := recoveredValue30.
    (recoveredValue35) at: ('Derivative') put: ('').
    recoveredValue36 := recoveredValue30.
    (recoveredValue36) at: ('Steplocal') put: ('rw').
    recoveredValue37 := recoveredValue30.
    (recoveredValue37) at: ('Parameter') put: ('r').
    recoveredValue38 := recoveredValue30.
    (recoveredValue38) at: ('DependentParameter') put: ('r').
    (recoveredValue30) at: ('Constant') put: ('r').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (recoveredValue39) at: ('derivatives').
    recoveredValue41 := recoveredValue40.
    (recoveredValue41) at: ('Input') put: ('r').
    recoveredValue42 := recoveredValue40.
    (recoveredValue42) at: ('Output') put: ('rw').
    recoveredValue43 := recoveredValue40.
    (recoveredValue43) at: ('DiscreteState') put: ('r').
    recoveredValue44 := recoveredValue40.
    (recoveredValue44) at: ('ContinuousState') put: ('r').
    recoveredValue45 := recoveredValue40.
    (recoveredValue45) at: ('Derivative') put: ('rw').
    recoveredValue46 := recoveredValue40.
    (recoveredValue46) at: ('Steplocal') put: ('rw').
    recoveredValue47 := recoveredValue40.
    (recoveredValue47) at: ('Parameter') put: ('r').
    recoveredValue48 := recoveredValue40.
    (recoveredValue48) at: ('DependentParameter') put: ('r').
    (recoveredValue40) at: ('Constant') put: ('r').
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue49) at: ('update').
    recoveredValue51 := recoveredValue50.
    (recoveredValue51) at: ('Input') put: ('r').
    recoveredValue52 := recoveredValue50.
    (recoveredValue52) at: ('Output') put: ('rw').
    recoveredValue53 := recoveredValue50.
    (recoveredValue53) at: ('DiscreteState') put: ('rw').
    recoveredValue54 := recoveredValue50.
    (recoveredValue54) at: ('ContinuousState') put: ('').
    recoveredValue55 := recoveredValue50.
    (recoveredValue55) at: ('Derivative') put: ('').
    recoveredValue56 := recoveredValue50.
    (recoveredValue56) at: ('Steplocal') put: ('rw').
    recoveredValue57 := recoveredValue50.
    (recoveredValue57) at: ('Parameter') put: ('r').
    recoveredValue58 := recoveredValue50.
    (recoveredValue58) at: ('DependentParameter') put: ('r').
    (recoveredValue50) at: ('Constant') put: ('r').
    recoveredValue59 := recoveredLocal1.
    recoveredValue60 := (recoveredValue59) at: ('directOutputs').
    recoveredValue61 := recoveredValue60.
    (recoveredValue61) at: ('Input') put: ('r').
    recoveredValue62 := recoveredValue60.
    (recoveredValue62) at: ('Output') put: ('rw').
    recoveredValue63 := recoveredValue60.
    (recoveredValue63) at: ('DiscreteState') put: ('r').
    recoveredValue64 := recoveredValue60.
    (recoveredValue64) at: ('ContinuousState') put: ('r').
    recoveredValue65 := recoveredValue60.
    (recoveredValue65) at: ('Derivative') put: ('').
    recoveredValue66 := recoveredValue60.
    (recoveredValue66) at: ('Steplocal') put: ('rw').
    recoveredValue67 := recoveredValue60.
    (recoveredValue67) at: ('Parameter') put: ('r').
    recoveredValue68 := recoveredValue60.
    (recoveredValue68) at: ('DependentParameter') put: ('r').
    (recoveredValue60) at: ('Constant') put: ('r').
    recoveredValue69 := recoveredLocal1.
    recoveredValue70 := (recoveredValue69) at: ('nondirectOutputs').
    recoveredValue71 := recoveredValue70.
    (recoveredValue71) at: ('Input') put: ('r').
    recoveredValue72 := recoveredValue70.
    (recoveredValue72) at: ('Output') put: ('rw').
    recoveredValue73 := recoveredValue70.
    (recoveredValue73) at: ('DiscreteState') put: ('r').
    recoveredValue74 := recoveredValue70.
    (recoveredValue74) at: ('ContinuousState') put: ('r').
    recoveredValue75 := recoveredValue70.
    (recoveredValue75) at: ('Derivative') put: ('').
    recoveredValue76 := recoveredValue70.
    (recoveredValue76) at: ('Steplocal') put: ('rw').
    recoveredValue77 := recoveredValue70.
    (recoveredValue77) at: ('Parameter') put: ('r').
    recoveredValue78 := recoveredValue70.
    (recoveredValue78) at: ('DependentParameter') put: ('r').
    (recoveredValue70) at: ('Constant') put: ('r').
    recoveredValue79 := recoveredLocal1.
    recoveredValue80 := (recoveredValue79) at: ('terminate').
    recoveredValue81 := recoveredValue80.
    (recoveredValue81) at: ('Input') put: ('r').
    recoveredValue82 := recoveredValue80.
    (recoveredValue82) at: ('Output') put: ('rw').
    recoveredValue83 := recoveredValue80.
    (recoveredValue83) at: ('DiscreteState') put: ('rw').
    recoveredValue84 := recoveredValue80.
    (recoveredValue84) at: ('ContinuousState') put: ('r').
    recoveredValue85 := recoveredValue80.
    (recoveredValue85) at: ('Derivative') put: ('').
    recoveredValue86 := recoveredValue80.
    (recoveredValue86) at: ('Steplocal') put: ('rw').
    recoveredValue87 := recoveredValue80.
    (recoveredValue87) at: ('Parameter') put: ('r').
    recoveredValue88 := recoveredValue80.
    (recoveredValue88) at: ('DependentParameter') put: ('r').
    (recoveredValue80) at: ('Constant') put: ('r').
    recoveredValue89 := recoveredLocal1.
    recoveredValue90 := (recoveredValue89) at: ('events').
    recoveredValue91 := recoveredValue90.
    (recoveredValue91) at: ('Input') put: ('r').
    recoveredValue92 := recoveredValue90.
    (recoveredValue92) at: ('Output') put: ('rw').
    recoveredValue93 := recoveredValue90.
    (recoveredValue93) at: ('DiscreteState') put: ('rw').
    recoveredValue94 := recoveredValue90.
    (recoveredValue94) at: ('ContinuousState') put: ('r').
    recoveredValue95 := recoveredValue90.
    (recoveredValue95) at: ('Derivative') put: ('').
    recoveredValue96 := recoveredValue90.
    (recoveredValue96) at: ('Steplocal') put: ('rw').
    recoveredValue97 := recoveredValue90.
    (recoveredValue97) at: ('Parameter') put: ('r').
    recoveredValue98 := recoveredValue90.
    (recoveredValue98) at: ('DependentParameter') put: ('r').
    (recoveredValue90) at: ('Constant') put: ('r').
    recoveredValue99 := recoveredLocal1.
    recoveredValue100 := (recoveredValue99) at: ('dependentParameters').
    recoveredValue101 := recoveredValue100.
    (recoveredValue101) at: ('Input') put: ('').
    recoveredValue102 := recoveredValue100.
    (recoveredValue102) at: ('Output') put: ('rw').
    recoveredValue103 := recoveredValue100.
    (recoveredValue103) at: ('DiscreteState') put: ('rw').
    recoveredValue104 := recoveredValue100.
    (recoveredValue104) at: ('ContinuousState') put: ('').
    recoveredValue105 := recoveredValue100.
    (recoveredValue105) at: ('Derivative') put: ('').
    recoveredValue106 := recoveredValue100.
    (recoveredValue106) at: ('Steplocal') put: ('').
    recoveredValue107 := recoveredValue100.
    (recoveredValue107) at: ('Parameter') put: ('r').
    recoveredValue108 := recoveredValue100.
    (recoveredValue108) at: ('DependentParameter') put: ('rw').
    (recoveredValue100) at: ('Constant') put: ('r').
    recoveredValue109 := recoveredLocal1.
    recoveredValue110 := (recoveredValue109) at: ('stateEvents').
    recoveredValue111 := recoveredValue110.
    (recoveredValue111) at: ('Input') put: ('r').
    recoveredValue112 := recoveredValue110.
    (recoveredValue112) at: ('Output') put: ('rw').
    recoveredValue113 := recoveredValue110.
    (recoveredValue113) at: ('DiscreteState') put: ('rw').
    recoveredValue114 := recoveredValue110.
    (recoveredValue114) at: ('ContinuousState') put: ('r').
    recoveredValue115 := recoveredValue110.
    (recoveredValue115) at: ('Derivative') put: ('').
    recoveredValue116 := recoveredValue110.
    (recoveredValue116) at: ('Steplocal') put: ('rw').
    recoveredValue117 := recoveredValue110.
    (recoveredValue117) at: ('Parameter') put: ('r').
    recoveredValue118 := recoveredValue110.
    (recoveredValue118) at: ('DependentParameter') put: ('r').
    (recoveredValue110) at: ('Constant') put: ('r').
    recoveredValue119 := recoveredLocal1.
    ^recoveredValue119
! !

