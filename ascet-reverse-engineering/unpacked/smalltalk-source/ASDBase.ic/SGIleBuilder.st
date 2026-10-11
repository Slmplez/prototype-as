"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004a70; bytecode file offset 0x90206c"
!SGIleBuilder methodsFor: 'recovered'!
allowDoubleBitSizeDivisionResult: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005ac8; bytecode file offset 0x902744"
!SGIleBuilder methodsFor: 'recovered'!
ileAssertType: recoveredArg1 canStore: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20007fa0; bytecode file offset 0x908be4"
!SGIleBuilder methodsFor: 'recovered'!
generalOptimizationStrategy
    | recoveredValue0 |
    recoveredValue0 := (self) optimizationFactory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cddc; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateDivIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000ce04; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateMulIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000ce24; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateNegIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cebc; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateRemIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cfcc; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateAbsIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d0e4; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateSubIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d174; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateAddIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d19c; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateMaxIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d1bc; bytecode file offset 0x909ab8"
!SGIleBuilder methodsFor: 'recovered'!
calculateMinIntervalFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d784; bytecode file offset 0x90a4b8"
!SGIleBuilder methodsFor: 'recovered'!
createTypeImplAware: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f58c; bytecode file offset 0x90bef8"
!SGIleBuilder methodsFor: 'recovered'!
ileCopyLimitAttributesArithOpExpr: recoveredArg1 originalExpr: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f604; bytecode file offset 0x90bef8"
!SGIleBuilder methodsFor: 'recovered'!
createIleTypeFromImplType: recoveredArg1 interval: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027144; bytecode file offset 0x923a44"
!SGIleBuilder methodsFor: 'recovered'!
literalFalse
    | recoveredValue0 |
    recoveredValue0 := (self) createBoolConstant: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027214; bytecode file offset 0x923b14"
!SGIleBuilder methodsFor: 'recovered'!
createCCodeFragment
    | recoveredValue0 |
    recoveredValue0 := (self) createCCodeFragment: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200272fc; bytecode file offset 0x923d40"
!SGIleBuilder methodsFor: 'recovered'!
literalTrue
    | recoveredValue0 |
    recoveredValue0 := (self) createBoolConstant: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028304; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
optimizeOperatorSimplification
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) operatorSimplificationVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bde4; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
optimizeCommonSubexpression
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) expressionSimplificationVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cdb4; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
optimizeControlFlow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) optimizeControlFlowVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d224; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
optimizeConstantFoldingScalar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) constantFoldingScalarVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dd14; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
isIleExpansionPreparationPhase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isIleExpansionPreparationPhase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033924; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
emptyInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) emptyInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033b34; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
ileBooleanType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) ileBooleanType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036b94; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
optimizeOperatorSimplificationImplAware
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) operatorSimplificationImplAwareVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037044; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
usesArithOpServices
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) usesArithOpServices.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037894; bytecode file offset 0x934580"
!SGIleBuilder methodsFor: 'recovered'!
shiftForLiterals
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) shiftForLiterals.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aa00; bytecode file offset 0x938608"
!SGIleBuilder methodsFor: 'recovered'!
deltaTMethodBody: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createDeltaTMethodBody: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ad6c; bytecode file offset 0x938608"
!SGIleBuilder methodsFor: 'recovered'!
scalarConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createScalarConstant: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c09c; bytecode file offset 0x9389cc"
!SGIleBuilder methodsFor: 'recovered'!
limitExpr: recoveredArg1 toGoalInterval: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileLimitOverflow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ca78; bytecode file offset 0x93bf94"
!SGIleBuilder methodsFor: 'recovered'!
expansionFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpansionFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cc28; bytecode file offset 0x93bf94"
!SGIleBuilder methodsFor: 'recovered'!
optimizationFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlOptimizationFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dce8; bytecode file offset 0x93bf94"
!SGIleBuilder methodsFor: 'recovered'!
ileVoid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createVoidType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dd38; bytecode file offset 0x93bf94"
!SGIleBuilder methodsFor: 'recovered'!
transformationFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlTransformationFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e318; bytecode file offset 0x93bf94"
!SGIleBuilder methodsFor: 'recovered'!
createAnnotatedOperands
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlAnnotatedOperands.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ead8; bytecode file offset 0x93bf94"
!SGIleBuilder methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049acc; bytecode file offset 0x947128"
!SGIleBuilder methodsFor: 'recovered'!
breakStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createBreakStmnt.
    recoveredValue1 := (self) abstractControlFlowStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ac1c; bytecode file offset 0x947768"
!SGIleBuilder methodsFor: 'recovered'!
literalZero
    | recoveredValue0 |
    recoveredValue0 := (self) createIntConstant: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b190; bytecode file offset 0x947a60"
!SGIleBuilder methodsFor: 'recovered'!
literalOne
    | recoveredValue0 |
    recoveredValue0 := (self) createIntConstant: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004df7c; bytecode file offset 0x94d048"
!SGIleBuilder methodsFor: 'recovered'!
transformationNodeVisitorClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052ec0; bytecode file offset 0x9505d0"
!SGIleBuilder methodsFor: 'recovered'!
allowDoubleBitSizeDo: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053964; bytecode file offset 0x9505d0"
!SGIleBuilder methodsFor: 'recovered'!
disableFractionsDo: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053a9c; bytecode file offset 0x9505d0"
!SGIleBuilder methodsFor: 'recovered'!
allowAnySizeDo: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053c28; bytecode file offset 0x9505d0"
!SGIleBuilder methodsFor: 'recovered'!
enableVerbatimConstantsDo: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059c5c; bytecode file offset 0x9566ac"
!SGIleBuilder methodsFor: 'recovered'!
allowDoubleBitSizeDivisionResultDivExpr: recoveredArg1 do: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059cf8; bytecode file offset 0x9566ac"
!SGIleBuilder methodsFor: 'recovered'!
decorateExpr: recoveredArg1 goalInterval: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005a6ec; bytecode file offset 0x957a6c"
!SGIleBuilder methodsFor: 'recovered'!
createImplCastAssign: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005c744; bytecode file offset 0x959680"
!SGIleBuilder methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f5cc; bytecode file offset 0x95c4f4"
!SGIleBuilder methodsFor: 'recovered'!
createDummyExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) ileFloat64.
    recoveredValue2 := (self) createDummyExprType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064394; bytecode file offset 0x961970"
!SGIleBuilder methodsFor: 'recovered'!
setOptimizationPhase
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) setOptimizationPhase.
    ^self
! !

"ASDBase.ic method 0x20065d5c; bytecode file offset 0x963428"
!SGIleBuilder methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069b48; bytecode file offset 0x966bdc"
!SGIleBuilder methodsFor: 'recovered'!
comments
    | recoveredValue0 |
    recoveredValue0 := comments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074240; bytecode file offset 0x970b34"
!SGIleBuilder methodsFor: 'recovered'!
replaceFractionTransformationVisitorClassOrNil
    ^nil
! !

"ASDBase.ic method 0x2007708c; bytecode file offset 0x9757c8"
!SGIleBuilder methodsFor: 'recovered'!
allowFractions
    ^true
! !

"ASDBase.ic method 0x20082b1c; bytecode file offset 0x97f488"
!SGIleBuilder methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createDefaultStmnt: (recoveredValue0).
    recoveredValue2 := (self) abstractControlFlowStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082b9c; bytecode file offset 0x97f488"
!SGIleBuilder methodsFor: 'recovered'!
return: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createReturn: (recoveredValue0).
    recoveredValue2 := (self) abstractControlFlowStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082bac; bytecode file offset 0x97f488"
!SGIleBuilder methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createExit: (recoveredValue0).
    recoveredValue2 := (self) abstractControlFlowStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083720; bytecode file offset 0x980230"
!SGIleBuilder methodsFor: 'recovered'!
createReturn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createReturn: (recoveredValue0) attributes: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200838f4; bytecode file offset 0x980230"
!SGIleBuilder methodsFor: 'recovered'!
tempVar: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tempVar: (recoveredValue0) tempName: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008390c; bytecode file offset 0x980230"
!SGIleBuilder methodsFor: 'recovered'!
createFloatConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createFloatConstant: (recoveredValue0) type: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083924; bytecode file offset 0x980230"
!SGIleBuilder methodsFor: 'recovered'!
createRepresentableFraction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createRepresentableFraction: (recoveredValue0) roundToInfinity: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083930; bytecode file offset 0x980230"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createIntConstant: (recoveredValue0) roundToInfinity: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20086d94; bytecode file offset 0x98376c"
!SGIleBuilder methodsFor: 'recovered'!
createScalarConstant: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createScalarBaseConstant: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087114; bytecode file offset 0x9839e0"
!SGIleBuilder methodsFor: 'recovered'!
scalarConstant: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createScalarConstant: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) createOpType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200923b4; bytecode file offset 0x98ed78"
!SGIleBuilder methodsFor: 'recovered'!
createUnsignedImplTypeFromInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlObject.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createUnsignedImplTypeFromInterval: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20092490; bytecode file offset 0x98ed78"
!SGIleBuilder methodsFor: 'recovered'!
createImplTypeFromInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlObject.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createImplTypeFromInterval: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200943a0; bytecode file offset 0x990cac"
!SGIleBuilder methodsFor: 'recovered'!
tempAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGIlTempAssignedExpr.
    recoveredValue2 := (self) tempAssign: (recoveredValue0) class: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094f0c; bytecode file offset 0x991c58"
!SGIleBuilder methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statementSource.
    recoveredValue2 := (self) exprStmnt: (recoveredValue0) source: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094f6c; bytecode file offset 0x991c58"
!SGIleBuilder methodsFor: 'recovered'!
createCCodeFragment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) createCCodeFragment: (recoveredValue0) source: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095b50; bytecode file offset 0x99244c"
!SGIleBuilder methodsFor: 'recovered'!
createIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileElementKey.
    recoveredValue3 := (self) createIdentifier: (recoveredValue0) elementKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20095b80; bytecode file offset 0x99244c"
!SGIleBuilder methodsFor: 'recovered'!
createComplementServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := (self) createComplementServiceExpr: (recoveredValue0) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097198; bytecode file offset 0x993b34"
!SGIleBuilder methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createCommaExpr: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) anyExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200971ac; bytecode file offset 0x993b34"
!SGIleBuilder methodsFor: 'recovered'!
notExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createNotExpr: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) anyExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200971fc; bytecode file offset 0x993b34"
!SGIleBuilder methodsFor: 'recovered'!
goto: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createGoto: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) anyStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a758; bytecode file offset 0x997194"
!SGIleBuilder methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightConstant: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) optimizeConstantFoldingScalar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) remLeftConstant: (recoveredValue1) rightConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ba64; bytecode file offset 0x998320"
!SGIleBuilder methodsFor: 'recovered'!
emptyBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlEmptyBlock.
    recoveredValue1 := (recoveredValue0) createSource: (nil) comments: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ab374; bytecode file offset 0x9a7c34"
!SGIleBuilder methodsFor: 'recovered'!
abstractControlFlowStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (self) transformationFactory.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) anyStmnt: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ac4a8; bytecode file offset 0x9a8ea4"
!SGIleBuilder methodsFor: 'recovered'!
createIntervalLeft: recoveredArg1 right: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) left: (recoveredValue1) right: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acd0c; bytecode file offset 0x9a95c8"
!SGIleBuilder methodsFor: 'recovered'!
expr: recoveredArg1 caseStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createCaseStmnt: (recoveredValue0) expr: (recoveredValue1).
    recoveredValue3 := (self) abstractControlFlowStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acd64; bytecode file offset 0x9a9690"
!SGIleBuilder methodsFor: 'recovered'!
ifExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createIfExpr: (recoveredValue0) thenStmnt: (recoveredValue1).
    recoveredValue3 := (self) abstractControlFlowStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acd84; bytecode file offset 0x9a9690"
!SGIleBuilder methodsFor: 'recovered'!
exprStmnt: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createExprStmnt: (recoveredValue0) source: (recoveredValue1).
    recoveredValue3 := (self) abstractControlFlowStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acdc4; bytecode file offset 0x9a9690"
!SGIleBuilder methodsFor: 'recovered'!
return: recoveredArg1 attributes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createReturn: (recoveredValue0) attributes: (recoveredValue1).
    recoveredValue3 := (self) abstractControlFlowStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acdd4; bytecode file offset 0x9a9690"
!SGIleBuilder methodsFor: 'recovered'!
cppIfExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createCppIfExpr: (recoveredValue0) thenStmnt: (recoveredValue1).
    recoveredValue3 := (self) abstractControlFlowStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acf8c; bytecode file offset 0x9a9844"
!SGIleBuilder methodsFor: 'recovered'!
assignExpr: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createAssignLValue: (recoveredValue0) expr: (recoveredValue1) attributes: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad2d8; bytecode file offset 0x9a9bf0"
!SGIleBuilder methodsFor: 'recovered'!
createFloatConstant: recoveredArg1 roundToInfinity: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createFloatConstant: (recoveredValue0) type: (nil) roundToInfinity: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad4a4; bytecode file offset 0x9a9d5c"
!SGIleBuilder methodsFor: 'recovered'!
tempVar: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) tempVar: (recoveredValue0) type: (recoveredValue1) isMsgCopy: (false).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad4d4; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createMinLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createMinLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) type: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad504; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createMaxLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createMaxLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) type: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad510; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createNamedIdentifier: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createNamedIdentifier: (recoveredValue0) type: (recoveredValue1) derivedExpr: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad540; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
assignTempVar: recoveredArg1 stmntExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) assignTempVar: (recoveredValue0) stmntExpr: (recoveredValue1) fromTempAssignExpr: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad558; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createModelIdentifier: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createModelIdentifier: (recoveredValue0) type: (recoveredValue1) containsZero: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad5ac; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createFloatTypedIntConstant: recoveredArg1 intConstant: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createFloatTypedIntConstant: (recoveredValue0) intConstant: (recoveredValue1) type: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad5b8; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createFloatConstant: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createFloatConstant: (recoveredValue0) type: (recoveredValue1) roundToInfinity: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad60c; bytecode file offset 0x9a9f0c"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1 roundToInfinity: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createIntConstant: (recoveredValue0) roundToInfinity: (recoveredValue1) suffix: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad9d4; bytecode file offset 0x9aa290"
!SGIleBuilder methodsFor: 'recovered'!
createInitValueScalarConstant: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createScalarConstant: (recoveredValue0) type: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) asIleInitValueAssignType: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200aeeb8; bytecode file offset 0x9ab770"
!SGIleBuilder methodsFor: 'recovered'!
assignExpr: recoveredArg1 to: recoveredArg2 attributes: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createAssignLValue: (recoveredValue0) expr: (recoveredValue1) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200af0d8; bytecode file offset 0x9aba2c"
!SGIleBuilder methodsFor: 'recovered'!
divLeftMulExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) divLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aff14; bytecode file offset 0x9ac7d4"
!SGIleBuilder methodsFor: 'recovered'!
createNoDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlNoDecl.
    recoveredValue1 := (recoveredValue0) createSource: (nil) genName: ('noDecl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b0150; bytecode file offset 0x9aca38"
!SGIleBuilder methodsFor: 'recovered'!
emptyStmnt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlEmptyStmnt.
    recoveredValue1 := (self) source.
    recoveredValue2 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0164; bytecode file offset 0x9aca38"
!SGIleBuilder methodsFor: 'recovered'!
createBreakStmnt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlBreak.
    recoveredValue1 := (self) statementSource.
    recoveredValue2 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7b28; bytecode file offset 0x9b43fc"
!SGIleBuilder methodsFor: 'recovered'!
createDummyExprType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlDummyExpr.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7b3c; bytecode file offset 0x9b43fc"
!SGIleBuilder methodsFor: 'recovered'!
createNullReferenceType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlNullReference.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bb058; bytecode file offset 0x9b7918"
!SGIleBuilder methodsFor: 'recovered'!
createScalarConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asInterval.
    recoveredValue3 := (self) createImplTypeFromInterval: (recoveredValue2).
    recoveredValue4 := (self) createScalarConstant: (recoveredValue0) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bd864; bytecode file offset 0x9ba140"
!SGIleBuilder methodsFor: 'recovered'!
specialCallClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) SpecialCallClassMap.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c12d0; bytecode file offset 0x9bdf14"
!SGIleBuilder methodsFor: 'recovered'!
comments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8b1c; bytecode file offset 0x9c53ec"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createIntConstant: (recoveredValue0) type: (recoveredValue1) roundToInfinity: (nil) suffix: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c8b28; bytecode file offset 0x9c53ec"
!SGIleBuilder methodsFor: 'recovered'!
createFieldAccess: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createFieldAccess: (recoveredValue0) on: (recoveredValue1) type: (nil) containsZero: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c9388; bytecode file offset 0x9c5cfc"
!SGIleBuilder methodsFor: 'recovered'!
repeat: recoveredArg1 until: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) createRepeat: (recoveredValue1) until: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c939c; bytecode file offset 0x9c5cfc"
!SGIleBuilder methodsFor: 'recovered'!
negExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) createNegExpr: (recoveredValue1) type: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c93b0; bytecode file offset 0x9c5cfc"
!SGIleBuilder methodsFor: 'recovered'!
andLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) createAndLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c93ec; bytecode file offset 0x9c5cfc"
!SGIleBuilder methodsFor: 'recovered'!
whileExpr: recoveredArg1 stmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) createWhileExpr: (recoveredValue1) stmnt: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c9414; bytecode file offset 0x9c5cfc"
!SGIleBuilder methodsFor: 'recovered'!
absExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) createAbsExpr: (recoveredValue1) type: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c9428; bytecode file offset 0x9c5cfc"
!SGIleBuilder methodsFor: 'recovered'!
orLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) createOrLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c9eb4; bytecode file offset 0x9c676c"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1 roundToInfinity: recoveredArg2 suffix: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createIntConstant: (recoveredValue0) type: (nil) roundToInfinity: (recoveredValue1) suffix: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c9f94; bytecode file offset 0x9c6858"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1 type: recoveredArg2 suffix: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createIntConstant: (recoveredValue0) type: (recoveredValue1) roundToInfinity: (nil) suffix: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca008; bytecode file offset 0x9c692c"
!SGIleBuilder methodsFor: 'recovered'!
createDivLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createDivLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue2) limitOverflowDivResult: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca038; bytecode file offset 0x9c692c"
!SGIleBuilder methodsFor: 'recovered'!
createShiftRightExpr: recoveredArg1 constant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createShiftRightExpr: (recoveredValue0) constant: (recoveredValue1) type: (recoveredValue2) limitOverflowDivResult: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca05c; bytecode file offset 0x9c692c"
!SGIleBuilder methodsFor: 'recovered'!
createDivLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createDivLeftExpr: (recoveredValue0) rightConstant: (recoveredValue1) type: (recoveredValue2) limitOverflowDivResult: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca074; bytecode file offset 0x9c692c"
!SGIleBuilder methodsFor: 'recovered'!
createDivLeftConst: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createDivLeftConst: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue2) limitOverflowDivResult: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca8cc; bytecode file offset 0x9c7184"
!SGIleBuilder methodsFor: 'recovered'!
assignExpr: recoveredArg1 to: recoveredArg2 expressionContext: recoveredArg3 attributes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createAssignLValue: (recoveredValue0) expr: (recoveredValue1) expressionContext: (recoveredValue2) attributes: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200daf24; bytecode file offset 0x9d77e0"
!SGIleBuilder methodsFor: 'recovered'!
createCCodeFragment: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlCCodeFragment.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) template: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dc744; bytecode file offset 0x9d902c"
!SGIleBuilder methodsFor: 'recovered'!
messageCopyStatementList: recoveredArg1 scopeLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SGCgMsgFlowDirection.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := (self) messageCopyStatementList: (recoveredValue0) scopeLabel: (recoveredValue1) direction: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc9dc; bytecode file offset 0x9d92b0"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightConstant: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generator.
    recoveredValue3 := (recoveredValue2) expressionContext.
    recoveredValue4 := (self) remLeftExpr: (recoveredValue0) rightConstant: (recoveredValue1) expressionContext: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc9f0; bytecode file offset 0x9d92b0"
!SGIleBuilder methodsFor: 'recovered'!
switchExpr: recoveredArg1 stmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generator.
    recoveredValue3 := (recoveredValue2) expressionContext.
    recoveredValue4 := (self) switchExpr: (recoveredValue0) stmnt: (recoveredValue1) expressionContext: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd61c; bytecode file offset 0x9d9ef8"
!SGIleBuilder methodsFor: 'recovered'!
cppIfExpr: recoveredArg1 thenStmnt: recoveredArg2 elseStmnt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createCppIfExpr: (recoveredValue0) thenStmnt: (recoveredValue1) elseStmnt: (recoveredValue2).
    recoveredValue4 := (self) abstractControlFlowStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd62c; bytecode file offset 0x9d9ef8"
!SGIleBuilder methodsFor: 'recovered'!
ifExpr: recoveredArg1 thenStmnt: recoveredArg2 elseStmnt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createIfExpr: (recoveredValue0) thenStmnt: (recoveredValue1) elseStmnt: (recoveredValue2).
    recoveredValue4 := (self) abstractControlFlowStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd63c; bytecode file offset 0x9d9ef8"
!SGIleBuilder methodsFor: 'recovered'!
switchExpr: recoveredArg1 stmnt: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createSwitchExpr: (recoveredValue0) stmnt: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredValue4 := (self) abstractControlFlowStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dde74; bytecode file offset 0x9da750"
!SGIleBuilder methodsFor: 'recovered'!
createLowerLimitedExpr: recoveredArg1 bound: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createScalarConstant: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createLowerLimitedExpr: (recoveredValue0) constant: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dde94; bytecode file offset 0x9da750"
!SGIleBuilder methodsFor: 'recovered'!
createUpperLimitedExpr: recoveredArg1 bound: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createConstantValue: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createUpperLimitedExpr: (recoveredValue0) constant: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de458; bytecode file offset 0x9dad24"
!SGIleBuilder methodsFor: 'recovered'!
assignTempVar: recoveredArg1 stmntExpr: recoveredArg2 fromTempAssignExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) source.
    recoveredValue5 := (self) assignTempVar: (recoveredValue0) stmntExpr: (recoveredValue1) fromTempAssignExpr: (recoveredValue2) source: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200de5b0; bytecode file offset 0x9dae6c"
!SGIleBuilder methodsFor: 'recovered'!
createRemLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) createRemLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue3) expressionContext: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200de5d0; bytecode file offset 0x9dae8c"
!SGIleBuilder methodsFor: 'recovered'!
createRemLeftConstant: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) ileBasicType.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) createRemLeftConstant: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue3) expressionContext: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e6d30; bytecode file offset 0x9e362c"
!SGIleBuilder methodsFor: 'recovered'!
createGoto: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlGotoStmnt.
    recoveredValue1 := (self) statementSource.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) label: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6d44; bytecode file offset 0x9e362c"
!SGIleBuilder methodsFor: 'recovered'!
createDefaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlDefaultStmnt.
    recoveredValue1 := (self) statementSource.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) stmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6d58; bytecode file offset 0x9e362c"
!SGIleBuilder methodsFor: 'recovered'!
createExitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlExit.
    recoveredValue1 := (self) statementSource.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) processScope: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6d6c; bytecode file offset 0x9e362c"
!SGIleBuilder methodsFor: 'recovered'!
createCppErrorStatement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlCppErrorStatement.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) errorText: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e7fec; bytecode file offset 0x9e48f8"
!SGIleBuilder methodsFor: 'recovered'!
createVariableArrayMatrixValueAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (self) getVariableArrayMatrixValueDecl: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) reduceToVariableArrayMatrix: (recoveredValue3).
    recoveredValue5 := (self) createDeclFieldAccess: (recoveredValue2) on: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e8004; bytecode file offset 0x9e48f8"
!SGIleBuilder methodsFor: 'recovered'!
createVariableArrayMatrixSizeXAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (self) getVariableArrayMatrixSizeXDecl: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) reduceToVariableArrayMatrix: (recoveredValue3).
    recoveredValue5 := (self) createDeclFieldAccess: (recoveredValue2) on: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e801c; bytecode file offset 0x9e48f8"
!SGIleBuilder methodsFor: 'recovered'!
createVariableArrayMatrixSizeAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (self) getVariableArrayMatrixSizeDecl: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) reduceToVariableArrayMatrix: (recoveredValue3).
    recoveredValue5 := (self) createDeclFieldAccess: (recoveredValue2) on: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e8034; bytecode file offset 0x9e48f8"
!SGIleBuilder methodsFor: 'recovered'!
createVariableArrayMatrixSizeYAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (self) getVariableArrayMatrixSizeYDecl: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) reduceToVariableArrayMatrix: (recoveredValue3).
    recoveredValue5 := (self) createDeclFieldAccess: (recoveredValue2) on: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb060; bytecode file offset 0x9e7948"
!SGIleBuilder methodsFor: 'recovered'!
createDataSetReference: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlDataSetReference.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) ileName: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb074; bytecode file offset 0x9e7948"
!SGIleBuilder methodsFor: 'recovered'!
createStatementExpression: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlStatementExpression.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) stmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb088; bytecode file offset 0x9e7948"
!SGIleBuilder methodsFor: 'recovered'!
createPackedExprAssignment: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlPackedExprAssignment.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb1e0; bytecode file offset 0x9e7aa0"
!SGIleBuilder methodsFor: 'recovered'!
createExternDecl: recoveredArg1 genName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlExternDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue2) genName: (recoveredValue3) internDecl: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eba3c; bytecode file offset 0x9e82fc"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1 suffix: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asInterval.
    recoveredValue3 := (self) createImplTypeFromInterval: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) createIntConstant: (recoveredValue0) type: (recoveredValue3) suffix: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed40c; bytecode file offset 0x9e9ccc"
!SGIleBuilder methodsFor: 'recovered'!
createAssignLValue: recoveredArg1 expr: recoveredArg2 attributes: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generator.
    recoveredValue3 := (recoveredValue2) expressionContext.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) createAssignLValue: (recoveredValue0) expr: (recoveredValue1) expressionContext: (recoveredValue3) attributes: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed648; bytecode file offset 0x9e9f30"
!SGIleBuilder methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) generator.
    recoveredValue4 := (recoveredValue3) expressionContext.
    recoveredValue5 := (self) remLeftConstant: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue2) expressionContext: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed65c; bytecode file offset 0x9e9f30"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) generator.
    recoveredValue4 := (recoveredValue3) expressionContext.
    recoveredValue5 := (self) remLeftExpr: (recoveredValue0) rightConstant: (recoveredValue1) type: (recoveredValue2) expressionContext: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed824; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
subLeftConstant: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createSubLeftConstant: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed838; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
addLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createAddLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed84c; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
shiftLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createShiftLeftExpr: (recoveredValue1) constant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed860; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
subLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createSubLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed874; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
addLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createAddLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed888; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
shiftRightExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createShiftRightExpr: (recoveredValue1) constant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed89c; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
limitExpr: recoveredArg1 lowerBound: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createLowerLimitedExpr: (recoveredValue1) bound: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed8b0; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
maxLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createMaxLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed8c4; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
divLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createDivLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed8d8; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
minLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createMinLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed8ec; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightConstant: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createRemLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2) expressionContext: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed900; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
divLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createDivLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed914; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
subLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createSubLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed928; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
limitExpr: recoveredArg1 lowerConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createLowerLimitedExpr: (recoveredValue1) constant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed93c; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createRemLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) expressionContext: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed950; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
mulLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createMulLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed964; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
limitExpr: recoveredArg1 upperBound: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createUpperLimitedExpr: (recoveredValue1) bound: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed978; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
limitExpr: recoveredArg1 upperConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createUpperLimitedExpr: (recoveredValue1) constant: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed98c; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) optimizeOperatorSimplification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createRemLeftConstant: (recoveredValue1) rightExpr: (recoveredValue2) expressionContext: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed9a0; bytecode file offset 0x9ea260"
!SGIleBuilder methodsFor: 'recovered'!
divLeftConstant: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createDivLeftConst: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fb860; bytecode file offset 0x9f8120"
!SGIleBuilder methodsFor: 'recovered'!
createFraction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlFraction.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) value: (recoveredValue2) roundToInfinity: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fb8ac; bytecode file offset 0x9f8188"
!SGIleBuilder methodsFor: 'recovered'!
createNotExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlNot.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileBooleanType.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fb8c4; bytecode file offset 0x9f8188"
!SGIleBuilder methodsFor: 'recovered'!
createBoolConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlBooleanConstant.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileBooleanType.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) value: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fb914; bytecode file offset 0x9f81dc"
!SGIleBuilder methodsFor: 'recovered'!
header: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlHeader.
    recoveredValue1 := (self) source.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) code.
    (recoveredValue3) code: (recoveredValue5).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fba70; bytecode file offset 0x9f8334"
!SGIleBuilder methodsFor: 'recovered'!
doNotOptimizeExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlDoNotOptimizeExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) typeOrNil.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200fc44c; bytecode file offset 0x9f8d10"
!SGIleBuilder methodsFor: 'recovered'!
createInitValueUninitialisedReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createNullReferenceType: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := SGCgExpressionContext.
    recoveredValue4 := (recoveredValue3) nonArithmeticContext.
    recoveredValue5 := (self) createInitValueAssign: (recoveredValue1) type: (recoveredValue2) expressionContext: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ffdec; bytecode file offset 0x9fc6d4"
!SGIleBuilder methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1 localVars: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlPMICodeBlock.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) code: (recoveredValue2) localVars: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ffe00; bytecode file offset 0x9fc6d4"
!SGIleBuilder methodsFor: 'recovered'!
createRepresentableFraction: recoveredArg1 roundToInfinity: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlRepresentableFraction.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) value: (recoveredValue2) roundToInfinity: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ffe14; bytecode file offset 0x9fc6d4"
!SGIleBuilder methodsFor: 'recovered'!
createCaseStmnt: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlCaseStmnt.
    recoveredValue1 := (self) statementSource.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) stmnt: (recoveredValue2) constantExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ffe60; bytecode file offset 0x9fc720"
!SGIleBuilder methodsFor: 'recovered'!
createMacroAccess: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlAccessMacro.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (nil) macroDecl: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ffe84; bytecode file offset 0x9fc744"
!SGIleBuilder methodsFor: 'recovered'!
createNegExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlNeg.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) goalInterval: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20100020; bytecode file offset 0x9fc8e4"
!SGIleBuilder methodsFor: 'recovered'!
createIdAttribute: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlIdAttribute.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) name.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) name: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201019a8; bytecode file offset 0x9fe268"
!SGIleBuilder methodsFor: 'recovered'!
createANSICExpr: recoveredArg1 template: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlANSICExpr.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3) template: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201019cc; bytecode file offset 0x9fe2a0"
!SGIleBuilder methodsFor: 'recovered'!
createVariableReferenceCast: recoveredArg1 type: recoveredArg2 uniqueName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlVariableReferenceCast.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) expr: (recoveredValue3) uniqueName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201019e0; bytecode file offset 0x9fe2a0"
!SGIleBuilder methodsFor: 'recovered'!
createPackedExprAssignmentVector: recoveredArg1 type: recoveredArg2 curSizes: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlPackedExprAssignmentVector.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3) curSizes: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20101a5c; bytecode file offset 0x9fe31c"
!SGIleBuilder methodsFor: 'recovered'!
createInitValueAssign: recoveredArg1 type: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlInitValueAssign.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) expr: (recoveredValue4) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010203c; bytecode file offset 0x9fe900"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generator.
    recoveredValue3 := (recoveredValue2) expressionContext.
    recoveredValue4 := (self) remLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue4) createOpType: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201026e0; bytecode file offset 0x9feff0"
!SGIleBuilder methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) optimizeOperatorSimplification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createRemLeftConstant: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3) expressionContext: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201026f4; bytecode file offset 0x9feff0"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createRemLeftExpr: (recoveredValue1) rightExpr: (recoveredValue2) type: (recoveredValue3) expressionContext: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20102708; bytecode file offset 0x9feff0"
!SGIleBuilder methodsFor: 'recovered'!
safeDivExpr: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createSafeDiv: (recoveredValue1) leftExpr: (recoveredValue2) rightExpr: (recoveredValue3) type: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010271c; bytecode file offset 0x9feff0"
!SGIleBuilder methodsFor: 'recovered'!
remLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createRemLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2) type: (recoveredValue3) expressionContext: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20102730; bytecode file offset 0x9feff0"
!SGIleBuilder methodsFor: 'recovered'!
artificialMuxExpr: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createArtificialMux: (recoveredValue1) leftExpr: (recoveredValue2) rightExpr: (recoveredValue3) type: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20104840; bytecode file offset 0xa01124"
!SGIleBuilder methodsFor: 'recovered'!
createECCOSendImplicit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlECCOSndRcvImplicit.
    recoveredValue1 := SGCgMsgFlowDirection.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := (recoveredValue2) setSendDirection.
    recoveredValue4 := (recoveredValue0) createSource: (nil) comments: (nil) direction: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010485c; bytecode file offset 0xa01124"
!SGIleBuilder methodsFor: 'recovered'!
createECCOReceiveImplicit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlECCOSndRcvImplicit.
    recoveredValue1 := SGCgMsgFlowDirection.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := (recoveredValue2) setReceiveDirection.
    recoveredValue4 := (recoveredValue0) createSource: (nil) comments: (nil) direction: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20104930; bytecode file offset 0xa011f4"
!SGIleBuilder methodsFor: 'recovered'!
createInitValueUnused
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlInitValueUnused.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileVoid.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) expr: (nil) expressionContext: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010c530; bytecode file offset 0xa08df4"
!SGIleBuilder methodsFor: 'recovered'!
createDeltaTMethodBody: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlDeltaTMethodBody.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) stmntList: (recoveredValue2) variables: (#()).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010c5f0; bytecode file offset 0xa08eb8"
!SGIleBuilder methodsFor: 'recovered'!
createExit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlExit.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) methodDecl.
    recoveredValue5 := (recoveredValue4) isMdlProcessDecl.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) comments: (nil) processScope: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010f580; bytecode file offset 0xa0be44"
!SGIleBuilder methodsFor: 'recovered'!
expansionPreparationPhaseDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExpansionPreparationPhase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) expansionPreparationPhaseDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010f76c; bytecode file offset 0xa0c030"
!SGIleBuilder methodsFor: 'recovered'!
optimizationPhaseDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExpansionPreparationPhase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationPhaseDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20110250; bytecode file offset 0xa0cb2c"
!SGIleBuilder methodsFor: 'recovered'!
createOrLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlOr.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileBooleanType.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20110268; bytecode file offset 0xa0cb2c"
!SGIleBuilder methodsFor: 'recovered'!
createAndLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlAnd.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileBooleanType.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20110290; bytecode file offset 0xa0cb50"
!SGIleBuilder methodsFor: 'recovered'!
createAbsExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlAbs.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) goalInterval: (nil) noServiceExpr: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201102b4; bytecode file offset 0xa0cb74"
!SGIleBuilder methodsFor: 'recovered'!
tempVar: recoveredArg1 tempName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlTempIdentifier.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (nil) tempName: (recoveredValue3) charTableScope: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011040c; bytecode file offset 0xa0cd00"
!SGIleBuilder methodsFor: 'recovered'!
createSaveRemNumerator: recoveredArg1 errLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlSafeRemNumeratorExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) errLabel: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20110424; bytecode file offset 0xa0cd00"
!SGIleBuilder methodsFor: 'recovered'!
createSaveRemSignedOverflowNumerator: recoveredArg1 errLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlSafeRemSignedOverflowNumeratorExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) errLabel: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2011043c; bytecode file offset 0xa0cd00"
!SGIleBuilder methodsFor: 'recovered'!
createSaveDivSignedOverflowNumerator: recoveredArg1 errLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlSafeDivSignedOverflowNumeratorExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) errLabel: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2011126c; bytecode file offset 0xa0db30"
!SGIleBuilder methodsFor: 'recovered'!
createFloatConstant: recoveredArg1 type: recoveredArg2 roundToInfinity: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlFloatConstant.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asFloat.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) value: (recoveredValue4) roundToInfinity: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201112bc; bytecode file offset 0xa0db7c"
!SGIleBuilder methodsFor: 'recovered'!
createFloatTypedIntConstant: recoveredArg1 intConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlFloatTypedIntConstant.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) value: (recoveredValue4) roundToInfinity: (nil) intConstant: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20111340; bytecode file offset 0xa0dc00"
!SGIleBuilder methodsFor: 'recovered'!
createModelIdentifier: recoveredArg1 type: recoveredArg2 containsZero: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlModelIdentifier.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) goalInterval: (nil) mdlNode: (recoveredValue4) containsZero: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20111e50; bytecode file offset 0xa0e710"
!SGIleBuilder methodsFor: 'recovered'!
createMacroDecl: recoveredArg1 genName: recoveredArg2 expr: recoveredArg3 referenceAccess: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIAccessMacroDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) genName: (recoveredValue3) expr: (recoveredValue4) elementDecl: (recoveredValue5) referenceAccess: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2011218c; bytecode file offset 0xa0ea4c"
!SGIleBuilder methodsFor: 'recovered'!
createReferencedExpr: recoveredArg1 read: recoveredArg2 write: recoveredArg3 memClass: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) asCgReferenceRead: (recoveredValue3) write: (recoveredValue4) memClass: (recoveredValue5).
    recoveredValue7 := (self) createReferencedExpr: (recoveredValue0) type: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2011dbd4; bytecode file offset 0xa1a4b8"
!SGIleBuilder methodsFor: 'recovered'!
cCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlCCodeBlock.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) code.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) localVars.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) code: (recoveredValue3) localVars: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011dbf0; bytecode file offset 0xa1a4b8"
!SGIleBuilder methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlPMICodeBlock.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) code.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) localVars.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) comments: (nil) code: (recoveredValue3) localVars: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011de64; bytecode file offset 0xa1a728"
!SGIleBuilder methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlTempAssignIdentifier.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) goalInterval: (nil) tempAssign: (recoveredValue5) ansiCArrayAccess: (false).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20120d8c; bytecode file offset 0xa1d6a8"
!SGIleBuilder methodsFor: 'recovered'!
blockedStmntList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := SGIlBlockedStatementList.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) stmntList: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20120da8; bytecode file offset 0xa1d6a8"
!SGIleBuilder methodsFor: 'recovered'!
stmntList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := SGIlStatementList.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) stmntList: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20120dc4; bytecode file offset 0xa1d6a8"
!SGIleBuilder methodsFor: 'recovered'!
atomicStmntList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := SGIlAtomicStatementList.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) stmntList: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20120de0; bytecode file offset 0xa1d6a8"
!SGIleBuilder methodsFor: 'recovered'!
pmiCodeBlockWithMessageCopies: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := SGIlPMICodeBlockWithMessageCopies.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) stmntList: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) anyStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20121acc; bytecode file offset 0xa1e3e8"
!SGIleBuilder methodsFor: 'recovered'!
createPreDecExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlPreDec.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) generator.
    recoveredValue5 := (recoveredValue4) expressionContext.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20121ae8; bytecode file offset 0xa1e3e8"
!SGIleBuilder methodsFor: 'recovered'!
createPostIncExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlPostInc.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) generator.
    recoveredValue5 := (recoveredValue4) expressionContext.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20121b04; bytecode file offset 0xa1e3e8"
!SGIleBuilder methodsFor: 'recovered'!
createPreIncExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlPreInc.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) generator.
    recoveredValue5 := (recoveredValue4) expressionContext.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20121b20; bytecode file offset 0xa1e3e8"
!SGIleBuilder methodsFor: 'recovered'!
createPostDecExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlPostDec.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) generator.
    recoveredValue5 := (recoveredValue4) expressionContext.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20121b50; bytecode file offset 0xa1e414"
!SGIleBuilder methodsFor: 'recovered'!
createDeclFieldAccess: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlDeclFieldAccess.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue3) goalInterval: (nil) receiver: (recoveredValue4) elementDecl: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20121b7c; bytecode file offset 0xa1e440"
!SGIleBuilder methodsFor: 'recovered'!
createIdentifier: recoveredArg1 elementKey: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlIdentifier.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue3) goalInterval: (nil) elementDecl: (recoveredValue4) elementKey: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201234e8; bytecode file offset 0xa1fdac"
!SGIleBuilder methodsFor: 'recovered'!
createVerifyPointerOp: recoveredArg1 identifier: recoveredArg2 redundantIdentifier: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlVerifyPointerOp.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileBooleanType.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) identifier: (recoveredValue4) redundantIdentifier: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20123514; bytecode file offset 0xa1fdd4"
!SGIleBuilder methodsFor: 'recovered'!
createNamedIdentifier: recoveredArg1 type: recoveredArg2 derivedExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlNamedIdentifier.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (nil) name: (recoveredValue3) derivedExpr: (recoveredValue4) ansiCArrayAccess: (false).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201235e8; bytecode file offset 0xa1feac"
!SGIleBuilder methodsFor: 'recovered'!
createFunctionDecl: recoveredArg1 genName: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlModelFunctionDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlLabel.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue2) genName: (recoveredValue3) label: (recoveredValue5) type: (recoveredValue6) mdlFuncDecl: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20123614; bytecode file offset 0xa1fed8"
!SGIleBuilder methodsFor: 'recovered'!
createSaveDivNumerator: recoveredArg1 valueRange: recoveredArg2 errLabel: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlSafeDivNumeratorExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) errLabel: (recoveredValue6) valueRange: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20123fb0; bytecode file offset 0xa20884"
!SGIleBuilder methodsFor: 'recovered'!
createDirectAccess: recoveredArg1 on: recoveredArg2 type: recoveredArg3 containsZero: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlDirectAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) receiver: (recoveredValue4) mdlNode: (recoveredValue5) containsZero: (recoveredValue6) goalInterval: (nil).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20123fc4; bytecode file offset 0xa20884"
!SGIleBuilder methodsFor: 'recovered'!
createFieldAccess: recoveredArg1 on: recoveredArg2 type: recoveredArg3 containsZero: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlFieldAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) receiver: (recoveredValue4) mdlNode: (recoveredValue5) containsZero: (recoveredValue6) goalInterval: (nil).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201241fc; bytecode file offset 0xa20ac0"
!SGIleBuilder methodsFor: 'recovered'!
muxExpr: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createTypeImplAware: (recoveredValue4).
    recoveredValue6 := (self) createMux: (recoveredValue1) leftExpr: (recoveredValue2) rightExpr: (recoveredValue3) type: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) anyExpr: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201242c8; bytecode file offset 0xa20b84"
!SGIleBuilder methodsFor: 'recovered'!
createUnaryFloatServiceOp: recoveredArg1 firstOperand: recoveredArg2 physModelInterval: recoveredArg3 type: recoveredArg4 source: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlUnaryOptionalFloatServiceExpr.
    recoveredValue1 := recoveredArg5.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) alternativeExpr: (nil) serviceLabel: (recoveredValue4) physModelInterval: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201243b4; bytecode file offset 0xa20c88"
!SGIleBuilder methodsFor: 'recovered'!
mux: recoveredArg1 choices: recoveredArg2 defaultExpr: recoveredArg3 type: recoveredArg4 expressionContext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (self) createMux: (recoveredValue1) choices: (recoveredValue2) defaultExpr: (recoveredValue3) type: (recoveredValue4) expressionContext: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) anyExpr: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201243c8; bytecode file offset 0xa20c88"
!SGIleBuilder methodsFor: 'recovered'!
forExpr: recoveredArg1 firstExpr: recoveredArg2 lastExpr: recoveredArg3 doStmnt: recoveredArg4 protectLoop: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (self) createForExpr: (recoveredValue1) firstExpr: (recoveredValue2) lastExpr: (recoveredValue3) doStmnt: (recoveredValue4) protectLoop: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) anyStmnt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201243f0; bytecode file offset 0xa20cb4"
!SGIleBuilder methodsFor: 'recovered'!
createBinaryServiceOp: recoveredArg1 firstOperand: recoveredArg2 secondOperand: recoveredArg3 goalInterval: recoveredArg4 limit: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (self) createBinaryServiceOp: (recoveredValue0) firstOperand: (recoveredValue1) secondOperand: (recoveredValue2) interval: (nil) goalInterval: (recoveredValue3) limit: (recoveredValue4) source: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20132858; bytecode file offset 0xa2f118"
!SGIleBuilder methodsFor: 'recovered'!
asArray: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201343e8; bytecode file offset 0xa30cc4"
!SGIleBuilder methodsFor: 'recovered'!
rteExit: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlRTEExit.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20134400; bytecode file offset 0xa30cc4"
!SGIleBuilder methodsFor: 'recovered'!
rteEnter: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIlRTEEnter.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013442c; bytecode file offset 0xa30cf4"
!SGIleBuilder methodsFor: 'recovered'!
createMemCopyExpr: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlMemCopyExpr.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asIleReferencedExpr.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asIleReferencedExpr.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) type.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue1) lValue: (recoveredValue3) expr: (recoveredValue5) type: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2013445c; bytecode file offset 0xa30d40"
!SGIleBuilder methodsFor: 'recovered'!
createProject: recoveredArg1 init: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlProject.
    recoveredValue1 := (self) source.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) type: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) initValue: (recoveredValue6).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20134478; bytecode file offset 0xa30d40"
!SGIleBuilder methodsFor: 'recovered'!
createComponent: recoveredArg1 init: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlComponent.
    recoveredValue1 := (self) source.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) type: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) initValue: (recoveredValue6).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201344f0; bytecode file offset 0xa30db0"
!SGIleBuilder methodsFor: 'recovered'!
createComplementServiceExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlComplementServiceExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) leftExpr: (recoveredValue4) interval: (nil) goalInterval: (nil) alternativeExpr: (nil) serviceLabel: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135078; bytecode file offset 0xa31940"
!SGIleBuilder methodsFor: 'recovered'!
methodBody: recoveredArg1 variables: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := SGIlMethodBody.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) stmntList: (recoveredValue3) variables: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyStmnt: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20135470; bytecode file offset 0xa31d64"
!SGIleBuilder methodsFor: 'recovered'!
rteIrvRead: recoveredArg1 runnable: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlRTEIrvRead.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (recoveredValue3) portName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135488; bytecode file offset 0xa31d64"
!SGIleBuilder methodsFor: 'recovered'!
rteDtRead: recoveredArg1 runnable: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlRTEDtRead.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (recoveredValue3) portName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201354a0; bytecode file offset 0xa31d64"
!SGIleBuilder methodsFor: 'recovered'!
rteIrvIRead: recoveredArg1 runnable: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlRTEIrvIRead.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (recoveredValue3) portName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201354cc; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createAddLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlAddConst.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201354e0; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createMinLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlMin.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201354f4; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createSubLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlSub.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135508; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createAddLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlAdd.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013551c; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createSubLeftConstant: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlConstSub.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135530; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createMulLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlMulConst.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135544; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createSubLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlSubConst.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135558; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createMulLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlMul.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013556c; bytecode file offset 0xa31e2c"
!SGIleBuilder methodsFor: 'recovered'!
createMaxLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlMax.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20135594; bytecode file offset 0xa31e54"
!SGIleBuilder methodsFor: 'recovered'!
tempVar: recoveredArg1 type: recoveredArg2 isMsgCopy: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlNamedTempIdentifier.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (nil) tempName: (nil) charTableScope: (nil) name: (recoveredValue3) isMsgCopy: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201355e8; bytecode file offset 0xa31eac"
!SGIleBuilder methodsFor: 'recovered'!
createUpperLimitedExpr: recoveredArg1 constant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlUpperLimitedExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) createOpRoundToInfinity: (false).
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) expr: (recoveredValue4) compareEqual: (false) upperBound: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20135614; bytecode file offset 0xa31ed8"
!SGIleBuilder methodsFor: 'recovered'!
createLowerLimitedExpr: recoveredArg1 constant: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlLowerLimitedExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) createOpRoundToInfinity: (true).
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue3) expr: (recoveredValue4) compareEqual: (false) lowerBound: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2013653c; bytecode file offset 0xa32dfc"
!SGIleBuilder methodsFor: 'recovered'!
rteCall: recoveredArg1 operation: recoveredArg2 arguments: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlRTECall.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue4) operation: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20136868; bytecode file offset 0xa33124"
!SGIleBuilder methodsFor: 'recovered'!
createUnaryServiceOp: recoveredArg1 firstOperand: recoveredArg2 goalInterval: recoveredArg3 alternative: recoveredArg4 source: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlUnaryOpServiceExpr.
    recoveredValue1 := recoveredArg5.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (nil) goalInterval: (recoveredValue3) alternativeExpr: (recoveredValue4) serviceLabel: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201396c0; bytecode file offset 0xa35f80"
!SGIleBuilder methodsFor: 'recovered'!
mulOperands: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal5.
    (recoveredValue2) collectMulOnlyOperands: (recoveredValue3).
    recoveredValue4 := recoveredLocal5.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013aae0; bytecode file offset 0xa37398"
!SGIleBuilder methodsFor: 'recovered'!
statementSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statementSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := statementSource.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20144e30; bytecode file offset 0xa41704"
!SGIleBuilder methodsFor: 'recovered'!
createConstantValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBoolConstant: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScalarConstant: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20148074; bytecode file offset 0xa44968"
!SGIleBuilder methodsFor: 'recovered'!
rteMode: recoveredArg1 dataElement: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlRTEMode.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue3) dataElementName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2014808c; bytecode file offset 0xa44968"
!SGIleBuilder methodsFor: 'recovered'!
rteDRead: recoveredArg1 dataElement: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlRTEDRead.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue3) dataElementName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201480a4; bytecode file offset 0xa44968"
!SGIleBuilder methodsFor: 'recovered'!
rteCalPrm: recoveredArg1 dataElement: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlRTECalPrm.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue3) dataElementName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2014827c; bytecode file offset 0xa44b40"
!SGIleBuilder methodsFor: 'recovered'!
createRemLeftExpr: recoveredArg1 rightConstant: recoveredArg2 expressionContext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Rl') == ('Call_85767').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) type.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (self) createRemLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2) type: (recoveredValue4) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201487e8; bytecode file offset 0xa450b0"
!SGIleBuilder methodsFor: 'recovered'!
messageCopyStatementList: recoveredArg1 scopeLabel: recoveredArg2 direction: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) optimizeControlFlow.
    recoveredValue1 := SGIlMessageCopyStatementList.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) stmntList: (recoveredValue3) direction: (recoveredValue4) scopeLabel: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) anyStmnt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20148a74; bytecode file offset 0xa45368"
!SGIleBuilder methodsFor: 'recovered'!
rteIrvIWriteRef: recoveredArg1 runnable: recoveredArg2 irvAttributes: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlRTEIrvIWriteRef.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (recoveredValue3) portName: (recoveredValue4) irvAttributes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20148a8c; bytecode file offset 0xa45368"
!SGIleBuilder methodsFor: 'recovered'!
rteIRead: recoveredArg1 runnable: recoveredArg2 dataElement: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlRTEIRead.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (recoveredValue3) portName: (recoveredValue4) dataElementName: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20148aa4; bytecode file offset 0xa45368"
!SGIleBuilder methodsFor: 'recovered'!
rteIWriteRef: recoveredArg1 runnable: recoveredArg2 dataElement: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlRTEIWriteRef.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (#()) goalInterval: (nil) runnableEntity: (recoveredValue3) portName: (recoveredValue4) dataElementName: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20148ea4; bytecode file offset 0xa45764"
!SGIleBuilder methodsFor: 'recovered'!
indexed: recoveredArg1 expr: recoveredArg2 expressionContext: recoveredArg3 suppressIndexLimitation: recoveredArg4 type: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlIndexedExpr.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg5.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3) baseExpr: (recoveredValue4) goalInterval: (nil) expressionContext: (recoveredValue5) suppressIndexLimitation: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201490c8; bytecode file offset 0xa45984"
!SGIleBuilder methodsFor: 'recovered'!
createBinaryFloatServiceOp: recoveredArg1 firstOperand: recoveredArg2 secondOperand: recoveredArg3 physModelInterval: recoveredArg4 type: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlBinaryOptionalFloatServiceExpr.
    recoveredValue1 := recoveredArg6.
    recoveredValue2 := recoveredArg5.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) alternativeExpr: (nil) serviceLabel: (recoveredValue4) rightExpr: (recoveredValue5) physModelInterval: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20152df8; bytecode file offset 0xa4f6c4"
!SGIleBuilder methodsFor: 'recovered'!
tempAssignConditionalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlTempAssignedConditionalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) generator.
    recoveredValue7 := (recoveredValue6) expressionContext.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) expressionContext: (recoveredValue7) tempVar: (nil).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20156ab4; bytecode file offset 0xa5337c"
!SGIleBuilder methodsFor: 'recovered'!
createAnsiCInitValue: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createANSICExpr: (#()) template: (recoveredValue0) type: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := SGCgExpressionContext.
    recoveredValue5 := (recoveredValue4) nonArithmeticContext.
    recoveredValue6 := (self) createInitValueAssign: (recoveredValue2) type: (recoveredValue3) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20157888; bytecode file offset 0xa54188"
!SGIleBuilder methodsFor: 'recovered'!
rteDtWrite: recoveredArg1 runnable: recoveredArg2 arg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlRTEDtWrite.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileVoid.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) asArray: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue4) goalInterval: (nil) runnableEntity: (recoveredValue5) portName: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201578a4; bytecode file offset 0xa54188"
!SGIleBuilder methodsFor: 'recovered'!
rteIrvWrite: recoveredArg1 runnable: recoveredArg2 arg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlRTEIrvWrite.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileVoid.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) asArray: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue4) goalInterval: (nil) runnableEntity: (recoveredValue5) portName: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201578c0; bytecode file offset 0xa54188"
!SGIleBuilder methodsFor: 'recovered'!
rteIrvIWrite: recoveredArg1 runnable: recoveredArg2 arg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlRTEIrvIWrite.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileVoid.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) asArray: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue4) goalInterval: (nil) runnableEntity: (recoveredValue5) portName: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20157924; bytecode file offset 0xa54224"
!SGIleBuilder methodsFor: 'recovered'!
createElementDecl: recoveredArg1 genName: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGIlModelElementDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlLabel.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) ileScope: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue0) createSource: (recoveredValue2) genName: (recoveredValue3) label: (recoveredValue5) type: (recoveredValue6) scope: (recoveredValue8) mdlVarDecl: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20157940; bytecode file offset 0xa54224"
!SGIleBuilder methodsFor: 'recovered'!
createSysConstDecl: recoveredArg1 genName: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGIlSysConstDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlLabel.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) ileScope: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue0) createSource: (recoveredValue2) genName: (recoveredValue3) label: (recoveredValue5) type: (recoveredValue6) scope: (recoveredValue8) mdlVarDecl: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2015795c; bytecode file offset 0xa54224"
!SGIleBuilder methodsFor: 'recovered'!
createMessageDecl: recoveredArg1 genName: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGIlMessageDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlLabel.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) ileScope: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue0) createSource: (recoveredValue2) genName: (recoveredValue3) label: (recoveredValue5) type: (recoveredValue6) scope: (recoveredValue8) mdlVarDecl: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20158170; bytecode file offset 0xa54a4c"
!SGIleBuilder methodsFor: 'recovered'!
rteRead: recoveredArg1 dataElement: recoveredArg2 argument: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlRTERead.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) asArray: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue4) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue5) dataElementName: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20158188; bytecode file offset 0xa54a4c"
!SGIleBuilder methodsFor: 'recovered'!
rteWrite: recoveredArg1 dataElement: recoveredArg2 argument: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlRTEWrite.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) asArray: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue4) goalInterval: (nil) runnableEntity: (nil) portName: (recoveredValue5) dataElementName: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201581b4; bytecode file offset 0xa54ac4"
!SGIleBuilder methodsFor: 'recovered'!
createRemLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlRem.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil) unsafe: (nil) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201581c8; bytecode file offset 0xa54ac4"
!SGIleBuilder methodsFor: 'recovered'!
createDivLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3 limitOverflowDivResult: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlDivConst.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil) unsafe: (nil) limitOverflowDivResult: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201581dc; bytecode file offset 0xa54ac4"
!SGIleBuilder methodsFor: 'recovered'!
createRemLeftConstant: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlConstRem.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil) unsafe: (nil) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201581f0; bytecode file offset 0xa54ac4"
!SGIleBuilder methodsFor: 'recovered'!
createDivLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3 limitOverflowDivResult: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlDiv.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil) unsafe: (nil) limitOverflowDivResult: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20158204; bytecode file offset 0xa54ac4"
!SGIleBuilder methodsFor: 'recovered'!
createRemLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3 expressionContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlRemConst.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (nil) goalInterval: (nil) unsafe: (nil) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20158554; bytecode file offset 0xa54e14"
!SGIleBuilder methodsFor: 'recovered'!
createMux: recoveredArg1 choices: recoveredArg2 defaultExpr: recoveredArg3 type: recoveredArg4 expressionContext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlMultiplex.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) condExpr: (recoveredValue3) choices: (recoveredValue4) defaultExpr: (recoveredValue5) stmntTempVar: (nil) charTableScope: (nil) expressionContext: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015878c; bytecode file offset 0xa5504c"
!SGIleBuilder methodsFor: 'recovered'!
createPackedExprAssignmentCharTable: recoveredArg1 type: recoveredArg2 curSizes: recoveredArg3 distributions: recoveredArg4 fixedCharTableInfo: recoveredArg5 ileExtrapolationValue: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlPackedExprAssignmentCharTable.
    recoveredValue1 := (self) source.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3) curSizes: (recoveredValue4) distributions: (recoveredValue5) fixedCharTableInfo: (recoveredValue6) ileExtrapolationValue: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201587e0; bytecode file offset 0xa550a0"
!SGIleBuilder methodsFor: 'recovered'!
createAdditionalElementDecl: recoveredArg1 genName: recoveredArg2 type: recoveredArg3 initValue: recoveredArg4 attributes: recoveredArg5 mdlVarDecl: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (self) ileScope: (recoveredValue5).
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := (recoveredValue7) source.
    recoveredValue9 := (self) createAdditionalElementDecl: (recoveredValue0) genName: (recoveredValue1) type: (recoveredValue2) initValue: (recoveredValue3) attributes: (recoveredValue4) scope: (recoveredValue6) source: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2015b760; bytecode file offset 0xa58020"
!SGIleBuilder methodsFor: 'recovered'!
switchExpr: recoveredArg1 stmnt: recoveredArg2 expressionContext: recoveredArg3 extraCast: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createSwitchExpr: (recoveredValue0) stmnt: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) castSwitchFromMultiplex: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) abstractControlFlowStmnt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20166140; bytecode file offset 0xa62a00"
!SGIleBuilder methodsFor: 'recovered'!
literalZero: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFloatConstant: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIntConstant: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20168910; bytecode file offset 0xa651d8"
!SGIleBuilder methodsFor: 'recovered'!
createRepeat: recoveredArg1 until: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of repeat without context').
    recoveredValue1 := SGIlRepeatStmnt.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) expr: (recoveredValue3) doStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20168b14; bytecode file offset 0xa653f8"
!SGIleBuilder methodsFor: 'recovered'!
createWhileExpr: recoveredArg1 stmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of while without context').
    recoveredValue1 := SGIlWhileStmnt.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) expr: (recoveredValue3) doStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20168b30; bytecode file offset 0xa653f8"
!SGIleBuilder methodsFor: 'recovered'!
createCppIfExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of #if without context').
    recoveredValue1 := SGIlCppIfStmnt.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) expr: (recoveredValue3) thenStmnt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2016a020; bytecode file offset 0xa668e8"
!SGIleBuilder methodsFor: 'recovered'!
rteIWrite: recoveredArg1 runnable: recoveredArg2 dataElement: recoveredArg3 arg: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlRTEIWrite.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileVoid.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) asArray: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue4) goalInterval: (nil) runnableEntity: (recoveredValue5) portName: (recoveredValue6) dataElementName: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2016a054; bytecode file offset 0xa66918"
!SGIleBuilder methodsFor: 'recovered'!
createSaveIndexUpper: recoveredArg1 arrayAccess: recoveredArg2 indexBound: recoveredArg3 indexExpr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGIlSafeIndexExpr.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) errLabel: (nil) indexBound: (recoveredValue6) arrayAccessExpr: (recoveredValue7) msgNumber: (21) indexExpr: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2016a084; bytecode file offset 0xa66948"
!SGIleBuilder methodsFor: 'recovered'!
createSaveIndexLower: recoveredArg1 arrayAccess: recoveredArg2 indexBound: recoveredArg3 indexExpr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGIlSafeIndexExpr.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := (recoveredValue1) source.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicType.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (recoveredValue0) createSource: (recoveredValue2) type: (recoveredValue4) expr: (recoveredValue5) errLabel: (nil) indexBound: (recoveredValue6) arrayAccessExpr: (recoveredValue7) msgNumber: (22) indexExpr: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2016a418; bytecode file offset 0xa66cd4"
!SGIleBuilder methodsFor: 'recovered'!
createGetHighPartExpr: recoveredArg1 secondOperand: recoveredArg2 goalInterval: recoveredArg3 limit: recoveredArg4 alternative: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlGetHighPart.
    recoveredValue1 := recoveredArg6.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (nil) goalInterval: (recoveredValue3) alternativeExpr: (recoveredValue4) serviceLabel: (nil) limit: (recoveredValue5) rightExpr: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20178a80; bytecode file offset 0xa75344"
!SGIleBuilder methodsFor: 'recovered'!
createExprStmnt: recoveredArg1 source: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIleExprStmnt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGIlExprStmnt.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) comments.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) comments: (recoveredStack3) expr: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201794e4; bytecode file offset 0xa75dac"
!SGIleBuilder methodsFor: 'recovered'!
createCppIfExpr: recoveredArg1 thenStmnt: recoveredArg2 elseStmnt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of #if-else without context').
    recoveredValue1 := SGIlCppIfElseStmnt.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) expr: (recoveredValue3) thenStmnt: (recoveredValue4) elseStmnt: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017a138; bytecode file offset 0xa769f4"
!SGIleBuilder methodsFor: 'recovered'!
createBinaryServiceOp: recoveredArg1 firstOperand: recoveredArg2 secondOperand: recoveredArg3 interval: recoveredArg4 goalInterval: recoveredArg5 limit: recoveredArg6 source: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlBinaryOpServiceExpr.
    recoveredValue1 := recoveredArg7.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (recoveredValue3) goalInterval: (recoveredValue4) alternativeExpr: (nil) serviceLabel: (recoveredValue5) limit: (recoveredValue6) rightExpr: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20187ae4; bytecode file offset 0xa843b0"
!SGIleBuilder methodsFor: 'recovered'!
createReturn: recoveredArg1 attributes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of return without context').
    recoveredValue1 := SGIlReturn.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := (self) comments.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue1) createSource: (recoveredValue2) comments: (recoveredValue3) expr: (recoveredValue4) attributes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20188bb4; bytecode file offset 0xa8547c"
!SGIleBuilder methodsFor: 'recovered'!
createSafeDiv: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (false) message: ('Condition of safe div with context').
    recoveredValue1 := SGIlSafeDivExpr.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue1) createSource: (recoveredValue2) type: (recoveredValue3) leftExpr: (recoveredValue4) rightExpr: (recoveredValue5) condExpr: (recoveredValue6) goalInterval: (nil).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20188be8; bytecode file offset 0xa854b0"
!SGIleBuilder methodsFor: 'recovered'!
createMux: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of mux without context').
    recoveredValue1 := SGIlMux.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue1) createSource: (recoveredValue2) type: (recoveredValue3) leftExpr: (recoveredValue4) rightExpr: (recoveredValue5) condExpr: (recoveredValue6) goalInterval: (nil).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20189024; bytecode file offset 0xa858e0"
!SGIleBuilder methodsFor: 'recovered'!
createBinaryOptionalServiceOp: recoveredArg1 firstOperand: recoveredArg2 secondOperand: recoveredArg3 interval: recoveredArg4 goalInterval: recoveredArg5 mixedSigned: recoveredArg6 source: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlBinaryOptionalServiceExpr.
    recoveredValue1 := recoveredArg7.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg5.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (nil) goalInterval: (recoveredValue3) alternativeExpr: (nil) serviceLabel: (recoveredValue4) limit: (false) rightExpr: (recoveredValue5) mixedSigned: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20192028; bytecode file offset 0xa8e8f8"
!SGIleBuilder methodsFor: 'recovered'!
createCosts: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGIlCosts.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileCalculateGeneralCosts.
    (recoveredValue2) general: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) ileCalculateRuntimeCosts.
    (recoveredValue5) runtime: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) ileCalculateGeneralCosts.
    (recoveredValue8) numericalPrecision: (recoveredValue10).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201987b4; bytecode file offset 0xa95070"
!SGIleBuilder methodsFor: 'recovered'!
createTernaryFloatServiceOp: recoveredArg1 firstOperand: recoveredArg2 secondOperand: recoveredArg3 thirdOperand: recoveredArg4 physModelInterval: recoveredArg5 type: recoveredArg6 source: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIlTernaryOptionalFloatServiceExpr.
    recoveredValue1 := recoveredArg7.
    recoveredValue2 := recoveredArg6.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) interval: (nil) goalInterval: (nil) alternativeExpr: (nil) serviceLabel: (recoveredValue4) limit: (false) rightExpr: (recoveredValue5) thirdOperand: (recoveredValue6) physModelInterval: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201988ac; bytecode file offset 0xa95168"
!SGIleBuilder methodsFor: 'recovered'!
createTernaryOptionalServiceOp: recoveredArg1 firstOperand: recoveredArg2 secondOperand: recoveredArg3 thirdOperand: recoveredArg4 interval: recoveredArg5 goalInterval: recoveredArg6 limit: recoveredArg7 alternative: recoveredArg8 source: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGIlTernaryOptionalServiceExpr.
    recoveredValue1 := recoveredArg9.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg6.
    recoveredValue4 := recoveredArg8.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg7.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (nil) goalInterval: (recoveredValue3) alternativeExpr: (recoveredValue4) serviceLabel: (recoveredValue5) limit: (recoveredValue6) rightExpr: (recoveredValue7) thirdOperand: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a99f8; bytecode file offset 0xaa62c0"
!SGIleBuilder methodsFor: 'recovered'!
createCharTableCastExpr: recoveredArg1 type: recoveredArg2 fromExpr: recoveredArg3 toVarDecl: recoveredArg4 toMethodDecl: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) ileAssertMatchingTypeDimensions: (recoveredValue2).
    recoveredValue3 := SGIlCharTableCast.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) source.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := recoveredArg4.
    recoveredValue10 := recoveredArg5.
    recoveredValue11 := (recoveredValue3) createSource: (recoveredValue5) type: (recoveredValue6) expr: (recoveredValue7) fromExpr: (recoveredValue8) toVarDecl: (recoveredValue9) toMethodDecl: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x201ad04c; bytecode file offset 0xaa990c"
!SGIleBuilder methodsFor: 'recovered'!
getSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 type: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialCallClass: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) goalInterval: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b3ec0; bytecode file offset 0xab0788"
!SGIleBuilder methodsFor: 'recovered'!
reduceToVariableArrayMatrix: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleDeclFieldAccessExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDecl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getVariableArrayMatrixValueDecl: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b554c; bytecode file offset 0xab1e0c"
!SGIleBuilder methodsFor: 'recovered'!
getIntervalFromExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBasicInterval.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) getIntervalFromType.
    ^recoveredBlock8Value1
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) ileBasicInterval.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b741c; bytecode file offset 0xab3ce8"
!SGIleBuilder methodsFor: 'recovered'!
createArtificialMux: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (false) message: ('Condition of arithficial mux with context').
    recoveredValue1 := SGIlArtificialMux.
    recoveredValue2 := (self) source.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createTypeImplAware: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue1) createSource: (recoveredValue2) type: (recoveredValue4) leftExpr: (recoveredValue5) rightExpr: (recoveredValue6) condExpr: (recoveredValue7) goalInterval: (nil).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201b7500; bytecode file offset 0xab3dc8"
!SGIleBuilder methodsFor: 'recovered'!
createForExpr: recoveredArg1 firstExpr: recoveredArg2 lastExpr: recoveredArg3 doStmnt: recoveredArg4 protectLoop: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) assertCondContext: (true) message: ('Condition of for loop with context').
    recoveredValue1 := SGIlForStmnt.
    recoveredValue2 := (self) statementSource.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := (recoveredValue1) createSource: (recoveredValue2) comments: (nil) expr: (recoveredValue3) firstExpr: (recoveredValue4) lastExpr: (recoveredValue5) doStmnt: (recoveredValue6) protectLoop: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d40d8; bytecode file offset 0xad09a0"
!SGIleBuilder methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) remLeftConstant: (recoveredStack1) rightConstant: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) generator.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) remLeftConstant: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3) expressionContext: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8b24; bytecode file offset 0xad53e8"
!SGIleBuilder methodsFor: 'recovered'!
source: recoveredArg1
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
    'use #useSource:for: instead of setting source directly.'
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            source := recoveredStack0.
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

"ASDBase.ic method 0x201dce7c; bytecode file offset 0xad9740"
!SGIleBuilder methodsFor: 'recovered'!
createMethodCall: recoveredArg1 args: recoveredArg2 mdlNode: recoveredArg3 type: recoveredArg4 completeCall: recoveredArg5
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGIlMethodCall.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGIlPmiMethodCall.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) args: (recoveredStack4) goalInterval: (recoveredStack5) scopeLabel: (recoveredStack6) mdlNode: (recoveredStack7).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f7160; bytecode file offset 0xaf3a28"
!SGIleBuilder methodsFor: 'recovered'!
createSimpleNoOverflow: recoveredArg1 goalInterval: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGIlSimpleNoOverflow.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := (recoveredStack6) interval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) originalExpr: (recoveredStack4) limitedExpr: (recoveredStack5) interval: (recoveredStack6) goalInterval: (recoveredStack7) overflownBits: (recoveredStack8).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f7960; bytecode file offset 0xaf4220"
!SGIleBuilder methodsFor: 'recovered'!
assertContext: recoveredArg1 on: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) notNil.
    recoveredBlock7Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [
    'The context of the assignment was lost'
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fbc78; bytecode file offset 0xaf8544"
!SGIleBuilder methodsFor: 'recovered'!
assignTempVar: recoveredArg1 stmntExpr: recoveredArg2 fromTempAssignExpr: recoveredArg3 source: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := SGCgVarAttributes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack5) cgAttrNoLimitAssignment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAssignLValue: (recoveredStack2) expr: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) exprStmnt: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020fc68; bytecode file offset 0xb0c534"
!SGIleBuilder methodsFor: 'recovered'!
createScalarBaseConstant: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_66414'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
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
            recoveredStack1 := (recoveredStack1) isFraction.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFloatConstant: (recoveredStack2).
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIntConstant: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021bbe0; bytecode file offset 0xb184b0"
!SGIleBuilder methodsFor: 'recovered'!
createFractionalConstant: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) representable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) denominator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) numerator.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIntConstant: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRepresentableFraction: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFraction: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021d104; bytecode file offset 0xb199d4"
!SGIleBuilder methodsFor: 'recovered'!
blockedStmntList: recoveredArg1 variables: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockedStmntList: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeControlFlow.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGIlVarBlockedStatementList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) statementSource.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) comments: (recoveredStack3) stmntList: (recoveredStack4) variables: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyStmnt: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021eb20; bytecode file offset 0xb1b3e4"
!SGIleBuilder methodsFor: 'recovered'!
createDivShiftExpr: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 goalInterval: recoveredArg4 limit: recoveredArg5 alternative: recoveredArg6 source: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SGIlDivShiftExpr.
    recoveredValue1 := recoveredArg7.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) interval.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) interval.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) interval.
    recoveredValue10 := (recoveredValue7) integerDiv: (recoveredValue9).
    recoveredValue11 := recoveredArg4.
    recoveredValue12 := recoveredArg6.
    recoveredValue13 := recoveredArg5.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (recoveredValue10) goalInterval: (recoveredValue11) alternativeExpr: (recoveredValue12) serviceLabel: (nil) limit: (recoveredValue13) rightExpr: (recoveredValue14) thirdOperand: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x2021eb5c; bytecode file offset 0xb1b420"
!SGIleBuilder methodsFor: 'recovered'!
createMulDivExpr: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 goalInterval: recoveredArg4 limit: recoveredArg5 alternative: recoveredArg6 source: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SGIlMulDivExpr.
    recoveredValue1 := recoveredArg7.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) interval.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) interval.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) interval.
    recoveredValue10 := (recoveredValue7) integerDiv: (recoveredValue9).
    recoveredValue11 := recoveredArg4.
    recoveredValue12 := recoveredArg6.
    recoveredValue13 := recoveredArg5.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := (recoveredValue0) createSource: (recoveredValue1) type: (nil) leftExpr: (recoveredValue2) interval: (recoveredValue10) goalInterval: (recoveredValue11) alternativeExpr: (recoveredValue12) serviceLabel: (nil) limit: (recoveredValue13) rightExpr: (recoveredValue14) thirdOperand: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x20221a98; bytecode file offset 0xb1e368"
!SGIleBuilder methodsFor: 'recovered'!
createIfExpr: recoveredArg1 thenStmnt: recoveredArg2
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
            recoveredStack2 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'Condition of if without context'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) assertCondContext: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBlockedStmntList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBlockedStatementList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGIlIfStmnt.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) statementSource.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) comments: (recoveredStack3) expr: (recoveredStack4) thenStmnt: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20222030; bytecode file offset 0xb1e8e8"
!SGIleBuilder methodsFor: 'recovered'!
useSource: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := source.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    source := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Value0.
    source := recoveredBlock17Value1.
    recoveredBlock17Value0
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20222060; bytecode file offset 0xb1e918"
!SGIleBuilder methodsFor: 'recovered'!
useStatementSource: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := statementSource.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    statementSource := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Value0.
    statementSource := recoveredBlock17Value1.
    recoveredBlock17Value0
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20222200; bytecode file offset 0xb1ead8"
!SGIleBuilder methodsFor: 'recovered'!
createAssertInterval: recoveredArg1 expr: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGCgAdaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cgAttrNoLimitAssignment.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cgAttrNoLimitOverflow.
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := SGIlAssertIntervalExpr.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) source.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) generator.
    recoveredValue10 := (recoveredValue9) expressionContext.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue4) createSource: (recoveredValue6) type: (recoveredValue7) expr: (recoveredValue8) expressionContext: (recoveredValue10) attributes: (recoveredValue11) goalInterval: (nil) assertInterval: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x202453a8; bytecode file offset 0xb41ce4"
!SGIleBuilder methodsFor: 'recovered'!
lessEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createLessEqualLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) generalOptimizationStrategy.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyExpr: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202453c0; bytecode file offset 0xb41ce4"
!SGIleBuilder methodsFor: 'recovered'!
notEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createNotEqualLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) generalOptimizationStrategy.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyExpr: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202453d8; bytecode file offset 0xb41ce4"
!SGIleBuilder methodsFor: 'recovered'!
lessLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createLessLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) generalOptimizationStrategy.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyExpr: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202453f0; bytecode file offset 0xb41ce4"
!SGIleBuilder methodsFor: 'recovered'!
greaterEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createGreaterEqualLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) generalOptimizationStrategy.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyExpr: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20245408; bytecode file offset 0xb41ce4"
!SGIleBuilder methodsFor: 'recovered'!
greaterLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createGreaterLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) generalOptimizationStrategy.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyExpr: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20245420; bytecode file offset 0xb41ce4"
!SGIleBuilder methodsFor: 'recovered'!
equalLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createEqualLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) expressionContext: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) generalOptimizationStrategy.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyExpr: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20245cac; bytecode file offset 0xb42568"
!SGIleBuilder methodsFor: 'recovered'!
overflowOfInterval: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) representable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20258918; bytecode file offset 0xb551e8"
!SGIleBuilder methodsFor: 'recovered'!
createAdditionalElementDecl: recoveredArg1 genName: recoveredArg2 type: recoveredArg3 initValue: recoveredArg4 attributes: recoveredArg5 scope: recoveredArg6 source: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg5.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) asModelType.
    (recoveredValue0) modelTypeName: (recoveredValue2).
    recoveredValue3 := recoveredArg5.
    recoveredValue4 := (self) generator.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue4) memoryClassForType: (recoveredValue5) attributes: (recoveredValue6) ref: (false).
    (recoveredValue3) resolvedMemoryClass: (recoveredValue7).
    recoveredValue8 := SGIlAdditionalElementDecl.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := recoveredArg6.
    recoveredValue14 := recoveredArg4.
    recoveredValue15 := recoveredArg5.
    recoveredValue16 := (recoveredValue8) createSource: (recoveredValue9) genName: (recoveredValue10) label: (recoveredValue11) type: (recoveredValue12) scope: (recoveredValue13) initValue: (recoveredValue14) attributes: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x2026eb04; bytecode file offset 0xb6b3dc"
!SGIleBuilder methodsFor: 'recovered'!
assertIntervalFailure: recoveredArg1 value: recoveredArg2 msgNumber: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) generator.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isControllerVariant.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    'For controller variant, no AssertIntervalFailtureExpr should be built.'
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := SGIlAssertIntervalFailureExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) interval: (recoveredStack4) msgNumber: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278d28; bytecode file offset 0xb755fc"
!SGIleBuilder methodsFor: 'recovered'!
createFloatLimitedExpr: recoveredArg1 lowerBound: recoveredArg2 upperBound: recoveredArg3 type: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasCodeGenHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SGIlFloatLimitedExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := RBInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) createDefault.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := (recoveredStack6) createIntervalLeft: (recoveredStack7) right: (recoveredStack8).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack9 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := (recoveredStack8) createFloatConstant: (recoveredStack9).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack10 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack9 := (recoveredStack9) createFloatConstant: (recoveredStack10).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) expr: (recoveredStack4) interval: (recoveredStack5) physModelInterval: (recoveredStack6) compareEqual: (recoveredStack7) lowerBound: (recoveredStack8) upperBound: (recoveredStack9).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20290968; bytecode file offset 0xb8d238"
!SGIleBuilder methodsFor: 'recovered'!
createLimitedExpr: recoveredArg1 lowerBound: recoveredArg2 upperBound: recoveredArg3 type: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasCodeGenHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SGIlLimitedExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) createIntervalLeft: (recoveredStack6) right: (recoveredStack7).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack8 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := (recoveredStack7) createConstantValue: (recoveredStack8).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := (recoveredStack7) createOpRoundToInfinity: (recoveredStack8).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack8 := (recoveredStack8) createConstantValue: (recoveredStack9).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack8 := (recoveredStack8) createOpRoundToInfinity: (recoveredStack9).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) expr: (recoveredStack4) interval: (recoveredStack5) compareEqual: (recoveredStack6) lowerBound: (recoveredStack7) upperBound: (recoveredStack8).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202909b8; bytecode file offset 0xb8d280"
!SGIleBuilder methodsFor: 'recovered'!
createDivLeftConst: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3 limitOverflowDivResult: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueOne.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGIlReciprocalExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) leftExpr: (recoveredStack4) rightExpr: (recoveredStack5) limit: (recoveredStack6) interval: (recoveredStack7) goalInterval: (recoveredStack8) unsafe: (recoveredStack9) limitOverflowDivResult: (recoveredStack10).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGIlConstDiv.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack10 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) leftExpr: (recoveredStack4) rightExpr: (recoveredStack5) limit: (recoveredStack6) interval: (recoveredStack7) goalInterval: (recoveredStack8) unsafe: (recoveredStack9) limitOverflowDivResult: (recoveredStack10).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20299ebc; bytecode file offset 0xb96788"
!SGIleBuilder methodsFor: 'recovered'!
createSwitchExpr: recoveredArg1 stmnt: recoveredArg2 expressionContext: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg3.
    recoveredBlock4Value1 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Context is missing for switch statement'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := SGIlSwitchStmnt.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) expr: (recoveredStack3) stmnt: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a6454; bytecode file offset 0xba2d2c"
!SGIleBuilder methodsFor: 'recovered'!
createSymbol: recoveredArg1 value: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63453'.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBEnumeration.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) appliedInverseToNumber: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := SGIlSymbol.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) value: (recoveredStack4) roundToInfinity: (recoveredStack5) label: (recoveredStack6) enumType: (recoveredStack7).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a7adc; bytecode file offset 0xba43ac"
!SGIleBuilder methodsFor: 'recovered'!
createIfExpr: recoveredArg1 thenStmnt: recoveredArg2 elseStmnt: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'Condition of if-else without context'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) assertCondContext: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBlockedStmntList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBlockedStatementList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBlockedStmntList.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBlockedStatementList.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := SGIlIfElseStmnt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) statementSource.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) comments: (recoveredStack3) expr: (recoveredStack4) thenStmnt: (recoveredStack5) elseStmnt: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202aaf48; bytecode file offset 0xba7820"
!SGIleBuilder methodsFor: 'recovered'!
createDereferencedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) type.
    recoveredBlock4Value2 := (recoveredBlock4Value1) isCgReferenceType.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'DereferencedExpr can only be created for reference typed expression.'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGIlDereferencedExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) goalInterval: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ac0ac; bytecode file offset 0xba897c"
!SGIleBuilder methodsFor: 'recovered'!
createIntConstant: recoveredArg1 type: recoveredArg2 roundToInfinity: recoveredArg3 suffix: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isInteger.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'aValue is expected to be integer.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := SGIlIntConstant.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) value: (recoveredStack3) roundToInfinity: (recoveredStack4) suffix: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c5d20; bytecode file offset 0xbc25f4"
!SGIleBuilder methodsFor: 'recovered'!
shiftLeftAllowed: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgWrapAroundIntegerType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleUnsignedTypedExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) shiftForMul.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e4484; bytecode file offset 0xbe0d5c"
!SGIleBuilder methodsFor: 'recovered'!
createImplCastAssignWithSelectableType: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isCgArithmeticType.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Expect arithmetic type for impl cast.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := SGIlImplCastAssignWithSelectableType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) generator.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) expressionContext: (recoveredStack4) attributes: (recoveredStack5) goalInterval: (recoveredStack6).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fe4f4; bytecode file offset 0xbfadc8"
!SGIleBuilder methodsFor: 'recovered'!
variableArrayMatrixConstCast: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) type.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isCgVariableArray.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 25].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg2.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCgVariableArray.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    'variableArrayMatrixConstCast expects expression of variable array reference type'
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := SGIlVariableArrayMatrixConstCast.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031307c; bytecode file offset 0xc0f958"
!SGIleBuilder methodsFor: 'recovered'!
betweenExpr: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) commaExpr: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20314b28; bytecode file offset 0xc11400"
!SGIleBuilder methodsFor: 'recovered'!
shiftRightAllowed: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgWrapAroundIntegerType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleConstant.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFloatTypedExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleUnsignedTypedExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) shiftForDiv.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031dfe8; bytecode file offset 0xc1a8b4"
!SGIleBuilder methodsFor: 'recovered'!
limitExpr: recoveredArg1 lowerBound: recoveredArg2 upperBound: recoveredArg3 type: recoveredArg4
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
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExpr: (recoveredStack2) upperBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExpr: (recoveredStack2) lowerBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) generalOptimizationStrategy.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLimitedExpr: (recoveredStack2) lowerBound: (recoveredStack3) upperBound: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyExpr: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203228a4; bytecode file offset 0xc1f1c0"
!SGIleBuilder methodsFor: 'recovered'!
maxLeftConst: recoveredArg1 rightConst: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxLeftConst: (recoveredStack1) rightConst: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203228c0; bytecode file offset 0xc1f1c0"
!SGIleBuilder methodsFor: 'recovered'!
addLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLeftConst: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203228dc; bytecode file offset 0xc1f1c0"
!SGIleBuilder methodsFor: 'recovered'!
mulLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulLeftConst: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableDoubleBitSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203228f8; bytecode file offset 0xc1f1c0"
!SGIleBuilder methodsFor: 'recovered'!
minLeftConst: recoveredArg1 rightConst: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) minLeftConst: (recoveredStack1) rightConst: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) minLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) minLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20322950; bytecode file offset 0xc1f21c"
!SGIleBuilder methodsFor: 'recovered'!
subLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) subLeftConst: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) subLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) subLeftConstant: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20324e90; bytecode file offset 0xc21770"
!SGIleBuilder methodsFor: 'recovered'!
getVariableArrayMatrixSizeDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isCgVariableArray.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Call this method only for variable array/matrix.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := variableArrayMatrixSizeDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'size'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'size'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) dimensions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) sizeType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := SGCgVarAttributes.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) create.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAdditionalElementDecl: (recoveredStack1) genName: (recoveredStack2) type: (recoveredStack3) initValue: (recoveredStack4) attributes: (recoveredStack5) scope: (recoveredStack6) source: (recoveredStack7).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            variableArrayMatrixSizeDecl := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := variableArrayMatrixSizeDecl.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20324f00; bytecode file offset 0xc217e0"
!SGIleBuilder methodsFor: 'recovered'!
getVariableArrayMatrixSizeXDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isCgVariableArray.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Call this method only for variable array/matrix.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := variableArrayMatrixSizeXDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'xsize'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'xsize'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) dimensions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) sizeType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := SGCgVarAttributes.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) create.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAdditionalElementDecl: (recoveredStack1) genName: (recoveredStack2) type: (recoveredStack3) initValue: (recoveredStack4) attributes: (recoveredStack5) scope: (recoveredStack6) source: (recoveredStack7).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            variableArrayMatrixSizeXDecl := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := variableArrayMatrixSizeXDecl.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20324f70; bytecode file offset 0xc21850"
!SGIleBuilder methodsFor: 'recovered'!
getVariableArrayMatrixSizeYDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isCgVariableArray.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Call this method only for variable array/matrix.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := variableArrayMatrixSizeYDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'ysize'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'ysize'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) dimensions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) sizeType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := SGCgVarAttributes.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) create.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAdditionalElementDecl: (recoveredStack1) genName: (recoveredStack2) type: (recoveredStack3) initValue: (recoveredStack4) attributes: (recoveredStack5) scope: (recoveredStack6) source: (recoveredStack7).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            variableArrayMatrixSizeYDecl := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := variableArrayMatrixSizeYDecl.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20329688; bytecode file offset 0xc25f58"
!SGIleBuilder methodsFor: 'recovered'!
checkFloatAndConstLeftExpr: recoveredArg1 rightExpr: recoveredArg2
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIntConstant.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleFloatConstant.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIntConstant.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleFloatConstant.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20330660; bytecode file offset 0xc2cf2c"
!SGIleBuilder methodsFor: 'recovered'!
createMulShiftExpr: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 goalInterval: recoveredArg4 limit: recoveredArg5 alternative: recoveredArg6 source: recoveredArg7
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerDiv: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerDiv: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGIlMulShiftExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := recoveredArg5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack10 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack11 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) leftExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) alternativeExpr: (recoveredStack7) serviceLabel: (recoveredStack8) limit: (recoveredStack9) rightExpr: (recoveredStack10) thirdOperand: (recoveredStack11).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033c400; bytecode file offset 0xc38ce4"
!SGIleBuilder methodsFor: 'recovered'!
createShiftLeftExpr: recoveredArg1 constant: recoveredArg2 type: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Shift expression on fraction'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Shift expression with negative constant'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'Shift expression with floating point child'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := SGIlShiftLeft.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) leftExpr: (recoveredStack4) rightExpr: (recoveredStack5) limit: (recoveredStack6) interval: (recoveredStack7) goalInterval: (recoveredStack8).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034b83c; bytecode file offset 0xc48124"
!SGIleBuilder methodsFor: 'recovered'!
calculateTernaryServiceIntervalFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleLimitServiceExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := (recoveredBlock40Value0) serviceLabel.
    recoveredBlock40Value2 := ('Unknown ternary service type') , (recoveredBlock40Value1).
    recoveredBlock40Value3 := (recoveredBlock40Value2) , ('.').
    recoveredBlock40Value3
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034c28c; bytecode file offset 0xc48b70"
!SGIleBuilder methodsFor: 'recovered'!
createShiftRightExpr: recoveredArg1 constant: recoveredArg2 type: recoveredArg3 limitOverflowDivResult: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Shift expression on fraction'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Shift expression with negative constant'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'Shift expression with floating point child'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := SGIlShiftRight.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack10 := recoveredArg4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) leftExpr: (recoveredStack4) rightExpr: (recoveredStack5) limit: (recoveredStack6) interval: (recoveredStack7) goalInterval: (recoveredStack8) unsafe: (recoveredStack9) limitOverflowDivResult: (recoveredStack10).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20352f1c; bytecode file offset 0xc4f804"
!SGIleBuilder methodsFor: 'recovered'!
ileScope: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgScope.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLocalScope: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlImported.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SGCgScope.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImportedScope: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlClassVarDecl.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := SGCgScope.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) createExportedScope: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [
    'Missing scope for mdlElement'
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035b8b8; bytecode file offset 0xc581a0"
!SGIleBuilder methodsFor: 'recovered'!
createParmAssign: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3
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
            recoveredStack2 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'Condition of parameter without context'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) assertCondContext: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := (self) generator.
    recoveredBlock23Value1 := (recoveredBlock23Value0) expressionContext.
    recoveredBlock23Value2 := (recoveredBlock23Value1) isArithmeticContext.
    recoveredBlock23Value3 := (recoveredBlock23Value2) not.
    recoveredBlock23Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [
    'expression of reference type have always a non-arithmetic context.'
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := SGIlParmAssign.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) generator.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) expressionContext.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) expr: (recoveredStack4) expressionContext: (recoveredStack5) parmAttributes: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035e980; bytecode file offset 0xc5b284"
!SGIleBuilder methodsFor: 'recovered'!
createNotEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg3.
    recoveredBlock4Value1 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Build relational operator should always be done with context.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFloatAndConstLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := SGIlNotEqual.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBooleanType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035e9ac; bytecode file offset 0xc5b284"
!SGIleBuilder methodsFor: 'recovered'!
createEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg3.
    recoveredBlock4Value1 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Build relational operator should always be done with context.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFloatAndConstLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := SGIlEqual.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBooleanType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20369610; bytecode file offset 0xc65ef4"
!SGIleBuilder methodsFor: 'recovered'!
calculateUnaryServiceIntervalFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleAbsServiceExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegServiceExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredArg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) serviceLabel.
    recoveredBlock44Value2 := ('Unknown unary service type') , (recoveredBlock44Value1).
    recoveredBlock44Value3 := (recoveredBlock44Value2) , ('.').
    recoveredBlock44Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203773c8; bytecode file offset 0xc73ca4"
!SGIleBuilder methodsFor: 'recovered'!
createReferencedExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleAbstractIdentifier.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleDirectAccessExpr.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleFieldAccessExpr.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isIleIndexedExpr.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    'ReferencedExpr should only contain identifiers.'
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := SGIlReferencedExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037d750; bytecode file offset 0xc7a034"
!SGIleBuilder methodsFor: 'recovered'!
getVariableArrayMatrixValueDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isCgVariableArray.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Call this method only for variable array/matrix.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := variableArrayMatrixValueDecls.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            variableArrayMatrixValueDecls := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := variableArrayMatrixValueDecls.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := recoveredArg1.
    recoveredBlock43Value1 := SGCgVarAttributes.
    recoveredBlock43Value2 := (recoveredBlock43Value1) create.
    recoveredBlock43Value3 := (self) createAdditionalElementDecl: ('val') genName: ('val') type: (recoveredBlock43Value0) initValue: (nil) attributes: (recoveredBlock43Value2) scope: (nil) source: (nil).
    recoveredBlock43Value3
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203836b8; bytecode file offset 0xc7ff98"
!SGIleBuilder methodsFor: 'recovered'!
createReferencedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleAbstractIdentifier.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleDirectAccessExpr.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleFieldAccessExpr.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isIleIndexedExpr.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    'ReferencedExpr should only contain identifiers.'
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := SGIlReferencedExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203921e8; bytecode file offset 0xc8eacc"
!SGIleBuilder methodsFor: 'recovered'!
createIRVCopyElementDecl: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3 scope: recoveredArg4 source: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGCgVarAttributes.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cgAttrVariable.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cgAttrReference.
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) cgAttrVolatile.
    recoveredLocal1 := recoveredValue1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) memoryClass.
    (recoveredBlock22Value0) memoryClass: (recoveredBlock22Value2).
    recoveredBlock22Value3 := recoveredLocal1.
    recoveredBlock22Value4 := recoveredBlock22Arg1.
    recoveredBlock22Value5 := (recoveredBlock22Value4) memoryClass.
    recoveredBlock22Value6 := (recoveredBlock22Value3) resolvedMemoryClass: (recoveredBlock22Value5).
    recoveredBlock22Value6
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := SGCgScope.
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue11) createExportedScope: (recoveredValue12).
    recoveredValue14 := recoveredArg5.
    recoveredValue15 := (self) createAdditionalElementDecl: (recoveredValue7) genName: (recoveredValue8) type: (recoveredValue9) initValue: (nil) attributes: (recoveredValue10) scope: (recoveredValue13) source: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x203c042c; bytecode file offset 0xcbcd18"
!SGIleBuilder methodsFor: 'recovered'!
createForcedCastExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) ileAssertMatchingTypeDimensions: (recoveredValue2).
    recoveredValue3 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := true.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isIleReferencedExpr.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 33].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isRBVoidPointer.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    recoveredValue4 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 recoveredBlock34Value6 recoveredBlock34Value7 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := (recoveredBlock34Value0) errLabel.
    recoveredBlock34Value2 := ('Cannot cast ') , (recoveredBlock34Value1).
    recoveredBlock34Value3 := (recoveredBlock34Value2) , (' to ').
    recoveredBlock34Value4 := recoveredArg2.
    recoveredBlock34Value5 := (recoveredBlock34Value4) getImplType.
    recoveredBlock34Value6 := (recoveredBlock34Value5) asCType.
    recoveredBlock34Value7 := (recoveredBlock34Value3) , (recoveredBlock34Value6).
    recoveredBlock34Value7
].
    (self) ileAssert: (recoveredValue3) message: (recoveredValue4).
    recoveredValue5 := SGIlForcedCast.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) source.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue5) createSource: (recoveredValue7) type: (recoveredValue8) expr: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x203d7c94; bytecode file offset 0xcd4620"
!SGIleBuilder methodsFor: 'recovered'!
createLessEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isArithmeticContext.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) type.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCgEnumType.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    'Relational operator should always have an arithmetic context.'
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFloatAndConstLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := SGIlLessEqual.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBooleanType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d7ccc; bytecode file offset 0xcd4620"
!SGIleBuilder methodsFor: 'recovered'!
createGreaterEqualLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isArithmeticContext.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) type.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCgEnumType.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    'Relational operator should always have an arithmetic context.'
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFloatAndConstLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := SGIlGreaterEqual.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBooleanType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d7d04; bytecode file offset 0xcd4620"
!SGIleBuilder methodsFor: 'recovered'!
createGreaterLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isArithmeticContext.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) type.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCgEnumType.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    'Relational operator should always have an arithmetic context.'
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFloatAndConstLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := SGIlGreater.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBooleanType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d7d3c; bytecode file offset 0xcd4620"
!SGIleBuilder methodsFor: 'recovered'!
createLessLeftExpr: recoveredArg1 rightExpr: recoveredArg2 expressionContext: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isArithmeticContext.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) type.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCgEnumType.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    'Relational operator should always have an arithmetic context.'
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFloatAndConstLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := SGIlLess.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBooleanType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) expressionContext: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e1fec; bytecode file offset 0xcde8cc"
!SGIleBuilder methodsFor: 'recovered'!
createAssignLValue: recoveredArg1 expr: recoveredArg2 expressionContext: recoveredArg3 attributes: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Condition of assign without context'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) assertCondContext: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) isIleLValue.
    recoveredBlock12Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredArg2.
    recoveredBlock23Value1 := (recoveredBlock23Value0) errLabel.
    recoveredBlock23Value2 := (recoveredBlock23Value1) , (' can not be used as lValue').
    recoveredBlock23Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := SGIlAssign.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) expressionContext: (recoveredStack4) lValue: (recoveredStack5) attributes: (recoveredStack6).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204029e8; bytecode file offset 0xcff2cc"
!SGIleBuilder methodsFor: 'recovered'!
mulLeftExpr: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isIleArithmeticExpr.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'Operands of multiplication must be arithmetic'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftLeftAllowed: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValuePowerOfTwo.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) generalOptimizationStrategy.
            recoveredPC := 79.
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
            recoveredStack3 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMulLeftExpr: (recoveredStack2) rightConstant: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyExpr: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20418ba0; bytecode file offset 0xd15498"
!SGIleBuilder methodsFor: 'recovered'!
tempAssign: recoveredArg1 class: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) generator.
    recoveredBlock4Value1 := (recoveredBlock4Value0) expressionContext.
    recoveredBlock4Value2 := (recoveredBlock4Value1) isNil.
    recoveredBlock4Value3 := (recoveredBlock4Value2) not.
    recoveredBlock4Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    'temp assign needs context.'
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := true.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredArg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isIleBinaryRelOp.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 54] ifFalse: [recoveredBlock26PC := 42].
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack1 := self.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) generator.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) expressionContext.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) isArithmeticContext.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack2 := recoveredArg1.
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isIleArithmeticExpr.
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) = (recoveredBlock26Stack2).
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [
    'context and expression are not compatible concerning arithmetic or not'
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeOperatorSimplificationImplAware.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) createTypeImplAware: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := (recoveredStack6) generator.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) createSource: (recoveredStack3) type: (recoveredStack4) expr: (recoveredStack5) expressionContext: (recoveredStack6) tempVar: (recoveredStack7).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignIdentifier: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyExpr: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204262e0; bytecode file offset 0xd22bcc"
!SGIleBuilder methodsFor: 'recovered'!
createLValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleAbstractIdentifier.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 64] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleFieldAccessExpr.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 64] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleDirectAccessExpr.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 64] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleIndexedExpr.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 64] ifFalse: [recoveredBlock4PC := 48].
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleANSICExpr.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 64] ifFalse: [recoveredBlock4PC := 58].
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isIleDereferencedExpr.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 |
    recoveredBlock65Value0 := recoveredArg1.
    recoveredBlock65Value1 := (recoveredBlock65Value0) errLabel.
    recoveredBlock65Value2 := (recoveredBlock65Value1) , (' can not be used as lValue').
    recoveredBlock65Value2
].
    (self) ileAssert: (recoveredValue0) message: (recoveredValue1).
    recoveredValue2 := SGIlLValue.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) source.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) type.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue2) createSource: (recoveredValue4) type: (recoveredValue6) expr: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2043ab40; bytecode file offset 0xd37434"
!SGIleBuilder methodsFor: 'recovered'!
createCastExpr: recoveredArg1 type: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ileAssertMatchingTypeDimensions: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredArg2.
    recoveredBlock13Value1 := (recoveredBlock13Value0) notNil.
    recoveredBlock13Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    'Undefined cast type'
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := true.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredArg1.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isIleReferencedExpr.
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 52] ifFalse: [recoveredBlock36PC := 58].
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack1 := recoveredArg2.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) isRBVoidPointer.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 recoveredBlock59Value7 |
    recoveredBlock59Value0 := recoveredArg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) errLabel.
    recoveredBlock59Value2 := ('Cannot cast ') , (recoveredBlock59Value1).
    recoveredBlock59Value3 := (recoveredBlock59Value2) , (' to ').
    recoveredBlock59Value4 := recoveredArg2.
    recoveredBlock59Value5 := (recoveredBlock59Value4) getImplType.
    recoveredBlock59Value6 := (recoveredBlock59Value5) asCType.
    recoveredBlock59Value7 := (recoveredBlock59Value3) , (recoveredBlock59Value6).
    recoveredBlock59Value7
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := SGIlCast.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20468c1c; bytecode file offset 0xd65500"
!SGIleBuilder methodsFor: 'recovered'!
divLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) divLeftConst: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatConstant.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatConstant.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleFloatConstant.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIntConstant.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableDoubleBitSize.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) divLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) divLeftConstant: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a71e8; bytecode file offset 0xda3adc"
!SGIleBuilder methodsFor: 'recovered'!
compare: recoveredArg1 operator: recoveredArg2 and: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'eq'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) equal: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'ne'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEqual: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'gt'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterThan: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'lt'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessThan: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'ge'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'le'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessEqualThan: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock122Value0 recoveredBlock122Value1 |
    recoveredBlock122Value0 := recoveredArg2.
    recoveredBlock122Value1 := ('Unknown operation ') , (recoveredBlock122Value0).
    recoveredBlock122Value1
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2051fdd4; bytecode file offset 0xe1c6e8"
!SGIleBuilder methodsFor: 'recovered'!
createNegNoOverflow: recoveredArg1 goalInterval: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isEmpty.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Empty interval during overflow limitation of negation'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) overflowOfInterval: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSimpleNoOverflow: (recoveredStack1) goalInterval: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock57Value0 recoveredBlock57Value1 |
    recoveredBlock57Value0 := recoveredLocal3.
    recoveredBlock57Value1 := (recoveredBlock57Value0) <= (1).
    recoveredBlock57Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [
    'If the leftExpr is representable, the overflow is at most one bit'
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'Call_63998'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 'Call_64000'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableSigned.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableUnsigned.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 169].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'Call_64032'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 'Call_64046'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := SGIlNegNoOverflow.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) originalExpr: (recoveredStack3) limitedExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) overflownBits: (recoveredStack7).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054ba28; bytecode file offset 0xe4833c"
!SGIleBuilder methodsFor: 'recovered'!
calculateBinaryServiceIntervalFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddServiceExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubServiceExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulServiceExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSquare.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivServiceExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerDiv: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemServiceExpr.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerRem: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinServiceExpr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitUpperServiceExpr.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxServiceExpr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitLowerServiceExpr.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock196Value0 recoveredBlock196Value1 recoveredBlock196Value2 recoveredBlock196Value3 |
    recoveredBlock196Value0 := recoveredArg1.
    recoveredBlock196Value1 := (recoveredBlock196Value0) serviceLabel.
    recoveredBlock196Value2 := ('Unknown binary service type') , (recoveredBlock196Value1).
    recoveredBlock196Value3 := (recoveredBlock196Value2) , ('.').
    recoveredBlock196Value3
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056fa88; bytecode file offset 0xe6c3a8"
!SGIleBuilder methodsFor: 'recovered'!
createCommaExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg1.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) last.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            (recoveredBlock28Stack1 ~~ recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 80] ifFalse: [recoveredBlock28PC := 46].
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) isIleCommaExpr.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 54] ifFalse: [recoveredBlock28PC := 68].
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) args.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) addAll: (recoveredBlock28Stack2).
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28PC := 76.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 74.
        ].
        recoveredBlock28Step = 74 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 76.
        ].
        recoveredBlock28Step = 76 ifTrue: [
            recoveredBlock28PC := 154.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 81.
        ].
        recoveredBlock28Step = 81 ifTrue: [
            recoveredBlock28Stack2 := [
    | recoveredBlock28Block81Value0 recoveredBlock28Block81Value1 |
    recoveredBlock28Block81Value0 := recoveredBlock28Arg1.
    recoveredBlock28Block81Value1 := (recoveredBlock28Block81Value0) isIleExpr.
    recoveredBlock28Block81Value1
].
            recoveredBlock28PC := 94.
        ].
        recoveredBlock28Step = 94 ifTrue: [
            recoveredBlock28Stack3 := [
    'A statement cannot be placed inside a comma expression'
].
            recoveredBlock28PC := 96.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28PC := 103.
        ].
        recoveredBlock28Step = 103 ifTrue: [
            (recoveredBlock28Stack1) ileAssert: (recoveredBlock28Stack2) message: (recoveredBlock28Stack3).
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack1 := SGIlCollectSideEffectExprVisitor.
            recoveredBlock28PC := 107.
        ].
        recoveredBlock28Step = 107 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) create.
            recoveredBlock28PC := 109.
        ].
        recoveredBlock28Step = 109 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 112.
        ].
        recoveredBlock28Step = 112 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 115.
        ].
        recoveredBlock28Step = 115 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 118.
        ].
        recoveredBlock28Step = 118 ifTrue: [
            (recoveredBlock28Stack1) collectSideEffects: (recoveredBlock28Stack2).
            recoveredBlock28PC := 120.
        ].
        recoveredBlock28Step = 120 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 123.
        ].
        recoveredBlock28Step = 123 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) impossibleMux.
            recoveredBlock28PC := 125.
        ].
        recoveredBlock28Step = 125 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 128] ifFalse: [recoveredBlock28PC := 140].
        ].
        recoveredBlock28Step = 128 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 131.
        ].
        recoveredBlock28Step = 131 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 134.
        ].
        recoveredBlock28Step = 134 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 136.
        ].
        recoveredBlock28Step = 136 ifTrue: [
            recoveredBlock28PC := 150.
        ].
        recoveredBlock28Step = 140 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 143.
        ].
        recoveredBlock28Step = 143 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local1.
            recoveredBlock28PC := 146.
        ].
        recoveredBlock28Step = 146 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) sideEffects.
            recoveredBlock28PC := 148.
        ].
        recoveredBlock28Step = 148 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) addAll: (recoveredBlock28Stack2).
            recoveredBlock28PC := 150.
        ].
        recoveredBlock28Step = 150 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 151.
        ].
        recoveredBlock28Step = 151 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 154.
        ].
        recoveredBlock28Step = 154 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Local1 recoveredBlock166Stack0 recoveredBlock166Stack1 recoveredBlock166Stack2 recoveredBlock166Stack3 recoveredBlock166Stack4 recoveredBlock166PC recoveredBlock166Step recoveredBlock166Done recoveredBlock166Result |
    recoveredBlock166Stack0 := self.
    recoveredBlock166PC := 172.
    recoveredBlock166Done := false.
    [recoveredBlock166Done not] whileTrue: [
        recoveredBlock166Step := recoveredBlock166PC.
        recoveredBlock166Step = 172 ifTrue: [
            recoveredBlock166Stack1 := true.
            recoveredBlock166PC := 173.
        ].
        recoveredBlock166Step = 173 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg1.
            recoveredBlock166PC := 174.
        ].
        recoveredBlock166Step = 174 ifTrue: [
            recoveredBlock166Stack2 := (recoveredBlock166Stack2) isIleTempVarIdentifier.
            recoveredBlock166PC := 176.
        ].
        recoveredBlock166Step = 176 ifTrue: [
            (recoveredBlock166Stack2) ifTrue: [recoveredBlock166PC := 180] ifFalse: [recoveredBlock166PC := 212].
        ].
        recoveredBlock166Step = 180 ifTrue: [
            recoveredBlock166Stack2 := recoveredLocal1.
            recoveredBlock166PC := 183.
        ].
        recoveredBlock166Step = 183 ifTrue: [
            recoveredBlock166Stack3 := recoveredBlock166Arg1.
            recoveredBlock166PC := 184.
        ].
        recoveredBlock166Step = 184 ifTrue: [
            recoveredBlock166Stack3 := (recoveredBlock166Stack3) tempAssign.
            recoveredBlock166PC := 186.
        ].
        recoveredBlock166Step = 186 ifTrue: [
            recoveredBlock166Stack2 := (recoveredBlock166Stack2) includes: (recoveredBlock166Stack3).
            recoveredBlock166PC := 188.
        ].
        recoveredBlock166Step = 188 ifTrue: [
            recoveredBlock166Stack2 := (recoveredBlock166Stack2) not.
            recoveredBlock166PC := 189.
        ].
        recoveredBlock166Step = 189 ifTrue: [
            recoveredBlock166Local1 := recoveredBlock166Stack2.
            recoveredBlock166PC := 190.
        ].
        recoveredBlock166Step = 190 ifTrue: [
            recoveredBlock166Stack2 := recoveredLocal1.
            recoveredBlock166PC := 193.
        ].
        recoveredBlock166Step = 193 ifTrue: [
            recoveredBlock166Stack3 := recoveredBlock166Arg1.
            recoveredBlock166PC := 194.
        ].
        recoveredBlock166Step = 194 ifTrue: [
            recoveredBlock166Stack3 := (recoveredBlock166Stack3) tempAssign.
            recoveredBlock166PC := 196.
        ].
        recoveredBlock166Step = 196 ifTrue: [
            (recoveredBlock166Stack2) add: (recoveredBlock166Stack3).
            recoveredBlock166PC := 198.
        ].
        recoveredBlock166Step = 198 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Local1.
            recoveredBlock166PC := 199.
        ].
        recoveredBlock166Step = 199 ifTrue: [
            (recoveredBlock166Stack2) ifTrue: [recoveredBlock166PC := 212] ifFalse: [recoveredBlock166PC := 202].
        ].
        recoveredBlock166Step = 202 ifTrue: [
            recoveredBlock166Stack2 := nil.
            recoveredBlock166PC := 203.
        ].
        recoveredBlock166Step = 203 ifTrue: [
            recoveredBlock166Local1 := recoveredBlock166Stack2.
            recoveredBlock166PC := 204.
        ].
        recoveredBlock166Step = 204 ifTrue: [
            recoveredBlock166PC := 205.
        ].
        recoveredBlock166Step = 205 ifTrue: [
            recoveredBlock166Stack1 := recoveredBlock166Arg1.
            recoveredBlock166PC := 206.
        ].
        recoveredBlock166Step = 206 ifTrue: [
            recoveredBlock166Stack2 := recoveredLocal2.
            recoveredBlock166PC := 209.
        ].
        recoveredBlock166Step = 209 ifTrue: [
            recoveredBlock166Stack2 := (recoveredBlock166Stack2) last.
            recoveredBlock166PC := 211.
        ].
        recoveredBlock166Step = 211 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) = (recoveredBlock166Stack2).
            recoveredBlock166PC := 212.
        ].
        recoveredBlock166Step = 212 ifTrue: [
            recoveredBlock166Result := recoveredBlock166Stack1.
            recoveredBlock166Done := true.
        ].
    ].
    recoveredBlock166Result
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := SGIlCommaExpr.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSource: (recoveredStack2) type: (recoveredStack3) args: (recoveredStack4).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205fdc2c; bytecode file offset 0xefa53c"
!SGIleBuilder methodsFor: 'recovered'!
createMulNoOverflowLeftExpr: recoveredArg1 rightConstant: recoveredArg2 goalInterval: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg3.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isEmpty.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Empty interval during overflow limitation of multiplication'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddSubNoOverflowExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddConstExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSubConstExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddConstExpr.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSubConstExpr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 357].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivideConstantExpr.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulNoOverflowExpr.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivideConstantExpr.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 357].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulNoOverflowExpr.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 357].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExprChild: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 423].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 415].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulExpr.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 415] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflowLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) goalInterval: (recoveredStack3).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062fcec; bytecode file offset 0xf2c65c"
!SGIleBuilder methodsFor: 'recovered'!
createAddSubNoOverflow: recoveredArg1 goalInterval: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isEmpty.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Empty interval during overflow limitation of addition'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) isIleAddSubExpr.
    recoveredBlock21Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'AddSubNoOverflow with expr other AddSubExpr'.
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
            recoveredStack0 := (recoveredStack0) asIleNoExprNoOverflow.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprLowerBound: (recoveredStack1) upperBound: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := SGIlAddSubNoOverflow.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) originalExpr: (recoveredStack3) limitedExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) overflownBits: (recoveredStack7) allOperands: (recoveredStack8) overflownBitsWithoutConst: (recoveredStack9).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddExpr.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddExpr.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSubExpr.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSubExpr.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileAnnotatedOperands.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := [:block281200e8Arg1 | 
    | block281200e8Local1 block281200e8Stack0 block281200e8Stack1 block281200e8Stack2 block281200e8Stack3 block281200e8Stack4 block281200e8Stack5 block281200e8PC block281200e8Step block281200e8Done block281200e8Result |
    block281200e8Stack0 := self.
    block281200e8PC := 4.
    block281200e8Done := false.
    [block281200e8Done not] whileTrue: [
        block281200e8Step := block281200e8PC.
        block281200e8Step = 4 ifTrue: [
            block281200e8Stack1 := block281200e8Arg1.
            block281200e8PC := 5.
        ].
        block281200e8Step = 5 ifTrue: [
            block281200e8Stack2 := 2.
            block281200e8PC := 7.
        ].
        block281200e8Step = 7 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) at: (block281200e8Stack2).
            block281200e8PC := 9.
        ].
        block281200e8Step = 9 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) isIleMulNoOverflowExpr.
            block281200e8PC := 11.
        ].
        block281200e8Step = 11 ifTrue: [
            (block281200e8Stack1) ifTrue: [block281200e8PC := 14] ifFalse: [block281200e8PC := 48].
        ].
        block281200e8Step = 14 ifTrue: [
            block281200e8Stack1 := block281200e8Arg1.
            block281200e8PC := 15.
        ].
        block281200e8Step = 15 ifTrue: [
            block281200e8Stack2 := 2.
            block281200e8PC := 17.
        ].
        block281200e8Step = 17 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) at: (block281200e8Stack2).
            block281200e8PC := 19.
        ].
        block281200e8Step = 19 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) originalExpr.
            block281200e8PC := 21.
        ].
        block281200e8Step = 21 ifTrue: [
            block281200e8Stack2 := block281200e8Stack1.
            block281200e8PC := 22.
        ].
        block281200e8Step = 22 ifTrue: [
            block281200e8Local1 := block281200e8Stack2.
            block281200e8PC := 23.
        ].
        block281200e8Step = 23 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) isIleMultiplyConstantExpr.
            block281200e8PC := 25.
        ].
        block281200e8Step = 25 ifTrue: [
            (block281200e8Stack1) ifTrue: [block281200e8PC := 28] ifFalse: [block281200e8PC := 48].
        ].
        block281200e8Step = 28 ifTrue: [
            block281200e8Stack1 := block281200e8Local1.
            block281200e8PC := 29.
        ].
        block281200e8Step = 29 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) leftExpr.
            block281200e8PC := 31.
        ].
        block281200e8Step = 31 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) isIleRepresentableRecursive.
            block281200e8PC := 33.
        ].
        block281200e8Step = 33 ifTrue: [
            (block281200e8Stack1) ifTrue: [block281200e8PC := 36] ifFalse: [block281200e8PC := 48].
        ].
        block281200e8Step = 36 ifTrue: [
            block281200e8Stack1 := block281200e8Arg1.
            block281200e8PC := 37.
        ].
        block281200e8Step = 37 ifTrue: [
            block281200e8Stack2 := 2.
            block281200e8PC := 39.
        ].
        block281200e8Step = 39 ifTrue: [
            block281200e8Stack3 := block281200e8Local1.
            block281200e8PC := 40.
        ].
        block281200e8Step = 40 ifTrue: [
            block281200e8Stack3 := (block281200e8Stack3) asIleCopy.
            block281200e8PC := 42.
        ].
        block281200e8Step = 42 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) at: (block281200e8Stack2) put: (block281200e8Stack3).
            block281200e8PC := 44.
        ].
        block281200e8Step = 44 ifTrue: [
            block281200e8PC := 60.
        ].
        block281200e8Step = 48 ifTrue: [
            block281200e8Stack1 := block281200e8Arg1.
            block281200e8PC := 49.
        ].
        block281200e8Step = 49 ifTrue: [
            block281200e8Stack2 := 2.
            block281200e8PC := 51.
        ].
        block281200e8Step = 51 ifTrue: [
            block281200e8Stack3 := block281200e8Arg1.
            block281200e8PC := 52.
        ].
        block281200e8Step = 52 ifTrue: [
            block281200e8Stack4 := 2.
            block281200e8PC := 54.
        ].
        block281200e8Step = 54 ifTrue: [
            block281200e8Stack3 := (block281200e8Stack3) at: (block281200e8Stack4).
            block281200e8PC := 56.
        ].
        block281200e8Step = 56 ifTrue: [
            block281200e8Stack3 := (block281200e8Stack3) asIleCopy.
            block281200e8PC := 58.
        ].
        block281200e8Step = 58 ifTrue: [
            block281200e8Stack1 := (block281200e8Stack1) at: (block281200e8Stack2) put: (block281200e8Stack3).
            block281200e8PC := 60.
        ].
        block281200e8Step = 60 ifTrue: [
            block281200e8Result := block281200e8Stack1.
            block281200e8Done := true.
        ].
    ].
    block281200e8Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileAnnotatedOperands.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalZero.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) operands.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := [:recoveredBlock259Arg1 | 
    | recoveredBlock259Stack0 recoveredBlock259Stack1 recoveredBlock259Stack2 recoveredBlock259Stack3 recoveredBlock259Stack4 recoveredBlock259PC recoveredBlock259Step recoveredBlock259Done recoveredBlock259Result |
    recoveredBlock259Stack0 := self.
    recoveredBlock259PC := 266.
    recoveredBlock259Done := false.
    [recoveredBlock259Done not] whileTrue: [
        recoveredBlock259Step := recoveredBlock259PC.
        recoveredBlock259Step = 266 ifTrue: [
            recoveredBlock259Stack1 := recoveredBlock259Arg1.
            recoveredBlock259PC := 267.
        ].
        recoveredBlock259Step = 267 ifTrue: [
            recoveredBlock259Stack2 := 2.
            recoveredBlock259PC := 269.
        ].
        recoveredBlock259Step = 269 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) at: (recoveredBlock259Stack2).
            recoveredBlock259PC := 271.
        ].
        recoveredBlock259Step = 271 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) isIleConstant.
            recoveredBlock259PC := 273.
        ].
        recoveredBlock259Step = 273 ifTrue: [
            (recoveredBlock259Stack1) ifTrue: [recoveredBlock259PC := 364] ifFalse: [recoveredBlock259PC := 276].
        ].
        recoveredBlock259Step = 276 ifTrue: [
            recoveredBlock259Stack1 := recoveredBlock259Arg1.
            recoveredBlock259PC := 277.
        ].
        recoveredBlock259Step = 277 ifTrue: [
            recoveredBlock259Stack2 := 2.
            recoveredBlock259PC := 279.
        ].
        recoveredBlock259Step = 279 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) at: (recoveredBlock259Stack2).
            recoveredBlock259PC := 281.
        ].
        recoveredBlock259Step = 281 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) isIleNoOverflowExpr.
            recoveredBlock259PC := 283.
        ].
        recoveredBlock259Step = 283 ifTrue: [
            (recoveredBlock259Stack1) ifTrue: [recoveredBlock259PC := 286] ifFalse: [recoveredBlock259PC := 311].
        ].
        recoveredBlock259Step = 286 ifTrue: [
            recoveredBlock259Stack1 := recoveredBlock259Arg1.
            recoveredBlock259PC := 287.
        ].
        recoveredBlock259Step = 287 ifTrue: [
            recoveredBlock259Stack2 := 2.
            recoveredBlock259PC := 289.
        ].
        recoveredBlock259Step = 289 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) at: (recoveredBlock259Stack2).
            recoveredBlock259PC := 291.
        ].
        recoveredBlock259Step = 291 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) isIleLimitingNoOverflow.
            recoveredBlock259PC := 293.
        ].
        recoveredBlock259Step = 293 ifTrue: [
            (recoveredBlock259Stack1) ifTrue: [recoveredBlock259PC := 296] ifFalse: [recoveredBlock259PC := 311].
        ].
        recoveredBlock259Step = 296 ifTrue: [
            recoveredBlock259Stack1 := recoveredLocal3.
            recoveredBlock259PC := 299.
        ].
        recoveredBlock259Step = 299 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 300.
        ].
        recoveredBlock259Step = 300 ifTrue: [
            recoveredBlock259Stack3 := 2.
            recoveredBlock259PC := 302.
        ].
        recoveredBlock259Step = 302 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) at: (recoveredBlock259Stack3).
            recoveredBlock259PC := 304.
        ].
        recoveredBlock259Step = 304 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) overflownBits.
            recoveredBlock259PC := 306.
        ].
        recoveredBlock259Step = 306 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) max: (recoveredBlock259Stack2).
            recoveredBlock259PC := 308.
        ].
        recoveredBlock259Step = 308 ifTrue: [
            recoveredLocal3 := recoveredBlock259Stack1.
            recoveredBlock259PC := 311.
        ].
        recoveredBlock259Step = 311 ifTrue: [
            recoveredBlock259Stack1 := recoveredBlock259Arg1.
            recoveredBlock259PC := 312.
        ].
        recoveredBlock259Step = 312 ifTrue: [
            recoveredBlock259Stack2 := 1.
            recoveredBlock259PC := 314.
        ].
        recoveredBlock259Step = 314 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) at: (recoveredBlock259Stack2).
            recoveredBlock259PC := 316.
        ].
        recoveredBlock259Step = 316 ifTrue: [
            (recoveredBlock259Stack1) ifTrue: [recoveredBlock259PC := 320] ifFalse: [recoveredBlock259PC := 342].
        ].
        recoveredBlock259Step = 320 ifTrue: [
            recoveredBlock259Stack1 := recoveredLocal10.
            recoveredBlock259PC := 323.
        ].
        recoveredBlock259Step = 323 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 324.
        ].
        recoveredBlock259Step = 324 ifTrue: [
            recoveredBlock259Stack3 := 2.
            recoveredBlock259PC := 326.
        ].
        recoveredBlock259Step = 326 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) at: (recoveredBlock259Stack3).
            recoveredBlock259PC := 328.
        ].
        recoveredBlock259Step = 328 ifTrue: [
            recoveredBlock259Stack3 := recoveredArg1.
            recoveredBlock259PC := 331.
        ].
        recoveredBlock259Step = 331 ifTrue: [
            recoveredBlock259Stack3 := (recoveredBlock259Stack3) ileBasicType.
            recoveredBlock259PC := 333.
        ].
        recoveredBlock259Step = 333 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) sub: (recoveredBlock259Stack2) type: (recoveredBlock259Stack3).
            recoveredBlock259PC := 335.
        ].
        recoveredBlock259Step = 335 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Stack1.
            recoveredBlock259PC := 336.
        ].
        recoveredBlock259Step = 336 ifTrue: [
            recoveredLocal10 := recoveredBlock259Stack2.
            recoveredBlock259PC := 339.
        ].
        recoveredBlock259Step = 339 ifTrue: [
            recoveredBlock259PC := 361.
        ].
        recoveredBlock259Step = 342 ifTrue: [
            recoveredBlock259Stack1 := recoveredLocal10.
            recoveredBlock259PC := 345.
        ].
        recoveredBlock259Step = 345 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 346.
        ].
        recoveredBlock259Step = 346 ifTrue: [
            recoveredBlock259Stack3 := 2.
            recoveredBlock259PC := 348.
        ].
        recoveredBlock259Step = 348 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) at: (recoveredBlock259Stack3).
            recoveredBlock259PC := 350.
        ].
        recoveredBlock259Step = 350 ifTrue: [
            recoveredBlock259Stack3 := recoveredArg1.
            recoveredBlock259PC := 353.
        ].
        recoveredBlock259Step = 353 ifTrue: [
            recoveredBlock259Stack3 := (recoveredBlock259Stack3) ileBasicType.
            recoveredBlock259PC := 355.
        ].
        recoveredBlock259Step = 355 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) add: (recoveredBlock259Stack2) type: (recoveredBlock259Stack3).
            recoveredBlock259PC := 357.
        ].
        recoveredBlock259Step = 357 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Stack1.
            recoveredBlock259PC := 358.
        ].
        recoveredBlock259Step = 358 ifTrue: [
            recoveredLocal10 := recoveredBlock259Stack2.
            recoveredBlock259PC := 361.
        ].
        recoveredBlock259Step = 361 ifTrue: [
            recoveredBlock259PC := 405.
        ].
        recoveredBlock259Step = 364 ifTrue: [
            recoveredBlock259Stack1 := recoveredBlock259Arg1.
            recoveredBlock259PC := 365.
        ].
        recoveredBlock259Step = 365 ifTrue: [
            recoveredBlock259Stack2 := 1.
            recoveredBlock259PC := 367.
        ].
        recoveredBlock259Step = 367 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) at: (recoveredBlock259Stack2).
            recoveredBlock259PC := 369.
        ].
        recoveredBlock259Step = 369 ifTrue: [
            (recoveredBlock259Stack1) ifTrue: [recoveredBlock259PC := 372] ifFalse: [recoveredBlock259PC := 390].
        ].
        recoveredBlock259Step = 372 ifTrue: [
            recoveredBlock259Stack1 := recoveredLocal8.
            recoveredBlock259PC := 375.
        ].
        recoveredBlock259Step = 375 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 376.
        ].
        recoveredBlock259Step = 376 ifTrue: [
            recoveredBlock259Stack3 := 2.
            recoveredBlock259PC := 378.
        ].
        recoveredBlock259Step = 378 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) at: (recoveredBlock259Stack3).
            recoveredBlock259PC := 380.
        ].
        recoveredBlock259Step = 380 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) value.
            recoveredBlock259PC := 382.
        ].
        recoveredBlock259Step = 382 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) - (recoveredBlock259Stack2).
            recoveredBlock259PC := 383.
        ].
        recoveredBlock259Step = 383 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Stack1.
            recoveredBlock259PC := 384.
        ].
        recoveredBlock259Step = 384 ifTrue: [
            recoveredLocal8 := recoveredBlock259Stack2.
            recoveredBlock259PC := 387.
        ].
        recoveredBlock259Step = 387 ifTrue: [
            recoveredBlock259PC := 405.
        ].
        recoveredBlock259Step = 390 ifTrue: [
            recoveredBlock259Stack1 := recoveredLocal8.
            recoveredBlock259PC := 393.
        ].
        recoveredBlock259Step = 393 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 394.
        ].
        recoveredBlock259Step = 394 ifTrue: [
            recoveredBlock259Stack3 := 2.
            recoveredBlock259PC := 396.
        ].
        recoveredBlock259Step = 396 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) at: (recoveredBlock259Stack3).
            recoveredBlock259PC := 398.
        ].
        recoveredBlock259Step = 398 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) value.
            recoveredBlock259PC := 400.
        ].
        recoveredBlock259Step = 400 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) + (recoveredBlock259Stack2).
            recoveredBlock259PC := 401.
        ].
        recoveredBlock259Step = 401 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Stack1.
            recoveredBlock259PC := 402.
        ].
        recoveredBlock259Step = 402 ifTrue: [
            recoveredLocal8 := recoveredBlock259Stack2.
            recoveredBlock259PC := 405.
        ].
        recoveredBlock259Step = 405 ifTrue: [
            recoveredBlock259Result := recoveredBlock259Stack1.
            recoveredBlock259Done := true.
        ].
    ].
    recoveredBlock259Result
].
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := (recoveredStack0) overflowOfInterval: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflowOfInterval: (recoveredStack2).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 476] ifFalse: [recoveredPC := 529].
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := (recoveredStack0) raisedTo: (recoveredStack1).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIntConstant: (recoveredStack1).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 538] ifFalse: [recoveredPC := 590].
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprLowerBound: (recoveredStack1) upperBound: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := SGIlAddSubNoOverflow.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) originalExpr: (recoveredStack3) limitedExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) overflownBits: (recoveredStack7) allOperands: (recoveredStack8) overflownBitsWithoutConst: (recoveredStack9).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := SGIlAddSubNoOverflow.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack8 := recoveredLocal6.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack9 := recoveredLocal4.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) originalExpr: (recoveredStack3) limitedExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) overflownBits: (recoveredStack7) allOperands: (recoveredStack8) overflownBitsWithoutConst: (recoveredStack9).
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20652c80; bytecode file offset 0xf4f618"
!SGIleBuilder methodsFor: 'recovered'!
createMulNoOverflowLeftExpr: recoveredArg1 rightExpr: recoveredArg2 goalInterval: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg3.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isEmpty.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Empty interval during overflow limitation of multiplication'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulOperands: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) asIleExprAndShift.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal14.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local1.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) last.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (recoveredBlock49Stack2).
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredLocal14 := recoveredBlock49Stack1.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) first.
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isIleConstant.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 78] ifFalse: [recoveredBlock49PC := 106].
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 79.
        ].
        recoveredBlock49Step = 79 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) first.
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) value.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack2 := 0.
            recoveredBlock49PC := 85.
        ].
        recoveredBlock49Step = 85 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) < (recoveredBlock49Stack2).
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 90] ifFalse: [recoveredBlock49PC := 106].
        ].
        recoveredBlock49Step = 90 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal10.
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) neg.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredLocal10 := recoveredBlock49Stack1.
            recoveredBlock49PC := 98.
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 99.
        ].
        recoveredBlock49Step = 99 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) first.
            recoveredBlock49PC := 101.
        ].
        recoveredBlock49Step = 101 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) neg.
            recoveredBlock49PC := 103.
        ].
        recoveredBlock49Step = 103 ifTrue: [
            recoveredBlock49PC := 109.
        ].
        recoveredBlock49Step = 106 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 107.
        ].
        recoveredBlock49Step = 107 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) first.
            recoveredBlock49PC := 109.
        ].
        recoveredBlock49Step = 109 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Stack0 recoveredBlock124Stack1 recoveredBlock124Stack2 recoveredBlock124Stack3 recoveredBlock124PC recoveredBlock124Step recoveredBlock124Done recoveredBlock124Result |
    recoveredBlock124Stack0 := self.
    recoveredBlock124PC := 130.
    recoveredBlock124Done := false.
    [recoveredBlock124Done not] whileTrue: [
        recoveredBlock124Step := recoveredBlock124PC.
        recoveredBlock124Step = 130 ifTrue: [
            recoveredBlock124Stack1 := recoveredBlock124Arg1.
            recoveredBlock124PC := 131.
        ].
        recoveredBlock124Step = 131 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) isIleConstant.
            recoveredBlock124PC := 133.
        ].
        recoveredBlock124Step = 133 ifTrue: [
            (recoveredBlock124Stack1) ifTrue: [recoveredBlock124PC := 136] ifFalse: [recoveredBlock124PC := 150].
        ].
        recoveredBlock124Step = 136 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal9.
            recoveredBlock124PC := 139.
        ].
        recoveredBlock124Step = 139 ifTrue: [
            recoveredBlock124Stack2 := recoveredBlock124Arg1.
            recoveredBlock124PC := 140.
        ].
        recoveredBlock124Step = 140 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) * (recoveredBlock124Stack2).
            recoveredBlock124PC := 141.
        ].
        recoveredBlock124Step = 141 ifTrue: [
            recoveredLocal9 := recoveredBlock124Stack1.
            recoveredBlock124PC := 144.
        ].
        recoveredBlock124Step = 144 ifTrue: [
            recoveredBlock124Stack1 := self.
            recoveredBlock124PC := 145.
        ].
        recoveredBlock124Step = 145 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) literalOne.
            recoveredBlock124PC := 147.
        ].
        recoveredBlock124Step = 147 ifTrue: [
            recoveredBlock124PC := 151.
        ].
        recoveredBlock124Step = 150 ifTrue: [
            recoveredBlock124Stack1 := recoveredBlock124Arg1.
            recoveredBlock124PC := 151.
        ].
        recoveredBlock124Step = 151 ifTrue: [
            recoveredBlock124Result := recoveredBlock124Stack1.
            recoveredBlock124Done := true.
        ].
    ].
    recoveredBlock124Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := [:block281236a0Arg1 | 
    | block281236a0Stack0 block281236a0Stack1 block281236a0Stack2 block281236a0Stack3 block281236a0PC block281236a0Step block281236a0Done block281236a0Result |
    block281236a0Stack0 := self.
    block281236a0PC := 4.
    block281236a0Done := false.
    [block281236a0Done not] whileTrue: [
        block281236a0Step := block281236a0PC.
        block281236a0Step = 4 ifTrue: [
            block281236a0Stack1 := block281236a0Arg1.
            block281236a0PC := 5.
        ].
        block281236a0Step = 5 ifTrue: [
            block281236a0Stack1 := (block281236a0Stack1) isIleRepresentableRecursive.
            block281236a0PC := 7.
        ].
        block281236a0Step = 7 ifTrue: [
            (block281236a0Stack1) ifTrue: [block281236a0PC := 16] ifFalse: [block281236a0PC := 10].
        ].
        block281236a0Step = 10 ifTrue: [
            block281236a0Stack1 := block281236a0Arg1.
            block281236a0PC := 11.
        ].
        block281236a0Step = 11 ifTrue: [
            block281236a0Stack1 := (block281236a0Stack1) isIleConstantExpr.
            block281236a0PC := 13.
        ].
        block281236a0Step = 13 ifTrue: [
            (block281236a0Stack1) ifTrue: [block281236a0PC := 16] ifFalse: [block281236a0PC := 20].
        ].
        block281236a0Step = 16 ifTrue: [
            block281236a0Stack1 := block281236a0Arg1.
            block281236a0PC := 17.
        ].
        block281236a0Step = 17 ifTrue: [
            block281236a0PC := 28.
        ].
        block281236a0Step = 20 ifTrue: [
            block281236a0Stack1 := block281236a0Arg1.
            block281236a0PC := 21.
        ].
        block281236a0Step = 21 ifTrue: [
            block281236a0Stack2 := block281236a0Arg1.
            block281236a0PC := 22.
        ].
        block281236a0Step = 22 ifTrue: [
            block281236a0Stack2 := (block281236a0Stack2) interval.
            block281236a0PC := 24.
        ].
        block281236a0Step = 24 ifTrue: [
            block281236a0Stack2 := (block281236a0Stack2) makeRepresentable.
            block281236a0PC := 26.
        ].
        block281236a0Step = 26 ifTrue: [
            block281236a0Stack1 := (block281236a0Stack1) asIleLimitOverflowExprGoalInterval: (block281236a0Stack2).
            block281236a0PC := 28.
        ].
        block281236a0Step = 28 ifTrue: [
            block281236a0Result := block281236a0Stack1.
            block281236a0Done := true.
        ].
    ].
    block281236a0Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := [:block281236c4Arg1 | 
    | block281236c4Value0 block281236c4Value1 |
    block281236c4Value0 := block281236c4Arg1.
    block281236c4Value1 := (block281236c4Value0) isIleConstantValueOne.
    block281236c4Value1
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := [:block281236e8Arg1 | 
    | block281236e8Value0 block281236e8Value1 |
    block281236e8Value0 := block281236e8Arg1.
    block281236e8Value1 := (block281236e8Value0) isIleConstant.
    block281236e8Value1
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 449].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := [:block2812370cArg1 :block2812370cArg2 | 
    | block2812370cValue0 block2812370cValue1 block2812370cValue2 block2812370cValue3 |
    block2812370cValue0 := block2812370cArg1.
    block2812370cValue1 := block2812370cArg2.
    block2812370cValue2 := (block2812370cValue1) value.
    block2812370cValue3 := (block2812370cValue0) * (block2812370cValue2).
    block2812370cValue3
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredPC := 329.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 339] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 354] ifFalse: [recoveredPC := 368].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := SGIlMulNoOverflow.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack7 := recoveredLocal12.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) originalExpr: (recoveredStack3) limitedExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) overflownBits: (recoveredStack7) originalExprNoMul: (recoveredStack8) builtInShift: (recoveredStack9) allOperands: (recoveredStack10) neg: (recoveredStack11).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 460].
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValueOne.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 468].
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredPC := 546.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := (recoveredStack3) overflowOfInterval: (recoveredStack4).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredLocal12 := recoveredStack2.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 506] ifFalse: [recoveredPC := 575]] ifFalse: [recoveredPC := 549].
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 571] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredPC := 509.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleCopy.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedTo: (recoveredStack3).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegExpr.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 618] ifFalse: [recoveredPC := 636].
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivideConstantExpr.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 644] ifFalse: [recoveredPC := 664].
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack2 := (recoveredStack2) reciprocal.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivExpr.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 672] ifFalse: [recoveredPC := 709].
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableDoubleBitSize.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 680] ifFalse: [recoveredPC := 709].
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 690] ifFalse: [recoveredPC := 709].
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 700] ifFalse: [recoveredPC := 709].
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 718] ifFalse: [recoveredPC := 735].
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulExpr.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 735] ifFalse: [recoveredPC := 726].
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSimpleNoOverflowExpr.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 744] ifFalse: [recoveredPC := 753].
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddSubExpr.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 762] ifFalse: [recoveredPC := 771].
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock772Value0 recoveredBlock772Value1 |
    recoveredBlock772Value0 := recoveredLocal6.
    recoveredBlock772Value1 := (recoveredBlock772Value0) isIleMulExpr.
    recoveredBlock772Value1
].
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := [
    'A mulNoOverflow must be created from a mul expression'
].
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack0 := SGIlMulNoOverflow.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack7 := recoveredLocal12.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack8 := recoveredLocal5.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack9 := recoveredLocal14.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack10 := recoveredLocal15.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack11 := recoveredLocal10.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) originalExpr: (recoveredStack3) limitedExpr: (recoveredStack4) interval: (recoveredStack5) goalInterval: (recoveredStack6) overflownBits: (recoveredStack7) originalExprNoMul: (recoveredStack8) builtInShift: (recoveredStack9) allOperands: (recoveredStack10) neg: (recoveredStack11).
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

