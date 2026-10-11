"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000190; bytecode file offset 0x8ffcfc"
!SGLmGeneratedMethod methodsFor: 'recovered'!
analyze
    ^self
! !

"ASDBase.ic method 0x20002500; bytecode file offset 0x8ffcfc"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlImplInfo
    ^self
! !

"ASDBase.ic method 0x20002ea0; bytecode file offset 0x8ffcfc"
!SGLmGeneratedMethod methodsFor: 'recovered'!
analyzeForComponent
    ^self
! !

"ASDBase.ic method 0x2001b260; bytecode file offset 0x92209c"
!SGLmGeneratedMethod methodsFor: 'recovered'!
specificationKind
    ^'Generated'
! !

"ASDBase.ic method 0x2006e504; bytecode file offset 0x96af48"
!SGLmGeneratedMethod methodsFor: 'recovered'!
logicModelRef
    | recoveredValue0 |
    recoveredValue0 := logicModelRef.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073a00; bytecode file offset 0x970b34"
!SGLmGeneratedMethod methodsFor: 'recovered'!
lineMarkerForMethod
    ^nil
! !

"ASDBase.ic method 0x20073e08; bytecode file offset 0x970b34"
!SGLmGeneratedMethod methodsFor: 'recovered'!
declSource
    ^nil
! !

"ASDBase.ic method 0x2007aefc; bytecode file offset 0x97c330"
!SGLmGeneratedMethod methodsFor: 'recovered'!
isRunnable
    ^false
! !

"ASDBase.ic method 0x2007d88c; bytecode file offset 0x97c330"
!SGLmGeneratedMethod methodsFor: 'recovered'!
sideEffectFree
    ^false
! !

"ASDBase.ic method 0x200bce18; bytecode file offset 0x9b970c"
!SGLmGeneratedMethod methodsFor: 'recovered'!
collectMessagesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) mdlName.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) collectMessagesInSubUnit: (recoveredValue2) do: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c4ba4; bytecode file offset 0x9c16b0"
!SGLmGeneratedMethod methodsFor: 'recovered'!
logicModelRef: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logicModelRef := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e4dc0; bytecode file offset 0x9e16fc"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlDeclaration
    | recoveredValue0 |
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) additionalFunction.
    super buildMdlDeclaration.
    ^self
! !

"ASDBase.ic method 0x2028c3e8; bytecode file offset 0xb88cc8"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlBody
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) block.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) locals.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280e2194Arg1 | 
    | block280e2194Value0 block280e2194Value1 |
    block280e2194Value0 := block280e2194Arg1.
    block280e2194Value1 := (block280e2194Value0) buildMdlBlockVarDecl.
    block280e2194Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) buildMdlBodyForCT.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) endBlock.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20323ae4; bytecode file offset 0xc203c0"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlOptimizations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) setInputsMethodName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCtBlockMethodName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlockDimensionVarName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetStepLocalMethodName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMethodName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) noWrapper.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051b92c; bytecode file offset 0xe18238"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlInitEntireCTBlock: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('set_') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('_relativToTmpLocalOffset').
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := 0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24Stack6 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
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
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) mdlClassType.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isSGOneDCharTable.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 187] ifFalse: [recoveredBlock24PC := 38].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) mdlClassType.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isSGTwoDCharTable.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 187] ifFalse: [recoveredBlock24PC := 46].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) mdlClassType.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isSGVector.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 54] ifFalse: [recoveredBlock24PC := 142].
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24Stack1 := 0.
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) valueConfig.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) getImplValue.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) size.
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24PC := 124.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 69.
        ].
        recoveredBlock24Step = 69 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) mdlBuilder.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack4 := recoveredLocal1.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            (recoveredBlock24Stack3) literal: (recoveredBlock24Stack4).
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 78.
        ].
        recoveredBlock24Step = 78 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) mdlName.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            (recoveredBlock24Stack3) id: (recoveredBlock24Stack4).
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Local1.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) + (-1).
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            (recoveredBlock24Stack3) literal: (recoveredBlock24Stack4).
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            recoveredBlock24Stack4 := '%1->val[%2]'.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack5 := 2.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            (recoveredBlock24Stack3) exprANSIC: (recoveredBlock24Stack4) numOfExprs: (recoveredBlock24Stack5).
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 96.
        ].
        recoveredBlock24Step = 96 ifTrue: [
            recoveredBlock24Stack4 := recoveredLocal2.
            recoveredBlock24PC := 99.
        ].
        recoveredBlock24Step = 99 ifTrue: [
            recoveredBlock24Stack5 := ' ('.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) , (recoveredBlock24Stack5).
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack5 := self.
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24Stack5 := (recoveredBlock24Stack5) class.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Stack5 := (recoveredBlock24Stack5) entireBlockVarName.
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) , (recoveredBlock24Stack5).
            recoveredBlock24PC := 108.
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack5 := ', %1, &%2)'.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) , (recoveredBlock24Stack5).
            recoveredBlock24PC := 111.
        ].
        recoveredBlock24Step = 111 ifTrue: [
            recoveredBlock24Stack5 := 2.
            recoveredBlock24PC := 113.
        ].
        recoveredBlock24Step = 113 ifTrue: [
            (recoveredBlock24Stack3) exprANSIC: (recoveredBlock24Stack4) numOfExprs: (recoveredBlock24Stack5).
            recoveredBlock24PC := 115.
        ].
        recoveredBlock24Step = 115 ifTrue: [
            (recoveredBlock24Stack2) endStmnt.
            recoveredBlock24PC := 117.
        ].
        recoveredBlock24Step = 117 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 120.
        ].
        recoveredBlock24Step = 120 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) + (1).
            recoveredBlock24PC := 121.
        ].
        recoveredBlock24Step = 121 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 124.
        ].
        recoveredBlock24Step = 124 ifTrue: [
            (recoveredBlock24Stack1 isInteger and: [recoveredBlock24Local1 isInteger]) ifTrue: [(recoveredBlock24Local1 + 1 <= recoveredBlock24Stack1) ifTrue: [recoveredBlock24Local1 := recoveredBlock24Local1 + 1. recoveredBlock24PC := 68] ifFalse: [recoveredBlock24Local1 := nil. recoveredBlock24PC := 138]] ifFalse: [recoveredBlock24PC := 128].
        ].
        recoveredBlock24Step = 128 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local1.
            recoveredBlock24PC := 130.
        ].
        recoveredBlock24Step = 130 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) + (1).
            recoveredBlock24PC := 131.
        ].
        recoveredBlock24Step = 131 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Stack3.
            recoveredBlock24PC := 132.
        ].
        recoveredBlock24Step = 132 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack4.
            recoveredBlock24PC := 133.
        ].
        recoveredBlock24Step = 133 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) < (recoveredBlock24Stack3).
            recoveredBlock24PC := 134.
        ].
        recoveredBlock24Step = 134 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 136] ifFalse: [recoveredBlock24PC := 68].
        ].
        recoveredBlock24Step = 136 ifTrue: [
            recoveredBlock24Stack2 := nil.
            recoveredBlock24PC := 137.
        ].
        recoveredBlock24Step = 137 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 138.
        ].
        recoveredBlock24Step = 138 ifTrue: [
            recoveredBlock24PC := 187.
        ].
        recoveredBlock24Step = 142 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 143.
        ].
        recoveredBlock24Step = 143 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) mdlBuilder.
            recoveredBlock24PC := 145.
        ].
        recoveredBlock24Step = 145 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 146.
        ].
        recoveredBlock24Step = 146 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal1.
            recoveredBlock24PC := 149.
        ].
        recoveredBlock24Step = 149 ifTrue: [
            (recoveredBlock24Stack2) literal: (recoveredBlock24Stack3).
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 152.
        ].
        recoveredBlock24Step = 152 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 153.
        ].
        recoveredBlock24Step = 153 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) mdlName.
            recoveredBlock24PC := 155.
        ].
        recoveredBlock24Step = 155 ifTrue: [
            (recoveredBlock24Stack2) id: (recoveredBlock24Stack3).
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 158.
        ].
        recoveredBlock24Step = 158 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal2.
            recoveredBlock24PC := 161.
        ].
        recoveredBlock24Step = 161 ifTrue: [
            recoveredBlock24Stack4 := ' ('.
            recoveredBlock24PC := 163.
        ].
        recoveredBlock24Step = 163 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) , (recoveredBlock24Stack4).
            recoveredBlock24PC := 164.
        ].
        recoveredBlock24Step = 164 ifTrue: [
            recoveredBlock24Stack4 := self.
            recoveredBlock24PC := 165.
        ].
        recoveredBlock24Step = 165 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) class.
            recoveredBlock24PC := 167.
        ].
        recoveredBlock24Step = 167 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) entireBlockVarName.
            recoveredBlock24PC := 169.
        ].
        recoveredBlock24Step = 169 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) , (recoveredBlock24Stack4).
            recoveredBlock24PC := 170.
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Stack4 := ', %1, &%2)'.
            recoveredBlock24PC := 172.
        ].
        recoveredBlock24Step = 172 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) , (recoveredBlock24Stack4).
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Stack4 := 2.
            recoveredBlock24PC := 175.
        ].
        recoveredBlock24Step = 175 ifTrue: [
            (recoveredBlock24Stack2) exprANSIC: (recoveredBlock24Stack3) numOfExprs: (recoveredBlock24Stack4).
            recoveredBlock24PC := 177.
        ].
        recoveredBlock24Step = 177 ifTrue: [
            (recoveredBlock24Stack1) endStmnt.
            recoveredBlock24PC := 179.
        ].
        recoveredBlock24Step = 179 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 182.
        ].
        recoveredBlock24Step = 182 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) + (1).
            recoveredBlock24PC := 183.
        ].
        recoveredBlock24Step = 183 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 184.
        ].
        recoveredBlock24Step = 184 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 187.
        ].
        recoveredBlock24Step = 187 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20580840; bytecode file offset 0xe7d164"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlInitEntireCTBlockTypeInfo: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'set_'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := '_relativToTmpLocalOffset'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block28113014Arg1 | 
    | block28113014Value0 block28113014Value1 block28113014Value2 |
    block28113014Value0 := block28113014Arg1.
    block28113014Value1 := (block28113014Value0) mdlClassType.
    block28113014Value2 := (block28113014Value1) isMdlComplexClassType.
    block28113014Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38Stack6 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) mdlClassType.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isSGOneDCharTable.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 257] ifFalse: [recoveredBlock38PC := 54].
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) mdlClassType.
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isSGTwoDCharTable.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 257] ifFalse: [recoveredBlock38PC := 62].
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) mdlClassType.
            recoveredBlock38PC := 65.
        ].
        recoveredBlock38Step = 65 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isMdlComplexClassType.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 257] ifFalse: [recoveredBlock38PC := 70].
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) mdlClassType.
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isSGVector.
            recoveredBlock38PC := 76.
        ].
        recoveredBlock38Step = 76 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 80] ifFalse: [recoveredBlock38PC := 190].
        ].
        recoveredBlock38Step = 80 ifTrue: [
            recoveredBlock38Stack1 := 0.
            recoveredBlock38PC := 82.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack1.
            recoveredBlock38PC := 83.
        ].
        recoveredBlock38Step = 83 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 84.
        ].
        recoveredBlock38Step = 84 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) valueConfig.
            recoveredBlock38PC := 86.
        ].
        recoveredBlock38Step = 86 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) getImplValue.
            recoveredBlock38PC := 88.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) size.
            recoveredBlock38PC := 90.
        ].
        recoveredBlock38Step = 90 ifTrue: [
            recoveredBlock38PC := 172.
        ].
        recoveredBlock38Step = 94 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) mdlBuilder.
            recoveredBlock38PC := 97.
        ].
        recoveredBlock38Step = 97 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 98.
        ].
        recoveredBlock38Step = 98 ifTrue: [
            recoveredBlock38Stack4 := recoveredLocal1.
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            (recoveredBlock38Stack3) literal: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 104.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack4 := recoveredBlock38Arg1.
            recoveredBlock38PC := 105.
        ].
        recoveredBlock38Step = 105 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) mdlName.
            recoveredBlock38PC := 107.
        ].
        recoveredBlock38Step = 107 ifTrue: [
            (recoveredBlock38Stack3) id: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 110.
        ].
        recoveredBlock38Step = 110 ifTrue: [
            recoveredBlock38Stack4 := 'typeSize'.
            recoveredBlock38PC := 112.
        ].
        recoveredBlock38Step = 112 ifTrue: [
            (recoveredBlock38Stack3) idAttribute: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 115.
        ].
        recoveredBlock38Step = 115 ifTrue: [
            recoveredBlock38Stack4 := recoveredBlock38Arg1.
            recoveredBlock38PC := 116.
        ].
        recoveredBlock38Step = 116 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) mdlName.
            recoveredBlock38PC := 118.
        ].
        recoveredBlock38Step = 118 ifTrue: [
            (recoveredBlock38Stack3) id: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 121.
        ].
        recoveredBlock38Step = 121 ifTrue: [
            recoveredBlock38Stack4 := 'basicType'.
            recoveredBlock38PC := 123.
        ].
        recoveredBlock38Step = 123 ifTrue: [
            (recoveredBlock38Stack3) idAttribute: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 126.
        ].
        recoveredBlock38Step = 126 ifTrue: [
            recoveredBlock38Stack4 := recoveredBlock38Arg1.
            recoveredBlock38PC := 127.
        ].
        recoveredBlock38Step = 127 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) mdlName.
            recoveredBlock38PC := 129.
        ].
        recoveredBlock38Step = 129 ifTrue: [
            (recoveredBlock38Stack3) id: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 132.
        ].
        recoveredBlock38Step = 132 ifTrue: [
            recoveredBlock38Stack4 := recoveredBlock38Local1.
            recoveredBlock38PC := 133.
        ].
        recoveredBlock38Step = 133 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) + (-1).
            recoveredBlock38PC := 134.
        ].
        recoveredBlock38Step = 134 ifTrue: [
            (recoveredBlock38Stack3) literal: (recoveredBlock38Stack4).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 137.
        ].
        recoveredBlock38Step = 137 ifTrue: [
            recoveredBlock38Stack4 := '%1->val[%2]'.
            recoveredBlock38PC := 139.
        ].
        recoveredBlock38Step = 139 ifTrue: [
            recoveredBlock38Stack5 := 2.
            recoveredBlock38PC := 141.
        ].
        recoveredBlock38Step = 141 ifTrue: [
            (recoveredBlock38Stack3) exprANSIC: (recoveredBlock38Stack4) numOfExprs: (recoveredBlock38Stack5).
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 144.
        ].
        recoveredBlock38Step = 144 ifTrue: [
            recoveredBlock38Stack4 := recoveredLocal2.
            recoveredBlock38PC := 147.
        ].
        recoveredBlock38Step = 147 ifTrue: [
            recoveredBlock38Stack5 := ' ('.
            recoveredBlock38PC := 149.
        ].
        recoveredBlock38Step = 149 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) , (recoveredBlock38Stack5).
            recoveredBlock38PC := 150.
        ].
        recoveredBlock38Step = 150 ifTrue: [
            recoveredBlock38Stack5 := self.
            recoveredBlock38PC := 151.
        ].
        recoveredBlock38Step = 151 ifTrue: [
            recoveredBlock38Stack5 := (recoveredBlock38Stack5) class.
            recoveredBlock38PC := 153.
        ].
        recoveredBlock38Step = 153 ifTrue: [
            recoveredBlock38Stack5 := (recoveredBlock38Stack5) entireBlockVarName.
            recoveredBlock38PC := 155.
        ].
        recoveredBlock38Step = 155 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) , (recoveredBlock38Stack5).
            recoveredBlock38PC := 156.
        ].
        recoveredBlock38Step = 156 ifTrue: [
            recoveredBlock38Stack5 := ', %1, %2, %3, &%4)'.
            recoveredBlock38PC := 158.
        ].
        recoveredBlock38Step = 158 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) , (recoveredBlock38Stack5).
            recoveredBlock38PC := 159.
        ].
        recoveredBlock38Step = 159 ifTrue: [
            recoveredBlock38Stack5 := 4.
            recoveredBlock38PC := 161.
        ].
        recoveredBlock38Step = 161 ifTrue: [
            (recoveredBlock38Stack3) exprANSIC: (recoveredBlock38Stack4) numOfExprs: (recoveredBlock38Stack5).
            recoveredBlock38PC := 163.
        ].
        recoveredBlock38Step = 163 ifTrue: [
            (recoveredBlock38Stack2) endStmnt.
            recoveredBlock38PC := 165.
        ].
        recoveredBlock38Step = 165 ifTrue: [
            recoveredBlock38Stack2 := recoveredLocal1.
            recoveredBlock38PC := 168.
        ].
        recoveredBlock38Step = 168 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) + (1).
            recoveredBlock38PC := 169.
        ].
        recoveredBlock38Step = 169 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack2.
            recoveredBlock38PC := 172.
        ].
        recoveredBlock38Step = 172 ifTrue: [
            (recoveredBlock38Stack1 isInteger and: [recoveredBlock38Local1 isInteger]) ifTrue: [(recoveredBlock38Local1 + 1 <= recoveredBlock38Stack1) ifTrue: [recoveredBlock38Local1 := recoveredBlock38Local1 + 1. recoveredBlock38PC := 94] ifFalse: [recoveredBlock38Local1 := nil. recoveredBlock38PC := 186]] ifFalse: [recoveredBlock38PC := 176].
        ].
        recoveredBlock38Step = 176 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 177.
        ].
        recoveredBlock38Step = 177 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Local1.
            recoveredBlock38PC := 178.
        ].
        recoveredBlock38Step = 178 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) + (1).
            recoveredBlock38PC := 179.
        ].
        recoveredBlock38Step = 179 ifTrue: [
            recoveredBlock38Stack4 := recoveredBlock38Stack3.
            recoveredBlock38PC := 180.
        ].
        recoveredBlock38Step = 180 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack4.
            recoveredBlock38PC := 181.
        ].
        recoveredBlock38Step = 181 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) < (recoveredBlock38Stack3).
            recoveredBlock38PC := 182.
        ].
        recoveredBlock38Step = 182 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 184] ifFalse: [recoveredBlock38PC := 94].
        ].
        recoveredBlock38Step = 184 ifTrue: [
            recoveredBlock38Stack2 := nil.
            recoveredBlock38PC := 185.
        ].
        recoveredBlock38Step = 185 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack2.
            recoveredBlock38PC := 186.
        ].
        recoveredBlock38Step = 186 ifTrue: [
            recoveredBlock38PC := 257.
        ].
        recoveredBlock38Step = 190 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 191.
        ].
        recoveredBlock38Step = 191 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) mdlBuilder.
            recoveredBlock38PC := 193.
        ].
        recoveredBlock38Step = 193 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 194.
        ].
        recoveredBlock38Step = 194 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal1.
            recoveredBlock38PC := 197.
        ].
        recoveredBlock38Step = 197 ifTrue: [
            (recoveredBlock38Stack2) literal: (recoveredBlock38Stack3).
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 200.
        ].
        recoveredBlock38Step = 200 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 201.
        ].
        recoveredBlock38Step = 201 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) mdlName.
            recoveredBlock38PC := 203.
        ].
        recoveredBlock38Step = 203 ifTrue: [
            (recoveredBlock38Stack2) id: (recoveredBlock38Stack3).
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 206.
        ].
        recoveredBlock38Step = 206 ifTrue: [
            recoveredBlock38Stack3 := 'typeSize'.
            recoveredBlock38PC := 208.
        ].
        recoveredBlock38Step = 208 ifTrue: [
            (recoveredBlock38Stack2) idAttribute: (recoveredBlock38Stack3).
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 211.
        ].
        recoveredBlock38Step = 211 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 212.
        ].
        recoveredBlock38Step = 212 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) mdlName.
            recoveredBlock38PC := 214.
        ].
        recoveredBlock38Step = 214 ifTrue: [
            (recoveredBlock38Stack2) id: (recoveredBlock38Stack3).
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 217.
        ].
        recoveredBlock38Step = 217 ifTrue: [
            recoveredBlock38Stack3 := 'basicType'.
            recoveredBlock38PC := 219.
        ].
        recoveredBlock38Step = 219 ifTrue: [
            (recoveredBlock38Stack2) idAttribute: (recoveredBlock38Stack3).
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 222.
        ].
        recoveredBlock38Step = 222 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 223.
        ].
        recoveredBlock38Step = 223 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) mdlName.
            recoveredBlock38PC := 225.
        ].
        recoveredBlock38Step = 225 ifTrue: [
            (recoveredBlock38Stack2) id: (recoveredBlock38Stack3).
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 228.
        ].
        recoveredBlock38Step = 228 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal2.
            recoveredBlock38PC := 231.
        ].
        recoveredBlock38Step = 231 ifTrue: [
            recoveredBlock38Stack4 := ' ('.
            recoveredBlock38PC := 233.
        ].
        recoveredBlock38Step = 233 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) , (recoveredBlock38Stack4).
            recoveredBlock38PC := 234.
        ].
        recoveredBlock38Step = 234 ifTrue: [
            recoveredBlock38Stack4 := self.
            recoveredBlock38PC := 235.
        ].
        recoveredBlock38Step = 235 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) class.
            recoveredBlock38PC := 237.
        ].
        recoveredBlock38Step = 237 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) entireBlockVarName.
            recoveredBlock38PC := 239.
        ].
        recoveredBlock38Step = 239 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) , (recoveredBlock38Stack4).
            recoveredBlock38PC := 240.
        ].
        recoveredBlock38Step = 240 ifTrue: [
            recoveredBlock38Stack4 := ', %1, %2, %3, &%4)'.
            recoveredBlock38PC := 242.
        ].
        recoveredBlock38Step = 242 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) , (recoveredBlock38Stack4).
            recoveredBlock38PC := 243.
        ].
        recoveredBlock38Step = 243 ifTrue: [
            recoveredBlock38Stack4 := 4.
            recoveredBlock38PC := 245.
        ].
        recoveredBlock38Step = 245 ifTrue: [
            (recoveredBlock38Stack2) exprANSIC: (recoveredBlock38Stack3) numOfExprs: (recoveredBlock38Stack4).
            recoveredBlock38PC := 247.
        ].
        recoveredBlock38Step = 247 ifTrue: [
            (recoveredBlock38Stack1) endStmnt.
            recoveredBlock38PC := 249.
        ].
        recoveredBlock38Step = 249 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal1.
            recoveredBlock38PC := 252.
        ].
        recoveredBlock38Step = 252 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) + (1).
            recoveredBlock38PC := 253.
        ].
        recoveredBlock38Step = 253 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 254.
        ].
        recoveredBlock38Step = 254 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack2.
            recoveredBlock38PC := 257.
        ].
        recoveredBlock38Step = 257 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2065f7f8; bytecode file offset 0xf5c1f4"
!SGLmGeneratedMethod methodsFor: 'recovered'!
buildMdlBodyForCT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMethodName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) resetStepLocalMethodName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) methodCall: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) nondirectOutputMethodName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) methodCall: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) directOutputMethodName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) methodCall: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) derivativesMethodName.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) methodCall: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetStepLocalMethodName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) stepLocalVariables.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Local1 recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83Stack5 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) mdlClassType.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isSGVector.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 98] ifFalse: [recoveredBlock83PC := 180].
        ].
        recoveredBlock83Step = 98 ifTrue: [
            recoveredBlock83Stack1 := 0.
            recoveredBlock83PC := 100.
        ].
        recoveredBlock83Step = 100 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack1.
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 102.
        ].
        recoveredBlock83Step = 102 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) valueConfig.
            recoveredBlock83PC := 104.
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getImplValue.
            recoveredBlock83PC := 106.
        ].
        recoveredBlock83Step = 106 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) size.
            recoveredBlock83PC := 108.
        ].
        recoveredBlock83Step = 108 ifTrue: [
            recoveredBlock83PC := 163.
        ].
        recoveredBlock83Step = 112 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 113.
        ].
        recoveredBlock83Step = 113 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) mdlBuilder.
            recoveredBlock83PC := 115.
        ].
        recoveredBlock83Step = 115 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 116.
        ].
        recoveredBlock83Step = 116 ifTrue: [
            recoveredBlock83Stack4 := recoveredBlock83Arg1.
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Stack4 := (recoveredBlock83Stack4) mdlName.
            recoveredBlock83PC := 119.
        ].
        recoveredBlock83Step = 119 ifTrue: [
            (recoveredBlock83Stack3) id: (recoveredBlock83Stack4).
            recoveredBlock83Stack3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 122.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            recoveredBlock83Stack4 := recoveredBlock83Local1.
            recoveredBlock83PC := 123.
        ].
        recoveredBlock83Step = 123 ifTrue: [
            recoveredBlock83Stack4 := (recoveredBlock83Stack4) + (-1).
            recoveredBlock83PC := 124.
        ].
        recoveredBlock83Step = 124 ifTrue: [
            (recoveredBlock83Stack3) literal: (recoveredBlock83Stack4).
            recoveredBlock83PC := 126.
        ].
        recoveredBlock83Step = 126 ifTrue: [
            (recoveredBlock83Stack2) at.
            recoveredBlock83PC := 128.
        ].
        recoveredBlock83Step = 128 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 129.
        ].
        recoveredBlock83Step = 129 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) type.
            recoveredBlock83PC := 131.
        ].
        recoveredBlock83Step = 131 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) basicType.
            recoveredBlock83PC := 133.
        ].
        recoveredBlock83Step = 133 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) isSGBoolean.
            recoveredBlock83PC := 135.
        ].
        recoveredBlock83Step = 135 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 138] ifFalse: [recoveredBlock83PC := 148].
        ].
        recoveredBlock83Step = 138 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 139.
        ].
        recoveredBlock83Step = 139 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) mdlBuilder.
            recoveredBlock83PC := 141.
        ].
        recoveredBlock83Step = 141 ifTrue: [
            recoveredBlock83Stack3 := false.
            recoveredBlock83PC := 142.
        ].
        recoveredBlock83Step = 142 ifTrue: [
            (recoveredBlock83Stack2) literal: (recoveredBlock83Stack3).
            recoveredBlock83PC := 144.
        ].
        recoveredBlock83Step = 144 ifTrue: [
            recoveredBlock83PC := 155.
        ].
        recoveredBlock83Step = 148 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 149.
        ].
        recoveredBlock83Step = 149 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) mdlBuilder.
            recoveredBlock83PC := 151.
        ].
        recoveredBlock83Step = 151 ifTrue: [
            recoveredBlock83Stack3 := 0.
            recoveredBlock83PC := 153.
        ].
        recoveredBlock83Step = 153 ifTrue: [
            (recoveredBlock83Stack2) literal: (recoveredBlock83Stack3).
            recoveredBlock83PC := 155.
        ].
        recoveredBlock83Step = 155 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 156.
        ].
        recoveredBlock83Step = 156 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) mdlBuilder.
            recoveredBlock83PC := 158.
        ].
        recoveredBlock83Step = 158 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 159.
        ].
        recoveredBlock83Step = 159 ifTrue: [
            (recoveredBlock83Stack3) assign.
            recoveredBlock83PC := 161.
        ].
        recoveredBlock83Step = 161 ifTrue: [
            (recoveredBlock83Stack2) endStmnt.
            recoveredBlock83PC := 163.
        ].
        recoveredBlock83Step = 163 ifTrue: [
            (recoveredBlock83Stack1 isInteger and: [recoveredBlock83Local1 isInteger]) ifTrue: [(recoveredBlock83Local1 + 1 <= recoveredBlock83Stack1) ifTrue: [recoveredBlock83Local1 := recoveredBlock83Local1 + 1. recoveredBlock83PC := 112] ifFalse: [recoveredBlock83Local1 := nil. recoveredBlock83PC := 177]] ifFalse: [recoveredBlock83PC := 167].
        ].
        recoveredBlock83Step = 167 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 168.
        ].
        recoveredBlock83Step = 168 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Local1.
            recoveredBlock83PC := 169.
        ].
        recoveredBlock83Step = 169 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) + (1).
            recoveredBlock83PC := 170.
        ].
        recoveredBlock83Step = 170 ifTrue: [
            recoveredBlock83Stack4 := recoveredBlock83Stack3.
            recoveredBlock83PC := 171.
        ].
        recoveredBlock83Step = 171 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack4.
            recoveredBlock83PC := 172.
        ].
        recoveredBlock83Step = 172 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) < (recoveredBlock83Stack3).
            recoveredBlock83PC := 173.
        ].
        recoveredBlock83Step = 173 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 175] ifFalse: [recoveredBlock83PC := 112].
        ].
        recoveredBlock83Step = 175 ifTrue: [
            recoveredBlock83Stack2 := nil.
            recoveredBlock83PC := 176.
        ].
        recoveredBlock83Step = 176 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack2.
            recoveredBlock83PC := 177.
        ].
        recoveredBlock83Step = 177 ifTrue: [
            recoveredBlock83PC := 221.
        ].
        recoveredBlock83Step = 180 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 181.
        ].
        recoveredBlock83Step = 181 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) mdlBuilder.
            recoveredBlock83PC := 183.
        ].
        recoveredBlock83Step = 183 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 184.
        ].
        recoveredBlock83Step = 184 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) mdlName.
            recoveredBlock83PC := 186.
        ].
        recoveredBlock83Step = 186 ifTrue: [
            (recoveredBlock83Stack1) id: (recoveredBlock83Stack2).
            recoveredBlock83PC := 188.
        ].
        recoveredBlock83Step = 188 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 189.
        ].
        recoveredBlock83Step = 189 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) type.
            recoveredBlock83PC := 191.
        ].
        recoveredBlock83Step = 191 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isSGBoolean.
            recoveredBlock83PC := 193.
        ].
        recoveredBlock83Step = 193 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 196] ifFalse: [recoveredBlock83PC := 206].
        ].
        recoveredBlock83Step = 196 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 197.
        ].
        recoveredBlock83Step = 197 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) mdlBuilder.
            recoveredBlock83PC := 199.
        ].
        recoveredBlock83Step = 199 ifTrue: [
            recoveredBlock83Stack2 := false.
            recoveredBlock83PC := 200.
        ].
        recoveredBlock83Step = 200 ifTrue: [
            (recoveredBlock83Stack1) literal: (recoveredBlock83Stack2).
            recoveredBlock83PC := 202.
        ].
        recoveredBlock83Step = 202 ifTrue: [
            recoveredBlock83PC := 213.
        ].
        recoveredBlock83Step = 206 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 207.
        ].
        recoveredBlock83Step = 207 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) mdlBuilder.
            recoveredBlock83PC := 209.
        ].
        recoveredBlock83Step = 209 ifTrue: [
            recoveredBlock83Stack2 := 0.
            recoveredBlock83PC := 211.
        ].
        recoveredBlock83Step = 211 ifTrue: [
            (recoveredBlock83Stack1) literal: (recoveredBlock83Stack2).
            recoveredBlock83PC := 213.
        ].
        recoveredBlock83Step = 213 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 214.
        ].
        recoveredBlock83Step = 214 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) mdlBuilder.
            recoveredBlock83PC := 216.
        ].
        recoveredBlock83Step = 216 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 217.
        ].
        recoveredBlock83Step = 217 ifTrue: [
            (recoveredBlock83Stack2) assign.
            recoveredBlock83PC := 219.
        ].
        recoveredBlock83Step = 219 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) endStmnt.
            recoveredBlock83PC := 221.
        ].
        recoveredBlock83Step = 221 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) setInputsMethodName.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := [:recoveredBlock239Arg1 :recoveredBlock239Arg2 | 
    | recoveredBlock239Value0 recoveredBlock239Value1 recoveredBlock239Value2 recoveredBlock239Value3 recoveredBlock239Value4 recoveredBlock239Value5 recoveredBlock239Value6 recoveredBlock239Value7 recoveredBlock239Value8 recoveredBlock239Value9 recoveredBlock239Value10 |
    recoveredBlock239Value0 := (self) mdlBuilder.
    recoveredBlock239Value1 := recoveredBlock239Value0.
    (recoveredBlock239Value1) id: ('self').
    recoveredBlock239Value2 := recoveredBlock239Value0.
    recoveredBlock239Value3 := recoveredBlock239Arg1.
    recoveredBlock239Value4 := (recoveredBlock239Value3) mdlName.
    (recoveredBlock239Value2) id: (recoveredBlock239Value4).
    recoveredBlock239Value5 := recoveredBlock239Value0.
    recoveredBlock239Value6 := (self) class.
    recoveredBlock239Value7 := recoveredBlock239Arg1.
    recoveredBlock239Value8 := (recoveredBlock239Value7) dataModelRef.
    recoveredBlock239Value9 := (recoveredBlock239Value6) createMdlNameForVar: (recoveredBlock239Value8).
    (recoveredBlock239Value5) methodCall: (recoveredBlock239Value9) numOfArgs: (1).
    recoveredBlock239Value10 := (recoveredBlock239Value0) endStmnt.
    recoveredBlock239Value10
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) initSimModelMethodName.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 489].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := (recoveredStack2) inputVariables.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := 'u'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) buildMdlInitEntireCTBlockTypeInfo: (recoveredStack2) in: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) outputVariables.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := 'y'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) buildMdlInitEntireCTBlockTypeInfo: (recoveredStack2) in: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := (recoveredStack2) continuousVariables.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := 'x'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) buildMdlInitEntireCTBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := (recoveredStack2) derivatedVariables.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := 'ddtx'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1) buildMdlInitEntireCTBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) discreteVariables.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := 'xk'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) buildMdlInitEntireCTBlockTypeInfo: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := (recoveredStack2) blockDimensionVarName.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 'setCTBlockInfoRelativToTmpLocalOffset'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := '('.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := (recoveredStack3) entireBlockVarName.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := ', "'.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack3 := (recoveredStack3) asTemplate.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := '", *%1)'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) endStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := (recoveredStack2) blockDimensionVarName.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := 'incrementTmpLocalOffset'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := '('.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := (recoveredStack3) entireBlockVarName.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := ', *%1)'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctVariables.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := [:recoveredBlock431Arg1 | 
    | recoveredBlock431Value0 recoveredBlock431Value1 recoveredBlock431Value2 recoveredBlock431Value3 recoveredBlock431Value4 recoveredBlock431Value5 recoveredBlock431Value6 recoveredBlock431Value7 recoveredBlock431Value8 |
    recoveredBlock431Value0 := (self) mdlBuilder.
    recoveredBlock431Value1 := recoveredBlock431Value0.
    recoveredBlock431Value2 := recoveredBlock431Arg1.
    recoveredBlock431Value3 := (recoveredBlock431Value2) mdlName.
    (recoveredBlock431Value1) id: (recoveredBlock431Value3).
    recoveredBlock431Value4 := recoveredBlock431Value0.
    recoveredBlock431Value5 := (self) class.
    recoveredBlock431Value6 := (recoveredBlock431Value5) entireBlockVarName.
    (recoveredBlock431Value4) id: (recoveredBlock431Value6).
    recoveredBlock431Value7 := (self) mdlName.
    recoveredBlock431Value8 := (recoveredBlock431Value0) methodCall: (recoveredBlock431Value7) numOfArgs: (1).
    recoveredBlock431Value8
].
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := (recoveredStack2) ctBlockVarName.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := (recoveredStack2) entireBlockVarName.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack1) assign.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlockDimensionVarName.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 502] ifFalse: [recoveredPC := 703].
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack2 := (recoveredStack2) locals.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := '%1 = allocate_ModelDimension ()'.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack1) endStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack2 := (recoveredStack2) locals.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack2 := 'if (!!(%1)) return NULL'.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1) endStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack2 := (recoveredStack2) locals.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := (recoveredStack2) blockDimensionVarName.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := 'increment (%1, *%2)'.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctVariables.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := [:recoveredBlock603Arg1 | 
    | recoveredBlock603Value0 recoveredBlock603Value1 recoveredBlock603Value2 recoveredBlock603Value3 recoveredBlock603Value4 recoveredBlock603Value5 recoveredBlock603Value6 recoveredBlock603Value7 recoveredBlock603Value8 recoveredBlock603Value9 recoveredBlock603Value10 recoveredBlock603Value11 recoveredBlock603Value12 recoveredBlock603Value13 recoveredBlock603Value14 recoveredBlock603Value15 recoveredBlock603Value16 recoveredBlock603Value17 recoveredBlock603Value18 recoveredBlock603Value19 |
    recoveredBlock603Value0 := (self) mdlBuilder.
    recoveredBlock603Value1 := recoveredBlock603Value0.
    recoveredBlock603Value2 := (self) class.
    recoveredBlock603Value3 := (recoveredBlock603Value2) subBlockDimensionVarName.
    (recoveredBlock603Value1) id: (recoveredBlock603Value3).
    recoveredBlock603Value4 := recoveredBlock603Value0.
    recoveredBlock603Value5 := recoveredBlock603Arg1.
    recoveredBlock603Value6 := (recoveredBlock603Value5) mdlName.
    (recoveredBlock603Value4) id: (recoveredBlock603Value6).
    recoveredBlock603Value7 := recoveredBlock603Value0.
    recoveredBlock603Value8 := (self) mdlName.
    (recoveredBlock603Value7) methodCall: (recoveredBlock603Value8).
    recoveredBlock603Value9 := recoveredBlock603Value0.
    (recoveredBlock603Value9) assign.
    recoveredBlock603Value10 := recoveredBlock603Value0.
    (recoveredBlock603Value10) endStmnt.
    recoveredBlock603Value11 := recoveredBlock603Value0.
    recoveredBlock603Value12 := (self) locals.
    recoveredBlock603Value13 := (recoveredBlock603Value12) first.
    recoveredBlock603Value14 := (recoveredBlock603Value13) mdlName.
    (recoveredBlock603Value11) id: (recoveredBlock603Value14).
    recoveredBlock603Value15 := recoveredBlock603Value0.
    recoveredBlock603Value16 := (self) class.
    recoveredBlock603Value17 := (recoveredBlock603Value16) subBlockDimensionVarName.
    (recoveredBlock603Value15) id: (recoveredBlock603Value17).
    recoveredBlock603Value18 := recoveredBlock603Value0.
    (recoveredBlock603Value18) exprANSIC: ('increment (%1,*%2)') numOfExprs: (2).
    recoveredBlock603Value19 := (recoveredBlock603Value0) endStmnt.
    recoveredBlock603Value19
].
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := (recoveredStack2) locals.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            (recoveredStack0) return.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCtBlockMethodName.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 716] ifFalse: [recoveredPC := 963].
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack2 := (recoveredStack2) ctBlockVarName.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack2 := (recoveredStack2) derivativesMethodName.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack2 := (recoveredStack2) directOutputMethodName.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateMethodName.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack2 := (recoveredStack2) initMethodName.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack2 := (recoveredStack2) nondirectOutputMethodName.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack2 := (recoveredStack2) terminateMethodName.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack2 := 'initInstance_CTBlock ( %1, \(void(*)())%2, \(void(*)())%3, \(void(*)())%4, \(void(*)())%5, \(void(*)())%6, \(void(*)())%7'.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack2 := (recoveredStack2) updateMethodName.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack2 := (recoveredStack2) stateEventsMethodName.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack2 := (recoveredStack2) eventsMethodName.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack2 := (recoveredStack2) dependentParametersMethodName.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack2 := (recoveredStack2) setInputsMethodName.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBlockDimensionVarName.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack2 := (recoveredStack2) initSimModelMethodName.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            (recoveredStack1) methodId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack2 := '%1, \(void(*)())%2, \(void(*)())%3, \(void(*)())%4, \(void(*)())%5, \(void(*)())%6, \(CTModelDimension*(*)())%7, \(void(*)())%8)'.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            (recoveredStack1) exprANSIC: (recoveredStack2) numOfExprs: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            (recoveredStack1) assign.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

