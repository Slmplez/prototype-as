"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008924; bytecode file offset 0x908be4"
!TGExperimentalTarget class methodsFor: 'recovered'!
defaultOSTools
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b090; bytecode file offset 0x908be4"
!TGExperimentalTarget class methodsFor: 'recovered'!
defaultCompilerTools
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200253c4; bytecode file offset 0x92209c"
!TGExperimentalTarget class methodsFor: 'recovered'!
addOnLabel
    ^'RP'
! !

"ASDBase.ic method 0x20048ca8; bytecode file offset 0x945728"
!TGExperimentalTarget class methodsFor: 'recovered'!
removeInstances
    Instances := nil.
    ^self
! !

"ASDBase.ic method 0x2004eb94; bytecode file offset 0x94d048"
!TGExperimentalTarget class methodsFor: 'recovered'!
variantKey
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ec18; bytecode file offset 0x94d048"
!TGExperimentalTarget class methodsFor: 'recovered'!
reset
    (self) removeInstances.
    ^self
! !

"ASDBase.ic method 0x2004eda4; bytecode file offset 0x94d048"
!TGExperimentalTarget class methodsFor: 'recovered'!
targetType
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200513e4; bytecode file offset 0x94f0e0"
!TGExperimentalTarget class methodsFor: 'recovered'!
defaultOSType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) matchingOSTools.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) identifier.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20076fa4; bytecode file offset 0x9757c8"
!TGExperimentalTarget class methodsFor: 'recovered'!
isExperimentalTarget
    ^true
! !

"ASDBase.ic method 0x20077a2c; bytecode file offset 0x9757c8"
!TGExperimentalTarget class methodsFor: 'recovered'!
isAbstract
    ^true
! !

"ASDBase.ic method 0x200885fc; bytecode file offset 0x985628"
!TGExperimentalTarget class methodsFor: 'recovered'!
availableOSToolTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) ercosekType.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200953b8; bytecode file offset 0x991fb4"
!TGExperimentalTarget class methodsFor: 'recovered'!
collectOSLogicKeys: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) variantKey.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009e1e0; bytecode file offset 0x99aa94"
!TGExperimentalTarget class methodsFor: 'recovered'!
removeExternalTools
    osTools := nil.
    compilerTools := nil.
    ^self
! !

"ASDBase.ic method 0x200b1ca0; bytecode file offset 0x9ae66c"
!TGExperimentalTarget class methodsFor: 'recovered'!
supportsVariableStepSolvers
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_79372').
    ^false
! !

"ASDBase.ic method 0x200f7a34; bytecode file offset 0x9f4e38"
!TGExperimentalTarget class methodsFor: 'recovered'!
compilerToolTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) matchingCompilerTools.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4d4cArg1 | 
    | block280c4d4cValue0 block280c4d4cValue1 |
    block280c4d4cValue0 := block280c4d4cArg1.
    block280c4d4cValue1 := (block280c4d4cValue0) compilerToolType.
    block280c4d4cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119d34; bytecode file offset 0xa16880"
!TGExperimentalTarget class methodsFor: 'recovered'!
removeAllExternalTools
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c81c0Arg1 | 
    | block280c81c0Value0 block280c81c0Value1 |
    block280c81c0Value0 := block280c81c0Arg1.
    block280c81c0Value1 := (block280c81c0Value0) removeExternalTools.
    block280c81c0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128514; bytecode file offset 0xa24eb0"
!TGExperimentalTarget class methodsFor: 'recovered'!
instances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Instances := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016fb94; bytecode file offset 0xa6c450"
!TGExperimentalTarget class methodsFor: 'recovered'!
matchingCompilerTools
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := compilerTools.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) defaultCompilerTools.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    compilerTools := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := compilerTools.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016fbe4; bytecode file offset 0xa6c4a0"
!TGExperimentalTarget class methodsFor: 'recovered'!
matchingOSTools
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osTools.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) defaultOSTools.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    osTools := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := osTools.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e34a4; bytecode file offset 0xadfd78"
!TGExperimentalTarget class methodsFor: 'recovered'!
availableTargets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6938Arg1 | 
    | block280d6938Value0 block280d6938Value1 |
    block280d6938Value0 := block280d6938Arg1.
    block280d6938Value1 := (block280d6938Value0) isAbstract.
    block280d6938Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280d695cArg1 | 
    | block280d695cValue0 block280d695cValue1 block280d695cValue2 |
    block280d695cValue0 := block280d695cArg1.
    block280d695cValue1 := (block280d695cValue0) new.
    block280d695cValue2 := (block280d695cValue1) initialize.
    block280d695cValue2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bd39c; bytecode file offset 0xcb9c80"
!TGExperimentalTarget class methodsFor: 'recovered'!
findCompilerRepresentation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := TGANSICCompiler.
    recoveredValue3 := (recoveredValue2) availableCompilerTools.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block29Arg1 | 
    | recoveredBlock19Block29Value0 recoveredBlock19Block29Value1 recoveredBlock19Block29Value2 recoveredBlock19Block29Value3 |
    recoveredBlock19Block29Value0 := recoveredBlock19Block29Arg1.
    recoveredBlock19Block29Value1 := (recoveredBlock19Block29Value0) compilerToolType.
    recoveredBlock19Block29Value2 := recoveredBlock19Arg1.
    recoveredBlock19Block29Value3 := (recoveredBlock19Block29Value1) equals: (recoveredBlock19Block29Value2).
    recoveredBlock19Block29Value3
].
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack3 := [].
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) detect: (recoveredBlock19Stack2) ifNone: (recoveredBlock19Stack3).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            (recoveredBlock19Stack1 ~~ nil) ifTrue: [recoveredBlock19PC := 66] ifFalse: [recoveredBlock19PC := 56].
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack1 := TGCCompilerTool.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) selectedCompilerTool: (recoveredBlock19Stack2).
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2045fce8; bytecode file offset 0xd5c5d8"
!TGExperimentalTarget class methodsFor: 'recovered'!
updateOSTools: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) matchingOSTools.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isMissingTool.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) startupLog.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) declCategoryLabel.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) ignored: (recoveredBlock12Stack2) identifier: (recoveredBlock12Stack3).
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) startupLog.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := TGOperatingSystemTool.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) declCategoryLabel.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) identifier.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Arg1.
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) label.
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) supports: (recoveredBlock12Stack2) identifier: (recoveredBlock12Stack3) label: (recoveredBlock12Stack4).
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            osTools := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Local1 recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65Stack5 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := TGOperatingSystemTool.
            recoveredBlock65PC := 74.
        ].
        recoveredBlock65Step = 74 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 75.
        ].
        recoveredBlock65Step = 75 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) selectedTool: (recoveredBlock65Stack2).
            recoveredBlock65PC := 77.
        ].
        recoveredBlock65Step = 77 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack1.
            recoveredBlock65PC := 78.
        ].
        recoveredBlock65Step = 78 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local1.
            recoveredBlock65PC := 79.
        ].
        recoveredBlock65Step = 79 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) isMissingTool.
            recoveredBlock65PC := 80.
        ].
        recoveredBlock65Step = 80 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 84] ifFalse: [recoveredBlock65PC := 96].
        ].
        recoveredBlock65Step = 84 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 85.
        ].
        recoveredBlock65Step = 85 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) startupLog.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local1.
            recoveredBlock65PC := 87.
        ].
        recoveredBlock65Step = 87 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) declCategoryLabel.
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 90.
        ].
        recoveredBlock65Step = 90 ifTrue: [
            (recoveredBlock65Stack1) ignored: (recoveredBlock65Stack2) identifier: (recoveredBlock65Stack3).
            recoveredBlock65PC := 92.
        ].
        recoveredBlock65Step = 92 ifTrue: [
            recoveredBlock65PC := 109.
        ].
        recoveredBlock65Step = 96 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) startupLog.
            recoveredBlock65PC := 98.
        ].
        recoveredBlock65Step = 98 ifTrue: [
            recoveredBlock65Stack2 := TGOperatingSystemTool.
            recoveredBlock65PC := 100.
        ].
        recoveredBlock65Step = 100 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) declCategoryLabel.
            recoveredBlock65PC := 102.
        ].
        recoveredBlock65Step = 102 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack4 := recoveredBlock65Local1.
            recoveredBlock65PC := 104.
        ].
        recoveredBlock65Step = 104 ifTrue: [
            recoveredBlock65Stack4 := (recoveredBlock65Stack4) label.
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 106 ifTrue: [
            (recoveredBlock65Stack1) supports: (recoveredBlock65Stack2) identifier: (recoveredBlock65Stack3) label: (recoveredBlock65Stack4).
            recoveredBlock65PC := 109.
        ].
        recoveredBlock65Step = 109 ifTrue: [
            recoveredBlock65Stack1 := osTools.
            recoveredBlock65PC := 111.
        ].
        recoveredBlock65Step = 111 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local1.
            recoveredBlock65PC := 112.
        ].
        recoveredBlock65Step = 112 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) add: (recoveredBlock65Stack2).
            recoveredBlock65PC := 114.
        ].
        recoveredBlock65Step = 114 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b7408; bytecode file offset 0xdb3d10"
!TGExperimentalTarget class methodsFor: 'recovered'!
updateCompilerTools: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) matchingCompilerTools.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isMissingTool.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 38].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) startupLog.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) declCategoryLabel.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) identifier.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) ignored: (recoveredBlock12Stack2) identifier: (recoveredBlock12Stack3).
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) startupLog.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := TGCCompilerTool.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) declCategoryLabel.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) identifier.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Arg1.
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) compilerToolLabel.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) supports: (recoveredBlock12Stack2) identifier: (recoveredBlock12Stack3) label: (recoveredBlock12Stack4).
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            compilerTools := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Local1 recoveredBlock67Local2 recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67Stack5 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := Array.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 77.
        ].
        recoveredBlock67Step = 77 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) with: (recoveredBlock67Stack2).
            recoveredBlock67PC := 79.
        ].
        recoveredBlock67Step = 79 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) findCompilerRepresentation: (recoveredBlock67Stack1).
            recoveredBlock67PC := 81.
        ].
        recoveredBlock67Step = 81 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Stack0.
            recoveredBlock67PC := 82.
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67Local1 := recoveredBlock67Stack1.
            recoveredBlock67PC := 83.
        ].
        recoveredBlock67Step = 83 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) isEmpty.
            recoveredBlock67PC := 84.
        ].
        recoveredBlock67Step = 84 ifTrue: [
            (recoveredBlock67Stack0) ifTrue: [recoveredBlock67PC := 88] ifFalse: [recoveredBlock67PC := 98].
        ].
        recoveredBlock67Step = 88 ifTrue: [
            recoveredBlock67Stack0 := TGCCompilerTool.
            recoveredBlock67PC := 90.
        ].
        recoveredBlock67Step = 90 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Arg1.
            recoveredBlock67PC := 91.
        ].
        recoveredBlock67Step = 91 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) selectedCompilerTool: (recoveredBlock67Stack1).
            recoveredBlock67PC := 93.
        ].
        recoveredBlock67Step = 93 ifTrue: [
            recoveredBlock67Local2 := recoveredBlock67Stack0.
            recoveredBlock67PC := 94.
        ].
        recoveredBlock67Step = 94 ifTrue: [
            recoveredBlock67PC := 102.
        ].
        recoveredBlock67Step = 98 ifTrue: [
            recoveredBlock67Stack0 := recoveredBlock67Local1.
            recoveredBlock67PC := 99.
        ].
        recoveredBlock67Step = 99 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) first.
            recoveredBlock67PC := 101.
        ].
        recoveredBlock67Step = 101 ifTrue: [
            recoveredBlock67Local2 := recoveredBlock67Stack0.
            recoveredBlock67PC := 102.
        ].
        recoveredBlock67Step = 102 ifTrue: [
            recoveredBlock67Stack0 := recoveredBlock67Local2.
            recoveredBlock67PC := 103.
        ].
        recoveredBlock67Step = 103 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) isMissingTool.
            recoveredBlock67PC := 104.
        ].
        recoveredBlock67Step = 104 ifTrue: [
            (recoveredBlock67Stack0) ifTrue: [recoveredBlock67PC := 108] ifFalse: [recoveredBlock67PC := 120].
        ].
        recoveredBlock67Step = 108 ifTrue: [
            recoveredBlock67Stack0 := self.
            recoveredBlock67PC := 109.
        ].
        recoveredBlock67Step = 109 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) startupLog.
            recoveredBlock67PC := 110.
        ].
        recoveredBlock67Step = 110 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Local2.
            recoveredBlock67PC := 111.
        ].
        recoveredBlock67Step = 111 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) declCategoryLabel.
            recoveredBlock67PC := 113.
        ].
        recoveredBlock67Step = 113 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 114.
        ].
        recoveredBlock67Step = 114 ifTrue: [
            (recoveredBlock67Stack0) ignored: (recoveredBlock67Stack1) identifier: (recoveredBlock67Stack2).
            recoveredBlock67PC := 116.
        ].
        recoveredBlock67Step = 116 ifTrue: [
            recoveredBlock67PC := 137.
        ].
        recoveredBlock67Step = 120 ifTrue: [
            recoveredBlock67Stack0 := self.
            recoveredBlock67PC := 121.
        ].
        recoveredBlock67Step = 121 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) startupLog.
            recoveredBlock67PC := 122.
        ].
        recoveredBlock67Step = 122 ifTrue: [
            recoveredBlock67Stack1 := TGCCompilerTool.
            recoveredBlock67PC := 124.
        ].
        recoveredBlock67Step = 124 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) declCategoryLabel.
            recoveredBlock67PC := 126.
        ].
        recoveredBlock67Step = 126 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 127.
        ].
        recoveredBlock67Step = 127 ifTrue: [
            recoveredBlock67Stack3 := TGCCompilerTool.
            recoveredBlock67PC := 129.
        ].
        recoveredBlock67Step = 129 ifTrue: [
            recoveredBlock67Stack4 := recoveredBlock67Local2.
            recoveredBlock67PC := 130.
        ].
        recoveredBlock67Step = 130 ifTrue: [
            recoveredBlock67Stack4 := (recoveredBlock67Stack4) compilerToolType.
            recoveredBlock67PC := 132.
        ].
        recoveredBlock67Step = 132 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) compilerToolLabelForType: (recoveredBlock67Stack4).
            recoveredBlock67PC := 134.
        ].
        recoveredBlock67Step = 134 ifTrue: [
            (recoveredBlock67Stack0) supports: (recoveredBlock67Stack1) identifier: (recoveredBlock67Stack2) label: (recoveredBlock67Stack3).
            recoveredBlock67PC := 137.
        ].
        recoveredBlock67Step = 137 ifTrue: [
            recoveredBlock67Stack0 := compilerTools.
            recoveredBlock67PC := 139.
        ].
        recoveredBlock67Step = 139 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Local2.
            recoveredBlock67PC := 140.
        ].
        recoveredBlock67Step = 140 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) add: (recoveredBlock67Stack1).
            recoveredBlock67PC := 142.
        ].
        recoveredBlock67Step = 142 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack0.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

