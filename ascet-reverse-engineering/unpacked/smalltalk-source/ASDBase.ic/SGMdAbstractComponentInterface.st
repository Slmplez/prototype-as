"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004b80; bytecode file offset 0x90206c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
setValuesToDataset: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007658; bytecode file offset 0x908be4"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
executableDecls
    | recoveredValue0 |
    recoveredValue0 := (self) methods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001af30; bytecode file offset 0x92209c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
processDecls
    ^#()
! !

"ASDBase.ic method 0x2002cf04; bytecode file offset 0x934580"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
isMdlServiceRoutineComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizations.
    recoveredValue1 := (recoveredValue0) isCgServiceRoutineComponent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e054; bytecode file offset 0x934580"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
isMdlPrototype
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizations.
    recoveredValue1 := (recoveredValue0) isCgPrototype.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031184; bytecode file offset 0x934580"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
csNameSpace
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClassType.
    recoveredValue1 := (recoveredValue0) csNameSpace.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200491ac; bytecode file offset 0x945a60"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
resetClassVars
    classVars := nil.
    ^self
! !

"ASDBase.ic method 0x2004a19c; bytecode file offset 0x947128"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
hasCharTableTypedClassVars
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classVars.
    recoveredValue1 := (self) hasCharTableTypedVars: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055b54; bytecode file offset 0x952a9c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAbstractComponentInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062988; bytecode file offset 0x95f8b0"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
sortedImplCasts
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (self) implCasts.
    recoveredValue2 := (recoveredValue0) sortElements: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200703f4; bytecode file offset 0x96ce40"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
hardPrerequisites
    | recoveredValue0 |
    recoveredValue0 := hardPrerequisites.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070708; bytecode file offset 0x96d06c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
dataSetReferenceAnalysisMap
    | recoveredValue0 |
    recoveredValue0 := dataSetReferenceAnalysisMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007869c; bytecode file offset 0x9757c8"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
isMdlComponentInterface
    ^true
! !

"ASDBase.ic method 0x2007b3f4; bytecode file offset 0x97c330"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
isMdlDataType
    ^false
! !

"ASDBase.ic method 0x20086e90; bytecode file offset 0x98376c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) lookup: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20097a14; bytecode file offset 0x995850"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
restoreGenName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClassType.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) asModuleName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200af49c; bytecode file offset 0x9abd78"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 imports: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := (self) deepLookup: (recoveredValue0) expr: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c6b2c; bytecode file offset 0x9c3470"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
hardPrerequisites: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hardPrerequisites := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb4d4; bytecode file offset 0x9e7da0"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
decl: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    methods := nil.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super decl: (recoveredValue0) id: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200eb4e4; bytecode file offset 0x9e7da0"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
define: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    methods := nil.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super define: (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fa4d4; bytecode file offset 0x9f6d98"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    dataSetReferenceAnalysisMap := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20101b3c; bytecode file offset 0x9fe3f8"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
decl: recoveredArg1 id: recoveredArg2 ifFail: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    methods := nil.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super decl: (recoveredValue0) id: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011a228; bytecode file offset 0xa16b44"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
instVarsForCT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8838Arg1 | 
    | block280c8838Value0 block280c8838Value1 block280c8838Value2 |
    block280c8838Value0 := block280c8838Arg1.
    block280c8838Value1 := (block280c8838Value0) attributes.
    block280c8838Value2 := (block280c8838Value1) isCgAttrContainsCTBlock.
    block280c8838Value2
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

"ASDBase.ic method 0x20122a40; bytecode file offset 0xa1f300"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
addImplCast: recoveredArg1 at: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isMdlImplCastDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) implCastTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ab7c; bytecode file offset 0xa27488"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
implCastTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := implCastTable.
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
            implCastTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := implCastTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012bce8; bytecode file offset 0xa285bc"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
hasMdlRcvInArgList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) optimizations.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgSingleInstance.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgPrototype.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012e674; bytecode file offset 0xa2b0c4"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
implCasts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280caa1cArg1 | 
    | block280caa1cValue0 block280caa1cValue1 |
    block280caa1cValue0 := block280caa1cArg1.
    block280caa1cValue1 := (block280caa1cValue0) isMdlImplCastDecl.
    block280caa1cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e78c; bytecode file offset 0xa2b0c4"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
modelInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cab84Arg1 | 
    | block280cab84Value0 block280cab84Value1 |
    block280cab84Value0 := block280cab84Arg1.
    block280cab84Value1 := (block280cab84Value0) isMdlInstVarDecl.
    block280cab84Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201311dc; bytecode file offset 0xa2da9c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
needsForwardDeclForType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) hardPrerequisites.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hardPrerequisites.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20136c24; bytecode file offset 0xa334ec"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
analysisInfoAsXML
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SimpleDOMDocument.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) analysisInfoAsDOM: (recoveredValue3).
    (recoveredValue2) rootTag: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) abtXmlPrintString.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20150d88; bytecode file offset 0xa4d694"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
macros
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cd5d8Arg1 | 
    | block280cd5d8Value0 block280cd5d8Value1 |
    block280cd5d8Value0 := block280cd5d8Arg1.
    block280cd5d8Value1 := (block280cd5d8Value0) isMdlMacro.
    block280cd5d8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016fc88; bytecode file offset 0xa6c544"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := methods.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) selectMethodsFromTable.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    methods := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := methods.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a1288; bytecode file offset 0xa9db64"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
isEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVars.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVars.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a2d2c; bytecode file offset 0xa9f600"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
allRes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) classVars.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d2b34Arg1 | 
    | block280d2b34Value0 block280d2b34Value1 block280d2b34Value2 |
    block280d2b34Value0 := block280d2b34Arg1.
    block280d2b34Value1 := (block280d2b34Value0) mdlClass.
    block280d2b34Value2 := (block280d2b34Value1) isMdlResource.
    block280d2b34Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca218; bytecode file offset 0xac6ae0"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
hasInstanceVars
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBaseClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d18a8; bytecode file offset 0xace17c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
generateMemorySizeOfElements: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) createMemorySizeWalker.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) mdlClasses: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) addRootPathNode.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) walkClassInterface: (self).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) removePathNode.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) getMemorySizeOfElements.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d730c; bytecode file offset 0xad3be0"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
initCtVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (self) instVarsForCT.
    recoveredValue2 := (recoveredValue0) sortElements: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := (self) expander.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) ileName.
    recoveredBlock8Value3 := recoveredBlock8Arg1.
    recoveredBlock8Value4 := (recoveredBlock8Value3) mdlClass.
    recoveredBlock8Value5 := (recoveredBlock8Value0) initCTInstVar: (recoveredBlock8Value2) in: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201fd6e8; bytecode file offset 0xaf9fb4"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
classVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := classVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbols.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d8774Arg1 | 
    | block280d8774Value0 block280d8774Value1 |
    block280d8774Value0 := block280d8774Arg1.
    block280d8774Value1 := (block280d8774Value0) isMdlClassVarDecl.
    block280d8774Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            classVars := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := classVars.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021fe24; bytecode file offset 0xb1c6f0"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
bindingVarsTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) classVars.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) mdlKey.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) put: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024324c; bytecode file offset 0xb3fb20"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
allImplCastLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) implCastTable.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    (recoveredBlock12Value1) nextPutAll: (recoveredBlock12Value2).
    recoveredBlock12Value3 := (recoveredBlock12Value0) space.
    recoveredBlock12Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20254c80; bytecode file offset 0xb51548"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
hasExecutablesToBeGenerated
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) symbols.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMdlMethodDecl.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMdlProcessDecl.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 33].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMdlMacro.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 33] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20291d38; bytecode file offset 0xb8e60c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
instVarInitValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) modelInstVars.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) mdlKey.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) initValue.
    recoveredBlock11Value5 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) put: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) at: ('Data') put: (recoveredValue7).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202c8c98; bytecode file offset 0xbc5564"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
allElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) instanceVars.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) add: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) classVars.
    recoveredValue5 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) add: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202ebe0c; bytecode file offset 0xbe86f4"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
genSixKind: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'kind'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'asd:class'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) writeHeaderEnd.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'kind'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'asd:module'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) writeHeaderEnd.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'asd:implementation'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) implLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) putSixPathParameterName: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'asd:dataSet'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataLabel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) putSixPathParameterName: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034cd50; bytecode file offset 0xc49620"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
allMsgs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) instanceVars.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isMdlMessage.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 31].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) classVars.
    recoveredValue5 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isMdlMessage.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 50] ifFalse: [recoveredBlock37PC := 57].
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal1.
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) add: (recoveredBlock37Stack2).
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203d718c; bytecode file offset 0xcd3a7c"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
analyzeReferenceInitValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMdReferenceAnalysisCollection.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allElements.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isMdlReference.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 68].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) initValue.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 68] ifFalse: [recoveredBlock11PC := 34].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) initValue.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) rightChild.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlReferenceVarDecl.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block44Arg1 | 
    | recoveredBlock11Block44Value0 recoveredBlock11Block44Value1 recoveredBlock11Block44Value2 recoveredBlock11Block44Value3 recoveredBlock11Block44Value4 recoveredBlock11Block44Value5 |
    recoveredBlock11Block44Value0 := recoveredLocal1.
    recoveredBlock11Block44Value1 := recoveredBlock11Block44Arg1.
    recoveredBlock11Block44Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block44Value3 := recoveredBlock11Arg1.
    recoveredBlock11Block44Value4 := (recoveredBlock11Block44Value3) source.
    recoveredBlock11Block44Value5 := (recoveredBlock11Block44Value0) addAssignmentOf: (recoveredBlock11Block44Value1) to: (recoveredBlock11Block44Value2) source: (recoveredBlock11Block44Value4).
    recoveredBlock11Block44Value5
].
            recoveredBlock11PC := 66.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) ifNotNil: (recoveredBlock11Stack2).
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) dataSetReferenceAnalysisMap.
    recoveredValue5 := (self) currentDataSet.
    recoveredValue6 := (recoveredValue5) initId.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue4) at: (recoveredValue6) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x204b0bc4; bytecode file offset 0xdad4e4"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
analysisInfoAsDOM: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) xmlGlobalAnalysisName.
    recoveredValue3 := (recoveredValue0) createElement: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (self) mdlClassType.
    recoveredValue6 := (recoveredValue5) className.
    (recoveredValue4) setAttribute: ('scopeClassName') value: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) mdlClassType.
    recoveredValue9 := (recoveredValue8) implName.
    (recoveredValue7) setAttribute: ('scopeImplName') value: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) mdlClassType.
    recoveredValue12 := (recoveredValue11) classId.
    (recoveredValue10) setAttribute: ('scopeClassId') value: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (self) mdlClassType.
    recoveredValue15 := (recoveredValue14) implId.
    (recoveredValue13) setAttribute: ('scopeImplId') value: (recoveredValue15).
    recoveredValue16 := (self) methods.
    recoveredValue17 := (recoveredValue16) asSet.
    recoveredValue18 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66Stack4 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := nil.
            recoveredBlock66PC := 73.
        ].
        recoveredBlock66Step = 73 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 74.
        ].
        recoveredBlock66Step = 74 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) isMdlPrivateAdditional.
            recoveredBlock66PC := 76.
        ].
        recoveredBlock66Step = 76 ifTrue: [
            (recoveredBlock66Stack2) ifTrue: [recoveredBlock66PC := 94] ifFalse: [recoveredBlock66PC := 80].
        ].
        recoveredBlock66Step = 80 ifTrue: [
            recoveredBlock66PC := 81.
        ].
        recoveredBlock66Step = 81 ifTrue: [
            recoveredBlock66Stack1 := recoveredLocal2.
            recoveredBlock66PC := 84.
        ].
        recoveredBlock66Step = 84 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 85.
        ].
        recoveredBlock66Step = 85 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) analysisInfo.
            recoveredBlock66PC := 87.
        ].
        recoveredBlock66Step = 87 ifTrue: [
            recoveredBlock66Stack3 := recoveredArg1.
            recoveredBlock66PC := 90.
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) asDOM: (recoveredBlock66Stack3).
            recoveredBlock66PC := 92.
        ].
        recoveredBlock66Step = 92 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) appendChild: (recoveredBlock66Stack2).
            recoveredBlock66PC := 94.
        ].
        recoveredBlock66Step = 94 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := (self) dataSetReferenceAnalysisMap.
    recoveredValue20 := [:recoveredBlock100Arg1 :recoveredBlock100Arg2 | 
    | recoveredBlock100Local1 recoveredBlock100Local2 recoveredBlock100Value0 recoveredBlock100Value1 recoveredBlock100Value2 recoveredBlock100Value3 recoveredBlock100Value4 recoveredBlock100Value5 recoveredBlock100Value6 recoveredBlock100Value7 recoveredBlock100Value8 recoveredBlock100Value9 recoveredBlock100Value10 recoveredBlock100Value11 recoveredBlock100Value12 recoveredBlock100Value13 |
    recoveredBlock100Value0 := SGGeneratorFactory.
    recoveredBlock100Value1 := (recoveredBlock100Value0) create.
    recoveredBlock100Value2 := (recoveredBlock100Value1) createGlobalAnalysisInterfaceContext: (self).
    recoveredBlock100Local2 := recoveredBlock100Value2.
    recoveredBlock100Value3 := recoveredBlock100Arg2.
    recoveredBlock100Value4 := recoveredLocal2.
    recoveredBlock100Value5 := recoveredBlock100Local2.
    recoveredBlock100Value6 := (recoveredBlock100Value3) asDOM: (recoveredBlock100Value4) context: (recoveredBlock100Value5).
    recoveredBlock100Local1 := recoveredBlock100Value6.
    recoveredBlock100Value7 := recoveredBlock100Local1.
    recoveredBlock100Value8 := (self) class.
    recoveredBlock100Value9 := (recoveredBlock100Value8) xmlDataSetReferenceAnalysis.
    recoveredBlock100Value10 := recoveredBlock100Arg1.
    (recoveredBlock100Value7) setAttribute: (recoveredBlock100Value9) value: (recoveredBlock100Value10).
    recoveredBlock100Value11 := recoveredLocal2.
    recoveredBlock100Value12 := recoveredBlock100Local1.
    recoveredBlock100Value13 := (recoveredBlock100Value11) appendChild: (recoveredBlock100Value12).
    recoveredBlock100Value13
].
    (recoveredValue19) keysAndValuesDo: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    ^recoveredValue21
! !

"ASDBase.ic method 0x205dfa30; bytecode file offset 0xedc3a8"
!SGMdAbstractComponentInterface methodsFor: 'recovered'!
restoreAnalysisInfo: recoveredArg1 imports: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2811a31cArg1 | 
    | block2811a31cValue0 block2811a31cValue1 block2811a31cValue2 block2811a31cValue3 |
    block2811a31cValue0 := block2811a31cArg1.
    block2811a31cValue1 := (block2811a31cValue0) analysisInfoOrNil.
    block2811a31cValue2 := (block2811a31cValue1) isNil.
    block2811a31cValue3 := (block2811a31cValue2) not.
    block2811a31cValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := AbtXmlDOMParser.
    recoveredBlock32Value1 := (recoveredBlock32Value0) newNonValidatingParser.
    recoveredBlock32Value2 := recoveredArg1.
    recoveredBlock32Value3 := (recoveredBlock32Value2) value.
    recoveredBlock32Value4 := (recoveredBlock32Value1) parse: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := SgmlException.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredBlock52Arg1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) description.
    recoveredBlock52Value2 := (self) mdlFatalExpect: (recoveredBlock52Value1).
    recoveredBlock52Value2
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlGlobalAnalysisName.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'Global Analysis Info root tag must be '.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlGlobalAnalysisName.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) mdlFatalExpect: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Local1 recoveredBlock117Local2 recoveredBlock117Local3 recoveredBlock117Stack0 recoveredBlock117Stack1 recoveredBlock117Stack2 recoveredBlock117Stack3 recoveredBlock117Stack4 recoveredBlock117Stack5 recoveredBlock117Stack6 recoveredBlock117PC recoveredBlock117Step recoveredBlock117Done recoveredBlock117Result |
    recoveredBlock117Stack0 := self.
    recoveredBlock117PC := 124.
    recoveredBlock117Done := false.
    [recoveredBlock117Done not] whileTrue: [
        recoveredBlock117Step := recoveredBlock117PC.
        recoveredBlock117Step = 124 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 127.
        ].
        recoveredBlock117Step = 127 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) name.
            recoveredBlock117PC := 129.
        ].
        recoveredBlock117Step = 129 ifTrue: [
            recoveredBlock117Stack2 := SGMdReferenceAnalysisCollection.
            recoveredBlock117PC := 131.
        ].
        recoveredBlock117Step = 131 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) xmlName.
            recoveredBlock117PC := 133.
        ].
        recoveredBlock117Step = 133 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) = (recoveredBlock117Stack2).
            recoveredBlock117PC := 134.
        ].
        recoveredBlock117Step = 134 ifTrue: [
            (recoveredBlock117Stack1) ifTrue: [recoveredBlock117PC := 138] ifFalse: [recoveredBlock117PC := 210].
        ].
        recoveredBlock117Step = 138 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 141.
        ].
        recoveredBlock117Step = 141 ifTrue: [
            recoveredBlock117Stack2 := self.
            recoveredBlock117PC := 142.
        ].
        recoveredBlock117Step = 142 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) class.
            recoveredBlock117PC := 144.
        ].
        recoveredBlock117Step = 144 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) xmlDataSetReferenceAnalysis.
            recoveredBlock117PC := 146.
        ].
        recoveredBlock117Step = 146 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) getAttribute: (recoveredBlock117Stack2).
            recoveredBlock117PC := 148.
        ].
        recoveredBlock117Step = 148 ifTrue: [
            recoveredBlock117Stack2 := [:recoveredBlock117Block148Arg1 | 
    | recoveredBlock117Block148Value0 recoveredBlock117Block148Value1 recoveredBlock117Block148Value2 recoveredBlock117Block148Value3 |
    recoveredBlock117Block148Value0 := (self) dataSetReferenceAnalysisMap.
    recoveredBlock117Block148Value1 := recoveredBlock117Block148Arg1.
    recoveredBlock117Block148Value2 := [
    | recoveredBlock117Block148Block157Value0 recoveredBlock117Block148Block157Value1 recoveredBlock117Block148Block157Value2 recoveredBlock117Block148Block157Value3 recoveredBlock117Block148Block157Value4 recoveredBlock117Block148Block157Value5 |
    recoveredBlock117Block148Block157Value0 := SGMdReferenceAnalysisCollection.
    recoveredBlock117Block148Block157Value1 := recoveredBlock117Arg1.
    recoveredBlock117Block148Block157Value2 := SGGeneratorFactory.
    recoveredBlock117Block148Block157Value3 := (recoveredBlock117Block148Block157Value2) create.
    recoveredBlock117Block148Block157Value4 := (recoveredBlock117Block148Block157Value3) createGlobalAnalysisInterfaceContext: (self).
    recoveredBlock117Block148Block157Value5 := (recoveredBlock117Block148Block157Value0) fromDOM: (recoveredBlock117Block148Block157Value1) in: (nil) context: (recoveredBlock117Block148Block157Value4).
    recoveredBlock117Block148Block157Value5
].
    recoveredBlock117Block148Value3 := (recoveredBlock117Block148Value0) at: (recoveredBlock117Block148Value1) ifAbsentPut: (recoveredBlock117Block148Value2).
    recoveredBlock117Block148Value3
].
            recoveredBlock117PC := 184.
        ].
        recoveredBlock117Step = 184 ifTrue: [
            recoveredBlock117Stack3 := [
    | recoveredBlock117Block184Value0 recoveredBlock117Block184Value1 recoveredBlock117Block184Value2 recoveredBlock117Block184Value3 recoveredBlock117Block184Value4 |
    recoveredBlock117Block184Value0 := SGMdMethodAnalysisInfo.
    recoveredBlock117Block184Value1 := (recoveredBlock117Block184Value0) xmlDataSetReferenceAnalysis.
    recoveredBlock117Block184Value2 := ('Global Analysis Info for Data Set must have ') , (recoveredBlock117Block184Value1).
    recoveredBlock117Block184Value3 := (recoveredBlock117Block184Value2) , (' attribute').
    recoveredBlock117Block184Value4 := (self) mdlFatalExpect: (recoveredBlock117Block184Value3).
    recoveredBlock117Block184Value4
].
            recoveredBlock117PC := 205.
        ].
        recoveredBlock117Step = 205 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) ifNotNil: (recoveredBlock117Stack2) ifNil: (recoveredBlock117Stack3).
            recoveredBlock117PC := 207.
        ].
        recoveredBlock117Step = 207 ifTrue: [
            recoveredBlock117PC := 328.
        ].
        recoveredBlock117Step = 210 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 213.
        ].
        recoveredBlock117Step = 213 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) name.
            recoveredBlock117PC := 215.
        ].
        recoveredBlock117Step = 215 ifTrue: [
            recoveredBlock117Stack2 := SGMdMethodAnalysisInfo.
            recoveredBlock117PC := 217.
        ].
        recoveredBlock117Step = 217 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) xmlElementName.
            recoveredBlock117PC := 219.
        ].
        recoveredBlock117Step = 219 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) = (recoveredBlock117Stack2).
            recoveredBlock117PC := 220.
        ].
        recoveredBlock117Step = 220 ifTrue: [
            (recoveredBlock117Stack1) ifTrue: [recoveredBlock117PC := 235] ifFalse: [recoveredBlock117PC := 224].
        ].
        recoveredBlock117Step = 224 ifTrue: [
            recoveredBlock117Stack1 := self.
            recoveredBlock117PC := 225.
        ].
        recoveredBlock117Step = 225 ifTrue: [
            recoveredBlock117Stack2 := 'Global Analysis Info elements must be '.
            recoveredBlock117PC := 227.
        ].
        recoveredBlock117Step = 227 ifTrue: [
            recoveredBlock117Stack3 := SGMdMethodAnalysisInfo.
            recoveredBlock117PC := 229.
        ].
        recoveredBlock117Step = 229 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) xmlElementName.
            recoveredBlock117PC := 231.
        ].
        recoveredBlock117Step = 231 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) , (recoveredBlock117Stack3).
            recoveredBlock117PC := 233.
        ].
        recoveredBlock117Step = 233 ifTrue: [
            (recoveredBlock117Stack1) mdlFatalExpect: (recoveredBlock117Stack2).
            recoveredBlock117PC := 235.
        ].
        recoveredBlock117Step = 235 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 238.
        ].
        recoveredBlock117Step = 238 ifTrue: [
            recoveredBlock117Stack2 := 'alias'.
            recoveredBlock117PC := 240.
        ].
        recoveredBlock117Step = 240 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) getAttribute: (recoveredBlock117Stack2).
            recoveredBlock117PC := 242.
        ].
        recoveredBlock117Step = 242 ifTrue: [
            recoveredBlock117Local2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 245.
        ].
        recoveredBlock117Step = 245 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local2.
            recoveredBlock117PC := 248.
        ].
        recoveredBlock117Step = 248 ifTrue: [
            (recoveredBlock117Stack1 ~~ nil) ifTrue: [recoveredBlock117PC := 257] ifFalse: [recoveredBlock117PC := 252].
        ].
        recoveredBlock117Step = 252 ifTrue: [
            recoveredBlock117Stack1 := self.
            recoveredBlock117PC := 253.
        ].
        recoveredBlock117Step = 253 ifTrue: [
            recoveredBlock117Stack2 := 'Global Analysis Info methods must have an alias'.
            recoveredBlock117PC := 255.
        ].
        recoveredBlock117Step = 255 ifTrue: [
            (recoveredBlock117Stack1) mdlFatalExpect: (recoveredBlock117Stack2).
            recoveredBlock117PC := 257.
        ].
        recoveredBlock117Step = 257 ifTrue: [
            recoveredBlock117Stack1 := methods.
            recoveredBlock117PC := 259.
        ].
        recoveredBlock117Step = 259 ifTrue: [
            recoveredBlock117Stack2 := [:recoveredBlock117Block259Arg1 | 
    | recoveredBlock117Block259Value0 recoveredBlock117Block259Value1 recoveredBlock117Block259Value2 recoveredBlock117Block259Value3 recoveredBlock117Block259Value4 recoveredBlock117Block259Value5 |
    recoveredBlock117Block259Value0 := recoveredBlock117Block259Arg1.
    recoveredBlock117Block259Value1 := (recoveredBlock117Block259Value0) mdlName.
    recoveredBlock117Block259Value2 := (recoveredBlock117Block259Value1) mdlKey.
    recoveredBlock117Block259Value3 := (recoveredBlock117Block259Value2) aliasAsIdString.
    recoveredBlock117Block259Value4 := recoveredBlock117Local2.
    recoveredBlock117Block259Value5 := (recoveredBlock117Block259Value3) = (recoveredBlock117Block259Value4).
    recoveredBlock117Block259Value5
].
            recoveredBlock117PC := 278.
        ].
        recoveredBlock117Step = 278 ifTrue: [
            recoveredBlock117Stack3 := [].
            recoveredBlock117PC := 280.
        ].
        recoveredBlock117Step = 280 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) detect: (recoveredBlock117Stack2) ifNone: (recoveredBlock117Stack3).
            recoveredBlock117PC := 282.
        ].
        recoveredBlock117Step = 282 ifTrue: [
            recoveredBlock117Local3 := recoveredBlock117Stack1.
            recoveredBlock117PC := 285.
        ].
        recoveredBlock117Step = 285 ifTrue: [
            recoveredBlock117Stack1 := nil.
            recoveredBlock117PC := 286.
        ].
        recoveredBlock117Step = 286 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Local3.
            recoveredBlock117PC := 289.
        ].
        recoveredBlock117Step = 289 ifTrue: [
            (recoveredBlock117Stack2 == nil) ifTrue: [recoveredBlock117PC := 328] ifFalse: [recoveredBlock117PC := 292].
        ].
        recoveredBlock117Step = 292 ifTrue: [
            recoveredBlock117PC := 293.
        ].
        recoveredBlock117Step = 293 ifTrue: [
            recoveredBlock117Stack1 := SGGeneratorFactory.
            recoveredBlock117PC := 295.
        ].
        recoveredBlock117Step = 295 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) create.
            recoveredBlock117PC := 297.
        ].
        recoveredBlock117Step = 297 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Local3.
            recoveredBlock117PC := 300.
        ].
        recoveredBlock117Step = 300 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) createGlobalAnalysisMethodContext: (recoveredBlock117Stack2).
            recoveredBlock117PC := 302.
        ].
        recoveredBlock117Step = 302 ifTrue: [
            recoveredBlock117Local1 := recoveredBlock117Stack1.
            recoveredBlock117PC := 305.
        ].
        recoveredBlock117Step = 305 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local3.
            recoveredBlock117PC := 308.
        ].
        recoveredBlock117Step = 308 ifTrue: [
            recoveredBlock117Stack2 := SGMdMethodAnalysisInfo.
            recoveredBlock117PC := 310.
        ].
        recoveredBlock117Step = 310 ifTrue: [
            recoveredBlock117Stack3 := recoveredBlock117Arg1.
            recoveredBlock117PC := 313.
        ].
        recoveredBlock117Step = 313 ifTrue: [
            recoveredBlock117Stack4 := recoveredBlock117Local3.
            recoveredBlock117PC := 316.
        ].
        recoveredBlock117Step = 316 ifTrue: [
            recoveredBlock117Stack5 := recoveredBlock117Local1.
            recoveredBlock117PC := 319.
        ].
        recoveredBlock117Step = 319 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) fromDOM: (recoveredBlock117Stack3) in: (recoveredBlock117Stack4) context: (recoveredBlock117Stack5).
            recoveredBlock117PC := 322.
        ].
        recoveredBlock117Step = 322 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) analysisInfo: (recoveredBlock117Stack2).
            recoveredBlock117PC := 324.
        ].
        recoveredBlock117Step = 324 ifTrue: [
            recoveredBlock117Stack2 := nil.
            recoveredBlock117PC := 325.
        ].
        recoveredBlock117Step = 325 ifTrue: [
            recoveredBlock117Local1 := recoveredBlock117Stack2.
            recoveredBlock117PC := 328.
        ].
        recoveredBlock117Step = 328 ifTrue: [
            recoveredBlock117Result := recoveredBlock117Stack1.
            recoveredBlock117Done := true.
        ].
    ].
    recoveredBlock117Result
].
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := methods.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := [:block2811a340Arg1 | 
    | block2811a340Stack0 block2811a340Stack1 block2811a340Stack2 block2811a340Stack3 block2811a340PC block2811a340Step block2811a340Done block2811a340Result |
    block2811a340Stack0 := self.
    block2811a340PC := 4.
    block2811a340Done := false.
    [block2811a340Done not] whileTrue: [
        block2811a340Step := block2811a340PC.
        block2811a340Step = 4 ifTrue: [
            block2811a340Stack1 := false.
            block2811a340PC := 5.
        ].
        block2811a340Step = 5 ifTrue: [
            block2811a340Stack2 := block2811a340Arg1.
            block2811a340PC := 6.
        ].
        block2811a340Step = 6 ifTrue: [
            block2811a340Stack2 := (block2811a340Stack2) isMdlPrivateAdditional.
            block2811a340PC := 8.
        ].
        block2811a340Step = 8 ifTrue: [
            (block2811a340Stack2) ifTrue: [block2811a340PC := 16] ifFalse: [block2811a340PC := 12].
        ].
        block2811a340Step = 12 ifTrue: [
            block2811a340PC := 13.
        ].
        block2811a340Step = 13 ifTrue: [
            block2811a340Stack1 := block2811a340Arg1.
            block2811a340PC := 14.
        ].
        block2811a340Step = 14 ifTrue: [
            block2811a340Stack1 := (block2811a340Stack1) analysisInfoOrNil.
            block2811a340PC := 15.
        ].
        block2811a340Step = 15 ifTrue: [
            block2811a340Stack1 := (block2811a340Stack1) isNil.
            block2811a340PC := 16.
        ].
        block2811a340Step = 16 ifTrue: [
            block2811a340Result := block2811a340Stack1.
            block2811a340Done := true.
        ].
    ].
    block2811a340Result
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 371].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := methods.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := [:block2811a364Arg1 | 
    | block2811a364Value0 block2811a364Value1 |
    block2811a364Value0 := block2811a364Arg1.
    block2811a364Value1 := (block2811a364Value0) analysisInfo: (nil).
    block2811a364Value1
].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

