"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2019b37c; bytecode file offset 0xa97c38"
!SGMdModelInline methodsFor: 'recovered'!
interfaceFromNode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClassInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComponentInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202846a0; bytecode file offset 0xb80f70"
!SGMdModelInline methodsFor: 'recovered'!
resetInlineFlags: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nodes.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) interfaceFromNode: (recoveredBlock6Stack3).
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) methods.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := [:block280e1828Arg1 | 
    | block280e1828Value0 block280e1828Value1 block280e1828Value2 |
    block280e1828Value0 := block280e1828Arg1.
    block280e1828Value1 := (block280e1828Value0) attributes.
    block280e1828Value2 := (block280e1828Value1) cgAttrNoInlining.
    block280e1828Value2
].
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202e2b14; bytecode file offset 0xbdf3e8"
!SGMdModelInline methodsFor: 'recovered'!
inlineProcesses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nodes.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) interfaceFromNode: (recoveredBlock6Stack3).
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 47] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) methods.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := [:block280e73d8Arg1 | 
    | block280e73d8Stack0 block280e73d8Stack1 block280e73d8Stack2 block280e73d8Stack3 block280e73d8PC block280e73d8Step block280e73d8Done block280e73d8Result |
    block280e73d8Stack0 := self.
    block280e73d8PC := 4.
    block280e73d8Done := false.
    [block280e73d8Done not] whileTrue: [
        block280e73d8Step := block280e73d8PC.
        block280e73d8Step = 4 ifTrue: [
            block280e73d8Stack1 := nil.
            block280e73d8PC := 5.
        ].
        block280e73d8Step = 5 ifTrue: [
            block280e73d8Stack2 := block280e73d8Arg1.
            block280e73d8PC := 6.
        ].
        block280e73d8Step = 6 ifTrue: [
            block280e73d8Stack2 := (block280e73d8Stack2) isMdlProcessDecl.
            block280e73d8PC := 8.
        ].
        block280e73d8Step = 8 ifTrue: [
            (block280e73d8Stack2) ifTrue: [block280e73d8PC := 12] ifFalse: [block280e73d8PC := 18].
        ].
        block280e73d8Step = 12 ifTrue: [
            block280e73d8PC := 13.
        ].
        block280e73d8Step = 13 ifTrue: [
            block280e73d8Stack1 := block280e73d8Arg1.
            block280e73d8PC := 14.
        ].
        block280e73d8Step = 14 ifTrue: [
            block280e73d8Stack1 := (block280e73d8Stack1) attributes.
            block280e73d8PC := 16.
        ].
        block280e73d8Step = 16 ifTrue: [
            block280e73d8Stack1 := (block280e73d8Stack1) cgAttrModelInlining.
            block280e73d8PC := 18.
        ].
        block280e73d8Step = 18 ifTrue: [
            block280e73d8Result := block280e73d8Stack1.
            block280e73d8Done := true.
        ].
    ].
    block280e73d8Result
].
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20448418; bytecode file offset 0xd44d04"
!SGMdModelInline methodsFor: 'recovered'!
modelInline: recoveredArg1 graph: recoveredArg2 codeManager: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) inlineProcesses: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
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
            recoveredStack0 := (recoveredStack0) generateMacros: (recoveredStack1) codeManager: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMonitorStream.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) decIndent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41Stack5 recoveredBlock41Stack6 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg3.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) progressReporter.
            recoveredBlock41PC := 54.
        ].
        recoveredBlock41Step = 54 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isCancelled.
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 104] ifFalse: [recoveredBlock41PC := 60].
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal1.
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 66.
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) includes: (recoveredBlock41Stack3).
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 72] ifFalse: [recoveredBlock41PC := 104].
        ].
        recoveredBlock41Step = 72 ifTrue: [
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 74.
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 75.
        ].
        recoveredBlock41Step = 75 ifTrue: [
            recoveredBlock41Stack3 := recoveredArg3.
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) logicManager.
            recoveredBlock41PC := 80.
        ].
        recoveredBlock41Step = 80 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) key.
            recoveredBlock41PC := 83.
        ].
        recoveredBlock41Step = 83 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) module.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack5 := recoveredArg3.
            recoveredBlock41PC := 88.
        ].
        recoveredBlock41Step = 88 ifTrue: [
            recoveredBlock41Stack5 := (recoveredBlock41Stack5) monitorManager.
            recoveredBlock41PC := 90.
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) generateModelFor: (recoveredBlock41Stack4) monitorManager: (recoveredBlock41Stack5).
            recoveredBlock41PC := 92.
        ].
        recoveredBlock41Step = 92 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) value: (recoveredBlock41Stack3).
            recoveredBlock41PC := 94.
        ].
        recoveredBlock41Step = 94 ifTrue: [
            (recoveredBlock41Stack2 ~~ nil) ifTrue: [recoveredBlock41PC := 104] ifFalse: [recoveredBlock41PC := 98].
        ].
        recoveredBlock41Step = 98 ifTrue: [
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack1 := true.
            recoveredBlock41PC := 100.
        ].
        recoveredBlock41Step = 100 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredLocal2 := recoveredBlock41Stack2.
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f8698; bytecode file offset 0xdf4f94"
!SGMdModelInline methodsFor: 'recovered'!
generateMacros: recoveredArg1 codeManager: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack1 := Set.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Local2 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
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
            recoveredBlock23Stack2 := self.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) key.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) interfaceFromNode: (recoveredBlock23Stack3).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Local2 := recoveredBlock23Stack3.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            (recoveredBlock23Stack2 == nil) ifTrue: [recoveredBlock23PC := 84] ifFalse: [recoveredBlock23PC := 40].
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local2.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) methods.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack2 := [:block28109f18Arg1 | 
    | block28109f18Value0 block28109f18Value1 block28109f18Value2 |
    block28109f18Value0 := block28109f18Arg1.
    block28109f18Value1 := (block28109f18Value0) attributes.
    block28109f18Value2 := (block28109f18Value1) isCgAttrModelInlining.
    block28109f18Value2
].
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) select: (recoveredBlock23Stack2).
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) asSet.
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Local1.
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            (recoveredBlock23Stack1) addAll: (recoveredBlock23Stack2).
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Local1.
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) notEmpty.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 74] ifFalse: [recoveredBlock23PC := 82].
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23PC := 75.
        ].
        recoveredBlock23Step = 75 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal3.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 79.
        ].
        recoveredBlock23Step = 79 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) key.
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) add: (recoveredBlock23Stack2).
            recoveredBlock23PC := 82.
        ].
        recoveredBlock23Step = 82 ifTrue: [
            recoveredBlock23Stack2 := nil.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack2.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Local1 recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := false.
            recoveredBlock99PC := 107.
        ].
        recoveredBlock99Step = 107 ifTrue: [
            recoveredBlock99Stack2 := self.
            recoveredBlock99PC := 108.
        ].
        recoveredBlock99Step = 108 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Arg1.
            recoveredBlock99PC := 109.
        ].
        recoveredBlock99Step = 109 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) key.
            recoveredBlock99PC := 110.
        ].
        recoveredBlock99Step = 110 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) interfaceFromNode: (recoveredBlock99Stack3).
            recoveredBlock99PC := 111.
        ].
        recoveredBlock99Step = 111 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Stack2.
            recoveredBlock99PC := 112.
        ].
        recoveredBlock99Step = 112 ifTrue: [
            recoveredBlock99Local1 := recoveredBlock99Stack3.
            recoveredBlock99PC := 113.
        ].
        recoveredBlock99Step = 113 ifTrue: [
            (recoveredBlock99Stack2 == nil) ifTrue: [recoveredBlock99PC := 162] ifFalse: [recoveredBlock99PC := 116].
        ].
        recoveredBlock99Step = 116 ifTrue: [
            recoveredBlock99PC := 117.
        ].
        recoveredBlock99Step = 117 ifTrue: [
            recoveredBlock99Stack1 := true.
            recoveredBlock99PC := 118.
        ].
        recoveredBlock99Step = 118 ifTrue: [
            recoveredBlock99Stack2 := recoveredLocal3.
            recoveredBlock99PC := 121.
        ].
        recoveredBlock99Step = 121 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Arg1.
            recoveredBlock99PC := 122.
        ].
        recoveredBlock99Step = 122 ifTrue: [
            recoveredBlock99Stack3 := (recoveredBlock99Stack3) key.
            recoveredBlock99PC := 123.
        ].
        recoveredBlock99Step = 123 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) includes: (recoveredBlock99Stack3).
            recoveredBlock99PC := 125.
        ].
        recoveredBlock99Step = 125 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 162] ifFalse: [recoveredBlock99PC := 128].
        ].
        recoveredBlock99Step = 128 ifTrue: [
            recoveredBlock99PC := 129.
        ].
        recoveredBlock99Step = 129 ifTrue: [
            recoveredBlock99Stack1 := recoveredBlock99Local1.
            recoveredBlock99PC := 130.
        ].
        recoveredBlock99Step = 130 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) methods.
            recoveredBlock99PC := 132.
        ].
        recoveredBlock99Step = 132 ifTrue: [
            recoveredBlock99Stack2 := [:recoveredBlock99Block132Arg1 | 
    | recoveredBlock99Block132Value0 recoveredBlock99Block132Value1 recoveredBlock99Block132Value2 recoveredBlock99Block132Value3 recoveredBlock99Block132Value4 |
    recoveredBlock99Block132Value0 := recoveredBlock99Block132Arg1.
    recoveredBlock99Block132Value1 := (recoveredBlock99Block132Value0) analysisInfo.
    recoveredBlock99Block132Value2 := (recoveredBlock99Block132Value1) calledMethods.
    recoveredBlock99Block132Value3 := [:recoveredBlock99Block132Block143Arg1 | 
    | recoveredBlock99Block132Block143Value0 recoveredBlock99Block132Block143Value1 recoveredBlock99Block132Block143Value2 |
    recoveredBlock99Block132Block143Value0 := recoveredLocal2.
    recoveredBlock99Block132Block143Value1 := recoveredBlock99Block132Block143Arg1.
    recoveredBlock99Block132Block143Value2 := (recoveredBlock99Block132Block143Value0) includes: (recoveredBlock99Block132Block143Value1).
    recoveredBlock99Block132Block143Value2
].
    recoveredBlock99Block132Value4 := (recoveredBlock99Block132Value2) anySatisfy: (recoveredBlock99Block132Value3).
    recoveredBlock99Block132Value4
].
            recoveredBlock99PC := 160.
        ].
        recoveredBlock99Step = 160 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) anySatisfy: (recoveredBlock99Stack2).
            recoveredBlock99PC := 162.
        ].
        recoveredBlock99Step = 162 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack1.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

