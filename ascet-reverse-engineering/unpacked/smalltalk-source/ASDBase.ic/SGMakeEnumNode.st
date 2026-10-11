"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000af0; bytecode file offset 0x8ffcfc"
!SGMakeEnumNode methodsFor: 'recovered'!
expand
    ^self
! !

"ASDBase.ic method 0x20003358; bytecode file offset 0x8ffcfc"
!SGMakeEnumNode methodsFor: 'recovered'!
analyzeInitInstCodeGeneration
    ^self
! !

"ASDBase.ic method 0x20003a48; bytecode file offset 0x90206c"
!SGMakeEnumNode methodsFor: 'recovered'!
toBeLinkedSOs: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006e30; bytecode file offset 0x908be4"
!SGMakeEnumNode methodsFor: 'recovered'!
directAccessTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200072b0; bytecode file offset 0x908be4"
!SGMakeEnumNode methodsFor: 'recovered'!
implOrClass
    | recoveredValue0 |
    recoveredValue0 := (self) sgClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200076dc; bytecode file offset 0x908be4"
!SGMakeEnumNode methodsFor: 'recovered'!
elementChangeTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bc00; bytecode file offset 0x908be4"
!SGMakeEnumNode methodsFor: 'recovered'!
propagatedMethodTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d6f0; bytecode file offset 0x92209c"
!SGMakeEnumNode methodsFor: 'recovered'!
usedInterpolations
    ^#()
! !

"ASDBase.ic method 0x200304a4; bytecode file offset 0x934580"
!SGMakeEnumNode methodsFor: 'recovered'!
propagatedInterfaceTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) exportImportTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036c54; bytecode file offset 0x934580"
!SGMakeEnumNode methodsFor: 'recovered'!
propagatedTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) methodsTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004abb4; bytecode file offset 0x94746c"
!SGMakeEnumNode methodsFor: 'recovered'!
datasetKey
    | recoveredValue0 |
    recoveredValue0 := (0) globalId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20055338; bytecode file offset 0x952a9c"
!SGMakeEnumNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeEnumNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007756c; bytecode file offset 0x9757c8"
!SGMakeEnumNode methodsFor: 'recovered'!
isEnumNode
    ^true
! !

"ASDBase.ic method 0x2007b3ec; bytecode file offset 0x97c330"
!SGMakeEnumNode methodsFor: 'recovered'!
needsGenerateModuleCode
    ^false
! !

"ASDBase.ic method 0x2007e164; bytecode file offset 0x97c330"
!SGMakeEnumNode methodsFor: 'recovered'!
needsGenerateScoopIX
    ^false
! !

"ASDBase.ic method 0x2007ef7c; bytecode file offset 0x97c330"
!SGMakeEnumNode methodsFor: 'recovered'!
needsGenerateECCOCode
    ^false
! !

"ASDBase.ic method 0x20083b88; bytecode file offset 0x9804b8"
!SGMakeEnumNode methodsFor: 'recovered'!
toBeCompiledSOs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) visitMakeNode: (self).
    ^self
! !

"ASDBase.ic method 0x20130184; bytecode file offset 0xa2ca44"
!SGMakeEnumNode methodsFor: 'recovered'!
moduleGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) rteTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a884c; bytecode file offset 0xba511c"
!SGMakeEnumNode methodsFor: 'recovered'!
enabledForModuleCodeGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := enabledForModuleCodeGeneration.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) currentBuildCache.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isOSCategoryAUTOSAR.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 36].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) allDependents.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := [:block280e4354Arg1 | 
    | block280e4354Value0 block280e4354Value1 |
    block280e4354Value0 := block280e4354Arg1.
    block280e4354Value1 := (block280e4354Value0) isARNode.
    block280e4354Value1
].
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) anySatisfy: (recoveredBlock6Stack1).
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack0 := false.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            enabledForModuleCodeGeneration := recoveredBlock6Stack1.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := enabledForModuleCodeGeneration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20323d04; bytecode file offset 0xc205ec"
!SGMakeEnumNode methodsFor: 'recovered'!
analyzeInterfaceGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) autosarStandardReturnTypeLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInterface.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleSourceTimeStamp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGenerateOptions.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGenOptionChange: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
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

"ASDBase.ic method 0x203aec34; bytecode file offset 0xcab520"
!SGMakeEnumNode methodsFor: 'recovered'!
analyze
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) analyzeInterfaceGeneration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) analyzeModuleCodeGeneration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDependents.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) needsGenerateInterface.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 49] ifFalse: [recoveredBlock21PC := 34].
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) moduleSourceTimeStamp.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) interfaceGenerateTimeStamp.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) checkModelMoreRecentTimeStamp: (recoveredBlock21Stack2) generationTimeStamp: (recoveredBlock21Stack3).
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 46] ifFalse: [recoveredBlock21PC := 49].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            (recoveredBlock21Stack1) mustGenerateInterface.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) needsGenerateModuleCode.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 74] ifFalse: [recoveredBlock21PC := 56].
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack3 := self.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) moduleSourceTimeStamp.
            recoveredBlock21PC := 62.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Arg1.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) moduleGenerateTimeStamp.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) checkModelMoreRecentTimeStamp: (recoveredBlock21Stack3) generationTimeStamp: (recoveredBlock21Stack4).
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 70] ifFalse: [recoveredBlock21PC := 74].
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) mustGenerateModuleInitCode.
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

