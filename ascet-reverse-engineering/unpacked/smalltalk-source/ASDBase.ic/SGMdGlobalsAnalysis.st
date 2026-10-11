"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003f6b8; bytecode file offset 0x93bf94"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodeManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c488; bytecode file offset 0x959680"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
codeGeneratorStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c9844; bytecode file offset 0x9c612c"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseRteCall: recoveredArg1 calledMethod: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) autosarStrategy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) semAnaRteCall: (recoveredValue2) executableScope: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ea058; bytecode file offset 0x9e691c"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
methodLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) scope.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := (recoveredValue2) , ('::').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) errLabel.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016cd3c; bytecode file offset 0xa69604"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseMethodCall: recoveredArg1 all: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) analyseMethodCall: (recoveredValue2) visited: (recoveredValue3) path: (#()).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) addAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203e69b8; bytecode file offset 0xce3294"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseMethodCalls: recoveredArg1 visited: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) topNodes: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := [:recoveredBlock14Block21Arg1 | 
    | recoveredBlock14Block21Local1 recoveredBlock14Block21Value0 recoveredBlock14Block21Value1 recoveredBlock14Block21Value2 |
    recoveredBlock14Block21Value0 := recoveredBlock14Block21Arg1.
    recoveredBlock14Block21Value1 := recoveredArg2.
    recoveredBlock14Block21Value2 := (self) analyseMethodCall: (recoveredBlock14Block21Value0) all: (recoveredBlock14Block21Value1).
    recoveredBlock14Block21Value2
].
    (recoveredBlock14Value0) do: (recoveredBlock14Value1).
    recoveredBlock14Value2 := (self) codeManager.
    recoveredBlock14Value3 := (recoveredBlock14Value2) progressReporter.
    recoveredBlock14Value4 := (recoveredBlock14Value3) step.
    recoveredBlock14Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) allComponentInterfaces.
    recoveredValue6 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) optimizations.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) isCgCTBlock.
            recoveredBlock50PC := 62.
        ].
        recoveredBlock50Step = 62 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 66] ifFalse: [recoveredBlock50PC := 84].
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 68.
        ].
        recoveredBlock50Step = 68 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) methods.
            recoveredBlock50PC := 70.
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50Stack2 := [:recoveredBlock50Block70Arg1 | 
    | recoveredBlock50Block70Value0 recoveredBlock50Block70Value1 recoveredBlock50Block70Value2 |
    recoveredBlock50Block70Value0 := recoveredBlock50Block70Arg1.
    recoveredBlock50Block70Value1 := recoveredArg2.
    recoveredBlock50Block70Value2 := (self) analyseMethodCall: (recoveredBlock50Block70Value0) all: (recoveredBlock50Block70Value1).
    recoveredBlock50Block70Value2
].
            recoveredBlock50PC := 83.
        ].
        recoveredBlock50Step = 83 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) do: (recoveredBlock50Stack2).
            recoveredBlock50PC := 84.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20411f70; bytecode file offset 0xd0e858"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseReferences: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGMdReferenceAnalysisCollection.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) imports.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isMdlComponentInterface.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 81].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) methods.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := [:recoveredBlock15Block34Arg1 | 
    | recoveredBlock15Block34Local1 recoveredBlock15Block34Stack0 recoveredBlock15Block34Stack1 recoveredBlock15Block34Stack2 recoveredBlock15Block34Stack3 recoveredBlock15Block34PC recoveredBlock15Block34Step recoveredBlock15Block34Done recoveredBlock15Block34Result |
    recoveredBlock15Block34Stack0 := nil.
    recoveredBlock15Block34PC := 40.
    recoveredBlock15Block34Done := false.
    [recoveredBlock15Block34Done not] whileTrue: [
        recoveredBlock15Block34Step := recoveredBlock15Block34PC.
        recoveredBlock15Block34Step = 40 ifTrue: [
            recoveredBlock15Block34Stack1 := recoveredBlock15Block34Arg1.
            recoveredBlock15Block34PC := 41.
        ].
        recoveredBlock15Block34Step = 41 ifTrue: [
            recoveredBlock15Block34Stack1 := (recoveredBlock15Block34Stack1) analysisInfo.
            recoveredBlock15Block34PC := 43.
        ].
        recoveredBlock15Block34Step = 43 ifTrue: [
            recoveredBlock15Block34Stack1 := (recoveredBlock15Block34Stack1) referenceAnalysis.
            recoveredBlock15Block34PC := 45.
        ].
        recoveredBlock15Block34Step = 45 ifTrue: [
            recoveredBlock15Block34Local1 := recoveredBlock15Block34Stack1.
            recoveredBlock15Block34PC := 46.
        ].
        recoveredBlock15Block34Step = 46 ifTrue: [
            recoveredBlock15Block34Stack1 := nil.
            recoveredBlock15Block34PC := 47.
        ].
        recoveredBlock15Block34Step = 47 ifTrue: [
            recoveredBlock15Block34Stack2 := recoveredBlock15Block34Local1.
            recoveredBlock15Block34PC := 48.
        ].
        recoveredBlock15Block34Step = 48 ifTrue: [
            (recoveredBlock15Block34Stack2 == nil) ifTrue: [recoveredBlock15Block34PC := 59] ifFalse: [recoveredBlock15Block34PC := 52].
        ].
        recoveredBlock15Block34Step = 52 ifTrue: [
            recoveredBlock15Block34PC := 53.
        ].
        recoveredBlock15Block34Step = 53 ifTrue: [
            recoveredBlock15Block34Stack1 := recoveredLocal1.
            recoveredBlock15Block34PC := 56.
        ].
        recoveredBlock15Block34Step = 56 ifTrue: [
            recoveredBlock15Block34Stack2 := recoveredBlock15Block34Local1.
            recoveredBlock15Block34PC := 57.
        ].
        recoveredBlock15Block34Step = 57 ifTrue: [
            recoveredBlock15Block34Stack1 := (recoveredBlock15Block34Stack1) merge: (recoveredBlock15Block34Stack2).
            recoveredBlock15Block34PC := 59.
        ].
        recoveredBlock15Block34Step = 59 ifTrue: [
            recoveredBlock15Block34Result := recoveredBlock15Block34Stack1.
            recoveredBlock15Block34Done := true.
        ].
    ].
    recoveredBlock15Block34Result
].
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            (recoveredBlock15Stack1) do: (recoveredBlock15Stack2).
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) dataSetReferenceAnalysisMap.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack2 := [:recoveredBlock15Block65Arg1 | 
    | recoveredBlock15Block65Value0 recoveredBlock15Block65Value1 recoveredBlock15Block65Value2 |
    recoveredBlock15Block65Value0 := recoveredLocal1.
    recoveredBlock15Block65Value1 := recoveredBlock15Block65Arg1.
    recoveredBlock15Block65Value2 := (recoveredBlock15Block65Value0) merge: (recoveredBlock15Block65Value1).
    recoveredBlock15Block65Value2
].
            recoveredBlock15PC := 79.
        ].
        recoveredBlock15Step = 79 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) do: (recoveredBlock15Stack2).
            recoveredBlock15PC := 81.
        ].
        recoveredBlock15Step = 81 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) calculateTransitiveHull.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) analyzeAndThrowErrors.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2043eae4; bytecode file offset 0xd3b3b8"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := [:recoveredBlock16Block23Arg1 | 
    | recoveredBlock16Block23Stack0 recoveredBlock16Block23Stack1 recoveredBlock16Block23Stack2 recoveredBlock16Block23Stack3 recoveredBlock16Block23PC recoveredBlock16Block23Step recoveredBlock16Block23Done recoveredBlock16Block23Result |
    recoveredBlock16Block23Stack0 := nil.
    recoveredBlock16Block23PC := 30.
    recoveredBlock16Block23Done := false.
    [recoveredBlock16Block23Done not] whileTrue: [
        recoveredBlock16Block23Step := recoveredBlock16Block23PC.
        recoveredBlock16Block23Step = 30 ifTrue: [
            recoveredBlock16Block23Stack1 := nil.
            recoveredBlock16Block23PC := 31.
        ].
        recoveredBlock16Block23Step = 31 ifTrue: [
            recoveredBlock16Block23Stack2 := recoveredBlock16Block23Arg1.
            recoveredBlock16Block23PC := 32.
        ].
        recoveredBlock16Block23Step = 32 ifTrue: [
            recoveredBlock16Block23Stack2 := (recoveredBlock16Block23Stack2) isMdlComponentInterface.
            recoveredBlock16Block23PC := 33.
        ].
        recoveredBlock16Block23Step = 33 ifTrue: [
            (recoveredBlock16Block23Stack2) ifTrue: [recoveredBlock16Block23PC := 36] ifFalse: [recoveredBlock16Block23PC := 57].
        ].
        recoveredBlock16Block23Step = 36 ifTrue: [
            recoveredBlock16Block23PC := 37.
        ].
        recoveredBlock16Block23Step = 37 ifTrue: [
            recoveredBlock16Block23Stack1 := recoveredBlock16Block23Arg1.
            recoveredBlock16Block23PC := 38.
        ].
        recoveredBlock16Block23Step = 38 ifTrue: [
            recoveredBlock16Block23Stack1 := (recoveredBlock16Block23Stack1) methods.
            recoveredBlock16Block23PC := 39.
        ].
        recoveredBlock16Block23Step = 39 ifTrue: [
            recoveredBlock16Block23Stack2 := [:recoveredBlock16Block23Block39Arg1 | 
    | recoveredBlock16Block23Block39Value0 recoveredBlock16Block23Block39Value1 recoveredBlock16Block23Block39Value2 recoveredBlock16Block23Block39Value3 |
    recoveredBlock16Block23Block39Value0 := recoveredBlock16Block23Block39Arg1.
    recoveredBlock16Block23Block39Value1 := (recoveredBlock16Block23Block39Value0) analysisInfo.
    recoveredBlock16Block23Block39Value2 := recoveredArg1.
    recoveredBlock16Block23Block39Value3 := (recoveredBlock16Block23Block39Value1) updateMethodDecls: (recoveredBlock16Block23Block39Value2).
    recoveredBlock16Block23Block39Value3
].
            recoveredBlock16Block23PC := 55.
        ].
        recoveredBlock16Block23Step = 55 ifTrue: [
            recoveredBlock16Block23Stack1 := (recoveredBlock16Block23Stack1) do: (recoveredBlock16Block23Stack2).
            recoveredBlock16Block23PC := 57.
        ].
        recoveredBlock16Block23Step = 57 ifTrue: [
            recoveredBlock16Block23Result := recoveredBlock16Block23Stack1.
            recoveredBlock16Block23Done := true.
        ].
    ].
    recoveredBlock16Block23Result
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := nil.
            recoveredBlock72PC := 79.
        ].
        recoveredBlock72Step = 79 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Arg1.
            recoveredBlock72PC := 80.
        ].
        recoveredBlock72Step = 80 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) isMdlComponentInterface.
            recoveredBlock72PC := 81.
        ].
        recoveredBlock72Step = 81 ifTrue: [
            (recoveredBlock72Stack2) ifTrue: [recoveredBlock72PC := 84] ifFalse: [recoveredBlock72PC := 105].
        ].
        recoveredBlock72Step = 84 ifTrue: [
            recoveredBlock72PC := 85.
        ].
        recoveredBlock72Step = 85 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Arg1.
            recoveredBlock72PC := 86.
        ].
        recoveredBlock72Step = 86 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) methods.
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            recoveredBlock72Stack2 := [:recoveredBlock72Block87Arg1 | 
    | recoveredBlock72Block87Value0 recoveredBlock72Block87Value1 recoveredBlock72Block87Value2 recoveredBlock72Block87Value3 |
    recoveredBlock72Block87Value0 := recoveredBlock72Block87Arg1.
    recoveredBlock72Block87Value1 := (recoveredBlock72Block87Value0) analysisInfo.
    recoveredBlock72Block87Value2 := recoveredArg1.
    recoveredBlock72Block87Value3 := (recoveredBlock72Block87Value1) updateMethodDecls: (recoveredBlock72Block87Value2).
    recoveredBlock72Block87Value3
].
            recoveredBlock72PC := 103.
        ].
        recoveredBlock72Step = 103 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) do: (recoveredBlock72Stack2).
            recoveredBlock72PC := 105.
        ].
        recoveredBlock72Step = 105 ifTrue: [
            recoveredBlock72Result := recoveredBlock72Stack1.
            recoveredBlock72Done := true.
        ].
    ].
    recoveredBlock72Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20469b9c; bytecode file offset 0xd6648c"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseCallStack: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAUTOSARActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) swComponentInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := (self) errorHandler.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) moduleLabel.
    recoveredBlock15Value3 := (recoveredBlock15Value2) , (' (Call Stack Analysis)').
    recoveredBlock15Value4 := [
    | recoveredBlock15Block33Value0 recoveredBlock15Block33Value1 recoveredBlock15Block33Value2 recoveredBlock15Block33Value3 recoveredBlock15Block33Value4 |
    recoveredBlock15Block33Value0 := recoveredArg1.
    recoveredBlock15Block33Value1 := recoveredBlock15Arg1.
    (self) analyseRteMacros: (recoveredBlock15Block33Value0) swcInterface: (recoveredBlock15Block33Value1).
    recoveredBlock15Block33Value2 := recoveredArg1.
    recoveredBlock15Block33Value3 := recoveredBlock15Arg1.
    recoveredBlock15Block33Value4 := (self) analyseMsgAccess: (recoveredBlock15Block33Value2) swcInterface: (recoveredBlock15Block33Value3).
    recoveredBlock15Block33Value4
].
    recoveredBlock15Value5 := (recoveredBlock15Value0) collectMessagesInSpecialSubUnit: (recoveredBlock15Value3) do: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectInterface.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 recoveredBlock72Value5 |
    recoveredBlock72Value0 := (self) errorHandler.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value1) moduleLabel.
    recoveredBlock72Value3 := (recoveredBlock72Value2) , (' (Call Stack Analysis)').
    recoveredBlock72Value4 := [
    | recoveredBlock72Block89Value0 recoveredBlock72Block89Value1 recoveredBlock72Block89Value2 recoveredBlock72Block89Value3 recoveredBlock72Block89Value4 |
    recoveredBlock72Block89Value0 := recoveredArg1.
    recoveredBlock72Block89Value1 := recoveredBlock72Arg1.
    (self) analyseCalledByProcessContainers: (recoveredBlock72Block89Value0) projectInterface: (recoveredBlock72Block89Value1).
    recoveredBlock72Block89Value2 := recoveredArg1.
    recoveredBlock72Block89Value3 := recoveredBlock72Arg1.
    recoveredBlock72Block89Value4 := (self) analyseMsgAccess: (recoveredBlock72Block89Value2) projectInterface: (recoveredBlock72Block89Value3).
    recoveredBlock72Block89Value4
].
    recoveredBlock72Value5 := (recoveredBlock72Value0) collectMessagesInSpecialSubUnit: (recoveredBlock72Value3) do: (recoveredBlock72Value4).
    recoveredBlock72Value5
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048c6dc; bytecode file offset 0xd88fec"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseMethodCalls: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) imports.
    recoveredValue4 := recoveredLocal2.
    (self) analyseMethodCalls: (recoveredValue3) visited: (recoveredValue4).
    recoveredValue5 := Set.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) allComponentInterfaces.
    recoveredValue9 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) isMdlComponentInterface.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 44] ifFalse: [recoveredBlock30PC := 117].
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) optimizations.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) isCgCTBlock.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 117] ifFalse: [recoveredBlock30PC := 52].
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) methods.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) generator.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) mdlClassType.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) optimizeOneLevelDirectAccess: (recoveredBlock30Stack2).
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 68] ifFalse: [recoveredBlock30PC := 96].
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) generator.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) mdlClassType.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) optimizeMultipleLevelDirectAccess: (recoveredBlock30Stack2).
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 96] ifFalse: [recoveredBlock30PC := 80].
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local1.
            recoveredBlock30PC := 81.
        ].
        recoveredBlock30Step = 81 ifTrue: [
            recoveredBlock30Stack2 := [:block28103168Arg1 | 
    | block28103168Value0 block28103168Value1 block28103168Value2 block28103168Value3 |
    block28103168Value0 := block28103168Arg1.
    block28103168Value1 := (block28103168Value0) attributes.
    block28103168Value2 := (block28103168Value1) isCgDirectAccessMethod.
    block28103168Value3 := (block28103168Value2) not.
    block28103168Value3
].
            recoveredBlock30PC := 83.
        ].
        recoveredBlock30Step = 83 ifTrue: [
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) select: (recoveredBlock30Stack2).
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 96.
        ].
        recoveredBlock30Step = 96 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local1.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            recoveredBlock30Stack2 := [:block2810318cArg1 | 
    | block2810318cValue0 block2810318cValue1 |
    block2810318cValue0 := block2810318cArg1.
    block2810318cValue1 := (block2810318cValue0) isMdlMsgCopyProcessDecl.
    block2810318cValue1
].
            recoveredBlock30PC := 99.
        ].
        recoveredBlock30Step = 99 ifTrue: [
            recoveredBlock30PC := 106.
        ].
        recoveredBlock30Step = 106 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) reject: (recoveredBlock30Stack2).
            recoveredBlock30PC := 108.
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 109.
        ].
        recoveredBlock30Step = 109 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 112.
        ].
        recoveredBlock30Step = 112 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local1.
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) addAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 115.
        ].
        recoveredBlock30Step = 115 ifTrue: [
            recoveredBlock30Stack2 := nil.
            recoveredBlock30PC := 116.
        ].
        recoveredBlock30Step = 116 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 117.
        ].
        recoveredBlock30Step = 117 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    (self) analyseUnreachableMethods: (recoveredValue10) all: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x204ad8e4; bytecode file offset 0xdaa1f0"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseCalledByProcessContainers: recoveredArg1 projectInterface: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block28105448Arg1 | 
    | block28105448Stack0 block28105448Stack1 block28105448Stack2 block28105448Stack3 block28105448PC block28105448Step block28105448Done block28105448Result |
    block28105448Stack0 := self.
    block28105448PC := 4.
    block28105448Done := false.
    [block28105448Done not] whileTrue: [
        block28105448Step := block28105448PC.
        block28105448Step = 4 ifTrue: [
            block28105448Stack1 := block28105448Arg1.
            block28105448PC := 5.
        ].
        block28105448Step = 5 ifTrue: [
            block28105448Stack1 := (block28105448Stack1) methods.
            block28105448PC := 6.
        ].
        block28105448Step = 6 ifTrue: [
            block28105448Stack2 := [:block2810546cArg1 | 
    | block2810546cValue0 block2810546cValue1 block2810546cValue2 |
    block2810546cValue0 := block2810546cArg1.
    block2810546cValue1 := (block2810546cValue0) analysisInfo.
    block2810546cValue2 := (block2810546cValue1) resetCalledByProcessContainer.
    block2810546cValue2
].
            block28105448PC := 8.
        ].
        block28105448Step = 8 ifTrue: [
            block28105448PC := 18.
        ].
        block28105448Step = 18 ifTrue: [
            block28105448Stack1 := (block28105448Stack1) do: (block28105448Stack2).
            block28105448PC := 20.
        ].
        block28105448Step = 20 ifTrue: [
            block28105448Result := block28105448Stack1.
            block28105448Done := true.
        ].
    ].
    block28105448Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksSettings.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mustPerformExternalBuildTool.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksConfig.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 |
    recoveredBlock55Value0 := recoveredLocal1.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value1) bypassFunctions.
    recoveredBlock55Value3 := (recoveredBlock55Value0) addAll: (recoveredBlock55Value2).
    recoveredBlock55Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) osLogic.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 |
    recoveredBlock81Value0 := recoveredLocal1.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := (recoveredBlock81Value1) tasks.
    recoveredBlock81Value3 := (recoveredBlock81Value0) addAll: (recoveredBlock81Value2).
    recoveredBlock81Value3
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:block28105490Arg1 | 
    | block28105490Local1 block28105490Value0 block28105490Value1 block28105490Value2 block28105490Value3 block28105490Value4 block28105490Value5 |
    block28105490Value0 := Set.
    block28105490Value1 := (block28105490Value0) new.
    block28105490Local1 := block28105490Value1.
    block28105490Value2 := block28105490Arg1.
    block28105490Value3 := (block28105490Value2) processList.
    block28105490Value4 := [:block28105490Block16Arg1 | 
    | block28105490Block16Value0 block28105490Block16Value1 block28105490Block16Value2 block28105490Block16Value3 |
    block28105490Block16Value0 := block28105490Block16Arg1.
    block28105490Block16Value1 := block28105490Arg1.
    block28105490Block16Value2 := block28105490Local1.
    block28105490Block16Value3 := (block28105490Block16Value0) collectCallsFromProcessContainer: (block28105490Block16Value1) visited: (block28105490Block16Value2).
    block28105490Block16Value3
].
    block28105490Value5 := (block28105490Value3) do: (block28105490Value4).
    block28105490Value5
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b5814; bytecode file offset 0xdb210c"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseVerifyCalls: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) imports.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isMdlComponentInterface.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 64].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) methods.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := [:recoveredBlock15Block34Arg1 | 
    | recoveredBlock15Block34Value0 recoveredBlock15Block34Value1 recoveredBlock15Block34Value2 recoveredBlock15Block34Value3 recoveredBlock15Block34Value4 |
    recoveredBlock15Block34Value0 := recoveredBlock15Block34Arg1.
    recoveredBlock15Block34Value1 := (recoveredBlock15Block34Value0) analysisInfo.
    recoveredBlock15Block34Value2 := (recoveredBlock15Block34Value1) verifyCalls.
    recoveredBlock15Block34Value3 := [:recoveredBlock15Block34Block45Arg1 | 
    | recoveredBlock15Block34Block45Value0 recoveredBlock15Block34Block45Value1 recoveredBlock15Block34Block45Value2 |
    recoveredBlock15Block34Block45Value0 := recoveredLocal2.
    recoveredBlock15Block34Block45Value1 := recoveredBlock15Block34Block45Arg1.
    recoveredBlock15Block34Block45Value2 := (recoveredBlock15Block34Block45Value0) addAll: (recoveredBlock15Block34Block45Value1).
    recoveredBlock15Block34Block45Value2
].
    recoveredBlock15Block34Value4 := (recoveredBlock15Block34Value2) ifNotNil: (recoveredBlock15Block34Value3).
    recoveredBlock15Block34Value4
].
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) do: (recoveredBlock15Stack2).
            recoveredBlock15PC := 64.
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := nil.
            recoveredBlock67PC := 75.
        ].
        recoveredBlock67Step = 75 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) isMdlRedundantDataMaster.
            recoveredBlock67PC := 78.
        ].
        recoveredBlock67Step = 78 ifTrue: [
            (recoveredBlock67Stack2) ifTrue: [recoveredBlock67PC := 82] ifFalse: [recoveredBlock67PC := 101].
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal2.
            recoveredBlock67PC := 85.
        ].
        recoveredBlock67Step = 85 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Arg1.
            recoveredBlock67PC := 86.
        ].
        recoveredBlock67Step = 86 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) includes: (recoveredBlock67Stack3).
            recoveredBlock67PC := 88.
        ].
        recoveredBlock67Step = 88 ifTrue: [
            (recoveredBlock67Stack2) ifTrue: [recoveredBlock67PC := 101] ifFalse: [recoveredBlock67PC := 92].
        ].
        recoveredBlock67Step = 92 ifTrue: [
            recoveredBlock67PC := 93.
        ].
        recoveredBlock67Step = 93 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Arg1.
            recoveredBlock67PC := 94.
        ].
        recoveredBlock67Step = 94 ifTrue: [
            recoveredBlock67Stack2 := 17.
            recoveredBlock67PC := 96.
        ].
        recoveredBlock67Step = 96 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Arg1.
            recoveredBlock67PC := 97.
        ].
        recoveredBlock67Step = 97 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) errLabel.
            recoveredBlock67PC := 99.
        ].
        recoveredBlock67Step = 99 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) mdlWarningNo: (recoveredBlock67Stack2) with: (recoveredBlock67Stack3).
            recoveredBlock67PC := 101.
        ].
        recoveredBlock67Step = 101 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack1.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) imports.
    recoveredValue9 := (recoveredValue8) values.
    recoveredValue10 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Stack0 recoveredBlock110Stack1 recoveredBlock110Stack2 recoveredBlock110Stack3 recoveredBlock110PC recoveredBlock110Step recoveredBlock110Done recoveredBlock110Result |
    recoveredBlock110Stack0 := self.
    recoveredBlock110PC := 116.
    recoveredBlock110Done := false.
    [recoveredBlock110Done not] whileTrue: [
        recoveredBlock110Step := recoveredBlock110PC.
        recoveredBlock110Step = 116 ifTrue: [
            recoveredBlock110Stack1 := nil.
            recoveredBlock110PC := 117.
        ].
        recoveredBlock110Step = 117 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Arg1.
            recoveredBlock110PC := 118.
        ].
        recoveredBlock110Step = 118 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) isMdlComponentInterface.
            recoveredBlock110PC := 120.
        ].
        recoveredBlock110Step = 120 ifTrue: [
            (recoveredBlock110Stack2) ifTrue: [recoveredBlock110PC := 124] ifFalse: [recoveredBlock110PC := 141].
        ].
        recoveredBlock110Step = 124 ifTrue: [
            recoveredBlock110PC := 125.
        ].
        recoveredBlock110Step = 125 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Arg1.
            recoveredBlock110PC := 126.
        ].
        recoveredBlock110Step = 126 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) instVars.
            recoveredBlock110PC := 128.
        ].
        recoveredBlock110Step = 128 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal1.
            recoveredBlock110PC := 131.
        ].
        recoveredBlock110Step = 131 ifTrue: [
            (recoveredBlock110Stack1) do: (recoveredBlock110Stack2).
            recoveredBlock110PC := 133.
        ].
        recoveredBlock110Step = 133 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Arg1.
            recoveredBlock110PC := 134.
        ].
        recoveredBlock110Step = 134 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) classVars.
            recoveredBlock110PC := 136.
        ].
        recoveredBlock110Step = 136 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal1.
            recoveredBlock110PC := 139.
        ].
        recoveredBlock110Step = 139 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) do: (recoveredBlock110Stack2).
            recoveredBlock110PC := 141.
        ].
        recoveredBlock110Step = 141 ifTrue: [
            recoveredBlock110Result := recoveredBlock110Stack1.
            recoveredBlock110Done := true.
        ].
    ].
    recoveredBlock110Result
].
    (recoveredValue9) do: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x204ba2b0; bytecode file offset 0xdb6bc0"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseRteMacros: recoveredArg1 swcInterface: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableDecls.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredLocal1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) analyzeAllIssuedRteCalls: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) allComponentInterfaces.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
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
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) isMdlComponentInterface.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 48] ifFalse: [recoveredBlock33PC := 84].
        ].
        recoveredBlock33Step = 48 ifTrue: [
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) methods.
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack2 := [:recoveredBlock33Block52Arg1 | 
    | recoveredBlock33Block52Value0 recoveredBlock33Block52Value1 recoveredBlock33Block52Value2 recoveredBlock33Block52Value3 recoveredBlock33Block52Value4 |
    recoveredBlock33Block52Value0 := recoveredBlock33Block52Arg1.
    recoveredBlock33Block52Value1 := (recoveredBlock33Block52Value0) analysisInfo.
    recoveredBlock33Block52Value2 := (recoveredBlock33Block52Value1) issuedRTECalls.
    recoveredBlock33Block52Value3 := [:recoveredBlock33Block52Block65Arg1 | 
    | recoveredBlock33Block52Block65Value0 recoveredBlock33Block52Block65Value1 recoveredBlock33Block52Block65Value2 |
    recoveredBlock33Block52Block65Value0 := recoveredBlock33Block52Block65Arg1.
    recoveredBlock33Block52Block65Value1 := recoveredBlock33Block52Arg1.
    recoveredBlock33Block52Block65Value2 := (self) analyseRteCall: (recoveredBlock33Block52Block65Value0) calledMethod: (recoveredBlock33Block52Block65Value1).
    recoveredBlock33Block52Block65Value2
].
    recoveredBlock33Block52Value4 := (recoveredBlock33Block52Value2) do: (recoveredBlock33Block52Value3).
    recoveredBlock33Block52Value4
].
            recoveredBlock33PC := 82.
        ].
        recoveredBlock33Step = 82 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) do: (recoveredBlock33Stack2).
            recoveredBlock33PC := 84.
        ].
        recoveredBlock33Step = 84 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVars.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := [:block28105fd0Arg1 | 
    | block28105fd0Stack0 block28105fd0Stack1 block28105fd0Stack2 block28105fd0Stack3 block28105fd0PC block28105fd0Step block28105fd0Done block28105fd0Result |
    block28105fd0Stack0 := self.
    block28105fd0PC := 4.
    block28105fd0Done := false.
    [block28105fd0Done not] whileTrue: [
        block28105fd0Step := block28105fd0PC.
        block28105fd0Step = 4 ifTrue: [
            block28105fd0Stack1 := false.
            block28105fd0PC := 5.
        ].
        block28105fd0Step = 5 ifTrue: [
            block28105fd0Stack2 := block28105fd0Arg1.
            block28105fd0PC := 6.
        ].
        block28105fd0Step = 6 ifTrue: [
            block28105fd0Stack2 := (block28105fd0Stack2) isMdlProvidePort.
            block28105fd0PC := 8.
        ].
        block28105fd0Step = 8 ifTrue: [
            (block28105fd0Stack2) ifTrue: [block28105fd0PC := 12] ifFalse: [block28105fd0PC := 18].
        ].
        block28105fd0Step = 12 ifTrue: [
            block28105fd0PC := 13.
        ].
        block28105fd0Step = 13 ifTrue: [
            block28105fd0Stack1 := block28105fd0Arg1.
            block28105fd0PC := 14.
        ].
        block28105fd0Step = 14 ifTrue: [
            block28105fd0Stack1 := (block28105fd0Stack1) mdlClass.
            block28105fd0PC := 16.
        ].
        block28105fd0Step = 16 ifTrue: [
            block28105fd0Stack1 := (block28105fd0Stack1) isMdlWritableARDataInterfaceType.
            block28105fd0PC := 18.
        ].
        block28105fd0Step = 18 ifTrue: [
            block28105fd0Result := block28105fd0Stack1.
            block28105fd0Done := true.
        ].
    ].
    block28105fd0Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) imports.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) analyseRteWriteMacros: (recoveredStack2) imports: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortedInstVars.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:block28105ff4Arg1 | 
    | block28105ff4Value0 block28105ff4Value1 |
    block28105ff4Value0 := block28105ff4Arg1.
    block28105ff4Value1 := (block28105ff4Value0) isMdlARInterrunnableVarDecl.
    block28105ff4Value1
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) analyseIRVUsage: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20500b64; bytecode file offset 0xdfd460"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseMethodCall: recoveredArg1 visited: recoveredArg2 path: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) analysisInfo.
    recoveredValue4 := (recoveredValue3) calledMethods.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Local4 recoveredBlock17Local5 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg3.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) indexOf: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Local5 := recoveredBlock17Stack2.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) ~= (recoveredBlock17Stack2).
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 40] ifFalse: [recoveredBlock17PC := 156].
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack1 := OrderedCollection.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := OrderedCollection.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg3.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) copyWith: (recoveredBlock17Stack2).
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Local4 := recoveredBlock17Stack1.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local5.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) + (-1).
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local4.
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) size.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) + (-1).
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local3.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg3.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) at: (recoveredBlock17Stack4).
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) source.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            (recoveredBlock17Stack2) add: (recoveredBlock17Stack3).
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack3 := 'Method '.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack4 := self.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local4.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local1.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) at: (recoveredBlock17Stack6).
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) methodLabel: (recoveredBlock17Stack5).
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) , (recoveredBlock17Stack4).
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17Stack4 := ' calls method '.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) , (recoveredBlock17Stack4).
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack4 := self.
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local4.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local1.
            recoveredBlock17PC := 100.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) + (1).
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) at: (recoveredBlock17Stack6).
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) methodLabel: (recoveredBlock17Stack5).
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) , (recoveredBlock17Stack4).
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            (recoveredBlock17Stack2) add: (recoveredBlock17Stack3).
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            (recoveredBlock17Stack1 isInteger and: [recoveredBlock17Local1 isInteger]) ifTrue: [(recoveredBlock17Local1 + 1 <= recoveredBlock17Stack1) ifTrue: [recoveredBlock17Local1 := recoveredBlock17Local1 + 1. recoveredBlock17PC := 70] ifFalse: [recoveredBlock17Local1 := nil. recoveredBlock17PC := 123]] ifFalse: [recoveredBlock17PC := 113].
        ].
        recoveredBlock17Step = 113 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) + (1).
            recoveredBlock17PC := 116.
        ].
        recoveredBlock17Step = 116 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack4.
            recoveredBlock17PC := 118.
        ].
        recoveredBlock17Step = 118 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) < (recoveredBlock17Stack3).
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 121] ifFalse: [recoveredBlock17PC := 70].
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 122.
        ].
        recoveredBlock17Step = 122 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            recoveredBlock17PC := 124.
        ].
        recoveredBlock17Step = 124 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 127.
        ].
        recoveredBlock17Step = 127 ifTrue: [
            recoveredBlock17Stack2 := 92.
            recoveredBlock17PC := 130.
        ].
        recoveredBlock17Step = 130 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 131.
        ].
        recoveredBlock17Step = 131 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 133.
        ].
        recoveredBlock17Step = 133 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) methodLabel: (recoveredBlock17Stack4).
            recoveredBlock17PC := 135.
        ].
        recoveredBlock17Step = 135 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 137.
        ].
        recoveredBlock17Step = 137 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) source.
            recoveredBlock17PC := 139.
        ].
        recoveredBlock17Step = 139 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local3.
            recoveredBlock17PC := 140.
        ].
        recoveredBlock17Step = 140 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local2.
            recoveredBlock17PC := 141.
        ].
        recoveredBlock17Step = 141 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) createMultiSource: (recoveredBlock17Stack5) labels: (recoveredBlock17Stack6).
            recoveredBlock17PC := 143.
        ].
        recoveredBlock17Step = 143 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mdlSemErrNo: (recoveredBlock17Stack2) with: (recoveredBlock17Stack3) source: (recoveredBlock17Stack4).
            recoveredBlock17PC := 146.
        ].
        recoveredBlock17Step = 146 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 147.
        ].
        recoveredBlock17Step = 147 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 148.
        ].
        recoveredBlock17Step = 148 ifTrue: [
            recoveredBlock17Local4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 149.
        ].
        recoveredBlock17Step = 149 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 150.
        ].
        recoveredBlock17Step = 150 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack3.
            recoveredBlock17PC := 151.
        ].
        recoveredBlock17Step = 151 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack2.
            recoveredBlock17PC := 152.
        ].
        recoveredBlock17Step = 152 ifTrue: [
            recoveredBlock17PC := 173.
        ].
        recoveredBlock17Step = 156 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 157.
        ].
        recoveredBlock17Step = 157 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 159.
        ].
        recoveredBlock17Step = 159 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg2.
            recoveredBlock17PC := 162.
        ].
        recoveredBlock17Step = 162 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg3.
            recoveredBlock17PC := 165.
        ].
        recoveredBlock17Step = 165 ifTrue: [
            recoveredBlock17Stack5 := recoveredArg1.
            recoveredBlock17PC := 168.
        ].
        recoveredBlock17Step = 168 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) copyWith: (recoveredBlock17Stack5).
            recoveredBlock17PC := 170.
        ].
        recoveredBlock17Step = 170 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) analyseMethodCall: (recoveredBlock17Stack2) visited: (recoveredBlock17Stack3) path: (recoveredBlock17Stack4).
            recoveredBlock17PC := 173.
        ].
        recoveredBlock17Step = 173 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2050c914; bytecode file offset 0xe09224"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseUnreachableMethods: recoveredArg1 all: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 |
    recoveredBlock13Value0 := recoveredLocal2.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) scope.
    recoveredBlock13Value3 := (recoveredBlock13Value2) classId.
    recoveredBlock13Value4 := (recoveredBlock13Value3) , ('#').
    recoveredBlock13Value5 := recoveredBlock13Arg1.
    recoveredBlock13Value6 := (recoveredBlock13Value5) mdlKey.
    recoveredBlock13Value7 := (recoveredBlock13Value4) , (recoveredBlock13Value6).
    recoveredBlock13Value8 := [
    | recoveredBlock13Block39Value0 recoveredBlock13Block39Value1 recoveredBlock13Block39Value2 |
    recoveredBlock13Block39Value0 := OrderedCollection.
    recoveredBlock13Block39Value1 := recoveredBlock13Arg1.
    recoveredBlock13Block39Value2 := (recoveredBlock13Block39Value0) with: (recoveredBlock13Block39Value1).
    recoveredBlock13Block39Value2
].
    recoveredBlock13Value9 := [:recoveredBlock13Block54Arg1 | 
    | recoveredBlock13Block54Value0 recoveredBlock13Block54Value1 recoveredBlock13Block54Value2 |
    recoveredBlock13Block54Value0 := recoveredBlock13Block54Arg1.
    recoveredBlock13Block54Value1 := recoveredBlock13Arg1.
    recoveredBlock13Block54Value2 := (recoveredBlock13Block54Value0) add: (recoveredBlock13Block54Value1).
    recoveredBlock13Block54Value2
].
    recoveredBlock13Value10 := (recoveredBlock13Value0) at: (recoveredBlock13Value7) ifAbsentPut: (recoveredBlock13Value8) ifPresent: (recoveredBlock13Value9).
    recoveredBlock13Value10
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := [:block2810b01cArg1 | 
    | block2810b01cValue0 block2810b01cValue1 block2810b01cValue2 block2810b01cValue3 block2810b01cValue4 block2810b01cValue5 block2810b01cValue6 |
    block2810b01cValue0 := block2810b01cArg1.
    block2810b01cValue1 := (block2810b01cValue0) scope.
    block2810b01cValue2 := (block2810b01cValue1) classId.
    block2810b01cValue3 := (block2810b01cValue2) , ('#').
    block2810b01cValue4 := block2810b01cArg1.
    block2810b01cValue5 := (block2810b01cValue4) mdlKey.
    block2810b01cValue6 := (block2810b01cValue3) , (block2810b01cValue5).
    block2810b01cValue6
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := [:block2810b040Arg1 | 
    nil
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeAllKeys: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 |
    recoveredBlock120Value0 := recoveredLocal1.
    recoveredBlock120Value1 := recoveredBlock120Arg1.
    recoveredBlock120Value2 := (recoveredBlock120Value0) addAll: (recoveredBlock120Value1).
    recoveredBlock120Value2
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := [:block2810b064Arg1 :block2810b064Arg2 | 
    | block2810b064Value0 block2810b064Value1 block2810b064Value2 block2810b064Value3 block2810b064Value4 |
    block2810b064Value0 := block2810b064Arg1.
    block2810b064Value1 := (block2810b064Value0) errLabel.
    block2810b064Value2 := block2810b064Arg2.
    block2810b064Value3 := (block2810b064Value2) errLabel.
    block2810b064Value4 := (block2810b064Value1) < (block2810b064Value3).
    block2810b064Value4
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := [:block2810b088Arg1 | 
    | block2810b088Stack0 block2810b088Stack1 block2810b088Stack2 block2810b088Stack3 block2810b088Stack4 block2810b088PC block2810b088Step block2810b088Done block2810b088Result |
    block2810b088Stack0 := self.
    block2810b088PC := 4.
    block2810b088Done := false.
    [block2810b088Done not] whileTrue: [
        block2810b088Step := block2810b088PC.
        block2810b088Step = 4 ifTrue: [
            block2810b088Stack1 := nil.
            block2810b088PC := 5.
        ].
        block2810b088Step = 5 ifTrue: [
            block2810b088Stack2 := block2810b088Arg1.
            block2810b088PC := 6.
        ].
        block2810b088Step = 6 ifTrue: [
            block2810b088Stack2 := (block2810b088Stack2) isMdlPrivateAdditional.
            block2810b088PC := 8.
        ].
        block2810b088Step = 8 ifTrue: [
            (block2810b088Stack2) ifTrue: [block2810b088PC := 23] ifFalse: [block2810b088PC := 12].
        ].
        block2810b088Step = 12 ifTrue: [
            block2810b088PC := 13.
        ].
        block2810b088Step = 13 ifTrue: [
            block2810b088Stack1 := block2810b088Arg1.
            block2810b088PC := 14.
        ].
        block2810b088Step = 14 ifTrue: [
            block2810b088Stack2 := 93.
            block2810b088PC := 18.
        ].
        block2810b088Step = 18 ifTrue: [
            block2810b088Stack3 := block2810b088Arg1.
            block2810b088PC := 19.
        ].
        block2810b088Step = 19 ifTrue: [
            block2810b088Stack3 := (block2810b088Stack3) errLabel.
            block2810b088PC := 21.
        ].
        block2810b088Step = 21 ifTrue: [
            block2810b088Stack1 := (block2810b088Stack1) mdlInfoNo: (block2810b088Stack2) with: (block2810b088Stack3).
            block2810b088PC := 23.
        ].
        block2810b088Step = 23 ifTrue: [
            block2810b088Result := block2810b088Stack1.
            block2810b088Done := true.
        ].
    ].
    block2810b088Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205506cc; bytecode file offset 0xe4cfdc"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
propagateMemorySegment: recoveredArg1 inCallTree: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) analysisInfo.
    recoveredValue2 := (recoveredValue1) usedElements.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) scope.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isCgRecordType.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 22] ifFalse: [recoveredBlock9PC := 36].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg2.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack2 := 152.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) mdlWarningNo: (recoveredBlock9Stack2) with: (recoveredBlock9Stack3).
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9PC := 175.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) attributes.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) hasResolvedMemorySegmentAutomatic.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 46] ifFalse: [recoveredBlock9PC := 175].
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) mdlClass.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isCgComplexClassType.
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 56] ifFalse: [recoveredBlock9PC := 102].
        ].
        recoveredBlock9Step = 56 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 57.
        ].
        recoveredBlock9Step = 57 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) mdlClass.
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isCgRecordType.
            recoveredBlock9PC := 60.
        ].
        recoveredBlock9Step = 60 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 102] ifFalse: [recoveredBlock9PC := 64].
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isMdlReference.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 102] ifFalse: [recoveredBlock9PC := 70].
        ].
        recoveredBlock9Step = 70 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg3.
            recoveredBlock9PC := 73.
        ].
        recoveredBlock9Step = 73 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) mdlClass.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) mdlKey.
            recoveredBlock9PC := 78.
        ].
        recoveredBlock9Step = 78 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) lookupClassInterface: (recoveredBlock9Stack2).
            recoveredBlock9PC := 80.
        ].
        recoveredBlock9Step = 80 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 81.
        ].
        recoveredBlock9Step = 81 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local1.
            recoveredBlock9PC := 82.
        ].
        recoveredBlock9Step = 82 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) optimizations.
            recoveredBlock9PC := 84.
        ].
        recoveredBlock9Step = 84 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) hasResolvedMemorySegmentAutomatic.
            recoveredBlock9PC := 86.
        ].
        recoveredBlock9Step = 86 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 90] ifFalse: [recoveredBlock9PC := 98].
        ].
        recoveredBlock9Step = 90 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local1.
            recoveredBlock9PC := 91.
        ].
        recoveredBlock9Step = 91 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) optimizations.
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 96.
        ].
        recoveredBlock9Step = 96 ifTrue: [
            (recoveredBlock9Stack1) resolvedMemorySegment: (recoveredBlock9Stack2).
            recoveredBlock9PC := 98.
        ].
        recoveredBlock9Step = 98 ifTrue: [
            recoveredBlock9PC := 136.
        ].
        recoveredBlock9Step = 102 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 103.
        ].
        recoveredBlock9Step = 103 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) attributes.
            recoveredBlock9PC := 105.
        ].
        recoveredBlock9Step = 105 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 108 ifTrue: [
            (recoveredBlock9Stack1) resolvedMemorySegment: (recoveredBlock9Stack2).
            recoveredBlock9PC := 110.
        ].
        recoveredBlock9Step = 110 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 111.
        ].
        recoveredBlock9Step = 111 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) generator.
            recoveredBlock9PC := 113.
        ].
        recoveredBlock9Step = 113 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isRedundantDataFeatureActive.
            recoveredBlock9PC := 115.
        ].
        recoveredBlock9Step = 115 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 118] ifFalse: [recoveredBlock9PC := 136].
        ].
        recoveredBlock9Step = 118 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 119.
        ].
        recoveredBlock9Step = 119 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isMdlRedundantDataMaster.
            recoveredBlock9PC := 121.
        ].
        recoveredBlock9Step = 121 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 124] ifFalse: [recoveredBlock9PC := 136].
        ].
        recoveredBlock9Step = 124 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 125.
        ].
        recoveredBlock9Step = 125 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) redundantIdentifier.
            recoveredBlock9PC := 127.
        ].
        recoveredBlock9Step = 127 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) varDecl.
            recoveredBlock9PC := 129.
        ].
        recoveredBlock9Step = 129 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) attributes.
            recoveredBlock9PC := 131.
        ].
        recoveredBlock9Step = 131 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 134.
        ].
        recoveredBlock9Step = 134 ifTrue: [
            (recoveredBlock9Stack1) resolvedMemorySegment: (recoveredBlock9Stack2).
            recoveredBlock9PC := 136.
        ].
        recoveredBlock9Step = 136 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 137.
        ].
        recoveredBlock9Step = 137 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 138.
        ].
        recoveredBlock9Step = 138 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isMdlClassVarDecl.
            recoveredBlock9PC := 140.
        ].
        recoveredBlock9Step = 140 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 173] ifFalse: [recoveredBlock9PC := 144].
        ].
        recoveredBlock9Step = 144 ifTrue: [
            recoveredBlock9PC := 145.
        ].
        recoveredBlock9Step = 145 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg3.
            recoveredBlock9PC := 148.
        ].
        recoveredBlock9Step = 148 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 149.
        ].
        recoveredBlock9Step = 149 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) scope.
            recoveredBlock9PC := 150.
        ].
        recoveredBlock9Step = 150 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) mdlKey.
            recoveredBlock9PC := 152.
        ].
        recoveredBlock9Step = 152 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) lookupClassInterface: (recoveredBlock9Stack2).
            recoveredBlock9PC := 154.
        ].
        recoveredBlock9Step = 154 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 155.
        ].
        recoveredBlock9Step = 155 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 156.
        ].
        recoveredBlock9Step = 156 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Local1.
            recoveredBlock9PC := 157.
        ].
        recoveredBlock9Step = 157 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) optimizations.
            recoveredBlock9PC := 159.
        ].
        recoveredBlock9Step = 159 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) hasResolvedMemorySegmentAutomatic.
            recoveredBlock9PC := 161.
        ].
        recoveredBlock9Step = 161 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 164] ifFalse: [recoveredBlock9PC := 173].
        ].
        recoveredBlock9Step = 164 ifTrue: [
            recoveredBlock9PC := 165.
        ].
        recoveredBlock9Step = 165 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local1.
            recoveredBlock9PC := 166.
        ].
        recoveredBlock9Step = 166 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) optimizations.
            recoveredBlock9PC := 168.
        ].
        recoveredBlock9Step = 168 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 171.
        ].
        recoveredBlock9Step = 171 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) resolvedMemorySegment: (recoveredBlock9Stack2).
            recoveredBlock9PC := 173.
        ].
        recoveredBlock9Step = 173 ifTrue: [
            recoveredBlock9Stack2 := nil.
            recoveredBlock9PC := 174.
        ].
        recoveredBlock9Step = 174 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 175.
        ].
        recoveredBlock9Step = 175 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) analysisInfo.
    recoveredValue6 := (recoveredValue5) calledMethods.
    recoveredValue7 := [:recoveredBlock184Arg1 | 
    | recoveredBlock184Stack0 recoveredBlock184Stack1 recoveredBlock184Stack2 recoveredBlock184Stack3 recoveredBlock184Stack4 recoveredBlock184Stack5 recoveredBlock184PC recoveredBlock184Step recoveredBlock184Done recoveredBlock184Result |
    recoveredBlock184Stack0 := self.
    recoveredBlock184PC := 190.
    recoveredBlock184Done := false.
    [recoveredBlock184Done not] whileTrue: [
        recoveredBlock184Step := recoveredBlock184PC.
        recoveredBlock184Step = 190 ifTrue: [
            recoveredBlock184Stack1 := nil.
            recoveredBlock184PC := 191.
        ].
        recoveredBlock184Step = 191 ifTrue: [
            recoveredBlock184Stack2 := recoveredBlock184Arg1.
            recoveredBlock184PC := 192.
        ].
        recoveredBlock184Step = 192 ifTrue: [
            recoveredBlock184Stack2 := (recoveredBlock184Stack2) attributes.
            recoveredBlock184PC := 194.
        ].
        recoveredBlock184Step = 194 ifTrue: [
            recoveredBlock184Stack2 := (recoveredBlock184Stack2) hasResolvedMemorySegmentAutomatic.
            recoveredBlock184PC := 196.
        ].
        recoveredBlock184Step = 196 ifTrue: [
            (recoveredBlock184Stack2) ifTrue: [recoveredBlock184PC := 200] ifFalse: [recoveredBlock184PC := 220].
        ].
        recoveredBlock184Step = 200 ifTrue: [
            recoveredBlock184PC := 201.
        ].
        recoveredBlock184Step = 201 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Arg1.
            recoveredBlock184PC := 202.
        ].
        recoveredBlock184Step = 202 ifTrue: [
            recoveredBlock184Stack1 := (recoveredBlock184Stack1) attributes.
            recoveredBlock184PC := 204.
        ].
        recoveredBlock184Step = 204 ifTrue: [
            recoveredBlock184Stack2 := recoveredArg1.
            recoveredBlock184PC := 207.
        ].
        recoveredBlock184Step = 207 ifTrue: [
            (recoveredBlock184Stack1) resolvedMemorySegment: (recoveredBlock184Stack2).
            recoveredBlock184PC := 209.
        ].
        recoveredBlock184Step = 209 ifTrue: [
            recoveredBlock184Stack1 := self.
            recoveredBlock184PC := 210.
        ].
        recoveredBlock184Step = 210 ifTrue: [
            recoveredBlock184Stack2 := recoveredArg1.
            recoveredBlock184PC := 213.
        ].
        recoveredBlock184Step = 213 ifTrue: [
            recoveredBlock184Stack3 := recoveredBlock184Arg1.
            recoveredBlock184PC := 214.
        ].
        recoveredBlock184Step = 214 ifTrue: [
            recoveredBlock184Stack4 := recoveredArg3.
            recoveredBlock184PC := 217.
        ].
        recoveredBlock184Step = 217 ifTrue: [
            recoveredBlock184Stack1 := (recoveredBlock184Stack1) propagateMemorySegment: (recoveredBlock184Stack2) inCallTree: (recoveredBlock184Stack3) context: (recoveredBlock184Stack4).
            recoveredBlock184PC := 220.
        ].
        recoveredBlock184Step = 220 ifTrue: [
            recoveredBlock184Result := recoveredBlock184Stack1.
            recoveredBlock184Done := true.
        ].
    ].
    recoveredBlock184Result
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x205553f0; bytecode file offset 0xe51d20"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
propagateMemorySegments: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
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
            recoveredStack0 := LookupTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allComponentInterfaces.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
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
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isMdlComponentInterface.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 44] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isMdlDataInterfaceWithInit.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 44] ifFalse: [recoveredBlock23PC := 98].
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            (recoveredBlock23Stack1) resetPropagatedMemory.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) methods.
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block51Arg1 | 
    | recoveredBlock23Block51Local1 recoveredBlock23Block51Stack0 recoveredBlock23Block51Stack1 recoveredBlock23Block51Stack2 recoveredBlock23Block51Stack3 recoveredBlock23Block51Stack4 recoveredBlock23Block51PC recoveredBlock23Block51Step recoveredBlock23Block51Done recoveredBlock23Block51Result |
    recoveredBlock23Block51Stack0 := nil.
    recoveredBlock23Block51PC := 58.
    recoveredBlock23Block51Done := false.
    [recoveredBlock23Block51Done not] whileTrue: [
        recoveredBlock23Block51Step := recoveredBlock23Block51PC.
        recoveredBlock23Block51Step = 58 ifTrue: [
            recoveredBlock23Block51Stack1 := recoveredBlock23Block51Arg1.
            recoveredBlock23Block51PC := 59.
        ].
        recoveredBlock23Block51Step = 59 ifTrue: [
            recoveredBlock23Block51Stack1 := (recoveredBlock23Block51Stack1) attributes.
            recoveredBlock23Block51PC := 61.
        ].
        recoveredBlock23Block51Step = 61 ifTrue: [
            recoveredBlock23Block51Stack1 := (recoveredBlock23Block51Stack1) memorySegment.
            recoveredBlock23Block51PC := 63.
        ].
        recoveredBlock23Block51Step = 63 ifTrue: [
            recoveredBlock23Block51Local1 := recoveredBlock23Block51Stack1.
            recoveredBlock23Block51PC := 64.
        ].
        recoveredBlock23Block51Step = 64 ifTrue: [
            recoveredBlock23Block51Stack1 := nil.
            recoveredBlock23Block51PC := 65.
        ].
        recoveredBlock23Block51Step = 65 ifTrue: [
            recoveredBlock23Block51Stack2 := recoveredBlock23Block51Local1.
            recoveredBlock23Block51PC := 66.
        ].
        recoveredBlock23Block51Step = 66 ifTrue: [
            recoveredBlock23Block51Stack3 := SGCgAbstractItemAttributes.
            recoveredBlock23Block51PC := 68.
        ].
        recoveredBlock23Block51Step = 68 ifTrue: [
            recoveredBlock23Block51Stack3 := (recoveredBlock23Block51Stack3) resolvedMemorySegmentAutomatic.
            recoveredBlock23Block51PC := 70.
        ].
        recoveredBlock23Block51Step = 70 ifTrue: [
            recoveredBlock23Block51Stack2 := (recoveredBlock23Block51Stack2) ~= (recoveredBlock23Block51Stack3).
            recoveredBlock23Block51PC := 71.
        ].
        recoveredBlock23Block51Step = 71 ifTrue: [
            (recoveredBlock23Block51Stack2) ifTrue: [recoveredBlock23Block51PC := 74] ifFalse: [recoveredBlock23Block51PC := 93].
        ].
        recoveredBlock23Block51Step = 74 ifTrue: [
            recoveredBlock23Block51PC := 75.
        ].
        recoveredBlock23Block51Step = 75 ifTrue: [
            recoveredBlock23Block51Stack1 := recoveredLocal2.
            recoveredBlock23Block51PC := 78.
        ].
        recoveredBlock23Block51Step = 78 ifTrue: [
            recoveredBlock23Block51Stack2 := recoveredBlock23Block51Local1.
            recoveredBlock23Block51PC := 79.
        ].
        recoveredBlock23Block51Step = 79 ifTrue: [
            recoveredBlock23Block51Stack3 := [
    | block2810fc78Value0 block2810fc78Value1 |
    block2810fc78Value0 := OrderedCollection.
    block2810fc78Value1 := (block2810fc78Value0) new.
    block2810fc78Value1
].
            recoveredBlock23Block51PC := 81.
        ].
        recoveredBlock23Block51Step = 81 ifTrue: [
            recoveredBlock23Block51PC := 88.
        ].
        recoveredBlock23Block51Step = 88 ifTrue: [
            recoveredBlock23Block51Stack1 := (recoveredBlock23Block51Stack1) at: (recoveredBlock23Block51Stack2) ifAbsentPut: (recoveredBlock23Block51Stack3).
            recoveredBlock23Block51PC := 90.
        ].
        recoveredBlock23Block51Step = 90 ifTrue: [
            recoveredBlock23Block51Stack2 := recoveredBlock23Block51Arg1.
            recoveredBlock23Block51PC := 91.
        ].
        recoveredBlock23Block51Step = 91 ifTrue: [
            recoveredBlock23Block51Stack1 := (recoveredBlock23Block51Stack1) add: (recoveredBlock23Block51Stack2).
            recoveredBlock23Block51PC := 93.
        ].
        recoveredBlock23Block51Step = 93 ifTrue: [
            recoveredBlock23Block51Result := recoveredBlock23Block51Stack1.
            recoveredBlock23Block51Done := true.
        ].
    ].
    recoveredBlock23Block51Result
].
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) do: (recoveredBlock23Stack2).
            recoveredBlock23PC := 96.
        ].
        recoveredBlock23Step = 96 ifTrue: [
            recoveredBlock23Stack2 := nil.
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack2.
            recoveredBlock23PC := 98.
        ].
        recoveredBlock23Step = 98 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentTable.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [:block2810fc9cArg1 | 
    | block2810fc9cStack0 block2810fc9cStack1 block2810fc9cStack2 block2810fc9cStack3 block2810fc9cPC block2810fc9cStep block2810fc9cDone block2810fc9cResult |
    block2810fc9cStack0 := self.
    block2810fc9cPC := 4.
    block2810fc9cDone := false.
    [block2810fc9cDone not] whileTrue: [
        block2810fc9cStep := block2810fc9cPC.
        block2810fc9cStep = 4 ifTrue: [
            block2810fc9cStack1 := true.
            block2810fc9cPC := 5.
        ].
        block2810fc9cStep = 5 ifTrue: [
            block2810fc9cStack2 := block2810fc9cArg1.
            block2810fc9cPC := 6.
        ].
        block2810fc9cStep = 6 ifTrue: [
            block2810fc9cStack2 := (block2810fc9cStack2) priority.
            block2810fc9cPC := 8.
        ].
        block2810fc9cStep = 8 ifTrue: [
            (block2810fc9cStack2 == nil) ifTrue: [block2810fc9cPC := 21] ifFalse: [block2810fc9cPC := 12].
        ].
        block2810fc9cStep = 12 ifTrue: [
            block2810fc9cPC := 13.
        ].
        block2810fc9cStep = 13 ifTrue: [
            block2810fc9cStack1 := block2810fc9cArg1.
            block2810fc9cPC := 14.
        ].
        block2810fc9cStep = 14 ifTrue: [
            block2810fc9cStack1 := (block2810fc9cStack1) id.
            block2810fc9cPC := 16.
        ].
        block2810fc9cStep = 16 ifTrue: [
            block2810fc9cStack2 := SGCgAbstractItemAttributes.
            block2810fc9cPC := 18.
        ].
        block2810fc9cStep = 18 ifTrue: [
            block2810fc9cStack2 := (block2810fc9cStack2) resolvedMemorySegmentAutomatic.
            block2810fc9cPC := 20.
        ].
        block2810fc9cStep = 20 ifTrue: [
            block2810fc9cStack1 := (block2810fc9cStack1) = (block2810fc9cStack2).
            block2810fc9cPC := 21.
        ].
        block2810fc9cStep = 21 ifTrue: [
            block2810fc9cResult := block2810fc9cStack1.
            block2810fc9cDone := true.
        ].
    ].
    block2810fc9cResult
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:block2810fcc0Arg1 :block2810fcc0Arg2 | 
    | block2810fcc0Value0 block2810fcc0Value1 block2810fcc0Value2 block2810fcc0Value3 block2810fcc0Value4 |
    block2810fcc0Value0 := block2810fcc0Arg1.
    block2810fcc0Value1 := (block2810fcc0Value0) priority.
    block2810fcc0Value2 := block2810fcc0Arg2.
    block2810fcc0Value3 := (block2810fcc0Value2) priority.
    block2810fcc0Value4 := (block2810fcc0Value1) <= (block2810fcc0Value3).
    block2810fcc0Value4
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Stack0 recoveredBlock168Stack1 recoveredBlock168Stack2 recoveredBlock168Stack3 recoveredBlock168Stack4 recoveredBlock168PC recoveredBlock168Step recoveredBlock168Done recoveredBlock168Result |
    recoveredBlock168Stack0 := self.
    recoveredBlock168PC := 174.
    recoveredBlock168Done := false.
    [recoveredBlock168Done not] whileTrue: [
        recoveredBlock168Step := recoveredBlock168PC.
        recoveredBlock168Step = 174 ifTrue: [
            recoveredBlock168Stack1 := nil.
            recoveredBlock168PC := 175.
        ].
        recoveredBlock168Step = 175 ifTrue: [
            recoveredBlock168Stack2 := recoveredLocal2.
            recoveredBlock168PC := 178.
        ].
        recoveredBlock168Step = 178 ifTrue: [
            recoveredBlock168Stack3 := recoveredBlock168Arg1.
            recoveredBlock168PC := 181.
        ].
        recoveredBlock168Step = 181 ifTrue: [
            recoveredBlock168Stack3 := (recoveredBlock168Stack3) id.
            recoveredBlock168PC := 183.
        ].
        recoveredBlock168Step = 183 ifTrue: [
            recoveredBlock168Stack2 := (recoveredBlock168Stack2) includesKey: (recoveredBlock168Stack3).
            recoveredBlock168PC := 185.
        ].
        recoveredBlock168Step = 185 ifTrue: [
            (recoveredBlock168Stack2) ifTrue: [recoveredBlock168PC := 188] ifFalse: [recoveredBlock168PC := 221].
        ].
        recoveredBlock168Step = 188 ifTrue: [
            recoveredBlock168PC := 189.
        ].
        recoveredBlock168Step = 189 ifTrue: [
            recoveredBlock168Stack1 := recoveredLocal2.
            recoveredBlock168PC := 192.
        ].
        recoveredBlock168Step = 192 ifTrue: [
            recoveredBlock168Stack2 := recoveredBlock168Arg1.
            recoveredBlock168PC := 195.
        ].
        recoveredBlock168Step = 195 ifTrue: [
            recoveredBlock168Stack2 := (recoveredBlock168Stack2) id.
            recoveredBlock168PC := 197.
        ].
        recoveredBlock168Step = 197 ifTrue: [
            recoveredBlock168Stack1 := (recoveredBlock168Stack1) at: (recoveredBlock168Stack2).
            recoveredBlock168PC := 199.
        ].
        recoveredBlock168Step = 199 ifTrue: [
            recoveredBlock168Stack2 := [:recoveredBlock168Block199Arg1 | 
    | recoveredBlock168Block199Value0 recoveredBlock168Block199Value1 recoveredBlock168Block199Value2 recoveredBlock168Block199Value3 recoveredBlock168Block199Value4 |
    recoveredBlock168Block199Value0 := recoveredBlock168Arg1.
    recoveredBlock168Block199Value1 := (recoveredBlock168Block199Value0) id.
    recoveredBlock168Block199Value2 := recoveredBlock168Block199Arg1.
    recoveredBlock168Block199Value3 := recoveredArg1.
    recoveredBlock168Block199Value4 := (self) propagateMemorySegment: (recoveredBlock168Block199Value1) inCallTree: (recoveredBlock168Block199Value2) context: (recoveredBlock168Block199Value3).
    recoveredBlock168Block199Value4
].
            recoveredBlock168PC := 219.
        ].
        recoveredBlock168Step = 219 ifTrue: [
            recoveredBlock168Stack1 := (recoveredBlock168Stack1) do: (recoveredBlock168Stack2).
            recoveredBlock168PC := 221.
        ].
        recoveredBlock168Step = 221 ifTrue: [
            recoveredBlock168Result := recoveredBlock168Stack1.
            recoveredBlock168Done := true.
        ].
    ].
    recoveredBlock168Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20564340; bytecode file offset 0xe60c70"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
topNodes: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) projectInterface.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block28110ec0Arg1 | 
    | block28110ec0Stack0 block28110ec0Stack1 block28110ec0Stack2 block28110ec0Stack3 block28110ec0PC block28110ec0Step block28110ec0Done block28110ec0Result |
    block28110ec0Stack0 := self.
    block28110ec0PC := 4.
    block28110ec0Done := false.
    [block28110ec0Done not] whileTrue: [
        block28110ec0Step := block28110ec0PC.
        block28110ec0Step = 4 ifTrue: [
            block28110ec0Stack1 := true.
            block28110ec0PC := 5.
        ].
        block28110ec0Step = 5 ifTrue: [
            block28110ec0Stack2 := block28110ec0Arg1.
            block28110ec0PC := 6.
        ].
        block28110ec0Step = 6 ifTrue: [
            block28110ec0Stack2 := (block28110ec0Stack2) mdlClass.
            block28110ec0PC := 8.
        ].
        block28110ec0Step = 8 ifTrue: [
            block28110ec0Stack2 := (block28110ec0Stack2) isMdlARSoftwareComponent.
            block28110ec0PC := 10.
        ].
        block28110ec0Step = 10 ifTrue: [
            (block28110ec0Stack2) ifTrue: [block28110ec0PC := 20] ifFalse: [block28110ec0PC := 14].
        ].
        block28110ec0Step = 14 ifTrue: [
            block28110ec0PC := 15.
        ].
        block28110ec0Step = 15 ifTrue: [
            block28110ec0Stack1 := block28110ec0Arg1.
            block28110ec0PC := 16.
        ].
        block28110ec0Step = 16 ifTrue: [
            block28110ec0Stack1 := (block28110ec0Stack1) mdlClass.
            block28110ec0PC := 18.
        ].
        block28110ec0Step = 18 ifTrue: [
            block28110ec0Stack1 := (block28110ec0Stack1) isMdlModuleType.
            block28110ec0PC := 20.
        ].
        block28110ec0Step = 20 ifTrue: [
            block28110ec0Result := block28110ec0Stack1.
            block28110ec0Done := true.
        ].
    ].
    block28110ec0Result
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVars.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVars.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:block28110ee4Arg1 | 
    | block28110ee4Value0 block28110ee4Value1 |
    block28110ee4Value0 := block28110ee4Arg1.
    block28110ee4Value1 := (block28110ee4Value0) mdlClass.
    block28110ee4Value1
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Local1 recoveredBlock98Local2 recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg1.
            recoveredBlock98PC := 107.
        ].
        recoveredBlock98Step = 107 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 108.
        ].
        recoveredBlock98Step = 108 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) lookupClassInterface: (recoveredBlock98Stack2).
            recoveredBlock98PC := 110.
        ].
        recoveredBlock98Step = 110 ifTrue: [
            recoveredBlock98Local2 := recoveredBlock98Stack1.
            recoveredBlock98PC := 111.
        ].
        recoveredBlock98Step = 111 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local2.
            recoveredBlock98PC := 112.
        ].
        recoveredBlock98Step = 112 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isMdlModule.
            recoveredBlock98PC := 114.
        ].
        recoveredBlock98Step = 114 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 118] ifFalse: [recoveredBlock98PC := 138].
        ].
        recoveredBlock98Step = 118 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local2.
            recoveredBlock98PC := 119.
        ].
        recoveredBlock98Step = 119 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) methods.
            recoveredBlock98PC := 121.
        ].
        recoveredBlock98Step = 121 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) asSet.
            recoveredBlock98PC := 123.
        ].
        recoveredBlock98Step = 123 ifTrue: [
            recoveredBlock98Stack2 := [:block28110f08Arg1 | 
    | block28110f08Value0 block28110f08Value1 |
    block28110f08Value0 := block28110f08Arg1.
    block28110f08Value1 := (block28110f08Value0) isMdlProcessDecl.
    block28110f08Value1
].
            recoveredBlock98PC := 125.
        ].
        recoveredBlock98Step = 125 ifTrue: [
            recoveredBlock98PC := 132.
        ].
        recoveredBlock98Step = 132 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) select: (recoveredBlock98Stack2).
            recoveredBlock98PC := 134.
        ].
        recoveredBlock98Step = 134 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 135.
        ].
        recoveredBlock98Step = 135 ifTrue: [
            recoveredBlock98PC := 181.
        ].
        recoveredBlock98Step = 138 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local2.
            recoveredBlock98PC := 139.
        ].
        recoveredBlock98Step = 139 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isMdlSWComponent.
            recoveredBlock98PC := 141.
        ].
        recoveredBlock98Step = 141 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 144] ifFalse: [recoveredBlock98PC := 164].
        ].
        recoveredBlock98Step = 144 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local2.
            recoveredBlock98PC := 145.
        ].
        recoveredBlock98Step = 145 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) methods.
            recoveredBlock98PC := 147.
        ].
        recoveredBlock98Step = 147 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) asSet.
            recoveredBlock98PC := 149.
        ].
        recoveredBlock98Step = 149 ifTrue: [
            recoveredBlock98Stack2 := [:block28110f2cArg1 | 
    | block28110f2cValue0 block28110f2cValue1 |
    block28110f2cValue0 := block28110f2cArg1.
    block28110f2cValue1 := (block28110f2cValue0) isMdlRunnableDecl.
    block28110f2cValue1
].
            recoveredBlock98PC := 151.
        ].
        recoveredBlock98Step = 151 ifTrue: [
            recoveredBlock98PC := 158.
        ].
        recoveredBlock98Step = 158 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) select: (recoveredBlock98Stack2).
            recoveredBlock98PC := 160.
        ].
        recoveredBlock98Step = 160 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 161.
        ].
        recoveredBlock98Step = 161 ifTrue: [
            recoveredBlock98PC := 181.
        ].
        recoveredBlock98Step = 164 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local2.
            recoveredBlock98PC := 165.
        ].
        recoveredBlock98Step = 165 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) methods.
            recoveredBlock98PC := 167.
        ].
        recoveredBlock98Step = 167 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) asSet.
            recoveredBlock98PC := 169.
        ].
        recoveredBlock98Step = 169 ifTrue: [
            recoveredBlock98Stack2 := [:block28110f50Arg1 | 
    | block28110f50Value0 block28110f50Value1 |
    block28110f50Value0 := block28110f50Arg1.
    block28110f50Value1 := (block28110f50Value0) isMdlPublic.
    block28110f50Value1
].
            recoveredBlock98PC := 171.
        ].
        recoveredBlock98Step = 171 ifTrue: [
            recoveredBlock98PC := 178.
        ].
        recoveredBlock98Step = 178 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) select: (recoveredBlock98Stack2).
            recoveredBlock98PC := 180.
        ].
        recoveredBlock98Step = 180 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 181.
        ].
        recoveredBlock98Step = 181 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 184.
        ].
        recoveredBlock98Step = 184 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 185.
        ].
        recoveredBlock98Step = 185 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Local1.
            recoveredBlock98PC := 186.
        ].
        recoveredBlock98Step = 186 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) at: (recoveredBlock98Stack2) put: (recoveredBlock98Stack3).
            recoveredBlock98PC := 188.
        ].
        recoveredBlock98Step = 188 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 233] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarsForCT.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) classVarsForCT.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClassType.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) methods.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2056b8ec; bytecode file offset 0xe68220"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
sortMessages
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) errorHandler.
    recoveredValue5 := (recoveredValue4) currentUnit.
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) source.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack1 ~~ nil) ifTrue: [recoveredBlock19PC := 42] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal3.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) source.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) moduleLabel.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack3 := [
    | block281116a0Value0 block281116a0Value1 |
    block281116a0Value0 := OrderedCollection.
    block281116a0Value1 := (block281116a0Value0) new.
    block281116a0Value1
].
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsentPut: (recoveredBlock19Stack3).
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue5) messagesDo: (recoveredValue6).
    recoveredValue7 := (self) errorHandler.
    (recoveredValue7) resetCurrentUnit.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue8) at: ('Unknown Component') put: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (recoveredValue10) keys.
    recoveredValue12 := (recoveredValue11) asSortedCollection.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredValue13.
    (recoveredValue14) remove: ('Unknown Component').
    (recoveredValue13) add: ('Unknown Component').
    recoveredValue15 := (self) errorHandler.
    recoveredValue16 := [
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 |
    recoveredBlock108Value0 := recoveredLocal1.
    recoveredBlock108Value1 := [:recoveredBlock108Block117Arg1 | 
    | recoveredBlock108Block117Value0 recoveredBlock108Block117Value1 recoveredBlock108Block117Value2 recoveredBlock108Block117Value3 |
    recoveredBlock108Block117Value0 := (self) errorHandler.
    recoveredBlock108Block117Value1 := recoveredBlock108Block117Arg1.
    recoveredBlock108Block117Value2 := [
    | recoveredBlock108Block117Block128Value0 recoveredBlock108Block117Block128Value1 recoveredBlock108Block117Block128Value2 recoveredBlock108Block117Block128Value3 recoveredBlock108Block117Block128Value4 |
    recoveredBlock108Block117Block128Value0 := recoveredLocal3.
    recoveredBlock108Block117Block128Value1 := recoveredBlock108Block117Arg1.
    recoveredBlock108Block117Block128Value2 := (recoveredBlock108Block117Block128Value0) at: (recoveredBlock108Block117Block128Value1).
    recoveredBlock108Block117Block128Value3 := [:recoveredBlock108Block117Block128Block142Arg1 | 
    | recoveredBlock108Block117Block128Block142Stack0 recoveredBlock108Block117Block128Block142Stack1 recoveredBlock108Block117Block128Block142Stack2 recoveredBlock108Block117Block128Block142Stack3 recoveredBlock108Block117Block128Block142Stack4 recoveredBlock108Block117Block128Block142PC recoveredBlock108Block117Block128Block142Step recoveredBlock108Block117Block128Block142Done recoveredBlock108Block117Block128Block142Result |
    recoveredBlock108Block117Block128Block142Stack0 := self.
    recoveredBlock108Block117Block128Block142PC := 148.
    recoveredBlock108Block117Block128Block142Done := false.
    [recoveredBlock108Block117Block128Block142Done not] whileTrue: [
        recoveredBlock108Block117Block128Block142Step := recoveredBlock108Block117Block128Block142PC.
        recoveredBlock108Block117Block128Block142Step = 148 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := recoveredBlock108Block117Block128Block142Arg1.
            recoveredBlock108Block117Block128Block142PC := 151.
        ].
        recoveredBlock108Block117Block128Block142Step = 151 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) isErrorMessage.
            recoveredBlock108Block117Block128Block142PC := 153.
        ].
        recoveredBlock108Block117Block128Block142Step = 153 ifTrue: [
            (recoveredBlock108Block117Block128Block142Stack1) ifTrue: [recoveredBlock108Block117Block128Block142PC := 156] ifFalse: [recoveredBlock108Block117Block128Block142PC := 168].
        ].
        recoveredBlock108Block117Block128Block142Step = 156 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := self.
            recoveredBlock108Block117Block128Block142PC := 157.
        ].
        recoveredBlock108Block117Block128Block142Step = 157 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) errorHandler.
            recoveredBlock108Block117Block128Block142PC := 158.
        ].
        recoveredBlock108Block117Block128Block142Step = 158 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) currentUnit.
            recoveredBlock108Block117Block128Block142PC := 160.
        ].
        recoveredBlock108Block117Block128Block142Step = 160 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack2 := recoveredBlock108Block117Block128Block142Arg1.
            recoveredBlock108Block117Block128Block142PC := 163.
        ].
        recoveredBlock108Block117Block128Block142Step = 163 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) addError: (recoveredBlock108Block117Block128Block142Stack2).
            recoveredBlock108Block117Block128Block142PC := 165.
        ].
        recoveredBlock108Block117Block128Block142Step = 165 ifTrue: [
            recoveredBlock108Block117Block128Block142PC := 229.
        ].
        recoveredBlock108Block117Block128Block142Step = 168 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := recoveredBlock108Block117Block128Block142Arg1.
            recoveredBlock108Block117Block128Block142PC := 171.
        ].
        recoveredBlock108Block117Block128Block142Step = 171 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) isWarningMessage.
            recoveredBlock108Block117Block128Block142PC := 173.
        ].
        recoveredBlock108Block117Block128Block142Step = 173 ifTrue: [
            (recoveredBlock108Block117Block128Block142Stack1) ifTrue: [recoveredBlock108Block117Block128Block142PC := 176] ifFalse: [recoveredBlock108Block117Block128Block142PC := 188].
        ].
        recoveredBlock108Block117Block128Block142Step = 176 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := self.
            recoveredBlock108Block117Block128Block142PC := 177.
        ].
        recoveredBlock108Block117Block128Block142Step = 177 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) errorHandler.
            recoveredBlock108Block117Block128Block142PC := 178.
        ].
        recoveredBlock108Block117Block128Block142Step = 178 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) currentUnit.
            recoveredBlock108Block117Block128Block142PC := 180.
        ].
        recoveredBlock108Block117Block128Block142Step = 180 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack2 := recoveredBlock108Block117Block128Block142Arg1.
            recoveredBlock108Block117Block128Block142PC := 183.
        ].
        recoveredBlock108Block117Block128Block142Step = 183 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) addWarning: (recoveredBlock108Block117Block128Block142Stack2).
            recoveredBlock108Block117Block128Block142PC := 185.
        ].
        recoveredBlock108Block117Block128Block142Step = 185 ifTrue: [
            recoveredBlock108Block117Block128Block142PC := 229.
        ].
        recoveredBlock108Block117Block128Block142Step = 188 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := self.
            recoveredBlock108Block117Block128Block142PC := 189.
        ].
        recoveredBlock108Block117Block128Block142Step = 189 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack2 := [
    | recoveredBlock108Block117Block128Block142Block189Value0 recoveredBlock108Block117Block128Block142Block189Value1 |
    recoveredBlock108Block117Block128Block142Block189Value0 := recoveredBlock108Block117Block128Block142Arg1.
    recoveredBlock108Block117Block128Block142Block189Value1 := (recoveredBlock108Block117Block128Block142Block189Value0) isInfoMessage.
    recoveredBlock108Block117Block128Block142Block189Value1
].
            recoveredBlock108Block117Block128Block142PC := 202.
        ].
        recoveredBlock108Block117Block128Block142Step = 202 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack3 := [
    | recoveredBlock108Block117Block128Block142Block202Value0 recoveredBlock108Block117Block128Block142Block202Value1 recoveredBlock108Block117Block128Block142Block202Value2 |
    recoveredBlock108Block117Block128Block142Block202Value0 := recoveredBlock108Block117Block128Block142Arg1.
    recoveredBlock108Block117Block128Block142Block202Value1 := (recoveredBlock108Block117Block128Block142Block202Value0) text.
    recoveredBlock108Block117Block128Block142Block202Value2 := ('This message is neither error, nor warning nor into: ') , (recoveredBlock108Block117Block128Block142Block202Value1).
    recoveredBlock108Block117Block128Block142Block202Value2
].
            recoveredBlock108Block117Block128Block142PC := 218.
        ].
        recoveredBlock108Block117Block128Block142Step = 218 ifTrue: [
            (recoveredBlock108Block117Block128Block142Stack1) ileAssert: (recoveredBlock108Block117Block128Block142Stack2) message: (recoveredBlock108Block117Block128Block142Stack3).
            recoveredBlock108Block117Block128Block142PC := 220.
        ].
        recoveredBlock108Block117Block128Block142Step = 220 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := self.
            recoveredBlock108Block117Block128Block142PC := 221.
        ].
        recoveredBlock108Block117Block128Block142Step = 221 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) errorHandler.
            recoveredBlock108Block117Block128Block142PC := 222.
        ].
        recoveredBlock108Block117Block128Block142Step = 222 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) currentUnit.
            recoveredBlock108Block117Block128Block142PC := 224.
        ].
        recoveredBlock108Block117Block128Block142Step = 224 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack2 := recoveredBlock108Block117Block128Block142Arg1.
            recoveredBlock108Block117Block128Block142PC := 227.
        ].
        recoveredBlock108Block117Block128Block142Step = 227 ifTrue: [
            recoveredBlock108Block117Block128Block142Stack1 := (recoveredBlock108Block117Block128Block142Stack1) addInfo: (recoveredBlock108Block117Block128Block142Stack2).
            recoveredBlock108Block117Block128Block142PC := 229.
        ].
        recoveredBlock108Block117Block128Block142Step = 229 ifTrue: [
            recoveredBlock108Block117Block128Block142Result := recoveredBlock108Block117Block128Block142Stack1.
            recoveredBlock108Block117Block128Block142Done := true.
        ].
    ].
    recoveredBlock108Block117Block128Block142Result
].
    recoveredBlock108Block117Block128Value4 := (recoveredBlock108Block117Block128Value2) do: (recoveredBlock108Block117Block128Value3).
    recoveredBlock108Block117Block128Value4
].
    recoveredBlock108Block117Value3 := (recoveredBlock108Block117Value0) collectMessagesInSubUnit: (recoveredBlock108Block117Value1) do: (recoveredBlock108Block117Value2).
    recoveredBlock108Block117Value3
].
    recoveredBlock108Value2 := (recoveredBlock108Value0) do: (recoveredBlock108Value1).
    recoveredBlock108Value2
].
    (recoveredValue15) collectMessagesInUnit: ('Global Analysis') do: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x2056cdc4; bytecode file offset 0xe696fc"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analysePrototypeClassUsage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) mdlClass.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isCgComplexClassType.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 24] ifFalse: [recoveredBlock10PC := 93].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) mdlClass.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isCgReferenceType.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 32] ifFalse: [recoveredBlock10PC := 62].
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) mdlClass.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) baseType.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isCgPrototype.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 42] ifFalse: [recoveredBlock10PC := 58].
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredBlock10Stack2 := 213.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) errLabel.
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg1.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack4 := (recoveredBlock10Stack4) mdlClass.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack4 := (recoveredBlock10Stack4) errLabel.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) mdlSemErrNo: (recoveredBlock10Stack2) with: (recoveredBlock10Stack3) with: (recoveredBlock10Stack4).
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10PC := 93.
        ].
        recoveredBlock10Step = 62 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 63.
        ].
        recoveredBlock10Step = 63 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) mdlClass.
            recoveredBlock10PC := 65.
        ].
        recoveredBlock10Step = 65 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isCgPrototype.
            recoveredBlock10PC := 67.
        ].
        recoveredBlock10Step = 67 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 70] ifFalse: [recoveredBlock10PC := 93].
        ].
        recoveredBlock10Step = 70 ifTrue: [
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 75.
        ].
        recoveredBlock10Step = 75 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) mdlClass.
            recoveredBlock10PC := 76.
        ].
        recoveredBlock10Step = 76 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) mdlImplKey.
            recoveredBlock10PC := 78.
        ].
        recoveredBlock10Step = 78 ifTrue: [
            recoveredBlock10Stack3 := [
    | block2811179cValue0 block2811179cValue1 |
    block2811179cValue0 := Set.
    block2811179cValue1 := (block2811179cValue0) new.
    block2811179cValue1
].
            recoveredBlock10PC := 80.
        ].
        recoveredBlock10Step = 80 ifTrue: [
            recoveredBlock10PC := 88.
        ].
        recoveredBlock10Step = 88 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) at: (recoveredBlock10Stack2) ifAbsentPut: (recoveredBlock10Stack3).
            recoveredBlock10PC := 90.
        ].
        recoveredBlock10Step = 90 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 91.
        ].
        recoveredBlock10Step = 91 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 93.
        ].
        recoveredBlock10Step = 93 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) imports.
    recoveredValue5 := (recoveredValue4) values.
    recoveredValue6 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Stack0 recoveredBlock104Stack1 recoveredBlock104Stack2 recoveredBlock104Stack3 recoveredBlock104PC recoveredBlock104Step recoveredBlock104Done recoveredBlock104Result |
    recoveredBlock104Stack0 := self.
    recoveredBlock104PC := 110.
    recoveredBlock104Done := false.
    [recoveredBlock104Done not] whileTrue: [
        recoveredBlock104Step := recoveredBlock104PC.
        recoveredBlock104Step = 110 ifTrue: [
            recoveredBlock104Stack1 := nil.
            recoveredBlock104PC := 111.
        ].
        recoveredBlock104Step = 111 ifTrue: [
            recoveredBlock104Stack2 := recoveredBlock104Arg1.
            recoveredBlock104PC := 112.
        ].
        recoveredBlock104Step = 112 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) isMdlComponentInterface.
            recoveredBlock104PC := 114.
        ].
        recoveredBlock104Step = 114 ifTrue: [
            (recoveredBlock104Stack2) ifTrue: [recoveredBlock104PC := 118] ifFalse: [recoveredBlock104PC := 135].
        ].
        recoveredBlock104Step = 118 ifTrue: [
            recoveredBlock104PC := 119.
        ].
        recoveredBlock104Step = 119 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Arg1.
            recoveredBlock104PC := 120.
        ].
        recoveredBlock104Step = 120 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) instVars.
            recoveredBlock104PC := 122.
        ].
        recoveredBlock104Step = 122 ifTrue: [
            recoveredBlock104Stack2 := recoveredLocal2.
            recoveredBlock104PC := 125.
        ].
        recoveredBlock104Step = 125 ifTrue: [
            (recoveredBlock104Stack1) do: (recoveredBlock104Stack2).
            recoveredBlock104PC := 127.
        ].
        recoveredBlock104Step = 127 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Arg1.
            recoveredBlock104PC := 128.
        ].
        recoveredBlock104Step = 128 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) classVars.
            recoveredBlock104PC := 130.
        ].
        recoveredBlock104Step = 130 ifTrue: [
            recoveredBlock104Stack2 := recoveredLocal2.
            recoveredBlock104PC := 133.
        ].
        recoveredBlock104Step = 133 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) do: (recoveredBlock104Stack2).
            recoveredBlock104PC := 135.
        ].
        recoveredBlock104Step = 135 ifTrue: [
            recoveredBlock104Result := recoveredBlock104Stack1.
            recoveredBlock104Done := true.
        ].
    ].
    recoveredBlock104Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [:recoveredBlock141Arg1 | 
    | recoveredBlock141Local1 recoveredBlock141Local2 recoveredBlock141Stack0 recoveredBlock141Stack1 recoveredBlock141Stack2 recoveredBlock141Stack3 recoveredBlock141Stack4 recoveredBlock141Stack5 recoveredBlock141Stack6 recoveredBlock141Stack7 recoveredBlock141Stack8 recoveredBlock141PC recoveredBlock141Step recoveredBlock141Done recoveredBlock141Result |
    recoveredBlock141Stack0 := self.
    recoveredBlock141PC := 148.
    recoveredBlock141Done := false.
    [recoveredBlock141Done not] whileTrue: [
        recoveredBlock141Step := recoveredBlock141PC.
        recoveredBlock141Step = 148 ifTrue: [
            recoveredBlock141Stack1 := nil.
            recoveredBlock141PC := 149.
        ].
        recoveredBlock141Step = 149 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 150.
        ].
        recoveredBlock141Step = 150 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) size.
            recoveredBlock141PC := 152.
        ].
        recoveredBlock141Step = 152 ifTrue: [
            recoveredBlock141Stack3 := 1.
            recoveredBlock141PC := 154.
        ].
        recoveredBlock141Step = 154 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) > (recoveredBlock141Stack3).
            recoveredBlock141PC := 155.
        ].
        recoveredBlock141Step = 155 ifTrue: [
            (recoveredBlock141Stack2) ifTrue: [recoveredBlock141PC := 158] ifFalse: [recoveredBlock141PC := 240].
        ].
        recoveredBlock141Step = 158 ifTrue: [
            recoveredBlock141PC := 159.
        ].
        recoveredBlock141Step = 159 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Arg1.
            recoveredBlock141PC := 160.
        ].
        recoveredBlock141Step = 160 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) someElement.
            recoveredBlock141PC := 162.
        ].
        recoveredBlock141Step = 162 ifTrue: [
            recoveredBlock141Local2 := recoveredBlock141Stack1.
            recoveredBlock141PC := 163.
        ].
        recoveredBlock141Step = 163 ifTrue: [
            recoveredBlock141Stack1 := recoveredArg1.
            recoveredBlock141PC := 166.
        ].
        recoveredBlock141Step = 166 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) imports.
            recoveredBlock141PC := 168.
        ].
        recoveredBlock141Step = 168 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Local2.
            recoveredBlock141PC := 169.
        ].
        recoveredBlock141Step = 169 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) mdlClass.
            recoveredBlock141PC := 170.
        ].
        recoveredBlock141Step = 170 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) lookupClassInterface: (recoveredBlock141Stack2).
            recoveredBlock141PC := 172.
        ].
        recoveredBlock141Step = 172 ifTrue: [
            recoveredBlock141Local1 := recoveredBlock141Stack1.
            recoveredBlock141PC := 173.
        ].
        recoveredBlock141Step = 173 ifTrue: [
            recoveredBlock141Stack1 := nil.
            recoveredBlock141PC := 174.
        ].
        recoveredBlock141Step = 174 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Local1.
            recoveredBlock141PC := 175.
        ].
        recoveredBlock141Step = 175 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) instVars.
            recoveredBlock141PC := 177.
        ].
        recoveredBlock141Step = 177 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) notEmpty.
            recoveredBlock141PC := 179.
        ].
        recoveredBlock141Step = 179 ifTrue: [
            (recoveredBlock141Stack2) ifTrue: [recoveredBlock141PC := 182] ifFalse: [recoveredBlock141PC := 236].
        ].
        recoveredBlock141Step = 182 ifTrue: [
            recoveredBlock141PC := 183.
        ].
        recoveredBlock141Step = 183 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Local2.
            recoveredBlock141PC := 184.
        ].
        recoveredBlock141Step = 184 ifTrue: [
            recoveredBlock141Stack2 := 107.
            recoveredBlock141PC := 188.
        ].
        recoveredBlock141Step = 188 ifTrue: [
            recoveredBlock141Stack3 := recoveredBlock141Local2.
            recoveredBlock141PC := 189.
        ].
        recoveredBlock141Step = 189 ifTrue: [
            recoveredBlock141Stack3 := (recoveredBlock141Stack3) mdlClass.
            recoveredBlock141PC := 190.
        ].
        recoveredBlock141Step = 190 ifTrue: [
            recoveredBlock141Stack3 := (recoveredBlock141Stack3) errLabel.
            recoveredBlock141PC := 192.
        ].
        recoveredBlock141Step = 192 ifTrue: [
            recoveredBlock141Stack4 := recoveredBlock141Local1.
            recoveredBlock141PC := 193.
        ].
        recoveredBlock141Step = 193 ifTrue: [
            recoveredBlock141Stack4 := (recoveredBlock141Stack4) source.
            recoveredBlock141PC := 195.
        ].
        recoveredBlock141Step = 195 ifTrue: [
            recoveredBlock141Stack5 := recoveredBlock141Arg1.
            recoveredBlock141PC := 196.
        ].
        recoveredBlock141Step = 196 ifTrue: [
            recoveredBlock141Stack6 := [:block281117c0Arg1 | 
    | block281117c0Value0 block281117c0Value1 |
    block281117c0Value0 := block281117c0Arg1.
    block281117c0Value1 := (block281117c0Value0) source.
    block281117c0Value1
].
            recoveredBlock141PC := 198.
        ].
        recoveredBlock141Step = 198 ifTrue: [
            recoveredBlock141PC := 206.
        ].
        recoveredBlock141Step = 206 ifTrue: [
            recoveredBlock141Stack5 := (recoveredBlock141Stack5) collect: (recoveredBlock141Stack6).
            recoveredBlock141PC := 208.
        ].
        recoveredBlock141Step = 208 ifTrue: [
            recoveredBlock141Stack6 := recoveredBlock141Arg1.
            recoveredBlock141PC := 209.
        ].
        recoveredBlock141Step = 209 ifTrue: [
            recoveredBlock141Stack7 := [:block281117e4Arg1 | 
    | block281117e4Value0 block281117e4Value1 block281117e4Value2 block281117e4Value3 block281117e4Value4 block281117e4Value5 block281117e4Value6 |
    block281117e4Value0 := block281117e4Arg1.
    block281117e4Value1 := (block281117e4Value0) errLabel.
    block281117e4Value2 := (block281117e4Value1) , (' in ').
    block281117e4Value3 := block281117e4Arg1.
    block281117e4Value4 := (block281117e4Value3) scope.
    block281117e4Value5 := (block281117e4Value4) errLabel.
    block281117e4Value6 := (block281117e4Value2) , (block281117e4Value5).
    block281117e4Value6
].
            recoveredBlock141PC := 211.
        ].
        recoveredBlock141Step = 211 ifTrue: [
            recoveredBlock141PC := 229.
        ].
        recoveredBlock141Step = 229 ifTrue: [
            recoveredBlock141Stack6 := (recoveredBlock141Stack6) collect: (recoveredBlock141Stack7).
            recoveredBlock141PC := 231.
        ].
        recoveredBlock141Step = 231 ifTrue: [
            recoveredBlock141Stack4 := (recoveredBlock141Stack4) createMultiSource: (recoveredBlock141Stack5) labels: (recoveredBlock141Stack6).
            recoveredBlock141PC := 233.
        ].
        recoveredBlock141Step = 233 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) mdlWarningNo: (recoveredBlock141Stack2) with: (recoveredBlock141Stack3) source: (recoveredBlock141Stack4).
            recoveredBlock141PC := 236.
        ].
        recoveredBlock141Step = 236 ifTrue: [
            recoveredBlock141Stack2 := nil.
            recoveredBlock141PC := 237.
        ].
        recoveredBlock141Step = 237 ifTrue: [
            recoveredBlock141Stack3 := recoveredBlock141Stack2.
            recoveredBlock141PC := 238.
        ].
        recoveredBlock141Step = 238 ifTrue: [
            recoveredBlock141Local2 := recoveredBlock141Stack3.
            recoveredBlock141PC := 239.
        ].
        recoveredBlock141Step = 239 ifTrue: [
            recoveredBlock141Local1 := recoveredBlock141Stack2.
            recoveredBlock141PC := 240.
        ].
        recoveredBlock141Step = 240 ifTrue: [
            recoveredBlock141Result := recoveredBlock141Stack1.
            recoveredBlock141Done := true.
        ].
    ].
    recoveredBlock141Result
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20574e18; bytecode file offset 0xe71734"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseMsgAccess: recoveredArg1 projectInterface: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mustPerformMessageAccessAnalysis.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNonOptCopyFunction.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleInterfaces.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block281121e0Arg1 | 
    | block281121e0Stack0 block281121e0Stack1 block281121e0Stack2 block281121e0Stack3 block281121e0PC block281121e0Step block281121e0Done block281121e0Result |
    block281121e0Stack0 := self.
    block281121e0PC := 4.
    block281121e0Done := false.
    [block281121e0Done not] whileTrue: [
        block281121e0Step := block281121e0PC.
        block281121e0Step = 4 ifTrue: [
            block281121e0Stack1 := block281121e0Arg1.
            block281121e0PC := 5.
        ].
        block281121e0Step = 5 ifTrue: [
            block281121e0Stack1 := (block281121e0Stack1) executableDecls.
            block281121e0PC := 7.
        ].
        block281121e0Step = 7 ifTrue: [
            block281121e0Stack2 := [:block28112204Arg1 | 
    | block28112204Value0 block28112204Value1 |
    block28112204Value0 := block28112204Arg1.
    block28112204Value1 := (block28112204Value0) analyseMsgAcessNonOptCopyFunction.
    block28112204Value1
].
            block281121e0PC := 9.
        ].
        block281121e0Step = 9 ifTrue: [
            block281121e0PC := 16.
        ].
        block281121e0Step = 16 ifTrue: [
            block281121e0Stack1 := (block281121e0Stack1) do: (block281121e0Stack2).
            block281121e0PC := 18.
        ].
        block281121e0Step = 18 ifTrue: [
            block281121e0Result := block281121e0Stack1.
            block281121e0Done := true.
        ].
    ].
    block281121e0Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNonOptCopy.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleInterfaces.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := (recoveredBlock68Value0) executableDecls.
    recoveredBlock68Value2 := [:recoveredBlock68Block77Arg1 | 
    | recoveredBlock68Block77Value0 recoveredBlock68Block77Value1 recoveredBlock68Block77Value2 recoveredBlock68Block77Value3 |
    recoveredBlock68Block77Value0 := recoveredBlock68Block77Arg1.
    recoveredBlock68Block77Value1 := recoveredArg1.
    recoveredBlock68Block77Value2 := (recoveredBlock68Block77Value1) generationSettings.
    recoveredBlock68Block77Value3 := (recoveredBlock68Block77Value0) analyseMsgAcessInBypassFunctions: (recoveredBlock68Block77Value2).
    recoveredBlock68Block77Value3
].
    recoveredBlock68Value3 := (recoveredBlock68Value1) do: (recoveredBlock68Value2).
    recoveredBlock68Value3
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNonOptCopyTask.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleInterfaces.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := [:block28112228Arg1 | 
    | block28112228Stack0 block28112228Stack1 block28112228Stack2 block28112228Stack3 block28112228PC block28112228Step block28112228Done block28112228Result |
    block28112228Stack0 := self.
    block28112228PC := 4.
    block28112228Done := false.
    [block28112228Done not] whileTrue: [
        block28112228Step := block28112228PC.
        block28112228Step = 4 ifTrue: [
            block28112228Stack1 := block28112228Arg1.
            block28112228PC := 5.
        ].
        block28112228Step = 5 ifTrue: [
            block28112228Stack1 := (block28112228Stack1) executableDecls.
            block28112228PC := 7.
        ].
        block28112228Step = 7 ifTrue: [
            block28112228Stack2 := [:block2811224cArg1 | 
    | block2811224cValue0 block2811224cValue1 |
    block2811224cValue0 := block2811224cArg1.
    block2811224cValue1 := (block2811224cValue0) analyseMsgAcessNonOptCopyTask.
    block2811224cValue1
].
            block28112228PC := 9.
        ].
        block28112228Step = 9 ifTrue: [
            block28112228PC := 16.
        ].
        block28112228Step = 16 ifTrue: [
            block28112228Stack1 := (block28112228Stack1) do: (block28112228Stack2).
            block28112228PC := 18.
        ].
        block28112228Step = 18 ifTrue: [
            block28112228Result := block28112228Stack1.
            block28112228Done := true.
        ].
    ].
    block28112228Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNoCopy.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetFeatureOfflinePC.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectOptionSource.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroupLabelExperimentCode.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) optionGroup: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 320.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksSettings.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) mustPerformExternalBuildTool.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleInterfaces.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := [:recoveredBlock220Arg1 | 
    | recoveredBlock220Value0 recoveredBlock220Value1 recoveredBlock220Value2 recoveredBlock220Value3 |
    recoveredBlock220Value0 := recoveredBlock220Arg1.
    recoveredBlock220Value1 := (recoveredBlock220Value0) executableDecls.
    recoveredBlock220Value2 := [:recoveredBlock220Block229Arg1 | 
    | recoveredBlock220Block229Value0 recoveredBlock220Block229Value1 recoveredBlock220Block229Value2 recoveredBlock220Block229Value3 |
    recoveredBlock220Block229Value0 := recoveredBlock220Block229Arg1.
    recoveredBlock220Block229Value1 := recoveredArg1.
    recoveredBlock220Block229Value2 := (recoveredBlock220Block229Value1) generationSettings.
    recoveredBlock220Block229Value3 := (recoveredBlock220Block229Value0) analyseMsgAcessInBypassFunctions: (recoveredBlock220Block229Value2).
    recoveredBlock220Block229Value3
].
    recoveredBlock220Value3 := (recoveredBlock220Value1) do: (recoveredBlock220Value2).
    recoveredBlock220Value3
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a78bc; bytecode file offset 0xea4214"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) updateMethodDecls: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) imports.
    recoveredValue3 := (self) topNodes: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := [:recoveredBlock21Arg1 :recoveredBlock21Arg2 | 
    | recoveredBlock21Local1 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 |
    recoveredBlock21Value0 := SGMdSideEffectAnalysisInfo.
    recoveredBlock21Value1 := (recoveredBlock21Value0) create.
    recoveredBlock21Local1 := recoveredBlock21Value1.
    recoveredBlock21Value2 := SGCgGlobalAnalysisContext.
    recoveredBlock21Value3 := recoveredArg1.
    recoveredBlock21Value4 := [
    | recoveredBlock21Block40Value0 recoveredBlock21Block40Value1 recoveredBlock21Block40Value2 recoveredBlock21Block40Value3 recoveredBlock21Block40Value4 recoveredBlock21Block40Value5 |
    recoveredBlock21Block40Value0 := recoveredBlock21Arg2.
    recoveredBlock21Block40Value1 := [:recoveredBlock21Block40Block49Arg1 | 
    | recoveredBlock21Block40Block49Local1 recoveredBlock21Block40Block49Local2 recoveredBlock21Block40Block49Local3 recoveredBlock21Block40Block49Value0 recoveredBlock21Block40Block49Value1 recoveredBlock21Block40Block49Value2 recoveredBlock21Block40Block49Value3 recoveredBlock21Block40Block49Value4 recoveredBlock21Block40Block49Value5 recoveredBlock21Block40Block49Value6 recoveredBlock21Block40Block49Value7 recoveredBlock21Block40Block49Value8 recoveredBlock21Block40Block49Value9 recoveredBlock21Block40Block49Value10 recoveredBlock21Block40Block49Value11 recoveredBlock21Block40Block49Value12 recoveredBlock21Block40Block49Value13 recoveredBlock21Block40Block49Value14 recoveredBlock21Block40Block49Value15 recoveredBlock21Block40Block49Value16 recoveredBlock21Block40Block49Value17 recoveredBlock21Block40Block49Value18 recoveredBlock21Block40Block49Value19 recoveredBlock21Block40Block49Value20 recoveredBlock21Block40Block49Value21 |
    recoveredBlock21Block40Block49Value0 := SGMdSideEffectVarAccess.
    recoveredBlock21Block40Block49Value1 := Array.
    recoveredBlock21Block40Block49Value2 := SGMdSelfVarDecl.
    recoveredBlock21Block40Block49Value3 := (recoveredBlock21Block40Block49Value2) create.
    recoveredBlock21Block40Block49Value4 := recoveredBlock21Block40Block49Value3.
    (recoveredBlock21Block40Block49Value4) mdlName: ('self').
    recoveredBlock21Block40Block49Value5 := recoveredBlock21Block40Block49Value3.
    recoveredBlock21Block40Block49Value6 := recoveredBlock21Block40Block49Arg1.
    recoveredBlock21Block40Block49Value7 := (recoveredBlock21Block40Block49Value6) scope.
    (recoveredBlock21Block40Block49Value5) mdlClass: (recoveredBlock21Block40Block49Value7).
    recoveredBlock21Block40Block49Value8 := (recoveredBlock21Block40Block49Value1) with: (recoveredBlock21Block40Block49Value3).
    recoveredBlock21Block40Block49Value9 := (recoveredBlock21Block40Block49Value0) create: (recoveredBlock21Block40Block49Value8).
    recoveredBlock21Block40Block49Local3 := recoveredBlock21Block40Block49Value9.
    recoveredBlock21Block40Block49Value10 := LookupTable.
    recoveredBlock21Block40Block49Value11 := (recoveredBlock21Block40Block49Value10) new.
    recoveredBlock21Block40Block49Local2 := recoveredBlock21Block40Block49Value11.
    recoveredBlock21Block40Block49Value12 := recoveredBlock21Block40Block49Arg1.
    recoveredBlock21Block40Block49Value13 := (recoveredBlock21Block40Block49Value12) parmChildren.
    recoveredBlock21Block40Block49Value14 := [:recoveredBlock21Block40Block49Block96Arg1 | 
    | recoveredBlock21Block40Block49Block96Local1 recoveredBlock21Block40Block49Block96Local2 recoveredBlock21Block40Block49Block96Value0 recoveredBlock21Block40Block49Block96Value1 recoveredBlock21Block40Block49Block96Value2 recoveredBlock21Block40Block49Block96Value3 recoveredBlock21Block40Block49Block96Value4 recoveredBlock21Block40Block49Block96Value5 recoveredBlock21Block40Block49Block96Value6 recoveredBlock21Block40Block49Block96Value7 recoveredBlock21Block40Block49Block96Value8 recoveredBlock21Block40Block49Block96Value9 recoveredBlock21Block40Block49Block96Value10 recoveredBlock21Block40Block49Block96Value11 |
    recoveredBlock21Block40Block49Block96Value0 := SGMdSideEffectVarAccess.
    recoveredBlock21Block40Block49Block96Value1 := Array.
    recoveredBlock21Block40Block49Block96Value2 := recoveredBlock21Block40Block49Block96Arg1.
    recoveredBlock21Block40Block49Block96Value3 := (recoveredBlock21Block40Block49Block96Value1) with: (recoveredBlock21Block40Block49Block96Value2).
    recoveredBlock21Block40Block49Block96Value4 := (recoveredBlock21Block40Block49Block96Value0) create: (recoveredBlock21Block40Block49Block96Value3).
    recoveredBlock21Block40Block49Block96Value5 := recoveredBlock21Block40Block49Block96Value4.
    recoveredBlock21Block40Block49Block96Value6 := recoveredBlock21Block40Block49Block96Arg1.
    recoveredBlock21Block40Block49Block96Value7 := (recoveredBlock21Block40Block49Block96Value6) source.
    (recoveredBlock21Block40Block49Block96Value5) source: (recoveredBlock21Block40Block49Block96Value7).
    recoveredBlock21Block40Block49Block96Local2 := recoveredBlock21Block40Block49Block96Value4.
    recoveredBlock21Block40Block49Block96Value8 := recoveredBlock21Block40Block49Local2.
    recoveredBlock21Block40Block49Block96Value9 := recoveredBlock21Block40Block49Block96Arg1.
    recoveredBlock21Block40Block49Block96Value10 := recoveredBlock21Block40Block49Block96Local2.
    recoveredBlock21Block40Block49Block96Value11 := (recoveredBlock21Block40Block49Block96Value8) at: (recoveredBlock21Block40Block49Block96Value9) put: (recoveredBlock21Block40Block49Block96Value10).
    recoveredBlock21Block40Block49Block96Value11
].
    (recoveredBlock21Block40Block49Value13) do: (recoveredBlock21Block40Block49Value14).
    recoveredBlock21Block40Block49Value15 := recoveredBlock21Local1.
    recoveredBlock21Block40Block49Value16 := recoveredBlock21Block40Block49Arg1.
    recoveredBlock21Block40Block49Value17 := (recoveredBlock21Block40Block49Value16) analysisInfo.
    recoveredBlock21Block40Block49Value18 := recoveredBlock21Block40Block49Local3.
    recoveredBlock21Block40Block49Value19 := recoveredBlock21Block40Block49Local2.
    recoveredBlock21Block40Block49Value20 := (recoveredBlock21Block40Block49Value17) analyseSideEffects: (recoveredBlock21Block40Block49Value18) arguments: (recoveredBlock21Block40Block49Value19).
    recoveredBlock21Block40Block49Value21 := (recoveredBlock21Block40Block49Value15) mergeInfo: (recoveredBlock21Block40Block49Value20).
    recoveredBlock21Block40Block49Value21
].
    (recoveredBlock21Block40Value0) do: (recoveredBlock21Block40Value1).
    recoveredBlock21Block40Value2 := recoveredBlock21Local1.
    recoveredBlock21Block40Value3 := (recoveredBlock21Block40Value2) read.
    recoveredBlock21Block40Value4 := [:recoveredBlock21Block40Block154Arg1 | 
    | recoveredBlock21Block40Block154Local1 recoveredBlock21Block40Block154Stack0 recoveredBlock21Block40Block154Stack1 recoveredBlock21Block40Block154Stack2 recoveredBlock21Block40Block154Stack3 recoveredBlock21Block40Block154Stack4 recoveredBlock21Block40Block154PC recoveredBlock21Block40Block154Step recoveredBlock21Block40Block154Done recoveredBlock21Block40Block154Result |
    recoveredBlock21Block40Block154Stack0 := nil.
    recoveredBlock21Block40Block154PC := 160.
    recoveredBlock21Block40Block154Done := false.
    [recoveredBlock21Block40Block154Done not] whileTrue: [
        recoveredBlock21Block40Block154Step := recoveredBlock21Block40Block154PC.
        recoveredBlock21Block40Block154Step = 160 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := nil.
            recoveredBlock21Block40Block154PC := 161.
        ].
        recoveredBlock21Block40Block154Step = 161 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154PC := 164.
        ].
        recoveredBlock21Block40Block154Step = 164 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := (recoveredBlock21Block40Block154Stack2) isMdlSideEffectVarAccess.
            recoveredBlock21Block40Block154PC := 166.
        ].
        recoveredBlock21Block40Block154Step = 166 ifTrue: [
            (recoveredBlock21Block40Block154Stack2) ifTrue: [recoveredBlock21Block40Block154PC := 178] ifFalse: [recoveredBlock21Block40Block154PC := 170].
        ].
        recoveredBlock21Block40Block154Step = 170 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154PC := 173.
        ].
        recoveredBlock21Block40Block154Step = 173 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := (recoveredBlock21Block40Block154Stack2) isMdlSideEffectRecordAccess.
            recoveredBlock21Block40Block154PC := 175.
        ].
        recoveredBlock21Block40Block154Step = 175 ifTrue: [
            (recoveredBlock21Block40Block154Stack2) ifTrue: [recoveredBlock21Block40Block154PC := 178] ifFalse: [recoveredBlock21Block40Block154PC := 283].
        ].
        recoveredBlock21Block40Block154Step = 178 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154PC := 181.
        ].
        recoveredBlock21Block40Block154Step = 181 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := (recoveredBlock21Block40Block154Stack2) varDecl.
            recoveredBlock21Block40Block154PC := 183.
        ].
        recoveredBlock21Block40Block154Step = 183 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := (recoveredBlock21Block40Block154Stack2) isMdlVarDeclWithInit.
            recoveredBlock21Block40Block154PC := 185.
        ].
        recoveredBlock21Block40Block154Step = 185 ifTrue: [
            (recoveredBlock21Block40Block154Stack2) ifTrue: [recoveredBlock21Block40Block154PC := 188] ifFalse: [recoveredBlock21Block40Block154PC := 283].
        ].
        recoveredBlock21Block40Block154Step = 188 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154PC := 191.
        ].
        recoveredBlock21Block40Block154Step = 191 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := (recoveredBlock21Block40Block154Stack2) varDecl.
            recoveredBlock21Block40Block154PC := 193.
        ].
        recoveredBlock21Block40Block154Step = 193 ifTrue: [
            recoveredBlock21Block40Block154Stack3 := recoveredArg1.
            recoveredBlock21Block40Block154PC := 196.
        ].
        recoveredBlock21Block40Block154Step = 196 ifTrue: [
            recoveredBlock21Block40Block154Stack3 := (recoveredBlock21Block40Block154Stack3) imports.
            recoveredBlock21Block40Block154PC := 197.
        ].
        recoveredBlock21Block40Block154Step = 197 ifTrue: [
            recoveredBlock21Block40Block154Stack3 := (recoveredBlock21Block40Block154Stack3) values.
            recoveredBlock21Block40Block154PC := 199.
        ].
        recoveredBlock21Block40Block154Step = 199 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := (recoveredBlock21Block40Block154Stack2) isMdlUninitializedReference: (recoveredBlock21Block40Block154Stack3).
            recoveredBlock21Block40Block154PC := 201.
        ].
        recoveredBlock21Block40Block154Step = 201 ifTrue: [
            (recoveredBlock21Block40Block154Stack2) ifTrue: [recoveredBlock21Block40Block154PC := 204] ifFalse: [recoveredBlock21Block40Block154PC := 283].
        ].
        recoveredBlock21Block40Block154Step = 204 ifTrue: [
            recoveredBlock21Block40Block154PC := 205.
        ].
        recoveredBlock21Block40Block154Step = 205 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := false.
            recoveredBlock21Block40Block154PC := 206.
        ].
        recoveredBlock21Block40Block154Step = 206 ifTrue: [
            recoveredBlock21Block40Block154Local1 := recoveredBlock21Block40Block154Stack1.
            recoveredBlock21Block40Block154PC := 209.
        ].
        recoveredBlock21Block40Block154Step = 209 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := recoveredBlock21Local1.
            recoveredBlock21Block40Block154PC := 212.
        ].
        recoveredBlock21Block40Block154Step = 212 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := (recoveredBlock21Block40Block154Stack1) completedWrite.
            recoveredBlock21Block40Block154PC := 214.
        ].
        recoveredBlock21Block40Block154Step = 214 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := [:recoveredBlock21Block40Block154Block214Arg1 | 
    | recoveredBlock21Block40Block154Block214Stack0 recoveredBlock21Block40Block154Block214Stack1 recoveredBlock21Block40Block154Block214Stack2 recoveredBlock21Block40Block154Block214Stack3 recoveredBlock21Block40Block154Block214Stack4 recoveredBlock21Block40Block154Block214Stack5 recoveredBlock21Block40Block154Block214PC recoveredBlock21Block40Block154Block214Step recoveredBlock21Block40Block154Block214Done recoveredBlock21Block40Block154Block214Result |
    recoveredBlock21Block40Block154Block214Stack0 := nil.
    recoveredBlock21Block40Block154Block214PC := 220.
    recoveredBlock21Block40Block154Block214Done := false.
    [recoveredBlock21Block40Block154Block214Done not] whileTrue: [
        recoveredBlock21Block40Block154Block214Step := recoveredBlock21Block40Block154Block214PC.
        recoveredBlock21Block40Block154Block214Step = 220 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack1 := nil.
            recoveredBlock21Block40Block154Block214PC := 221.
        ].
        recoveredBlock21Block40Block154Block214Step = 221 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack2 := recoveredBlock21Block40Block154Local1.
            recoveredBlock21Block40Block154Block214PC := 224.
        ].
        recoveredBlock21Block40Block154Block214Step = 224 ifTrue: [
            (recoveredBlock21Block40Block154Block214Stack2) ifTrue: [recoveredBlock21Block40Block154Block214PC := 249] ifFalse: [recoveredBlock21Block40Block154Block214PC := 228].
        ].
        recoveredBlock21Block40Block154Block214Step = 228 ifTrue: [
            recoveredBlock21Block40Block154Block214PC := 229.
        ].
        recoveredBlock21Block40Block154Block214Step = 229 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack1 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154Block214PC := 232.
        ].
        recoveredBlock21Block40Block154Block214Step = 232 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack2 := recoveredBlock21Block40Block154Block214Arg1.
            recoveredBlock21Block40Block154Block214PC := 233.
        ].
        recoveredBlock21Block40Block154Block214Step = 233 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack3 := false.
            recoveredBlock21Block40Block154Block214PC := 234.
        ].
        recoveredBlock21Block40Block154Block214Step = 234 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack4 := [:recoveredBlock21Block40Block154Block214Block234Arg1 :recoveredBlock21Block40Block154Block214Block234Arg2 :recoveredBlock21Block40Block154Block214Block234Arg3 | 
    recoveredBlock21Block40Block154Local1 := true.
    true
].
            recoveredBlock21Block40Block154Block214PC := 246.
        ].
        recoveredBlock21Block40Block154Block214Step = 246 ifTrue: [
            recoveredBlock21Block40Block154Block214Stack1 := (recoveredBlock21Block40Block154Block214Stack1) analyseReadMatches: (recoveredBlock21Block40Block154Block214Stack2) dereference: (recoveredBlock21Block40Block154Block214Stack3) do: (recoveredBlock21Block40Block154Block214Stack4).
            recoveredBlock21Block40Block154Block214PC := 249.
        ].
        recoveredBlock21Block40Block154Block214Step = 249 ifTrue: [
            recoveredBlock21Block40Block154Block214Result := recoveredBlock21Block40Block154Block214Stack1.
            recoveredBlock21Block40Block154Block214Done := true.
        ].
    ].
    recoveredBlock21Block40Block154Block214Result
].
            recoveredBlock21Block40Block154PC := 250.
        ].
        recoveredBlock21Block40Block154Step = 250 ifTrue: [
            (recoveredBlock21Block40Block154Stack1) do: (recoveredBlock21Block40Block154Stack2).
            recoveredBlock21Block40Block154PC := 252.
        ].
        recoveredBlock21Block40Block154Step = 252 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := nil.
            recoveredBlock21Block40Block154PC := 253.
        ].
        recoveredBlock21Block40Block154Step = 253 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := recoveredBlock21Block40Block154Local1.
            recoveredBlock21Block40Block154PC := 256.
        ].
        recoveredBlock21Block40Block154Step = 256 ifTrue: [
            (recoveredBlock21Block40Block154Stack2) ifTrue: [recoveredBlock21Block40Block154PC := 279] ifFalse: [recoveredBlock21Block40Block154PC := 260].
        ].
        recoveredBlock21Block40Block154Step = 260 ifTrue: [
            recoveredBlock21Block40Block154PC := 261.
        ].
        recoveredBlock21Block40Block154Step = 261 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154PC := 264.
        ].
        recoveredBlock21Block40Block154Step = 264 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := (recoveredBlock21Block40Block154Stack1) varDecl.
            recoveredBlock21Block40Block154PC := 266.
        ].
        recoveredBlock21Block40Block154Step = 266 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := 83.
            recoveredBlock21Block40Block154PC := 270.
        ].
        recoveredBlock21Block40Block154Step = 270 ifTrue: [
            recoveredBlock21Block40Block154Stack3 := recoveredBlock21Block40Block154Arg1.
            recoveredBlock21Block40Block154PC := 273.
        ].
        recoveredBlock21Block40Block154Step = 273 ifTrue: [
            recoveredBlock21Block40Block154Stack3 := (recoveredBlock21Block40Block154Stack3) varDecl.
            recoveredBlock21Block40Block154PC := 275.
        ].
        recoveredBlock21Block40Block154Step = 275 ifTrue: [
            recoveredBlock21Block40Block154Stack3 := (recoveredBlock21Block40Block154Stack3) errLabel.
            recoveredBlock21Block40Block154PC := 277.
        ].
        recoveredBlock21Block40Block154Step = 277 ifTrue: [
            recoveredBlock21Block40Block154Stack1 := (recoveredBlock21Block40Block154Stack1) mdlSemErrNo: (recoveredBlock21Block40Block154Stack2) with: (recoveredBlock21Block40Block154Stack3).
            recoveredBlock21Block40Block154PC := 279.
        ].
        recoveredBlock21Block40Block154Step = 279 ifTrue: [
            recoveredBlock21Block40Block154Stack2 := nil.
            recoveredBlock21Block40Block154PC := 280.
        ].
        recoveredBlock21Block40Block154Step = 280 ifTrue: [
            recoveredBlock21Block40Block154Local1 := recoveredBlock21Block40Block154Stack2.
            recoveredBlock21Block40Block154PC := 283.
        ].
        recoveredBlock21Block40Block154Step = 283 ifTrue: [
            recoveredBlock21Block40Block154Result := recoveredBlock21Block40Block154Stack1.
            recoveredBlock21Block40Block154Done := true.
        ].
    ].
    recoveredBlock21Block40Block154Result
].
    recoveredBlock21Block40Value5 := (recoveredBlock21Block40Value3) do: (recoveredBlock21Block40Value4).
    recoveredBlock21Block40Value5
].
    (recoveredBlock21Value2) withContext: (recoveredBlock21Value3) do: (recoveredBlock21Value4).
    recoveredBlock21Value5 := (self) codeManager.
    recoveredBlock21Value6 := (recoveredBlock21Value5) progressReporter.
    recoveredBlock21Value7 := (recoveredBlock21Value6) step.
    recoveredBlock21Value7
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x205ae564; bytecode file offset 0xeaaee4"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
globalAnalysis: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) allComponentInterfaces.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block28116878Arg1 | 
    | block28116878Stack0 block28116878Stack1 block28116878Stack2 block28116878Stack3 block28116878PC block28116878Step block28116878Done block28116878Result |
    block28116878Stack0 := self.
    block28116878PC := 4.
    block28116878Done := false.
    [block28116878Done not] whileTrue: [
        block28116878Step := block28116878PC.
        block28116878Step = 4 ifTrue: [
            block28116878Stack1 := false.
            block28116878PC := 5.
        ].
        block28116878Step = 5 ifTrue: [
            block28116878Stack2 := block28116878Arg1.
            block28116878PC := 6.
        ].
        block28116878Step = 6 ifTrue: [
            block28116878Stack2 := (block28116878Stack2) isMdlComponentInterface.
            block28116878PC := 7.
        ].
        block28116878Step = 7 ifTrue: [
            (block28116878Stack2) ifTrue: [block28116878PC := 10] ifFalse: [block28116878PC := 44].
        ].
        block28116878Step = 10 ifTrue: [
            block28116878PC := 11.
        ].
        block28116878Step = 11 ifTrue: [
            block28116878Stack1 := block28116878Arg1.
            block28116878PC := 12.
        ].
        block28116878Step = 12 ifTrue: [
            block28116878Stack1 := (block28116878Stack1) methods.
            block28116878PC := 13.
        ].
        block28116878Step = 13 ifTrue: [
            block28116878Stack2 := [:block2811689cArg1 | 
    | block2811689cStack0 block2811689cStack1 block2811689cStack2 block2811689cStack3 block2811689cPC block2811689cStep block2811689cDone block2811689cResult |
    block2811689cStack0 := self.
    block2811689cPC := 4.
    block2811689cDone := false.
    [block2811689cDone not] whileTrue: [
        block2811689cStep := block2811689cPC.
        block2811689cStep = 4 ifTrue: [
            block2811689cStack1 := false.
            block2811689cPC := 5.
        ].
        block2811689cStep = 5 ifTrue: [
            block2811689cStack2 := block2811689cArg1.
            block2811689cPC := 6.
        ].
        block2811689cStep = 6 ifTrue: [
            block2811689cStack2 := (block2811689cStack2) isMdlNoGenerateBody.
            block2811689cPC := 8.
        ].
        block2811689cStep = 8 ifTrue: [
            (block2811689cStack2) ifTrue: [block2811689cPC := 27] ifFalse: [block2811689cPC := 12].
        ].
        block2811689cStep = 12 ifTrue: [
            block2811689cPC := 13.
        ].
        block2811689cStep = 13 ifTrue: [
            block2811689cStack1 := true.
            block2811689cPC := 14.
        ].
        block2811689cStep = 14 ifTrue: [
            block2811689cStack2 := block2811689cArg1.
            block2811689cPC := 15.
        ].
        block2811689cStep = 15 ifTrue: [
            block2811689cStack2 := (block2811689cStack2) analysisInfoOrNil.
            block2811689cPC := 17.
        ].
        block2811689cStep = 17 ifTrue: [
            (block2811689cStack2 == nil) ifTrue: [block2811689cPC := 27] ifFalse: [block2811689cPC := 20].
        ].
        block2811689cStep = 20 ifTrue: [
            block2811689cPC := 21.
        ].
        block2811689cStep = 21 ifTrue: [
            block2811689cStack1 := block2811689cArg1.
            block2811689cPC := 22.
        ].
        block2811689cStep = 22 ifTrue: [
            block2811689cStack1 := (block2811689cStack1) analysisInfo.
            block2811689cPC := 24.
        ].
        block2811689cStep = 24 ifTrue: [
            block2811689cStack1 := (block2811689cStack1) sideEffects.
            block2811689cPC := 26.
        ].
        block2811689cStep = 26 ifTrue: [
            block2811689cStack1 := (block2811689cStack1) isNil.
            block2811689cPC := 27.
        ].
        block2811689cStep = 27 ifTrue: [
            block2811689cResult := block2811689cStack1.
            block2811689cDone := true.
        ].
    ].
    block2811689cResult
].
            block28116878PC := 15.
        ].
        block28116878Step = 15 ifTrue: [
            block28116878PC := 42.
        ].
        block28116878Step = 42 ifTrue: [
            block28116878Stack1 := (block28116878Stack1) anySatisfy: (block28116878Stack2).
            block28116878PC := 44.
        ].
        block28116878Step = 44 ifTrue: [
            block28116878Result := block28116878Stack1.
            block28116878Done := true.
        ].
    ].
    block28116878Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 85.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationOptions.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineAutomaticallyGeneratedMethodsForSM.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) allComponentInterfaces.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Stack0 recoveredBlock92Stack1 recoveredBlock92Stack2 recoveredBlock92Stack3 recoveredBlock92Stack4 recoveredBlock92Stack5 recoveredBlock92Stack6 recoveredBlock92Stack7 recoveredBlock92PC recoveredBlock92Step recoveredBlock92Done recoveredBlock92Result |
    recoveredBlock92Stack0 := self.
    recoveredBlock92PC := 98.
    recoveredBlock92Done := false.
    [recoveredBlock92Done not] whileTrue: [
        recoveredBlock92Step := recoveredBlock92PC.
        recoveredBlock92Step = 98 ifTrue: [
            recoveredBlock92Stack1 := nil.
            recoveredBlock92PC := 99.
        ].
        recoveredBlock92Step = 99 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Arg1.
            recoveredBlock92PC := 100.
        ].
        recoveredBlock92Step = 100 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) isMdlComponentInterface.
            recoveredBlock92PC := 101.
        ].
        recoveredBlock92Step = 101 ifTrue: [
            (recoveredBlock92Stack2) ifTrue: [recoveredBlock92PC := 104] ifFalse: [recoveredBlock92PC := 166].
        ].
        recoveredBlock92Step = 104 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Arg1.
            recoveredBlock92PC := 105.
        ].
        recoveredBlock92Step = 105 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) optimizations.
            recoveredBlock92PC := 107.
        ].
        recoveredBlock92Step = 107 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) isCgSmClass.
            recoveredBlock92PC := 109.
        ].
        recoveredBlock92Step = 109 ifTrue: [
            (recoveredBlock92Stack2) ifTrue: [recoveredBlock92PC := 112] ifFalse: [recoveredBlock92PC := 166].
        ].
        recoveredBlock92Step = 112 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Arg1.
            recoveredBlock92PC := 113.
        ].
        recoveredBlock92Step = 113 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) methods.
            recoveredBlock92PC := 114.
        ].
        recoveredBlock92Step = 114 ifTrue: [
            recoveredBlock92Stack3 := [:block281168c0Arg1 | 
    | block281168c0Value0 block281168c0Value1 block281168c0Value2 block281168c0Value3 |
    block281168c0Value0 := block281168c0Arg1.
    block281168c0Value1 := (block281168c0Value0) analysisInfo.
    block281168c0Value2 := (block281168c0Value1) sideEffects.
    block281168c0Value3 := (block281168c0Value2) isNil.
    block281168c0Value3
].
            recoveredBlock92PC := 116.
        ].
        recoveredBlock92Step = 116 ifTrue: [
            recoveredBlock92PC := 127.
        ].
        recoveredBlock92Step = 127 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) anySatisfy: (recoveredBlock92Stack3).
            recoveredBlock92PC := 129.
        ].
        recoveredBlock92Step = 129 ifTrue: [
            (recoveredBlock92Stack2) ifTrue: [recoveredBlock92PC := 132] ifFalse: [recoveredBlock92PC := 166].
        ].
        recoveredBlock92Step = 132 ifTrue: [
            recoveredBlock92PC := 133.
        ].
        recoveredBlock92Step = 133 ifTrue: [
            recoveredBlock92Stack1 := self.
            recoveredBlock92PC := 134.
        ].
        recoveredBlock92Step = 134 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) errorHandler.
            recoveredBlock92PC := 136.
        ].
        recoveredBlock92Step = 136 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) class.
            recoveredBlock92PC := 138.
        ].
        recoveredBlock92Step = 138 ifTrue: [
            recoveredBlock92Stack2 := 'WMdl851'.
            recoveredBlock92PC := 140.
        ].
        recoveredBlock92Step = 140 ifTrue: [
            recoveredBlock92Stack3 := 'Evaluation order could not be determined because of an incremental build with state machine outlining of component %1'.
            recoveredBlock92PC := 142.
        ].
        recoveredBlock92Step = 142 ifTrue: [
            (recoveredBlock92Stack1) at: (recoveredBlock92Stack2) put: (recoveredBlock92Stack3).
            recoveredBlock92PC := 144.
        ].
        recoveredBlock92Step = 144 ifTrue: [
            recoveredBlock92Stack1 := self.
            recoveredBlock92PC := 145.
        ].
        recoveredBlock92Step = 145 ifTrue: [
            recoveredBlock92Stack2 := 851.
            recoveredBlock92PC := 148.
        ].
        recoveredBlock92Step = 148 ifTrue: [
            recoveredBlock92Stack3 := recoveredBlock92Arg1.
            recoveredBlock92PC := 149.
        ].
        recoveredBlock92Step = 149 ifTrue: [
            recoveredBlock92Stack3 := (recoveredBlock92Stack3) errLabel.
            recoveredBlock92PC := 151.
        ].
        recoveredBlock92Step = 151 ifTrue: [
            recoveredBlock92Stack4 := nil.
            recoveredBlock92PC := 152.
        ].
        recoveredBlock92Step = 152 ifTrue: [
            recoveredBlock92Stack5 := #(nil nil).
            recoveredBlock92PC := 154.
        ].
        recoveredBlock92Step = 154 ifTrue: [
            recoveredBlock92Stack6 := #('First workaround: disable outlining for state machines in the project settings' 'Second workaround: do a full rebuild of the project').
            recoveredBlock92PC := 156.
        ].
        recoveredBlock92Step = 156 ifTrue: [
            recoveredBlock92Stack4 := (recoveredBlock92Stack4) createMultiSource: (recoveredBlock92Stack5) labels: (recoveredBlock92Stack6).
            recoveredBlock92PC := 158.
        ].
        recoveredBlock92Step = 158 ifTrue: [
            (recoveredBlock92Stack1) mdlWarningNo: (recoveredBlock92Stack2) with: (recoveredBlock92Stack3) source: (recoveredBlock92Stack4).
            recoveredBlock92PC := 161.
        ].
        recoveredBlock92Step = 161 ifTrue: [
            recoveredBlock92Stack1 := true.
            recoveredBlock92PC := 162.
        ].
        recoveredBlock92Step = 162 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Stack1.
            recoveredBlock92PC := 163.
        ].
        recoveredBlock92Step = 163 ifTrue: [
            recoveredLocal1 := recoveredBlock92Stack2.
            recoveredBlock92PC := 166.
        ].
        recoveredBlock92Step = 166 ifTrue: [
            recoveredBlock92Result := recoveredBlock92Stack1.
            recoveredBlock92Done := true.
        ].
    ].
    recoveredBlock92Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 'GlobalAnalysis'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'Global analysis'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) topNodes: (recoveredStack4).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock202Local1 recoveredBlock202Value0 recoveredBlock202Value1 recoveredBlock202Value2 |
    recoveredBlock202Value0 := (self) errorHandler.
    recoveredBlock202Value1 := [
    | recoveredBlock202Block212Stack0 recoveredBlock202Block212Stack1 recoveredBlock202Block212Stack2 recoveredBlock202Block212Stack3 recoveredBlock202Block212PC recoveredBlock202Block212Step recoveredBlock202Block212Done recoveredBlock202Block212Result |
    recoveredBlock202Block212Stack0 := self.
    recoveredBlock202Block212PC := 218.
    recoveredBlock202Block212Done := false.
    [recoveredBlock202Block212Done not] whileTrue: [
        recoveredBlock202Block212Step := recoveredBlock202Block212PC.
        recoveredBlock202Block212Step = 218 ifTrue: [
            recoveredBlock202Block212Stack1 := SGGeneratorFactory.
            recoveredBlock202Block212PC := 220.
        ].
        recoveredBlock202Block212Step = 220 ifTrue: [
            recoveredBlock202Block212Stack1 := (recoveredBlock202Block212Stack1) create.
            recoveredBlock202Block212PC := 222.
        ].
        recoveredBlock202Block212Step = 222 ifTrue: [
            recoveredBlock202Block212Stack1 := (recoveredBlock202Block212Stack1) createGlobalAnalysisContext.
            recoveredBlock202Block212PC := 224.
        ].
        recoveredBlock202Block212Step = 224 ifTrue: [
            recoveredBlock202Local1 := recoveredBlock202Block212Stack1.
            recoveredBlock202Block212PC := 227.
        ].
        recoveredBlock202Block212Step = 227 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 230.
        ].
        recoveredBlock202Block212Step = 230 ifTrue: [
            (recoveredBlock202Block212Stack0) analyseMethodCalls: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 232.
        ].
        recoveredBlock202Block212Step = 232 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 233.
        ].
        recoveredBlock202Block212Step = 233 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 236.
        ].
        recoveredBlock202Block212Step = 236 ifTrue: [
            (recoveredBlock202Block212Stack0) updateMethodDecls: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 238.
        ].
        recoveredBlock202Block212Step = 238 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 239.
        ].
        recoveredBlock202Block212Step = 239 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 242.
        ].
        recoveredBlock202Block212Step = 242 ifTrue: [
            (recoveredBlock202Block212Stack0) analysePrototypeClassUsage: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 244.
        ].
        recoveredBlock202Block212Step = 244 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 245.
        ].
        recoveredBlock202Block212Step = 245 ifTrue: [
            recoveredBlock202Block212Stack0 := (recoveredBlock202Block212Stack0) errorHandler.
            recoveredBlock202Block212PC := 247.
        ].
        recoveredBlock202Block212Step = 247 ifTrue: [
            recoveredBlock202Block212Stack0 := (recoveredBlock202Block212Stack0) hasCurrentErrors.
            recoveredBlock202Block212PC := 249.
        ].
        recoveredBlock202Block212Step = 249 ifTrue: [
            (recoveredBlock202Block212Stack0) ifTrue: [recoveredBlock202Block212PC := 258] ifFalse: [recoveredBlock202Block212PC := 252].
        ].
        recoveredBlock202Block212Step = 252 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 253.
        ].
        recoveredBlock202Block212Step = 253 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 256.
        ].
        recoveredBlock202Block212Step = 256 ifTrue: [
            (recoveredBlock202Block212Stack0) analyseCallStack: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 258.
        ].
        recoveredBlock202Block212Step = 258 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 259.
        ].
        recoveredBlock202Block212Step = 259 ifTrue: [
            recoveredBlock202Block212Stack0 := (recoveredBlock202Block212Stack0) errorHandler.
            recoveredBlock202Block212PC := 261.
        ].
        recoveredBlock202Block212Step = 261 ifTrue: [
            recoveredBlock202Block212Stack0 := (recoveredBlock202Block212Stack0) hasCurrentErrors.
            recoveredBlock202Block212PC := 263.
        ].
        recoveredBlock202Block212Step = 263 ifTrue: [
            (recoveredBlock202Block212Stack0) ifTrue: [recoveredBlock202Block212PC := 295] ifFalse: [recoveredBlock202Block212PC := 266].
        ].
        recoveredBlock202Block212Step = 266 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 267.
        ].
        recoveredBlock202Block212Step = 267 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 270.
        ].
        recoveredBlock202Block212Step = 270 ifTrue: [
            (recoveredBlock202Block212Stack0) analyseVerifyCalls: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 272.
        ].
        recoveredBlock202Block212Step = 272 ifTrue: [
            recoveredBlock202Block212Stack0 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 275.
        ].
        recoveredBlock202Block212Step = 275 ifTrue: [
            recoveredBlock202Block212Stack1 := self.
            recoveredBlock202Block212PC := 276.
        ].
        recoveredBlock202Block212Step = 276 ifTrue: [
            recoveredBlock202Block212Stack2 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 279.
        ].
        recoveredBlock202Block212Step = 279 ifTrue: [
            recoveredBlock202Block212Stack1 := (recoveredBlock202Block212Stack1) analyseReferences: (recoveredBlock202Block212Stack2).
            recoveredBlock202Block212PC := 281.
        ].
        recoveredBlock202Block212Step = 281 ifTrue: [
            (recoveredBlock202Block212Stack0) referenceAnalysisResult: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 283.
        ].
        recoveredBlock202Block212Step = 283 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 284.
        ].
        recoveredBlock202Block212Step = 284 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 287.
        ].
        recoveredBlock202Block212Step = 287 ifTrue: [
            (recoveredBlock202Block212Stack0) analyseSideEffects: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 289.
        ].
        recoveredBlock202Block212Step = 289 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 290.
        ].
        recoveredBlock202Block212Step = 290 ifTrue: [
            recoveredBlock202Block212Stack1 := recoveredBlock202Local1.
            recoveredBlock202Block212PC := 293.
        ].
        recoveredBlock202Block212Step = 293 ifTrue: [
            (recoveredBlock202Block212Stack0) propagateMemorySegments: (recoveredBlock202Block212Stack1).
            recoveredBlock202Block212PC := 295.
        ].
        recoveredBlock202Block212Step = 295 ifTrue: [
            recoveredBlock202Block212Stack0 := self.
            recoveredBlock202Block212PC := 296.
        ].
        recoveredBlock202Block212Step = 296 ifTrue: [
            recoveredBlock202Block212Stack0 := (recoveredBlock202Block212Stack0) sortMessages.
            recoveredBlock202Block212PC := 298.
        ].
        recoveredBlock202Block212Step = 298 ifTrue: [
            recoveredBlock202Block212Result := recoveredBlock202Block212Stack0.
            recoveredBlock202Block212Done := true.
        ].
    ].
    recoveredBlock202Block212Result
].
    recoveredBlock202Value2 := (recoveredBlock202Value0) collectMessagesInUnit: ('Global Analysis') do: (recoveredBlock202Value1).
    recoveredBlock202Value2
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) doTiming: (recoveredStack1) title: (recoveredStack2) max: (recoveredStack3) for: (recoveredStack4).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20642eac; bytecode file offset 0xf3f820"
!SGMdGlobalsAnalysis methodsFor: 'recovered'!
analyseMsgAccess: recoveredArg1 swcInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableDecls.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) allUsedMsgs.
    recoveredBlock14Value2 := [:recoveredBlock14Block24Arg1 | 
    | recoveredBlock14Block24Stack0 recoveredBlock14Block24Stack1 recoveredBlock14Block24Stack2 recoveredBlock14Block24Stack3 recoveredBlock14Block24Stack4 recoveredBlock14Block24Stack5 recoveredBlock14Block24PC recoveredBlock14Block24Step recoveredBlock14Block24Done recoveredBlock14Block24Result |
    recoveredBlock14Block24Stack0 := nil.
    recoveredBlock14Block24PC := 30.
    recoveredBlock14Block24Done := false.
    [recoveredBlock14Block24Done not] whileTrue: [
        recoveredBlock14Block24Step := recoveredBlock14Block24PC.
        recoveredBlock14Block24Step = 30 ifTrue: [
            recoveredBlock14Block24Stack1 := recoveredLocal7.
            recoveredBlock14Block24PC := 33.
        ].
        recoveredBlock14Block24Step = 33 ifTrue: [
            recoveredBlock14Block24Stack2 := recoveredBlock14Block24Arg1.
            recoveredBlock14Block24PC := 34.
        ].
        recoveredBlock14Block24Step = 34 ifTrue: [
            recoveredBlock14Block24Stack2 := (recoveredBlock14Block24Stack2) msgId.
            recoveredBlock14Block24PC := 36.
        ].
        recoveredBlock14Block24Step = 36 ifTrue: [
            recoveredBlock14Block24Stack2 := (recoveredBlock14Block24Stack2) mdlMessageKey.
            recoveredBlock14Block24PC := 38.
        ].
        recoveredBlock14Block24Step = 38 ifTrue: [
            recoveredBlock14Block24Stack3 := [
    | block28121fb4Value0 block28121fb4Value1 |
    block28121fb4Value0 := OrderedCollection.
    block28121fb4Value1 := (block28121fb4Value0) new.
    block28121fb4Value1
].
            recoveredBlock14Block24PC := 40.
        ].
        recoveredBlock14Block24Step = 40 ifTrue: [
            recoveredBlock14Block24PC := 48.
        ].
        recoveredBlock14Block24Step = 48 ifTrue: [
            recoveredBlock14Block24Stack1 := (recoveredBlock14Block24Stack1) at: (recoveredBlock14Block24Stack2) ifAbsentPut: (recoveredBlock14Block24Stack3).
            recoveredBlock14Block24PC := 50.
        ].
        recoveredBlock14Block24Step = 50 ifTrue: [
            recoveredBlock14Block24Stack2 := Array.
            recoveredBlock14Block24PC := 52.
        ].
        recoveredBlock14Block24Step = 52 ifTrue: [
            recoveredBlock14Block24Stack3 := recoveredBlock14Block24Arg1.
            recoveredBlock14Block24PC := 53.
        ].
        recoveredBlock14Block24Step = 53 ifTrue: [
            recoveredBlock14Block24Stack4 := recoveredBlock14Arg1.
            recoveredBlock14Block24PC := 56.
        ].
        recoveredBlock14Block24Step = 56 ifTrue: [
            recoveredBlock14Block24Stack2 := (recoveredBlock14Block24Stack2) with: (recoveredBlock14Block24Stack3) with: (recoveredBlock14Block24Stack4).
            recoveredBlock14Block24PC := 58.
        ].
        recoveredBlock14Block24Step = 58 ifTrue: [
            recoveredBlock14Block24Stack1 := (recoveredBlock14Block24Stack1) add: (recoveredBlock14Block24Stack2).
            recoveredBlock14Block24PC := 60.
        ].
        recoveredBlock14Block24Step = 60 ifTrue: [
            recoveredBlock14Block24Result := recoveredBlock14Block24Stack1.
            recoveredBlock14Block24Done := true.
        ].
    ].
    recoveredBlock14Block24Result
].
    recoveredBlock14Value3 := (recoveredBlock14Value1) do: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:block28121fd8Arg1 :block28121fd8Arg2 | 
    | block28121fd8Value0 block28121fd8Value1 block28121fd8Value2 |
    block28121fd8Value0 := block28121fd8Arg1.
    block28121fd8Value1 := block28121fd8Arg2.
    block28121fd8Value2 := (block28121fd8Value0) <= (block28121fd8Value1).
    block28121fd8Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Local1 recoveredBlock94Local2 recoveredBlock94Local3 recoveredBlock94Local4 recoveredBlock94Local5 recoveredBlock94Local6 recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94Stack3 recoveredBlock94Stack4 recoveredBlock94Stack5 recoveredBlock94Stack6 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal7.
            recoveredBlock94PC := 103.
        ].
        recoveredBlock94Step = 103 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 106.
        ].
        recoveredBlock94Step = 106 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2).
            recoveredBlock94PC := 108.
        ].
        recoveredBlock94Step = 108 ifTrue: [
            recoveredBlock94Local6 := recoveredBlock94Stack1.
            recoveredBlock94PC := 111.
        ].
        recoveredBlock94Step = 111 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Local6.
            recoveredBlock94PC := 114.
        ].
        recoveredBlock94Step = 114 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) size.
            recoveredBlock94PC := 116.
        ].
        recoveredBlock94Step = 116 ifTrue: [
            recoveredBlock94Stack2 := 1.
            recoveredBlock94PC := 118.
        ].
        recoveredBlock94Step = 118 ifTrue: [
            (recoveredBlock94Stack1 ~~ recoveredBlock94Stack2) ifTrue: [recoveredBlock94PC := 190] ifFalse: [recoveredBlock94PC := 122].
        ].
        recoveredBlock94Step = 122 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Local6.
            recoveredBlock94PC := 125.
        ].
        recoveredBlock94Step = 125 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) first.
            recoveredBlock94PC := 127.
        ].
        recoveredBlock94Step = 127 ifTrue: [
            recoveredBlock94Stack2 := 1.
            recoveredBlock94PC := 129.
        ].
        recoveredBlock94Step = 129 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2).
            recoveredBlock94PC := 131.
        ].
        recoveredBlock94Step = 131 ifTrue: [
            recoveredBlock94Local5 := recoveredBlock94Stack1.
            recoveredBlock94PC := 134.
        ].
        recoveredBlock94Step = 134 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Local6.
            recoveredBlock94PC := 137.
        ].
        recoveredBlock94Step = 137 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) first.
            recoveredBlock94PC := 139.
        ].
        recoveredBlock94Step = 139 ifTrue: [
            recoveredBlock94Stack2 := 2.
            recoveredBlock94PC := 141.
        ].
        recoveredBlock94Step = 141 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2).
            recoveredBlock94PC := 143.
        ].
        recoveredBlock94Step = 143 ifTrue: [
            recoveredBlock94Local4 := recoveredBlock94Stack1.
            recoveredBlock94PC := 146.
        ].
        recoveredBlock94Step = 146 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal5.
            recoveredBlock94PC := 149.
        ].
        recoveredBlock94Step = 149 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 152.
        ].
        recoveredBlock94Step = 152 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Local5.
            recoveredBlock94PC := 155.
        ].
        recoveredBlock94Step = 155 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) msgId.
            recoveredBlock94PC := 157.
        ].
        recoveredBlock94Step = 157 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) varDecl.
            recoveredBlock94PC := 159.
        ].
        recoveredBlock94Step = 159 ifTrue: [
            (recoveredBlock94Stack1) at: (recoveredBlock94Stack2) put: (recoveredBlock94Stack3).
            recoveredBlock94PC := 161.
        ].
        recoveredBlock94Step = 161 ifTrue: [
            recoveredBlock94Stack1 := recoveredArg2.
            recoveredBlock94PC := 164.
        ].
        recoveredBlock94Step = 164 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Local5.
            recoveredBlock94PC := 167.
        ].
        recoveredBlock94Step = 167 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) msgId.
            recoveredBlock94PC := 169.
        ].
        recoveredBlock94Step = 169 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) varDecl.
            recoveredBlock94PC := 171.
        ].
        recoveredBlock94Step = 171 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Local5.
            recoveredBlock94PC := 174.
        ].
        recoveredBlock94Step = 174 ifTrue: [
            recoveredBlock94Stack4 := recoveredBlock94Local6.
            recoveredBlock94PC := 177.
        ].
        recoveredBlock94Step = 177 ifTrue: [
            recoveredBlock94Stack4 := (recoveredBlock94Stack4) first.
            recoveredBlock94PC := 179.
        ].
        recoveredBlock94Step = 179 ifTrue: [
            recoveredBlock94Stack5 := 2.
            recoveredBlock94PC := 181.
        ].
        recoveredBlock94Step = 181 ifTrue: [
            recoveredBlock94Stack4 := (recoveredBlock94Stack4) at: (recoveredBlock94Stack5).
            recoveredBlock94PC := 183.
        ].
        recoveredBlock94Step = 183 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) mdlSemAnaMsgAccess: (recoveredBlock94Stack2) usage: (recoveredBlock94Stack3) oneRunnable: (recoveredBlock94Stack4).
            recoveredBlock94PC := 186.
        ].
        recoveredBlock94Step = 186 ifTrue: [
            recoveredBlock94PC := 363.
        ].
        recoveredBlock94Step = 190 ifTrue: [
            recoveredBlock94Stack1 := nil.
            recoveredBlock94PC := 191.
        ].
        recoveredBlock94Step = 191 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Local6.
            recoveredBlock94PC := 194.
        ].
        recoveredBlock94Step = 194 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) size.
            recoveredBlock94PC := 196.
        ].
        recoveredBlock94Step = 196 ifTrue: [
            recoveredBlock94Stack3 := 1.
            recoveredBlock94PC := 198.
        ].
        recoveredBlock94Step = 198 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) > (recoveredBlock94Stack3).
            recoveredBlock94PC := 199.
        ].
        recoveredBlock94Step = 199 ifTrue: [
            (recoveredBlock94Stack2) ifTrue: [recoveredBlock94PC := 202] ifFalse: [recoveredBlock94PC := 363].
        ].
        recoveredBlock94Step = 202 ifTrue: [
            recoveredBlock94PC := 203.
        ].
        recoveredBlock94Step = 203 ifTrue: [
            recoveredBlock94Stack1 := OrderedCollection.
            recoveredBlock94PC := 205.
        ].
        recoveredBlock94Step = 205 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) new.
            recoveredBlock94PC := 206.
        ].
        recoveredBlock94Step = 206 ifTrue: [
            recoveredBlock94Local3 := recoveredBlock94Stack1.
            recoveredBlock94PC := 209.
        ].
        recoveredBlock94Step = 209 ifTrue: [
            recoveredBlock94Stack1 := OrderedCollection.
            recoveredBlock94PC := 211.
        ].
        recoveredBlock94Step = 211 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) new.
            recoveredBlock94PC := 212.
        ].
        recoveredBlock94Step = 212 ifTrue: [
            recoveredBlock94Local2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 215.
        ].
        recoveredBlock94Step = 215 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Local6.
            recoveredBlock94PC := 218.
        ].
        recoveredBlock94Step = 218 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) first.
            recoveredBlock94PC := 220.
        ].
        recoveredBlock94Step = 220 ifTrue: [
            recoveredBlock94Stack2 := 1.
            recoveredBlock94PC := 222.
        ].
        recoveredBlock94Step = 222 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2).
            recoveredBlock94PC := 224.
        ].
        recoveredBlock94Step = 224 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) copy.
            recoveredBlock94PC := 226.
        ].
        recoveredBlock94Step = 226 ifTrue: [
            recoveredBlock94Local1 := recoveredBlock94Stack1.
            recoveredBlock94PC := 229.
        ].
        recoveredBlock94Step = 229 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Local6.
            recoveredBlock94PC := 232.
        ].
        recoveredBlock94Step = 232 ifTrue: [
            recoveredBlock94Stack2 := [:block28121ffcArg1 :block28121ffcArg2 | 
    | block28121ffcValue0 block28121ffcValue1 block28121ffcValue2 block28121ffcValue3 block28121ffcValue4 block28121ffcValue5 block28121ffcValue6 |
    block28121ffcValue0 := block28121ffcArg1.
    block28121ffcValue1 := (block28121ffcValue0) at: (2).
    block28121ffcValue2 := (block28121ffcValue1) errLabel.
    block28121ffcValue3 := block28121ffcArg2.
    block28121ffcValue4 := (block28121ffcValue3) at: (2).
    block28121ffcValue5 := (block28121ffcValue4) errLabel.
    block28121ffcValue6 := (block28121ffcValue2) < (block28121ffcValue5).
    block28121ffcValue6
].
            recoveredBlock94PC := 234.
        ].
        recoveredBlock94Step = 234 ifTrue: [
            recoveredBlock94PC := 254.
        ].
        recoveredBlock94Step = 254 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) asSortedCollection: (recoveredBlock94Stack2).
            recoveredBlock94PC := 256.
        ].
        recoveredBlock94Step = 256 ifTrue: [
            recoveredBlock94Stack2 := [:recoveredBlock94Block256Arg1 | 
    | recoveredBlock94Block256Value0 recoveredBlock94Block256Value1 recoveredBlock94Block256Value2 recoveredBlock94Block256Value3 recoveredBlock94Block256Value4 recoveredBlock94Block256Value5 recoveredBlock94Block256Value6 recoveredBlock94Block256Value7 recoveredBlock94Block256Value8 recoveredBlock94Block256Value9 recoveredBlock94Block256Value10 recoveredBlock94Block256Value11 recoveredBlock94Block256Value12 recoveredBlock94Block256Value13 recoveredBlock94Block256Value14 |
    recoveredBlock94Block256Value0 := recoveredBlock94Block256Arg1.
    recoveredBlock94Block256Value1 := (recoveredBlock94Block256Value0) at: (1).
    recoveredBlock94Local5 := recoveredBlock94Block256Value1.
    recoveredBlock94Block256Value2 := recoveredBlock94Local1.
    recoveredBlock94Block256Value3 := recoveredBlock94Local5.
    (recoveredBlock94Block256Value2) mergeWith: (recoveredBlock94Block256Value3).
    recoveredBlock94Block256Value4 := recoveredBlock94Block256Arg1.
    recoveredBlock94Block256Value5 := (recoveredBlock94Block256Value4) at: (2).
    recoveredBlock94Local4 := recoveredBlock94Block256Value5.
    recoveredBlock94Block256Value6 := recoveredBlock94Local3.
    recoveredBlock94Block256Value7 := recoveredBlock94Local5.
    recoveredBlock94Block256Value8 := (recoveredBlock94Block256Value7) msgId.
    recoveredBlock94Block256Value9 := (recoveredBlock94Block256Value8) source.
    (recoveredBlock94Block256Value6) add: (recoveredBlock94Block256Value9).
    recoveredBlock94Block256Value10 := recoveredBlock94Local2.
    recoveredBlock94Block256Value11 := recoveredBlock94Local5.
    recoveredBlock94Block256Value12 := recoveredBlock94Local4.
    recoveredBlock94Block256Value13 := (recoveredBlock94Block256Value11) errLabelAccessIn: (recoveredBlock94Block256Value12).
    recoveredBlock94Block256Value14 := (recoveredBlock94Block256Value10) add: (recoveredBlock94Block256Value13).
    recoveredBlock94Block256Value14
].
            recoveredBlock94PC := 312.
        ].
        recoveredBlock94Step = 312 ifTrue: [
            (recoveredBlock94Stack1) do: (recoveredBlock94Stack2).
            recoveredBlock94PC := 314.
        ].
        recoveredBlock94Step = 314 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal4.
            recoveredBlock94PC := 317.
        ].
        recoveredBlock94Step = 317 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 320.
        ].
        recoveredBlock94Step = 320 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Local1.
            recoveredBlock94PC := 323.
        ].
        recoveredBlock94Step = 323 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) msgId.
            recoveredBlock94PC := 325.
        ].
        recoveredBlock94Step = 325 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) varDecl.
            recoveredBlock94PC := 327.
        ].
        recoveredBlock94Step = 327 ifTrue: [
            (recoveredBlock94Stack1) at: (recoveredBlock94Stack2) put: (recoveredBlock94Stack3).
            recoveredBlock94PC := 329.
        ].
        recoveredBlock94Step = 329 ifTrue: [
            recoveredBlock94Stack1 := recoveredArg2.
            recoveredBlock94PC := 332.
        ].
        recoveredBlock94Step = 332 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Local1.
            recoveredBlock94PC := 335.
        ].
        recoveredBlock94Step = 335 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Local1.
            recoveredBlock94PC := 338.
        ].
        recoveredBlock94Step = 338 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) msgId.
            recoveredBlock94PC := 340.
        ].
        recoveredBlock94Step = 340 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) varDecl.
            recoveredBlock94PC := 342.
        ].
        recoveredBlock94Step = 342 ifTrue: [
            recoveredBlock94Stack4 := recoveredBlock94Local3.
            recoveredBlock94PC := 345.
        ].
        recoveredBlock94Step = 345 ifTrue: [
            recoveredBlock94Stack5 := recoveredBlock94Local2.
            recoveredBlock94PC := 348.
        ].
        recoveredBlock94Step = 348 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) mdlSemAnaMsgAccess: (recoveredBlock94Stack2) to: (recoveredBlock94Stack3) sources: (recoveredBlock94Stack4) labels: (recoveredBlock94Stack5).
            recoveredBlock94PC := 351.
        ].
        recoveredBlock94Step = 351 ifTrue: [
            recoveredBlock94Stack2 := nil.
            recoveredBlock94PC := 352.
        ].
        recoveredBlock94Step = 352 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Stack2.
            recoveredBlock94PC := 353.
        ].
        recoveredBlock94Step = 353 ifTrue: [
            recoveredBlock94Local3 := recoveredBlock94Stack3.
            recoveredBlock94PC := 356.
        ].
        recoveredBlock94Step = 356 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Stack2.
            recoveredBlock94PC := 357.
        ].
        recoveredBlock94Step = 357 ifTrue: [
            recoveredBlock94Local2 := recoveredBlock94Stack3.
            recoveredBlock94PC := 360.
        ].
        recoveredBlock94Step = 360 ifTrue: [
            recoveredBlock94Local1 := recoveredBlock94Stack2.
            recoveredBlock94PC := 363.
        ].
        recoveredBlock94Step = 363 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := (recoveredStack1) allComponentInterfaces.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := [:recoveredBlock383Arg1 | 
    | recoveredBlock383Value0 recoveredBlock383Value1 recoveredBlock383Value2 recoveredBlock383Value3 recoveredBlock383Value4 recoveredBlock383Value5 recoveredBlock383Value6 |
    recoveredBlock383Value0 := recoveredBlock383Arg1.
    recoveredBlock383Value1 := (recoveredBlock383Value0) allMsgs.
    recoveredBlock383Value2 := [:recoveredBlock383Block393Arg1 | 
    | recoveredBlock383Block393Value0 recoveredBlock383Block393Value1 recoveredBlock383Block393Value2 recoveredBlock383Block393Value3 recoveredBlock383Block393Value4 |
    recoveredBlock383Block393Value0 := recoveredLocal2.
    recoveredBlock383Block393Value1 := recoveredBlock383Block393Arg1.
    recoveredBlock383Block393Value2 := (recoveredBlock383Block393Value1) mdlMessageKey.
    recoveredBlock383Block393Value3 := recoveredBlock383Block393Arg1.
    recoveredBlock383Block393Value4 := (recoveredBlock383Block393Value0) at: (recoveredBlock383Block393Value2) put: (recoveredBlock383Block393Value3).
    recoveredBlock383Block393Value4
].
    (recoveredBlock383Value1) do: (recoveredBlock383Value2).
    recoveredBlock383Value3 := recoveredBlock383Arg1.
    recoveredBlock383Value4 := (recoveredBlock383Value3) methods.
    recoveredBlock383Value5 := [:recoveredBlock383Block415Arg1 | 
    | recoveredBlock383Block415Stack0 recoveredBlock383Block415Stack1 recoveredBlock383Block415Stack2 recoveredBlock383Block415Stack3 recoveredBlock383Block415PC recoveredBlock383Block415Step recoveredBlock383Block415Done recoveredBlock383Block415Result |
    recoveredBlock383Block415Stack0 := nil.
    recoveredBlock383Block415PC := 422.
    recoveredBlock383Block415Done := false.
    [recoveredBlock383Block415Done not] whileTrue: [
        recoveredBlock383Block415Step := recoveredBlock383Block415PC.
        recoveredBlock383Block415Step = 422 ifTrue: [
            recoveredBlock383Block415Stack1 := nil.
            recoveredBlock383Block415PC := 423.
        ].
        recoveredBlock383Block415Step = 423 ifTrue: [
            recoveredBlock383Block415Stack2 := recoveredBlock383Block415Arg1.
            recoveredBlock383Block415PC := 426.
        ].
        recoveredBlock383Block415Step = 426 ifTrue: [
            recoveredBlock383Block415Stack2 := (recoveredBlock383Block415Stack2) isMdlMessageUsageAllowed.
            recoveredBlock383Block415PC := 428.
        ].
        recoveredBlock383Block415Step = 428 ifTrue: [
            (recoveredBlock383Block415Stack2) ifTrue: [recoveredBlock383Block415PC := 432] ifFalse: [recoveredBlock383Block415PC := 485].
        ].
        recoveredBlock383Block415Step = 432 ifTrue: [
            recoveredBlock383Block415PC := 433.
        ].
        recoveredBlock383Block415Step = 433 ifTrue: [
            recoveredBlock383Block415Stack1 := recoveredBlock383Block415Arg1.
            recoveredBlock383Block415PC := 436.
        ].
        recoveredBlock383Block415Step = 436 ifTrue: [
            recoveredBlock383Block415Stack1 := (recoveredBlock383Block415Stack1) usedMessages.
            recoveredBlock383Block415PC := 438.
        ].
        recoveredBlock383Block415Step = 438 ifTrue: [
            recoveredBlock383Block415Stack2 := [:recoveredBlock383Block415Block438Arg1 | 
    | recoveredBlock383Block415Block438Stack0 recoveredBlock383Block415Block438Stack1 recoveredBlock383Block415Block438Stack2 recoveredBlock383Block415Block438Stack3 recoveredBlock383Block415Block438Stack4 recoveredBlock383Block415Block438Stack5 recoveredBlock383Block415Block438PC recoveredBlock383Block415Block438Step recoveredBlock383Block415Block438Done recoveredBlock383Block415Block438Result |
    recoveredBlock383Block415Block438Stack0 := nil.
    recoveredBlock383Block415Block438PC := 444.
    recoveredBlock383Block415Block438Done := false.
    [recoveredBlock383Block415Block438Done not] whileTrue: [
        recoveredBlock383Block415Block438Step := recoveredBlock383Block415Block438PC.
        recoveredBlock383Block415Block438Step = 444 ifTrue: [
            recoveredBlock383Block415Block438Stack1 := recoveredLocal2.
            recoveredBlock383Block415Block438PC := 447.
        ].
        recoveredBlock383Block415Block438Step = 447 ifTrue: [
            recoveredBlock383Block415Block438Stack2 := recoveredBlock383Block415Block438Arg1.
            recoveredBlock383Block415Block438PC := 448.
        ].
        recoveredBlock383Block415Block438Step = 448 ifTrue: [
            recoveredBlock383Block415Block438Stack2 := (recoveredBlock383Block415Block438Stack2) mdlMessageKey.
            recoveredBlock383Block415Block438PC := 450.
        ].
        recoveredBlock383Block415Block438Step = 450 ifTrue: [
            recoveredBlock383Block415Block438Stack3 := [].
            recoveredBlock383Block415Block438PC := 452.
        ].
        recoveredBlock383Block415Block438Step = 452 ifTrue: [
            (recoveredBlock383Block415Block438Stack1) removeKey: (recoveredBlock383Block415Block438Stack2) ifAbsent: (recoveredBlock383Block415Block438Stack3).
            recoveredBlock383Block415Block438PC := 454.
        ].
        recoveredBlock383Block415Block438Step = 454 ifTrue: [
            recoveredBlock383Block415Block438Stack1 := recoveredLocal3.
            recoveredBlock383Block415Block438PC := 457.
        ].
        recoveredBlock383Block415Block438Step = 457 ifTrue: [
            recoveredBlock383Block415Block438Stack2 := recoveredBlock383Block415Block438Arg1.
            recoveredBlock383Block415Block438PC := 458.
        ].
        recoveredBlock383Block415Block438Step = 458 ifTrue: [
            recoveredBlock383Block415Block438Stack2 := (recoveredBlock383Block415Block438Stack2) mdlMessageKey.
            recoveredBlock383Block415Block438PC := 460.
        ].
        recoveredBlock383Block415Block438Step = 460 ifTrue: [
            recoveredBlock383Block415Block438Stack3 := [
    | block28122020Value0 block28122020Value1 |
    block28122020Value0 := OrderedCollection.
    block28122020Value1 := (block28122020Value0) new.
    block28122020Value1
].
            recoveredBlock383Block415Block438PC := 462.
        ].
        recoveredBlock383Block415Block438Step = 462 ifTrue: [
            recoveredBlock383Block415Block438PC := 470.
        ].
        recoveredBlock383Block415Block438Step = 470 ifTrue: [
            recoveredBlock383Block415Block438Stack1 := (recoveredBlock383Block415Block438Stack1) at: (recoveredBlock383Block415Block438Stack2) ifAbsentPut: (recoveredBlock383Block415Block438Stack3).
            recoveredBlock383Block415Block438PC := 472.
        ].
        recoveredBlock383Block415Block438Step = 472 ifTrue: [
            recoveredBlock383Block415Block438Stack2 := Array.
            recoveredBlock383Block415Block438PC := 474.
        ].
        recoveredBlock383Block415Block438Step = 474 ifTrue: [
            recoveredBlock383Block415Block438Stack3 := recoveredBlock383Block415Block438Arg1.
            recoveredBlock383Block415Block438PC := 475.
        ].
        recoveredBlock383Block415Block438Step = 475 ifTrue: [
            recoveredBlock383Block415Block438Stack4 := recoveredBlock383Block415Arg1.
            recoveredBlock383Block415Block438PC := 478.
        ].
        recoveredBlock383Block415Block438Step = 478 ifTrue: [
            recoveredBlock383Block415Block438Stack2 := (recoveredBlock383Block415Block438Stack2) with: (recoveredBlock383Block415Block438Stack3) with: (recoveredBlock383Block415Block438Stack4).
            recoveredBlock383Block415Block438PC := 480.
        ].
        recoveredBlock383Block415Block438Step = 480 ifTrue: [
            recoveredBlock383Block415Block438Stack1 := (recoveredBlock383Block415Block438Stack1) add: (recoveredBlock383Block415Block438Stack2).
            recoveredBlock383Block415Block438PC := 482.
        ].
        recoveredBlock383Block415Block438Step = 482 ifTrue: [
            recoveredBlock383Block415Block438Result := recoveredBlock383Block415Block438Stack1.
            recoveredBlock383Block415Block438Done := true.
        ].
    ].
    recoveredBlock383Block415Block438Result
].
            recoveredBlock383Block415PC := 483.
        ].
        recoveredBlock383Block415Step = 483 ifTrue: [
            recoveredBlock383Block415Stack1 := (recoveredBlock383Block415Stack1) do: (recoveredBlock383Block415Stack2).
            recoveredBlock383Block415PC := 485.
        ].
        recoveredBlock383Block415Step = 485 ifTrue: [
            recoveredBlock383Block415Result := recoveredBlock383Block415Stack1.
            recoveredBlock383Block415Done := true.
        ].
    ].
    recoveredBlock383Block415Result
].
    recoveredBlock383Value6 := (recoveredBlock383Value4) do: (recoveredBlock383Value5).
    recoveredBlock383Value6
].
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := [:recoveredBlock494Arg1 :recoveredBlock494Arg2 | 
    | recoveredBlock494Local1 recoveredBlock494Local2 recoveredBlock494Local3 recoveredBlock494Local4 recoveredBlock494Stack0 recoveredBlock494Stack1 recoveredBlock494Stack2 recoveredBlock494Stack3 recoveredBlock494Stack4 recoveredBlock494Stack5 recoveredBlock494Stack6 recoveredBlock494PC recoveredBlock494Step recoveredBlock494Done recoveredBlock494Result |
    recoveredBlock494Stack0 := self.
    recoveredBlock494PC := 500.
    recoveredBlock494Done := false.
    [recoveredBlock494Done not] whileTrue: [
        recoveredBlock494Step := recoveredBlock494PC.
        recoveredBlock494Step = 500 ifTrue: [
            recoveredBlock494Stack1 := nil.
            recoveredBlock494PC := 501.
        ].
        recoveredBlock494Step = 501 ifTrue: [
            recoveredBlock494Stack2 := recoveredLocal5.
            recoveredBlock494PC := 504.
        ].
        recoveredBlock494Step = 504 ifTrue: [
            recoveredBlock494Stack3 := recoveredBlock494Arg1.
            recoveredBlock494PC := 507.
        ].
        recoveredBlock494Step = 507 ifTrue: [
            recoveredBlock494Stack2 := (recoveredBlock494Stack2) includesKey: (recoveredBlock494Stack3).
            recoveredBlock494PC := 509.
        ].
        recoveredBlock494Step = 509 ifTrue: [
            (recoveredBlock494Stack2) ifTrue: [recoveredBlock494PC := 682] ifFalse: [recoveredBlock494PC := 512].
        ].
        recoveredBlock494Step = 512 ifTrue: [
            recoveredBlock494PC := 513.
        ].
        recoveredBlock494Step = 513 ifTrue: [
            recoveredBlock494Stack1 := nil.
            recoveredBlock494PC := 514.
        ].
        recoveredBlock494Step = 514 ifTrue: [
            recoveredBlock494Stack2 := recoveredLocal4.
            recoveredBlock494PC := 517.
        ].
        recoveredBlock494Step = 517 ifTrue: [
            recoveredBlock494Stack3 := recoveredBlock494Arg1.
            recoveredBlock494PC := 520.
        ].
        recoveredBlock494Step = 520 ifTrue: [
            recoveredBlock494Stack2 := (recoveredBlock494Stack2) includesKey: (recoveredBlock494Stack3).
            recoveredBlock494PC := 522.
        ].
        recoveredBlock494Step = 522 ifTrue: [
            (recoveredBlock494Stack2) ifTrue: [recoveredBlock494PC := 682] ifFalse: [recoveredBlock494PC := 526].
        ].
        recoveredBlock494Step = 526 ifTrue: [
            recoveredBlock494PC := 527.
        ].
        recoveredBlock494Step = 527 ifTrue: [
            recoveredBlock494Stack1 := recoveredBlock494Arg2.
            recoveredBlock494PC := 530.
        ].
        recoveredBlock494Step = 530 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) first.
            recoveredBlock494PC := 532.
        ].
        recoveredBlock494Step = 532 ifTrue: [
            recoveredBlock494Stack2 := 1.
            recoveredBlock494PC := 534.
        ].
        recoveredBlock494Step = 534 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) at: (recoveredBlock494Stack2).
            recoveredBlock494PC := 536.
        ].
        recoveredBlock494Step = 536 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) msgId.
            recoveredBlock494PC := 538.
        ].
        recoveredBlock494Step = 538 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) varDecl.
            recoveredBlock494PC := 540.
        ].
        recoveredBlock494Step = 540 ifTrue: [
            recoveredBlock494Local4 := recoveredBlock494Stack1.
            recoveredBlock494PC := 543.
        ].
        recoveredBlock494Step = 543 ifTrue: [
            recoveredBlock494Stack1 := OrderedCollection.
            recoveredBlock494PC := 545.
        ].
        recoveredBlock494Step = 545 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) new.
            recoveredBlock494PC := 546.
        ].
        recoveredBlock494Step = 546 ifTrue: [
            recoveredBlock494Local3 := recoveredBlock494Stack1.
            recoveredBlock494PC := 549.
        ].
        recoveredBlock494Step = 549 ifTrue: [
            recoveredBlock494Stack1 := OrderedCollection.
            recoveredBlock494PC := 551.
        ].
        recoveredBlock494Step = 551 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) new.
            recoveredBlock494PC := 552.
        ].
        recoveredBlock494Step = 552 ifTrue: [
            recoveredBlock494Local2 := recoveredBlock494Stack1.
            recoveredBlock494PC := 555.
        ].
        recoveredBlock494Step = 555 ifTrue: [
            recoveredBlock494Stack1 := recoveredBlock494Arg2.
            recoveredBlock494PC := 558.
        ].
        recoveredBlock494Step = 558 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) first.
            recoveredBlock494PC := 560.
        ].
        recoveredBlock494Step = 560 ifTrue: [
            recoveredBlock494Stack2 := 1.
            recoveredBlock494PC := 562.
        ].
        recoveredBlock494Step = 562 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) at: (recoveredBlock494Stack2).
            recoveredBlock494PC := 564.
        ].
        recoveredBlock494Step = 564 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) copy.
            recoveredBlock494PC := 566.
        ].
        recoveredBlock494Step = 566 ifTrue: [
            recoveredBlock494Local1 := recoveredBlock494Stack1.
            recoveredBlock494PC := 569.
        ].
        recoveredBlock494Step = 569 ifTrue: [
            recoveredBlock494Stack1 := recoveredBlock494Arg2.
            recoveredBlock494PC := 572.
        ].
        recoveredBlock494Step = 572 ifTrue: [
            recoveredBlock494Stack2 := [:block28122044Arg1 :block28122044Arg2 | 
    | block28122044Value0 block28122044Value1 block28122044Value2 block28122044Value3 block28122044Value4 block28122044Value5 block28122044Value6 |
    block28122044Value0 := block28122044Arg1.
    block28122044Value1 := (block28122044Value0) at: (2).
    block28122044Value2 := (block28122044Value1) errLabel.
    block28122044Value3 := block28122044Arg2.
    block28122044Value4 := (block28122044Value3) at: (2).
    block28122044Value5 := (block28122044Value4) errLabel.
    block28122044Value6 := (block28122044Value2) < (block28122044Value5).
    block28122044Value6
].
            recoveredBlock494PC := 574.
        ].
        recoveredBlock494Step = 574 ifTrue: [
            recoveredBlock494PC := 594.
        ].
        recoveredBlock494Step = 594 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) asSortedCollection: (recoveredBlock494Stack2).
            recoveredBlock494PC := 596.
        ].
        recoveredBlock494Step = 596 ifTrue: [
            recoveredBlock494Stack2 := [:recoveredBlock494Block596Arg1 | 
    | recoveredBlock494Block596Local1 recoveredBlock494Block596Local2 recoveredBlock494Block596Value0 recoveredBlock494Block596Value1 recoveredBlock494Block596Value2 recoveredBlock494Block596Value3 recoveredBlock494Block596Value4 recoveredBlock494Block596Value5 recoveredBlock494Block596Value6 recoveredBlock494Block596Value7 recoveredBlock494Block596Value8 recoveredBlock494Block596Value9 recoveredBlock494Block596Value10 recoveredBlock494Block596Value11 recoveredBlock494Block596Value12 recoveredBlock494Block596Value13 recoveredBlock494Block596Value14 |
    recoveredBlock494Block596Value0 := recoveredBlock494Block596Arg1.
    recoveredBlock494Block596Value1 := (recoveredBlock494Block596Value0) at: (1).
    recoveredBlock494Block596Local2 := recoveredBlock494Block596Value1.
    recoveredBlock494Block596Value2 := recoveredBlock494Block596Arg1.
    recoveredBlock494Block596Value3 := (recoveredBlock494Block596Value2) at: (2).
    recoveredBlock494Block596Local1 := recoveredBlock494Block596Value3.
    recoveredBlock494Block596Value4 := recoveredBlock494Local1.
    recoveredBlock494Block596Value5 := recoveredBlock494Block596Local2.
    (recoveredBlock494Block596Value4) mergeWith: (recoveredBlock494Block596Value5).
    recoveredBlock494Block596Value6 := recoveredBlock494Local3.
    recoveredBlock494Block596Value7 := recoveredBlock494Block596Local2.
    recoveredBlock494Block596Value8 := (recoveredBlock494Block596Value7) msgId.
    recoveredBlock494Block596Value9 := (recoveredBlock494Block596Value8) source.
    (recoveredBlock494Block596Value6) add: (recoveredBlock494Block596Value9).
    recoveredBlock494Block596Value10 := recoveredBlock494Local2.
    recoveredBlock494Block596Value11 := recoveredBlock494Block596Local2.
    recoveredBlock494Block596Value12 := recoveredBlock494Block596Local1.
    recoveredBlock494Block596Value13 := (recoveredBlock494Block596Value11) errLabelAccessIn: (recoveredBlock494Block596Value12).
    recoveredBlock494Block596Value14 := (recoveredBlock494Block596Value10) add: (recoveredBlock494Block596Value13).
    recoveredBlock494Block596Value14
].
            recoveredBlock494PC := 640.
        ].
        recoveredBlock494Step = 640 ifTrue: [
            (recoveredBlock494Stack1) do: (recoveredBlock494Stack2).
            recoveredBlock494PC := 642.
        ].
        recoveredBlock494Step = 642 ifTrue: [
            recoveredBlock494Stack1 := recoveredArg2.
            recoveredBlock494PC := 645.
        ].
        recoveredBlock494Step = 645 ifTrue: [
            recoveredBlock494Stack2 := recoveredBlock494Local4.
            recoveredBlock494PC := 648.
        ].
        recoveredBlock494Step = 648 ifTrue: [
            recoveredBlock494Stack3 := recoveredBlock494Local1.
            recoveredBlock494PC := 651.
        ].
        recoveredBlock494Step = 651 ifTrue: [
            recoveredBlock494Stack3 := (recoveredBlock494Stack3) errLabelMsgUsage.
            recoveredBlock494PC := 653.
        ].
        recoveredBlock494Step = 653 ifTrue: [
            recoveredBlock494Stack4 := ' access'.
            recoveredBlock494PC := 655.
        ].
        recoveredBlock494Step = 655 ifTrue: [
            recoveredBlock494Stack3 := (recoveredBlock494Stack3) , (recoveredBlock494Stack4).
            recoveredBlock494PC := 657.
        ].
        recoveredBlock494Step = 657 ifTrue: [
            recoveredBlock494Stack4 := recoveredBlock494Local3.
            recoveredBlock494PC := 660.
        ].
        recoveredBlock494Step = 660 ifTrue: [
            recoveredBlock494Stack5 := recoveredBlock494Local2.
            recoveredBlock494PC := 663.
        ].
        recoveredBlock494Step = 663 ifTrue: [
            recoveredBlock494Stack1 := (recoveredBlock494Stack1) mdlSemErrInvalidMessageAccessTo: (recoveredBlock494Stack2) with: (recoveredBlock494Stack3) sources: (recoveredBlock494Stack4) labels: (recoveredBlock494Stack5).
            recoveredBlock494PC := 666.
        ].
        recoveredBlock494Step = 666 ifTrue: [
            recoveredBlock494Stack2 := nil.
            recoveredBlock494PC := 667.
        ].
        recoveredBlock494Step = 667 ifTrue: [
            recoveredBlock494Stack3 := recoveredBlock494Stack2.
            recoveredBlock494PC := 668.
        ].
        recoveredBlock494Step = 668 ifTrue: [
            recoveredBlock494Local4 := recoveredBlock494Stack3.
            recoveredBlock494PC := 671.
        ].
        recoveredBlock494Step = 671 ifTrue: [
            recoveredBlock494Stack3 := recoveredBlock494Stack2.
            recoveredBlock494PC := 672.
        ].
        recoveredBlock494Step = 672 ifTrue: [
            recoveredBlock494Local3 := recoveredBlock494Stack3.
            recoveredBlock494PC := 675.
        ].
        recoveredBlock494Step = 675 ifTrue: [
            recoveredBlock494Stack3 := recoveredBlock494Stack2.
            recoveredBlock494PC := 676.
        ].
        recoveredBlock494Step = 676 ifTrue: [
            recoveredBlock494Local2 := recoveredBlock494Stack3.
            recoveredBlock494PC := 679.
        ].
        recoveredBlock494Step = 679 ifTrue: [
            recoveredBlock494Local1 := recoveredBlock494Stack2.
            recoveredBlock494PC := 682.
        ].
        recoveredBlock494Step = 682 ifTrue: [
            recoveredBlock494Result := recoveredBlock494Stack1.
            recoveredBlock494Done := true.
        ].
    ].
    recoveredBlock494Result
].
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack2 := [:block28122068Arg1 | 
    | block28122068Stack0 block28122068Stack1 block28122068Stack2 block28122068Stack3 block28122068Stack4 block28122068Stack5 block28122068PC block28122068Step block28122068Done block28122068Result |
    block28122068Stack0 := self.
    block28122068PC := 4.
    block28122068Done := false.
    [block28122068Done not] whileTrue: [
        block28122068Step := block28122068PC.
        block28122068Step = 4 ifTrue: [
            block28122068Stack1 := nil.
            block28122068PC := 5.
        ].
        block28122068Step = 5 ifTrue: [
            block28122068Stack2 := block28122068Arg1.
            block28122068PC := 6.
        ].
        block28122068Step = 6 ifTrue: [
            block28122068Stack2 := (block28122068Stack2) isMdlMapped.
            block28122068PC := 8.
        ].
        block28122068Step = 8 ifTrue: [
            (block28122068Stack2) ifTrue: [block28122068PC := 26] ifFalse: [block28122068PC := 12].
        ].
        block28122068Step = 12 ifTrue: [
            block28122068PC := 13.
        ].
        block28122068Step = 13 ifTrue: [
            block28122068Stack1 := block28122068Arg1.
            block28122068PC := 14.
        ].
        block28122068Step = 14 ifTrue: [
            block28122068Stack2 := 385.
            block28122068PC := 18.
        ].
        block28122068Step = 18 ifTrue: [
            block28122068Stack3 := 'Unmapped'.
            block28122068PC := 20.
        ].
        block28122068Step = 20 ifTrue: [
            block28122068Stack4 := block28122068Arg1.
            block28122068PC := 21.
        ].
        block28122068Step = 21 ifTrue: [
            block28122068Stack4 := (block28122068Stack4) errLabel.
            block28122068PC := 23.
        ].
        block28122068Step = 23 ifTrue: [
            block28122068Stack1 := (block28122068Stack1) mdlWarningNo: (block28122068Stack2) with: (block28122068Stack3) with: (block28122068Stack4).
            block28122068PC := 26.
        ].
        block28122068Step = 26 ifTrue: [
            block28122068Result := block28122068Stack1.
            block28122068Done := true.
        ].
    ].
    block28122068Result
].
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

