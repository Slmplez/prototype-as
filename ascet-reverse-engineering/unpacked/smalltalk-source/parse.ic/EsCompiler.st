"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000168; bytecode file offset 0x157c0"
!EsCompiler methodsFor: 'recovered'!
methodClass
    | recoveredValue0 |
    recoveredValue0 := CompiledMethod.
    ^recoveredValue0
! !

"parse.ic method 0x20000510; bytecode file offset 0x15b64"
!EsCompiler methodsFor: 'recovered'!
initialize
    eval := false.
    ^self
! !

"parse.ic method 0x2000085c; bytecode file offset 0x15ee8"
!EsCompiler methodsFor: 'recovered'!
nameEnvironment
    | recoveredValue0 |
    recoveredValue0 := nameEnvironment.
    ^recoveredValue0
! !

"parse.ic method 0x200008e0; bytecode file offset 0x15f34"
!EsCompiler methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 |
    recoveredValue0 := errorHandler.
    ^recoveredValue0
! !

"parse.ic method 0x2000093c; bytecode file offset 0x15f90"
!EsCompiler methodsFor: 'recovered'!
isDoit
    | recoveredValue0 |
    recoveredValue0 := eval.
    ^recoveredValue0
! !

"parse.ic method 0x20000968; bytecode file offset 0x15fcc"
!EsCompiler methodsFor: 'recovered'!
sourceString
    | recoveredValue0 |
    recoveredValue0 := sourceString.
    ^recoveredValue0
! !

"parse.ic method 0x20000e5c; bytecode file offset 0x164b4"
!EsCompiler methodsFor: 'recovered'!
abort: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := exitBlock.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20000ef4; bytecode file offset 0x16548"
!EsCompiler methodsFor: 'recovered'!
errorHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    errorHandler := recoveredValue1.
    ^recoveredValue0
! !

"parse.ic method 0x20000f08; bytecode file offset 0x16560"
!EsCompiler methodsFor: 'recovered'!
handle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := errorHandler.
    recoveredValue2 := (recoveredValue0) handleWith: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x200013bc; bytecode file offset 0x16a14"
!EsCompiler methodsFor: 'recovered'!
nameEnvironment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) internalNameEnvironmentFor: (recoveredValue0).
    nameEnvironment := recoveredValue1.
    ^self
! !

"parse.ic method 0x2000158c; bytecode file offset 0x16bec"
!EsCompiler methodsFor: 'recovered'!
internalNameEnvironmentFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EsInternalNameEnvironment.
    recoveredValue1 := (recoveredValue0) for: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) nameEnvironment: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x200019cc; bytecode file offset 0x17030"
!EsCompiler methodsFor: 'recovered'!
exitBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exitBlock := recoveredValue0.
    ^self
! !

"parse.ic method 0x200023d4; bytecode file offset 0x17a34"
!EsCompiler methodsFor: 'recovered'!
parse: recoveredArg1 messagePattern: recoveredArg2 scanComments: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ParserClass.
    recoveredValue1 := (recoveredValue0) for: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) parse: (recoveredValue2) messagePattern: (recoveredValue3) scanComments: (recoveredValue4).
    ^recoveredValue5
! !

"parse.ic method 0x200024e8; bytecode file offset 0x17b40"
!EsCompiler methodsFor: 'recovered'!
sourceClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nameEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nameEnvironment.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004284; bytecode file offset 0x198f0"
!EsCompiler methodsFor: 'recovered'!
warning: recoveredArg1 errorObject: recoveredArg2 sourcePosition: recoveredArg3 severity: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := CompilerError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) sourceString.
    recoveredValue6 := (self) sourceClass.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue1) compilerWarning: (recoveredValue3) at: (recoveredValue4) in: (recoveredValue5) class: (recoveredValue6) errorObject: (recoveredValue7) severity: (recoveredValue8) for: (self).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := errorHandler.
    recoveredValue11 := (recoveredValue9) handleWith: (recoveredValue10).
    ^recoveredValue11
! !

"parse.ic method 0x2000446c; bytecode file offset 0x19adc"
!EsCompiler methodsFor: 'recovered'!
performLevel2ChecksOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) unusedLocals.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 |
    recoveredBlock6Value0 := EsErrVariableNeverUsed.
    recoveredBlock6Value1 := Array.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) with: (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) sourceStart.
    recoveredBlock6Value6 := (self) warning: (recoveredBlock6Value0) errorObject: (recoveredBlock6Value3) sourcePosition: (recoveredBlock6Value5) severity: (2).
    recoveredBlock6Value6
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"parse.ic method 0x200044b0; bytecode file offset 0x19b20"
!EsCompiler methodsFor: 'recovered'!
performLevel3ChecksOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) localVariablesToOptimize.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 |
    recoveredBlock6Value0 := EsErrLocalVariablesCanBeOptimized.
    recoveredBlock6Value1 := Array.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) with: (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) sourceStart.
    recoveredBlock6Value6 := (self) warning: (recoveredBlock6Value0) errorObject: (recoveredBlock6Value3) sourcePosition: (recoveredBlock6Value5) severity: (3).
    recoveredBlock6Value6
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20004620; bytecode file offset 0x19c88"
!EsCompiler methodsFor: 'recovered'!
compileForEvaluation: recoveredArg1 environment: recoveredArg2 errorHandler: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            eval := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) compile: (recoveredStack1) environment: (recoveredStack2) errorHandler: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) wasSuccessful.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setSource: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) allowTranslation: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20006010; bytecode file offset 0x1b688"
!EsCompiler methodsFor: 'recovered'!
performLevel1ChecksOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) readBeforeWritten.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 |
    recoveredBlock6Value0 := EsErrVariableReadBeforeWritten.
    recoveredBlock6Value1 := Array.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) with: (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) sourceStart.
    recoveredBlock6Value6 := (self) warning: (recoveredBlock6Value0) errorObject: (recoveredBlock6Value3) sourcePosition: (recoveredBlock6Value5) severity: (1).
    recoveredBlock6Value6
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) unreadLocals.
    recoveredValue5 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 |
    recoveredBlock32Value0 := EsErrVariableValueNeverRead.
    recoveredBlock32Value1 := Array.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value1) with: (recoveredBlock32Value2).
    recoveredBlock32Value4 := recoveredBlock32Arg1.
    recoveredBlock32Value5 := (recoveredBlock32Value4) sourceStart.
    recoveredBlock32Value6 := (self) warning: (recoveredBlock32Value0) errorObject: (recoveredBlock32Value3) sourcePosition: (recoveredBlock32Value5) severity: (1).
    recoveredBlock32Value6
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"parse.ic method 0x200066c4; bytecode file offset 0x1bd30"
!EsCompiler methodsFor: 'recovered'!
parse: recoveredArg1 messagePattern: recoveredArg2 scanComments: recoveredArg3 errorHandler: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg4.
    errorHandler := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    sourceString := recoveredValue1.
    recoveredValue2 := EsCompilationResult.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := sourceString.
    (recoveredValue4) sourceString: (recoveredValue5).
    recoveredValue6 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) errorObject: (recoveredBlock27Value1).
    ^recoveredBlock27Value2
].
    exitBlock := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (self) parse: (recoveredValue8) messagePattern: (recoveredValue9) scanComments: (recoveredValue10).
    (recoveredValue7) parseTree: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"parse.ic method 0x20007c60; bytecode file offset 0x1d2e4"
!EsCompiler methodsFor: 'recovered'!
parse: recoveredArg1 environment: recoveredArg2 messagePattern: recoveredArg3 scanComments: recoveredArg4 errorHandler: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            errorHandler := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            sourceString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EsCompilationResult.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := sourceString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) sourceString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalNameEnvironmentFor: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            nameEnvironment := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal2.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value0) errorObject: (recoveredBlock33Value1).
    ^recoveredBlock33Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            exitBlock := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) parse: (recoveredStack2) messagePattern: (recoveredStack3) scanComments: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) parseTree: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) wasSuccessful.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseTree.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nameEnvironment.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceClass.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) sourceClass: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := nameEnvironment.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) resolveNamesIn: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20009264; bytecode file offset 0x1e904"
!EsCompiler methodsFor: 'recovered'!
compile: recoveredArg1 environment: recoveredArg2 errorHandler: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            errorHandler := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            sourceString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EsCompilationResult.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) sourceString: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredLocal2.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := (recoveredBlock28Value0) errorObject: (recoveredBlock28Value1).
    ^recoveredBlock28Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            exitBlock := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalNameEnvironmentFor: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            nameEnvironment := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := eval.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) parse: (recoveredStack1) messagePattern: (recoveredStack2) scanComments: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := eval.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) asDoit.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) parseTree: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nameEnvironment.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) sourceClass: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := nameEnvironment.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) resolveNamesIn: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodFor: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := #('performLevel1ChecksOf:' 'performLevel2ChecksOf:' 'performLevel3ChecksOf:').
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := errorHandler.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningLevel.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 128] ifFalse: [recoveredPC := 173]] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) method: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

