"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a6c4; bytecode file offset 0x908be4"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
codeOptions
    | recoveredValue0 |
    recoveredValue0 := (self) boolOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bb28; bytecode file offset 0x908be4"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
createFullOpt
    | recoveredValue0 |
    recoveredValue0 := (self) create.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bec4; bytecode file offset 0x908be4"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
variantOptions
    | recoveredValue0 |
    recoveredValue0 := (self) variantBoolOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001589c; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyInitializeHistoryWith0
    ^'initializeHistoryWith0'
! !

"ASDBase.ic method 0x2001763c; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyMISRAComplianceForSM
    ^'misraComplianceForSM'
! !

"ASDBase.ic method 0x20019634; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyConstantFoldingOnControlFlow
    ^'constantFoldingOnControlFlow'
! !

"ASDBase.ic method 0x2001c9b8; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyCommonSubexpressionElimination
    ^'commonSubexpressionElimination'
! !

"ASDBase.ic method 0x2001d378; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyOutlineAutomaticallyGeneratedMethodsForSM
    ^'outlineAutomaticallyGeneratedMethodsForSM'
! !

"ASDBase.ic method 0x2001dc48; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyConstantFoldingOnLogicalOperations
    ^'constantFoldingOnLogicalOperations'
! !

"ASDBase.ic method 0x2001fde4; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyHierarchicalGenerationForSM
    ^'hierarchicalGenerationForSM'
! !

"ASDBase.ic method 0x20020d68; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyOptimizeStaticActionsForSM
    ^'optimizeStaticActionsForSM'
! !

"ASDBase.ic method 0x20022ca0; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyAutoInlinePrivateMethodsForSM
    ^'autoInlinePrivateMethodsForSM'
! !

"ASDBase.ic method 0x20023144; bytecode file offset 0x92209c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyConstantFoldingOnArithmeticOperations
    ^'constantFoldingOnArithmeticOperations'
! !

"ASDBase.ic method 0x2002629c; bytecode file offset 0x923928"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
keyOperatorSimplificatonGeneral
    ^'operatorSimplificatonGeneral'
! !

"ASDBase.ic method 0x2002fd64; bytecode file offset 0x934580"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
createNoOpt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeNoOpt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039a7c; bytecode file offset 0x938608"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) optionLabelForKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20045f3c; bytecode file offset 0x9451f8"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionGroupOptimization
    | recoveredValue0 |
    recoveredValue0 := (self) optionSubGroupCodeGeneration: ('Optimization').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048bdc; bytecode file offset 0x945728"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
resetOptionDeclarations
    OptionsDeclaration := nil.
    ^self
! !

"ASDBase.ic method 0x20062fc8; bytecode file offset 0x95f8b0"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
boolOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generalBoolOptions.
    recoveredValue1 := (self) variantBoolOptions.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d78dc; bytecode file offset 0x9d41a0"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
visibleBlockForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20167524; bytecode file offset 0xa63e94"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
xmlAttributeNameForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce670Arg1 | 
    | block280ce670Value0 block280ce670Value1 |
    block280ce670Value0 := block280ce670Arg1.
    block280ce670Value1 := (block280ce670Value0) attributeName.
    block280ce670Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167578; bytecode file offset 0xa63e94"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionLabelForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce6dcArg1 | 
    | block280ce6dcValue0 block280ce6dcValue1 |
    block280ce6dcValue0 := block280ce6dcArg1.
    block280ce6dcValue1 := (block280ce6dcValue0) label.
    block280ce6dcValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201675cc; bytecode file offset 0xa63e94"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
xmlCategoryForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce748Arg1 | 
    | block280ce748Value0 block280ce748Value1 |
    block280ce748Value0 := block280ce748Arg1.
    block280ce748Value1 := (block280ce748Value0) xmlCategory.
    block280ce748Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186540; bytecode file offset 0xa82f2c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionMinForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d0710Arg1 | 
    | block280d0710Value0 block280d0710Value1 block280d0710Value2 |
    block280d0710Value0 := block280d0710Arg1.
    block280d0710Value1 := (block280d0710Value0) optionClass.
    block280d0710Value2 := (block280d0710Value1) min.
    block280d0710Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201865c0; bytecode file offset 0xa82f2c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionGroupForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d07a0Arg1 | 
    | block280d07a0Value0 block280d07a0Value1 block280d07a0Value2 |
    block280d07a0Value0 := block280d07a0Arg1.
    block280d07a0Value1 := (block280d07a0Value0) optionClass.
    block280d07a0Value2 := (block280d07a0Value1) group.
    block280d07a0Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201865e0; bytecode file offset 0xa82f2c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionDefaultForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d07c4Arg1 | 
    | block280d07c4Value0 block280d07c4Value1 block280d07c4Value2 |
    block280d07c4Value0 := block280d07c4Arg1.
    block280d07c4Value1 := (block280d07c4Value0) optionClass.
    block280d07c4Value2 := (block280d07c4Value1) default.
    block280d07c4Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186660; bytecode file offset 0xa82f2c"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionMaxForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280d0854Arg1 | 
    | block280d0854Value0 block280d0854Value1 block280d0854Value2 |
    block280d0854Value0 := block280d0854Arg1.
    block280d0854Value1 := (block280d0854Value0) optionClass.
    block280d0854Value2 := (block280d0854Value1) max.
    block280d0854Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021772c; bytecode file offset 0xb14000"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
variantBoolOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) keyOneLevelDirectAccess.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) keyMultipleLevelDirectAccess.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) keyNewCommonSubexpressionElimination.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) keyDisableBDETempVariables.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := (recoveredValue1) asArray.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2023fee0; bytecode file offset 0xb3c840"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionDescriptionForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optionsDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) optionClass.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) description.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isEmpty.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) label.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2023ff4c; bytecode file offset 0xb3c840"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionToolTipForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optionsDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) optionClass.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) toolTip.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isEmpty.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) label.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2029f5d4; bytecode file offset 0xb9beb0"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
generalBoolOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) keyOutlineAutomaticallyGeneratedMethodsForSM.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) keyAutoInlinePrivateMethodsForSM.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) keyHierarchicalGenerationForSM.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) keyOptimizeStaticActionsForSM.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) keyMISRAComplianceForSM.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) keyInitializeHistoryWith0.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue1) asArray.
    ^recoveredValue14
! !

"ASDBase.ic method 0x20394624; bytecode file offset 0xc90f20"
!SGCodeOptimizationSettings class methodsFor: 'recovered'!
optionsDeclaration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OptionsDeclaration.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := LookupTable.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := 50.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new: (recoveredBlock6Stack2).
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            OptionsDeclaration := recoveredBlock6Stack1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) optionGroupOptimization.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := ASDXMLProjectOptionsDeclaration.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) instance.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) options.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block29Arg1 | 
    | recoveredBlock6Block29Value0 recoveredBlock6Block29Value1 recoveredBlock6Block29Value2 recoveredBlock6Block29Value3 recoveredBlock6Block29Value4 recoveredBlock6Block29Value5 |
    recoveredBlock6Block29Value0 := recoveredBlock6Local1.
    recoveredBlock6Block29Value1 := (recoveredBlock6Block29Value0) , ('*').
    recoveredBlock6Block29Value2 := recoveredBlock6Block29Arg1.
    recoveredBlock6Block29Value3 := (recoveredBlock6Block29Value2) optionClass.
    recoveredBlock6Block29Value4 := (recoveredBlock6Block29Value3) group.
    recoveredBlock6Block29Value5 := (recoveredBlock6Block29Value1) match: (recoveredBlock6Block29Value4).
    recoveredBlock6Block29Value5
].
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6Stack1 := [:block280f3b88Arg1 | 
    | block280f3b88Value0 block280f3b88Value1 block280f3b88Value2 block280f3b88Value3 block280f3b88Value4 |
    block280f3b88Value0 := OptionsDeclaration.
    block280f3b88Value1 := block280f3b88Arg1.
    block280f3b88Value2 := (block280f3b88Value1) attributeName.
    block280f3b88Value3 := block280f3b88Arg1.
    block280f3b88Value4 := (block280f3b88Value0) at: (block280f3b88Value2) put: (block280f3b88Value3).
    block280f3b88Value4
].
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := OptionsDeclaration.
    ^recoveredValue2
! !

