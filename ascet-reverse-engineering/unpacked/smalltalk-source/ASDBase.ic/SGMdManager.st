"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019c1c; bytecode file offset 0x92209c"
!SGMdManager methodsFor: 'recovered'!
errLabel
    ^'Code Generation'
! !

"ASDBase.ic method 0x2002d934; bytecode file offset 0x934580"
!SGMdManager methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) expander.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f6c4; bytecode file offset 0x934580"
!SGMdManager methodsFor: 'recovered'!
generatedModuleCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) generatedModuleCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031794; bytecode file offset 0x934580"
!SGMdManager methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036544; bytecode file offset 0x934580"
!SGMdManager methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) generator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036b24; bytecode file offset 0x934580"
!SGMdManager methodsFor: 'recovered'!
createMdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) createMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d878; bytecode file offset 0x93bf94"
!SGMdManager methodsFor: 'recovered'!
generatorFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200660ec; bytecode file offset 0x963428"
!SGMdManager methodsFor: 'recovered'!
logic
    | recoveredValue0 |
    recoveredValue0 := logic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067e44; bytecode file offset 0x9646f8"
!SGMdManager methodsFor: 'recovered'!
exHandlerForFatals
    | recoveredValue0 |
    recoveredValue0 := exHandler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068ec4; bytecode file offset 0x965b90"
!SGMdManager methodsFor: 'recovered'!
importList
    | recoveredValue0 |
    recoveredValue0 := imports.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bef40; bytecode file offset 0x9bc0b4"
!SGMdManager methodsFor: 'recovered'!
exHandlerForFatals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c00ec; bytecode file offset 0x9bd228"
!SGMdManager methodsFor: 'recovered'!
importAll: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imports := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012bf50; bytecode file offset 0xa28810"
!SGMdManager methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 |
    logic := nil.
    recoveredValue0 := (self) generator.
    (recoveredValue0) needsComponentIntegerCode: (true).
    recoveredValue1 := (self) generator.
    (recoveredValue1) needsMethodIntegerCode: (true).
    ^self
! !

"ASDBase.ic method 0x20140a28; bytecode file offset 0xa3d2f0"
!SGMdManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) reset.
    recoveredValue0 := SGMdImportTable.
    recoveredValue1 := (recoveredValue0) create.
    imports := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201778ac; bytecode file offset 0xa74170"
!SGMdManager methodsFor: 'recovered'!
handleFatals: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
    recoveredValue1 := ExSGCgFatal.
    recoveredValue2 := (self) exHandlerForFatals.
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022e534; bytecode file offset 0xb2ae14"
!SGMdManager methodsFor: 'recovered'!
generateNVram: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) reset.
    recoveredValue0 := (self) generator.
    (recoveredValue0) createIleExpander.
    recoveredValue1 := (self) createMdlBuilder.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGGeneratorFactory.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := (recoveredValue3) createNVRamWalker.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue5) addRootPathNode.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) anyMdlNode: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) removePathNode.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) getNVramIdentifier.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2023f404; bytecode file offset 0xb3bcd4"
!SGMdManager methodsFor: 'recovered'!
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

"ASDBase.ic method 0x202c4308; bytecode file offset 0xbc0bf0"
!SGMdManager methodsFor: 'recovered'!
exDefaultHandler
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) errorHandler.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) description.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := '\'.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) , (recoveredBlock4Stack2).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) argument.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) , (recoveredBlock4Stack2).
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) withCrLfs.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := nil.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack0) generalError: (recoveredBlock4Stack1) source: (recoveredBlock4Stack2).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) errorHandler.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack0) reset.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack0 := System.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isRuntime.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 39] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            (recoveredBlock4Stack0) handlesByDefault.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) exitWith: (recoveredBlock4Stack1).
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) exHandlerForFatals: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x202d11cc; bytecode file offset 0xbcdab8"
!SGMdManager methodsFor: 'recovered'!
generateSCOOPIXDataElements: recoveredArg1 stream: recoveredArg2 ifFail: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) createIleExpander.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) generateElementScoopix: (recoveredStack1) stream: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleCodeResultClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := SGGeneratorFactory.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) sixElementGenerator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) scoopixContentsOrFilename.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) scoopIXDataElements: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dea4c; bytecode file offset 0xbdb320"
!SGMdManager methodsFor: 'recovered'!
buildInitData: recoveredArg1 needsIntegerType: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) needsComponentIntegerType: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlInitBuilder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := recoveredLocal1.
    recoveredBlock21Value2 := (recoveredBlock21Value0) value: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fa4e8; bytecode file offset 0xbf6dbc"
!SGMdManager methodsFor: 'recovered'!
buildEHooksConfig: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlBuilder.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal2.
    recoveredBlock12Value2 := (recoveredBlock12Value0) value: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            logic := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fa778; bytecode file offset 0xbf704c"
!SGMdManager methodsFor: 'recovered'!
buildOSLogic: recoveredArg1 reportOSErrors: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlBuilder.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal2.
    recoveredBlock12Value2 := (recoveredBlock12Value0) value: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            logic := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035b7c4; bytecode file offset 0xc580b4"
!SGMdManager methodsFor: 'recovered'!
generateModuleCode: recoveredArg1 value: recoveredArg2 ifFail: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentNeedsIntegerCode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) needsComponentIntegerCode: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentNeedsIntegerType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) needsComponentIntegerType: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            logic := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) createIleExpander.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := logic.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) switchToDataset: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := logic.
    recoveredBlock34Value1 := (recoveredBlock34Value0) generateModuleCode.
    recoveredBlock34Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatedModuleCode.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20386344; bytecode file offset 0xc82c34"
!SGMdManager methodsFor: 'recovered'!
generateARXML: recoveredArg1 value: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlBuilder.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) createIleExpander.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := recoveredArg2.
    (recoveredBlock16Value0) switchToDataset: (recoveredBlock16Value1).
    recoveredBlock16Value2 := (self) generatorFactory.
    recoveredBlock16Value3 := (recoveredBlock16Value2) autosarStrategy.
    recoveredBlock16Value4 := recoveredArg1.
    recoveredBlock16Value5 := (recoveredBlock16Value3) anyMdlNode: (recoveredBlock16Value4).
    recoveredBlock16Value5
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarStrategy.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := SGCgModuleCode.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentGeneratedModuleCode: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a5ed4; bytecode file offset 0xca27c8"
!SGMdManager methodsFor: 'recovered'!
generateEHooksCode: recoveredArg1 updateBlock: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := SGCgModuleCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEhooksConversionGenerator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) anyMdlNode: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksConversions.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ehooksConversions: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksConfig.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEHooksBypassFunctionGenerator.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) anyMdlNode: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksBypassFunctions.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ehooksBypassFunctions: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cd35c; bytecode file offset 0xcc9c50"
!SGMdManager methodsFor: 'recovered'!
generateMdlInterface: recoveredArg1 needsIntegerCode: recoveredArg2 needsIntegerType: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SGGeneratorFactory.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) importList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCodeGenerationContext: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlDeclBuilder: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) needsComponentIntegerCode: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) needsComponentIntegerType: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredLocal1.
    recoveredBlock40Value2 := (recoveredBlock40Value0) value: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) logic.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            logic := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := logic.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f5de0; bytecode file offset 0xcf26cc"
!SGMdManager methodsFor: 'recovered'!
generateOSCode: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlBuilder.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            logic := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) createIleExpander.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 36] ifFalse: [recoveredBlock24PC := 46].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) generatorFactory.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack2 := logic.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) generateOSCode: (recoveredBlock24Stack2).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) errorHandler.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := [
    | recoveredBlock24Block49Value0 recoveredBlock24Block49Value1 recoveredBlock24Block49Value2 |
    recoveredBlock24Block49Value0 := (self) generatorFactory.
    recoveredBlock24Block49Value1 := logic.
    recoveredBlock24Block49Value2 := (recoveredBlock24Block49Value0) generateOSCode: (recoveredBlock24Block49Value1).
    recoveredBlock24Block49Value2
].
            recoveredBlock24PC := 63.
        ].
        recoveredBlock24Step = 63 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) disableLoggingDo: (recoveredBlock24Stack2).
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatedOSCode.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403f98; bytecode file offset 0xd00888"
!SGMdManager methodsFor: 'recovered'!
generateModel: recoveredArg1 needsIntegerCode: recoveredArg2 needsIntegerType: recoveredArg3 value: recoveredArg4 ifFail: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) needsComponentIntegerCode: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) needsComponentIntegerType: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlBuilder.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := recoveredLocal1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) value: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) reachedErrorLimit.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'Too many errors.'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) generalError: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) fatalWithDisplay.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) logic.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            logic := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043c110; bytecode file offset 0xd38a04"
!SGMdManager methodsFor: 'recovered'!
buildInit: recoveredArg1 generateCode: recoveredArg2 needsIntegerType: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) needsComponentIntegerType: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorFactory.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlInitBuilder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := recoveredLocal1.
    recoveredBlock21Value2 := (recoveredBlock21Value0) value: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) logic.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            logic := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) createIleExpander.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 |
    recoveredBlock62Value0 := logic.
    recoveredBlock62Value1 := (recoveredBlock62Value0) generateInitCode.
    recoveredBlock62Value1
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := logic.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatedInitCode.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049a1a4; bytecode file offset 0xd96ac0"
!SGMdManager methodsFor: 'recovered'!
generatePIDCode: recoveredArg1 projectId: recoveredArg2 nvRamId: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIleExpander.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) cgType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheLockKindCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
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
            recoveredStack1 := (recoveredStack1) cacheLockKindData.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'PROJECT.PID'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'PROJECT.NVRAMID'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'PROJECT.OPTION.MAXLOCKWAYSINT'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdSettings.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxLockedWays.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'PROJECT.OPTION.MAXLOCKWAYSSTRING'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdSettings.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxLockedWaysString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'PROJECT.OPTION.CACHELOCKKINDINT'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'PROJECT.OPTION.CACHELOCKKINDSTRING'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := #('Don''t lock code or data' 'Lock only code' 'Lock only data' 'Lock code and data').
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileProgramIdentifierTemplate.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildEnvironmentInfo.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) bannerInfos.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithTemplateParameters: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentInfo.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) bannerInfos.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithTemplateParameters: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithTemplateParameters: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

