"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066bb4; bytecode file offset 0x9646f8"
!SGProjectLogic methodsFor: 'recovered'!
osLogic
    | recoveredValue0 |
    recoveredValue0 := osLogic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f6c; bytecode file offset 0x965b90"
!SGProjectLogic methodsFor: 'recovered'!
topHybridBlockKey
    | recoveredValue0 |
    recoveredValue0 := topHybridBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074a9c; bytecode file offset 0x9757c8"
!SGProjectLogic methodsFor: 'recovered'!
isProjectLogic
    ^true
! !

"ASDBase.ic method 0x20085534; bytecode file offset 0x981e1c"
!SGProjectLogic methodsFor: 'recovered'!
topHybridBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    topHybridBlock := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20093630; bytecode file offset 0x98ffa4"
!SGProjectLogic methodsFor: 'recovered'!
endTimeMeasureProcessName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := ('endTimeMeasure_') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200936d0; bytecode file offset 0x98ffa4"
!SGProjectLogic methodsFor: 'recovered'!
startTimeMeasureProcessName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := ('startTimeMeasure_') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bf0e8; bytecode file offset 0x9bc0b4"
!SGProjectLogic methodsFor: 'recovered'!
osLogic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osLogic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d0764; bytecode file offset 0x9cd3a0"
!SGProjectLogic methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_68731').
    recoveredValue1 := (self) topHybridBlockCreateIfNil.
    recoveredValue2 := (recoveredValue1) currentMethod.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f2038; bytecode file offset 0x9ee95c"
!SGProjectLogic methodsFor: 'recovered'!
analyzeSyntax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_68731').
    recoveredValue1 := (self) topHybridBlockCreateIfNil.
    (recoveredValue1) analyzeSyntax.
    ^self
! !

"ASDBase.ic method 0x200f2080; bytecode file offset 0x9ee95c"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_68731').
    recoveredValue1 := (self) topHybridBlockCreateIfNil.
    (recoveredValue1) buildMdlMethods.
    ^self
! !

"ASDBase.ic method 0x200f9e54; bytecode file offset 0x9f6778"
!SGProjectLogic methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    osLogic := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200fbfd8; bytecode file offset 0x9f8898"
!SGProjectLogic methodsFor: 'recovered'!
topHybridBlockIfNil: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_68731').
    recoveredValue1 := topHybridBlock.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getObjectIfUndefined: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010d028; bytecode file offset 0xa098ec"
!SGProjectLogic methodsFor: 'recovered'!
createLogicMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_68731').
    recoveredValue1 := (self) topHybridBlockCreateIfNil.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) createLogicMethods: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014e2ac; bytecode file offset 0xa4ab70"
!SGProjectLogic methodsFor: 'recovered'!
topHybridBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_68731'.
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
            recoveredStack1 := [:block280ccdb0Arg1 | 
    nil
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) topHybridBlockIfNil: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20151cc8; bytecode file offset 0xa4e588"
!SGProjectLogic methodsFor: 'recovered'!
dbXmlClearModifyRecursive
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super dbXmlClearModifyRecursive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := topHybridBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := topHybridBlock.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) clearModify.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015aec8; bytecode file offset 0xa57784"
!SGProjectLogic methodsFor: 'recovered'!
copyOSLogicToTargetType: recoveredArg1 fromTargetType: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicBasicForKey: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyOSLogic: (recoveredStack1) toVariantKey: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20182aa0; bytecode file offset 0xa7f36c"
!SGProjectLogic methodsFor: 'recovered'!
analyze
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Call_68731'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) topHybridBlockCreateIfNil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) analyze.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217f60; bytecode file offset 0xb14838"
!SGProjectLogic methodsFor: 'recovered'!
topHybridBlockCreateIfNil
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_68731').
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := SGTopHybridBlock.
    recoveredBlock10Value1 := (recoveredBlock10Value0) create.
    (self) topHybridBlock: (recoveredBlock10Value1).
    recoveredBlock10Value2 := (self) project.
    (recoveredBlock10Value2) recreateLogicModel.
    recoveredBlock10Value3 := (self) topHybridBlock.
    recoveredBlock10Value3
].
    recoveredValue2 := (self) topHybridBlockIfNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20233e7c; bytecode file offset 0xb30740"
!SGProjectLogic methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := topHybridBlock.
    recoveredValue2 := (recoveredValue1) dbObject.
    (recoveredValue0) add: (recoveredValue2).
    recoveredValue3 := osLogic.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) dbObject.
    recoveredBlock15Value3 := (recoveredBlock15Value0) add: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20233fc8; bytecode file offset 0xb3089c"
!SGProjectLogic methodsFor: 'recovered'!
osLogicForTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) osLogicKey.
    recoveredValue2 := (self) osLogicForKey: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) osConfigSettings.
    recoveredBlock9Value2 := SGOsConfigOptions.
    recoveredBlock9Value3 := (recoveredBlock9Value2) create.
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := (recoveredBlock9Value3) loadSystemDefaults: (recoveredBlock9Value4).
    (recoveredBlock9Value1) updateWithSystemDefaults: (recoveredBlock9Value5).
    recoveredBlock9Value6 := recoveredBlock9Arg1.
    ^recoveredBlock9Value6
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

"ASDBase.ic method 0x202443a0; bytecode file offset 0xb40c60"
!SGProjectLogic methodsFor: 'recovered'!
osLogicForKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) osLogicBasicForKey: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) osConfigSettingsCheckExistence.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 29] ifFalse: [recoveredBlock12PC := 26].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) notNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024f380; bytecode file offset 0xb4bc64"
!SGProjectLogic methodsFor: 'recovered'!
initOSLogicForPlatform: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SGOperatingSystemLogic.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) target.
    recoveredValue3 := (recoveredValue0) createForTarget: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) osLogic.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) osLogicKey.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) asRBDBPartOfChild.
    (recoveredValue4) at: (recoveredValue6) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) osConfigSettings.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) targetIdentifier.
    (recoveredValue10) target: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) osConfigSettings.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) osIdentifier.
    (recoveredValue14) operatingSystem: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202ac910; bytecode file offset 0xba91f0"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlDeclarations
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_68731'.
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
            recoveredStack0 := (recoveredStack0) topHybridBlockCreateIfNil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) buildMdlDeclarations.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForTarget: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGOperatingSystemLogic.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForTarget: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) buildMdlMonitorProcessDecls: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) buildMdlMessageCopyProcessDecls: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20324cd0; bytecode file offset 0xc215a4"
!SGProjectLogic methodsFor: 'recovered'!
osLogicBasicForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
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
            recoveredBlock21Stack2 := recoveredArg1.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack3 := [].
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack4 := [:block280ebfc8Arg1 | 
    | block280ebfc8Stack0 block280ebfc8Stack1 block280ebfc8Stack2 block280ebfc8Stack3 block280ebfc8PC block280ebfc8Step block280ebfc8Done block280ebfc8Result |
    block280ebfc8Stack0 := self.
    block280ebfc8PC := 4.
    block280ebfc8Done := false.
    [block280ebfc8Done not] whileTrue: [
        block280ebfc8Step := block280ebfc8PC.
        block280ebfc8Step = 4 ifTrue: [
            block280ebfc8Stack1 := block280ebfc8Arg1.
            block280ebfc8PC := 5.
        ].
        block280ebfc8Step = 5 ifTrue: [
            block280ebfc8Stack2 := [:block280ebfecArg1 | 
    nil
].
            block280ebfc8PC := 7.
        ].
        block280ebfc8Step = 7 ifTrue: [
            block280ebfc8PC := 12.
        ].
        block280ebfc8Step = 12 ifTrue: [
            block280ebfc8Stack1 := (block280ebfc8Stack1) getObjectIfUndefined: (block280ebfc8Stack2).
            block280ebfc8PC := 14.
        ].
        block280ebfc8Step = 14 ifTrue: [
            block280ebfc8Result := block280ebfc8Stack1.
            block280ebfc8Done := true.
        ].
    ].
    block280ebfc8Result
].
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) ifAbsent: (recoveredBlock21Stack3) ifPresent: (recoveredBlock21Stack4).
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            ^recoveredBlock21Stack1
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a444; bytecode file offset 0xc56d28"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlMonitorProcessDecls: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) enableMonitoring.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
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
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) hasMonitoringVariables.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 61].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) mdlBuilder.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) startTimeMeasureProcessName: (recoveredBlock23Stack4).
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            (recoveredBlock23Stack2) processDecl: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            (recoveredBlock23Stack2) endProcessDecl.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) endTimeMeasureProcessName: (recoveredBlock23Stack4).
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            (recoveredBlock23Stack2) processDecl: (recoveredBlock23Stack3).
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) endProcessDecl.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036de18; bytecode file offset 0xc6a704"
!SGProjectLogic methodsFor: 'recovered'!
copyOSLogic: recoveredArg1 toVariantKey: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForKey: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) copyContentsTo: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) checkPriorityGroup.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := TGTarget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTarget: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrototypingTarget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) coopLevels.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) osConfigSettings.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) coopLevelsMaximum: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) coopLevels: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) preempLevels.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) osConfigSettings.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) preempLevelsMaximum: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) preempLevels: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bfb94; bytecode file offset 0xcbc490"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlMessageCopyProcesses: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessageCopyNonOptCopyTask.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) triggerObject.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isInitTrigger.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 77] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) mdlBuilder.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack3 := SGMdTask.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) name.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) rcvMsgCopiesProcessName: (recoveredBlock19Stack4).
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            (recoveredBlock19Stack2) method: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            (recoveredBlock19Stack2) block.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            (recoveredBlock19Stack2) endBlock.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            (recoveredBlock19Stack2) endMethod.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack3 := SGMdTask.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) name.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) sndMsgCopiesProcessName: (recoveredBlock19Stack4).
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            (recoveredBlock19Stack2) method: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            (recoveredBlock19Stack2) block.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            (recoveredBlock19Stack2) endBlock.
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) endMethod.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d5d70; bytecode file offset 0xcd2674"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlMessageCopyProcessDecls: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessageCopyNonOptCopyTask.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) triggerObject.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isInitTrigger.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 81] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) mdlBuilder.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack3 := nil.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            (recoveredBlock19Stack2) source: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            (recoveredBlock19Stack2) messageUsageAllowed.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            (recoveredBlock19Stack2) msgCopyReceiveProcess.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack3 := SGMdTask.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) name.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) rcvMsgCopiesProcessName: (recoveredBlock19Stack4).
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            (recoveredBlock19Stack2) processDecl: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            (recoveredBlock19Stack2) endProcessDecl.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            (recoveredBlock19Stack2) messageUsageAllowed.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            (recoveredBlock19Stack2) msgCopySendProcess.
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack3 := SGMdTask.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) name.
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) sndMsgCopiesProcessName: (recoveredBlock19Stack4).
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            (recoveredBlock19Stack2) processDecl: (recoveredBlock19Stack3).
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) endProcessDecl.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048b6d4; bytecode file offset 0xd88004"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlOperatingSystem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForTarget: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SGOperatingSystemLogic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForTarget: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicManager.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMdlClassType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) beginOperatingSystem: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLegacyHwcVariable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) notNil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) mdlContainsLegacyHwcVariable: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLegacyHwxProjectFiles.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) mdlContainsLegacyHwxProjectFiles: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryOSEK.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'ASC_ES910'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsConfigurableTickDuration.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'ToDo'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateTickDuration: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 100000.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) tickDuration: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) isTimebaseTick.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) enableTicks: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) tickDuration.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) tickDuration: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) enableRTA.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) buildMdlMonitorProcesses: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) buildMdlMessageCopyProcesses: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) buildMdl: (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) endOperatingSystem.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20563ac4; bytecode file offset 0xe60414"
!SGProjectLogic methodsFor: 'recovered'!
buildMdlMonitorProcesses: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) enableMonitoring.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
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
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) hasMonitoringVariables.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 232].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) mdlBuilder.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) startTimeMeasureProcessName: (recoveredBlock23Stack4).
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            (recoveredBlock23Stack2) method: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            (recoveredBlock23Stack2) block.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) dtVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) cycleStartTimeVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack3 := 'timeMeasurementStart (&%1,&%2)'.
            recoveredBlock23PC := 73.
        ].
        recoveredBlock23Step = 73 ifTrue: [
            recoveredBlock23Stack4 := 2.
            recoveredBlock23PC := 75.
        ].
        recoveredBlock23Step = 75 ifTrue: [
            (recoveredBlock23Stack2) exprANSIC: (recoveredBlock23Stack3) numOfExprs: (recoveredBlock23Stack4).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            (recoveredBlock23Stack2) endStmnt.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            (recoveredBlock23Stack2) endBlock.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            (recoveredBlock23Stack2) endMethod.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 88.
        ].
        recoveredBlock23Step = 88 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 89.
        ].
        recoveredBlock23Step = 89 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) endTimeMeasureProcessName: (recoveredBlock23Stack4).
            recoveredBlock23PC := 91.
        ].
        recoveredBlock23Step = 91 ifTrue: [
            (recoveredBlock23Stack2) method: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            (recoveredBlock23Stack2) block.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 98.
        ].
        recoveredBlock23Step = 98 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 100.
        ].
        recoveredBlock23Step = 100 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 101.
        ].
        recoveredBlock23Step = 101 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) cycleStartTimeVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 103.
        ].
        recoveredBlock23Step = 103 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 106.
        ].
        recoveredBlock23Step = 106 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 107.
        ].
        recoveredBlock23Step = 107 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 109.
        ].
        recoveredBlock23Step = 109 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 110.
        ].
        recoveredBlock23Step = 110 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) cycleTimeVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 112.
        ].
        recoveredBlock23Step = 112 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 115.
        ].
        recoveredBlock23Step = 115 ifTrue: [
            recoveredBlock23Stack3 := 'timeMeasurementStop (%1,&%2)'.
            recoveredBlock23PC := 117.
        ].
        recoveredBlock23Step = 117 ifTrue: [
            recoveredBlock23Stack4 := 2.
            recoveredBlock23PC := 119.
        ].
        recoveredBlock23Step = 119 ifTrue: [
            (recoveredBlock23Stack2) exprANSIC: (recoveredBlock23Stack3) numOfExprs: (recoveredBlock23Stack4).
            recoveredBlock23PC := 121.
        ].
        recoveredBlock23Step = 121 ifTrue: [
            (recoveredBlock23Stack1) endStmnt.
            recoveredBlock23PC := 123.
        ].
        recoveredBlock23Step = 123 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 124.
        ].
        recoveredBlock23Step = 124 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) triggerObject.
            recoveredBlock23PC := 126.
        ].
        recoveredBlock23Step = 126 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) isTimerTrigger.
            recoveredBlock23PC := 128.
        ].
        recoveredBlock23Step = 128 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 132] ifFalse: [recoveredBlock23PC := 224].
        ].
        recoveredBlock23Step = 132 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 133.
        ].
        recoveredBlock23Step = 133 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) mdlBuilder.
            recoveredBlock23PC := 135.
        ].
        recoveredBlock23Step = 135 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 136.
        ].
        recoveredBlock23Step = 136 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 137.
        ].
        recoveredBlock23Step = 137 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 139.
        ].
        recoveredBlock23Step = 139 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 140.
        ].
        recoveredBlock23Step = 140 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) cycleTimeVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 142.
        ].
        recoveredBlock23Step = 142 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 145.
        ].
        recoveredBlock23Step = 145 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 146.
        ].
        recoveredBlock23Step = 146 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 148.
        ].
        recoveredBlock23Step = 148 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 149.
        ].
        recoveredBlock23Step = 149 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) dtVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 151.
        ].
        recoveredBlock23Step = 151 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 154.
        ].
        recoveredBlock23Step = 154 ifTrue: [
            (recoveredBlock23Stack2) gt.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 157.
        ].
        recoveredBlock23Step = 157 ifTrue: [
            recoveredBlock23Stack3 := 'asdWriteUserDebug ("Task <'.
            recoveredBlock23PC := 159.
        ].
        recoveredBlock23Step = 159 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 160.
        ].
        recoveredBlock23Step = 160 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) name.
            recoveredBlock23PC := 162.
        ].
        recoveredBlock23Step = 162 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) , (recoveredBlock23Stack4).
            recoveredBlock23PC := 164.
        ].
        recoveredBlock23Step = 164 ifTrue: [
            recoveredBlock23Stack4 := '> ('.
            recoveredBlock23PC := 166.
        ].
        recoveredBlock23Step = 166 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) , (recoveredBlock23Stack4).
            recoveredBlock23PC := 168.
        ].
        recoveredBlock23Step = 168 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 169.
        ].
        recoveredBlock23Step = 169 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) id.
            recoveredBlock23PC := 171.
        ].
        recoveredBlock23Step = 171 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) printString.
            recoveredBlock23PC := 173.
        ].
        recoveredBlock23Step = 173 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) , (recoveredBlock23Stack4).
            recoveredBlock23PC := 175.
        ].
        recoveredBlock23Step = 175 ifTrue: [
            recoveredBlock23Stack4 := ')'.
            recoveredBlock23PC := 177.
        ].
        recoveredBlock23Step = 177 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) , (recoveredBlock23Stack4).
            recoveredBlock23PC := 179.
        ].
        recoveredBlock23Step = 179 ifTrue: [
            (recoveredBlock23Stack2) exprANSIC: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 182.
        ].
        recoveredBlock23Step = 182 ifTrue: [
            recoveredBlock23Stack3 := ' violates cycle time %f for the %u-th time; current run time: %f\n"'.
            recoveredBlock23PC := 184.
        ].
        recoveredBlock23Step = 184 ifTrue: [
            (recoveredBlock23Stack2) exprANSIC: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 187.
        ].
        recoveredBlock23Step = 187 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 188.
        ].
        recoveredBlock23Step = 188 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 190.
        ].
        recoveredBlock23Step = 190 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 191.
        ].
        recoveredBlock23Step = 191 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) dtVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 193.
        ].
        recoveredBlock23Step = 193 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 196.
        ].
        recoveredBlock23Step = 196 ifTrue: [
            recoveredBlock23Stack3 := 'runtime_violation'.
            recoveredBlock23PC := 198.
        ].
        recoveredBlock23Step = 198 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 201.
        ].
        recoveredBlock23Step = 201 ifTrue: [
            (recoveredBlock23Stack2) postInc.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 204.
        ].
        recoveredBlock23Step = 204 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 205.
        ].
        recoveredBlock23Step = 205 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) project.
            recoveredBlock23PC := 207.
        ].
        recoveredBlock23Step = 207 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 208.
        ].
        recoveredBlock23Step = 208 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) cycleTimeVariableNameFor: (recoveredBlock23Stack4).
            recoveredBlock23PC := 210.
        ].
        recoveredBlock23Step = 210 ifTrue: [
            (recoveredBlock23Stack2) id: (recoveredBlock23Stack3).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 213.
        ].
        recoveredBlock23Step = 213 ifTrue: [
            recoveredBlock23Stack3 := '%1%2, %3, (int)%4, %5)'.
            recoveredBlock23PC := 215.
        ].
        recoveredBlock23Step = 215 ifTrue: [
            recoveredBlock23Stack4 := 5.
            recoveredBlock23PC := 217.
        ].
        recoveredBlock23Step = 217 ifTrue: [
            (recoveredBlock23Stack2) exprANSIC: (recoveredBlock23Stack3) numOfExprs: (recoveredBlock23Stack4).
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 220.
        ].
        recoveredBlock23Step = 220 ifTrue: [
            (recoveredBlock23Stack2) endStmnt.
            recoveredBlock23PC := 222.
        ].
        recoveredBlock23Step = 222 ifTrue: [
            (recoveredBlock23Stack1) if.
            recoveredBlock23PC := 224.
        ].
        recoveredBlock23Step = 224 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 225.
        ].
        recoveredBlock23Step = 225 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) mdlBuilder.
            recoveredBlock23PC := 227.
        ].
        recoveredBlock23Step = 227 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 228.
        ].
        recoveredBlock23Step = 228 ifTrue: [
            (recoveredBlock23Stack2) endBlock.
            recoveredBlock23PC := 230.
        ].
        recoveredBlock23Step = 230 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) endMethod.
            recoveredBlock23PC := 232.
        ].
        recoveredBlock23Step = 232 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

