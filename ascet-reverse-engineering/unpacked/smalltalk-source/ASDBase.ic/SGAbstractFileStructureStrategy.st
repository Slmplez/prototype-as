"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200034b0; bytecode file offset 0x90206c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessaryInitCppCommandsForComponent: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004508; bytecode file offset 0x90206c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
analyze: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000be70; bytecode file offset 0x908be4"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
preprocessorCommands
    | recoveredValue0 |
    recoveredValue0 := (self) preprocessorCommandsNoGlobals.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000da1c; bytecode file offset 0x90a4b8"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerCSourceWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dba4; bytecode file offset 0x90a4b8"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerHSourceAnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017264; bytecode file offset 0x92209c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
globalHeaderFileNameNoExtension
    ^'globalH'
! !

"ASDBase.ic method 0x2001cd9c; bytecode file offset 0x92209c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
projectDefinitionsHeaderNoExtension
    ^'asd_project_defs'
! !

"ASDBase.ic method 0x2001fe44; bytecode file offset 0x92209c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
projectBypassFunctionsModuleNoExtension
    ^'asd_bypass_func'
! !

"ASDBase.ic method 0x20020504; bytecode file offset 0x92209c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
projectConversionHeaderNoExtension
    ^'asd_conversions'
! !

"ASDBase.ic method 0x200256e8; bytecode file offset 0x92209c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
ercosekHeaderFileNameNoExtension
    ^'ercosek'
! !

"ASDBase.ic method 0x20029d44; bytecode file offset 0x934580"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
supportsIncrementalLinking
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsIncrementalLinking.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033fb4; bytecode file offset 0x934580"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
supportsPreCompiledHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsPreCompiledHeader.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003efb8; bytecode file offset 0x93bf94"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
preprocessorCommandsNoGlobals
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMakePreprocessorCommands.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050e60; bytecode file offset 0x94d84c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
isSoftwareDevelopmentMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isExperimentalTarget.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200618c0; bytecode file offset 0x95e838"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
projectBypassFunctionsModuleFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectBypassFunctionsModuleNoExtension.
    recoveredValue1 := (recoveredValue0) , ('.c').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200618fc; bytecode file offset 0x95e838"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
globalHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) globalHeaderFileNameNoExtension.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061924; bytecode file offset 0x95e838"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
projectConversionHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectConversionHeaderNoExtension.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006629c; bytecode file offset 0x963428"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := target.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006737c; bytecode file offset 0x9646f8"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerCSource
    | recoveredValue0 |
    recoveredValue0 := considerCSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f74; bytecode file offset 0x965b90"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerHSource
    | recoveredValue0 |
    recoveredValue0 := considerHSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a2f8; bytecode file offset 0x966bdc"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerCppCommands
    | recoveredValue0 |
    recoveredValue0 := considerCppCommands.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007542c; bytecode file offset 0x9757c8"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerInitCSource
    ^true
! !

"ASDBase.ic method 0x200872c4; bytecode file offset 0x983b88"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessarySoftRequiredForNode: recoveredArg1 softRequired: recoveredArg2 cppCommands: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) addAllHHeaders: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bdd04; bytecode file offset 0x9bb178"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf6b8; bytecode file offset 0x9bc0b4"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerCSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    considerCSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfe4c; bytecode file offset 0x9bd228"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerHSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    considerHSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0fd0; bytecode file offset 0x9bdf14"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
considerCppCommands: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    considerCppCommands := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6810; bytecode file offset 0x9d3134"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetConsiderFlags.
    ^self
! !

"ASDBase.ic method 0x200e2804; bytecode file offset 0x9df0b8"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
resetConsiderFlags
    considerHSource := true.
    considerCSource := true.
    considerCppCommands := true.
    ^self
! !

"ASDBase.ic method 0x200ecb40; bytecode file offset 0x9e9400"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessaryHeaderForComponent: recoveredArg1 hardRequired: recoveredArg2 cppCommands: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) addAllHHeaders: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) additionalPrereqHeaders.
    (recoveredValue0) addAllCHeaders: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201206a0; bytecode file offset 0xa1cf64"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
requiredInitCodeHeaders: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) filterNodesForRequiredInitHeaders: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280c8f88Arg1 | 
    | block280c8f88Value0 block280c8f88Value1 |
    block280c8f88Value0 := block280c8f88Arg1.
    block280c8f88Value1 := (block280c8f88Value0) initHeaderFileName.
    block280c8f88Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20147a34; bytecode file offset 0xa442f4"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessaryModuleHeaderForComponent: recoveredArg1 cppCommands: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isARSWComponentNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
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
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) moduleHeaderFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) necessaryModuleHeaderForComponent: (recoveredStack2) cppCommands: (recoveredStack3) fileName: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201751d4; bytecode file offset 0xa71a98"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
filterNodesForRequiredInitHeaders: recoveredArg1
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
            recoveredStack2 := [:block280cf1d4Arg1 | 
    | block280cf1d4Stack0 block280cf1d4Stack1 block280cf1d4Stack2 block280cf1d4Stack3 block280cf1d4PC block280cf1d4Step block280cf1d4Done block280cf1d4Result |
    block280cf1d4Stack0 := self.
    block280cf1d4PC := 4.
    block280cf1d4Done := false.
    [block280cf1d4Done not] whileTrue: [
        block280cf1d4Step := block280cf1d4PC.
        block280cf1d4Step = 4 ifTrue: [
            block280cf1d4Stack1 := true.
            block280cf1d4PC := 5.
        ].
        block280cf1d4Step = 5 ifTrue: [
            block280cf1d4Stack2 := block280cf1d4Arg1.
            block280cf1d4PC := 6.
        ].
        block280cf1d4Step = 6 ifTrue: [
            block280cf1d4Stack2 := (block280cf1d4Stack2) isEnumNode.
            block280cf1d4PC := 7.
        ].
        block280cf1d4Step = 7 ifTrue: [
            (block280cf1d4Stack2) ifTrue: [block280cf1d4PC := 13] ifFalse: [block280cf1d4PC := 10].
        ].
        block280cf1d4Step = 10 ifTrue: [
            block280cf1d4PC := 11.
        ].
        block280cf1d4Step = 11 ifTrue: [
            block280cf1d4Stack1 := block280cf1d4Arg1.
            block280cf1d4PC := 12.
        ].
        block280cf1d4Step = 12 ifTrue: [
            block280cf1d4Stack1 := (block280cf1d4Stack1) isComponentNotInstantiated.
            block280cf1d4PC := 13.
        ].
        block280cf1d4Step = 13 ifTrue: [
            block280cf1d4Result := block280cf1d4Stack1.
            block280cf1d4Done := true.
        ].
    ].
    block280cf1d4Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b7038; bytecode file offset 0xab3900"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessaryProductionHeaderForNode: recoveredArg1 softRequired: recoveredArg2 cppCommands: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isARSWComponentNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasExternalCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleHeaderFileName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addAllCHeaders: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201be204; bytecode file offset 0xabaacc"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
toBeCompiledInitSO: recoveredArg1 forComponent: recoveredArg2
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
            recoveredStack3 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) needsToCompileInitInstCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeCompiledInitSO: (recoveredStack1) forComponent: (recoveredStack2) considerCSource: (recoveredStack3).
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
            recoveredStack0 := (recoveredStack0) considerCppCommands.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) necessaryInitCppCommandsForComponent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) preprocessorCommands: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020d72c; bytecode file offset 0xb09ff4"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
filterNodesForRequiredModuleHeaders: recoveredArg1
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
            recoveredStack2 := [:block280da61cArg1 | 
    | block280da61cStack0 block280da61cStack1 block280da61cStack2 block280da61cStack3 block280da61cPC block280da61cStep block280da61cDone block280da61cResult |
    block280da61cStack0 := self.
    block280da61cPC := 4.
    block280da61cDone := false.
    [block280da61cDone not] whileTrue: [
        block280da61cStep := block280da61cPC.
        block280da61cStep = 4 ifTrue: [
            block280da61cStack1 := true.
            block280da61cPC := 5.
        ].
        block280da61cStep = 5 ifTrue: [
            block280da61cStack2 := block280da61cArg1.
            block280da61cPC := 6.
        ].
        block280da61cStep = 6 ifTrue: [
            block280da61cStack2 := (block280da61cStack2) isEnumNode.
            block280da61cPC := 7.
        ].
        block280da61cStep = 7 ifTrue: [
            (block280da61cStack2) ifTrue: [block280da61cPC := 22] ifFalse: [block280da61cPC := 10].
        ].
        block280da61cStep = 10 ifTrue: [
            block280da61cPC := 11.
        ].
        block280da61cStep = 11 ifTrue: [
            block280da61cStack1 := true.
            block280da61cPC := 12.
        ].
        block280da61cStep = 12 ifTrue: [
            block280da61cStack2 := block280da61cArg1.
            block280da61cPC := 13.
        ].
        block280da61cStep = 13 ifTrue: [
            block280da61cStack2 := (block280da61cStack2) isARNode.
            block280da61cPC := 14.
        ].
        block280da61cStep = 14 ifTrue: [
            (block280da61cStack2) ifTrue: [block280da61cPC := 22] ifFalse: [block280da61cPC := 18].
        ].
        block280da61cStep = 18 ifTrue: [
            block280da61cPC := 19.
        ].
        block280da61cStep = 19 ifTrue: [
            block280da61cStack1 := block280da61cArg1.
            block280da61cPC := 20.
        ].
        block280da61cStep = 20 ifTrue: [
            block280da61cStack1 := (block280da61cStack1) containsUsefulCode.
            block280da61cPC := 21.
        ].
        block280da61cStep = 21 ifTrue: [
            block280da61cStack1 := (block280da61cStack1) not.
            block280da61cPC := 22.
        ].
        block280da61cStep = 22 ifTrue: [
            block280da61cResult := block280da61cStack1.
            block280da61cDone := true.
        ].
    ].
    block280da61cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021d194; bytecode file offset 0xb19a6c"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
setFileNamesForComponent: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) moduleFileName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := '.c'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := '.h'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) headerFileName: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProjectNode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) osFilename.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) osFilename: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20241544; bytecode file offset 0xb3de10"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessaryModuleHeaderForComponent: recoveredArg1 cppCommands: recoveredArg2 fileName: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) hasInternalHeaderSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
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
            recoveredStack3 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) internalHeaderFileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) addAllCHeaders: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addAllIHHeaders: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addAllCHeaders: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024d544; bytecode file offset 0xb49e18"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
toBeCompiledInitSO: recoveredArg1 forComponent: recoveredArg2 considerCSource: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) considerHSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := TGSourceHandle.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) initCodeStorageHandle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) hSource: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) considerCSourceWith: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) checkPermissionToCompile.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := TGSourceHandle.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) initCodeStorageHandle.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) cSource: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284524; bytecode file offset 0xb80dfc"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
toBeCompiledModuleSourceHandleForComponent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isClassNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecordNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) considerInitCSource.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := TGSourceHandle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleCodeStorageHandle.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := TGAggregatedSingleInstanceSourceHandle.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleCodeStorageHandle.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) initCodeStorageHandle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202fe6d8; bytecode file offset 0xbfafbc"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
necessaryInlineHeaderForNode: recoveredArg1 withInlineHeader: recoveredArg2 cppCommands: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInlineHDefines.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) allCSourceDefines.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) allCSourceIncludes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addAllHInlineHeaders: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) resetCSourceDefines.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) resetCSourceIncludes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) inlineHeaderFileName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addAllCHeaders: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) allRequiredInlineHeadersForComponent: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) addAllHInlineHeaders: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) allRequiredInlineHeadersForComponent: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addAllCHeaders: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f100; bytecode file offset 0xc2b9e0"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
allRequiredInlineHeadersForComponent: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) allPrerequesites.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) filterNodesForRequiredModuleHeaders: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280ecb74Arg1 | 
    | block280ecb74Value0 block280ecb74Value1 |
    block280ecb74Value0 := block280ecb74Arg1.
    block280ecb74Value1 := (block280ecb74Value0) hasInlineHeaderSource.
    block280ecb74Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) moduleInlineHeaderFileName.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) includes: (recoveredBlock26Stack3).
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 53] ifFalse: [recoveredBlock26PC := 44].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) moduleInlineHeaderFileName.
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b55fc; bytecode file offset 0xcb1ee4"
!SGAbstractFileStructureStrategy methodsFor: 'recovered'!
toBeCompiledModuleSO: recoveredArg1 forComponent: recoveredArg2 considerCSource: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) considerHSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeCompiledModuleSourceHandleForComponent: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) hSource: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInlineHeaderSource.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := TGSourceHandle.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleCodeStorageHandle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) hInlineSource: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) considerCSourceWith: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) checkPermissionToCompile.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeCompiledModuleSourceHandleForComponent: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) cSource: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInternalHeaderSource.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInlineHeaderSource.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) considerCSourceWith: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := TGSourceHandle.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleCodeStorageHandle.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) iHSource: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

