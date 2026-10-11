"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cb44; bytecode file offset 0x92209c"
!SGMdProjectInterface methodsFor: 'recovered'!
mdlKind
    ^'Project'
! !

"ASDBase.ic method 0x2003e9f8; bytecode file offset 0x93bf94"
!SGMdProjectInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054dbc; bytecode file offset 0x952a9c"
!SGMdProjectInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlProjectInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070b84; bytecode file offset 0x96d580"
!SGMdProjectInterface methodsFor: 'recovered'!
osLogic
    | recoveredValue0 |
    recoveredValue0 := osLogic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200711a4; bytecode file offset 0x96da70"
!SGMdProjectInterface methodsFor: 'recovered'!
importInterfaces
    | recoveredValue0 |
    recoveredValue0 := importInterfaces.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200711d8; bytecode file offset 0x96db0c"
!SGMdProjectInterface methodsFor: 'recovered'!
osFilename
    | recoveredValue0 |
    recoveredValue0 := osFilename.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071294; bytecode file offset 0x96db68"
!SGMdProjectInterface methodsFor: 'recovered'!
ehooksConfig
    | recoveredValue0 |
    recoveredValue0 := ehooksConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007873c; bytecode file offset 0x9757c8"
!SGMdProjectInterface methodsFor: 'recovered'!
isMdlProject
    ^true
! !

"ASDBase.ic method 0x2007f814; bytecode file offset 0x97c330"
!SGMdProjectInterface methodsFor: 'recovered'!
isMdlModule
    ^false
! !

"ASDBase.ic method 0x200857bc; bytecode file offset 0x982078"
!SGMdProjectInterface methodsFor: 'recovered'!
genSixKind: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expander.
    (recoveredValue1) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x200c71fc; bytecode file offset 0x9c3c10"
!SGMdProjectInterface methodsFor: 'recovered'!
osLogic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osLogic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7428; bytecode file offset 0x9c3d64"
!SGMdProjectInterface methodsFor: 'recovered'!
allMsgTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allMsgTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c75b8; bytecode file offset 0x9c3efc"
!SGMdProjectInterface methodsFor: 'recovered'!
sixFormulas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixFormulas := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7694; bytecode file offset 0x9c3fa0"
!SGMdProjectInterface methodsFor: 'recovered'!
sixEnumTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixEnumTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7748; bytecode file offset 0x9c400c"
!SGMdProjectInterface methodsFor: 'recovered'!
sixStructTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixCharTableStructs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c77b4; bytecode file offset 0x9c4068"
!SGMdProjectInterface methodsFor: 'recovered'!
importInterfaces: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    importInterfaces := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c77e0; bytecode file offset 0x9c40ac"
!SGMdProjectInterface methodsFor: 'recovered'!
osFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osFilename := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7824; bytecode file offset 0x9c40e0"
!SGMdProjectInterface methodsFor: 'recovered'!
ehooksConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ehooksConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20104628; bytecode file offset 0xa00fd0"
!SGMdProjectInterface methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('symbols') with: ('mappings') with: ('bindings').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011a244; bytecode file offset 0xa16b44"
!SGMdProjectInterface methodsFor: 'recovered'!
classVarsForCT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c885cArg1 | 
    | block280c885cValue0 block280c885cValue1 block280c885cValue2 |
    block280c885cValue0 := block280c885cArg1.
    block280c885cValue1 := (block280c885cValue0) attributes.
    block280c885cValue2 := (block280c885cValue1) isCgAttrContainsCTBlock.
    block280c885cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128fd0; bytecode file offset 0xa258cc"
!SGMdProjectInterface methodsFor: 'recovered'!
symbols
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := symbols.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            symbols := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := symbols.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ae90; bytecode file offset 0xa2775c"
!SGMdProjectInterface methodsFor: 'recovered'!
bindings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bindings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgSet.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            bindings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := bindings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b020; bytecode file offset 0xa278dc"
!SGMdProjectInterface methodsFor: 'recovered'!
sixFormulas
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sixFormulas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            sixFormulas := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := sixFormulas.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b044; bytecode file offset 0xa27900"
!SGMdProjectInterface methodsFor: 'recovered'!
sixEnumTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sixEnumTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            sixEnumTypes := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := sixEnumTypes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b068; bytecode file offset 0xa27934"
!SGMdProjectInterface methodsFor: 'recovered'!
sixStructTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sixCharTableStructs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            sixCharTableStructs := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := sixCharTableStructs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b1fc; bytecode file offset 0xa27ab8"
!SGMdProjectInterface methodsFor: 'recovered'!
allMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allMappings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgSet.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            allMappings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := allMappings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015dfd0; bytecode file offset 0xa5a890"
!SGMdProjectInterface methodsFor: 'recovered'!
allMsgTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := allMsgTypes.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) error: ('ASCET internal error --- missing message table').
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := allMsgTypes.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2020391c; bytecode file offset 0xb001ec"
!SGMdProjectInterface methodsFor: 'recovered'!
getMsgUsageInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) allMsgTypes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := SGCgMessageUsageInfo.
    recoveredBlock9Value1 := (recoveredBlock9Value0) create.
    recoveredBlock9Value2 := recoveredBlock9Value1.
    recoveredBlock9Value3 := recoveredArg1.
    recoveredBlock9Value4 := (recoveredBlock9Value3) attributes.
    (recoveredBlock9Value2) flowDirectionFromAttributes: (recoveredBlock9Value4).
    recoveredBlock9Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2028b8b4; bytecode file offset 0xb88198"
!SGMdProjectInterface methodsFor: 'recovered'!
initCtVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Rl') == ('Call_68336').
    super initCtVariables.
    recoveredValue1 := (self) generator.
    recoveredValue2 := (self) classVarsForCT.
    recoveredValue3 := (recoveredValue1) sortElements: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 |
    recoveredBlock22Value0 := (self) expander.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) ileName.
    recoveredBlock22Value3 := recoveredBlock22Arg1.
    recoveredBlock22Value4 := (recoveredBlock22Value3) mdlClass.
    recoveredBlock22Value5 := (recoveredBlock22Value0) initCTClassVar: (recoveredBlock22Value2) in: (recoveredBlock22Value4).
    recoveredBlock22Value5
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202b675c; bytecode file offset 0xbb3044"
!SGMdProjectInterface methodsFor: 'recovered'!
collectAllUsedTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) autosarStrategy.
    (recoveredValue2) instanceAnalysis: (self).
    recoveredValue3 := SGGeneratorFactory.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := (recoveredValue4) createTypesCollector.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) anyMdlNode: (self).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) getUsedTypesTable.
    usedTypesTable := recoveredValue8.
    recoveredValue9 := SGGeneratorFactory.
    recoveredValue10 := (recoveredValue9) create.
    recoveredValue11 := (recoveredValue10) genContext.
    recoveredValue12 := (recoveredValue11) typeDefinitions.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) usedTypesTable.
    (recoveredValue12) usedTypesTable: (recoveredValue14).
    recoveredValue15 := SGGeneratorFactory.
    recoveredValue16 := (recoveredValue15) create.
    recoveredValue17 := (recoveredValue16) autosarTypesStrategy.
    (recoveredValue17) visitMdlNode: (self).
    ^self
! !

