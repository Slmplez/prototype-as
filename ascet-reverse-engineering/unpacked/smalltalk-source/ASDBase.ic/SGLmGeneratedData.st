"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001170; bytecode file offset 0x8ffcfc"
!SGLmGeneratedData methodsFor: 'recovered'!
initValueForGroupCharTable
    ^self
! !

"ASDBase.ic method 0x200021e8; bytecode file offset 0x8ffcfc"
!SGLmGeneratedData methodsFor: 'recovered'!
mdlCodeSyntax
    ^self
! !

"ASDBase.ic method 0x20008d2c; bytecode file offset 0x908be4"
!SGLmGeneratedData methodsFor: 'recovered'!
valueConfig
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000af1c; bytecode file offset 0x908be4"
!SGLmGeneratedData methodsFor: 'recovered'!
checkedModelName
    | recoveredValue0 |
    recoveredValue0 := (self) mdlName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000beb8; bytecode file offset 0x908be4"
!SGLmGeneratedData methodsFor: 'recovered'!
declSource
    | recoveredValue0 |
    recoveredValue0 := (self) source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000db04; bytecode file offset 0x90a4b8"
!SGLmGeneratedData methodsFor: 'recovered'!
mdlInitDependencies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004fd28; bytecode file offset 0x94d048"
!SGLmGeneratedData methodsFor: 'recovered'!
implementationForGroupCharTable
    (self) implConfig.
    ^self
! !

"ASDBase.ic method 0x2006b04c; bytecode file offset 0x967a18"
!SGLmGeneratedData methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006be58; bytecode file offset 0x96873c"
!SGLmGeneratedData methodsFor: 'recovered'!
implConfig
    | recoveredValue0 |
    recoveredValue0 := implementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ccd0; bytecode file offset 0x969c04"
!SGLmGeneratedData methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073070; bytecode file offset 0x970b34"
!SGLmGeneratedData methodsFor: 'recovered'!
makeConfig
    ^nil
! !

"ASDBase.ic method 0x20076b9c; bytecode file offset 0x9757c8"
!SGLmGeneratedData methodsFor: 'recovered'!
isGeneratedData
    ^true
! !

"ASDBase.ic method 0x2007aafc; bytecode file offset 0x97c330"
!SGLmGeneratedData methodsFor: 'recovered'!
allowPmiAccess
    ^false
! !

"ASDBase.ic method 0x200ad0c4; bytecode file offset 0x9a9978"
!SGLmGeneratedData methodsFor: 'recovered'!
initializeType: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    value := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c22f8; bytecode file offset 0x9bf474"
!SGLmGeneratedData methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implementation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ab8; bytecode file offset 0x9c058c"
!SGLmGeneratedData methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3434; bytecode file offset 0x9cfcf0"
!SGLmGeneratedData methodsFor: 'recovered'!
mdlVarAttributes
    volatile := true.
    super mdlVarAttributes.
    ^self
! !

"ASDBase.ic method 0x200e5144; bytecode file offset 0x9e1a70"
!SGLmGeneratedData methodsFor: 'recovered'!
mdlInitValue
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) asMdlInitValue.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f9688; bytecode file offset 0x9f5f48"
!SGLmGeneratedData methodsFor: 'recovered'!
mdlImplementation
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) implConfig.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010607c; bytecode file offset 0xa02940"
!SGLmGeneratedData methodsFor: 'recovered'!
isVolatile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := volatile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            volatile := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := volatile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20181d98; bytecode file offset 0xa7e668"
!SGLmGeneratedData methodsFor: 'recovered'!
buildMdlBlockVarDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := (self) mdlName.
    recoveredValue2 := (self) mdlClassType.
    recoveredValue3 := (self) mdlImplementation.
    recoveredValue4 := (self) createType: (recoveredValue2) implementation: (recoveredValue3).
    recoveredValue5 := (self) mdlInitValue.
    (recoveredValue0) blockVarDecl: (recoveredValue1) class: (recoveredValue4) init: (recoveredValue5) usage: (true).
    ^self
! !

"ASDBase.ic method 0x20185294; bytecode file offset 0xa81b58"
!SGLmGeneratedData methodsFor: 'recovered'!
initializeStateVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asMdlClassType.
    type := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asMdlInitValue.
    value := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) defaultImplementationForSM: (recoveredValue4).
    implementation := recoveredValue5.
    volatile := true.
    recoveredValue6 := (self) imported: (false).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201ac4f0; bytecode file offset 0xaa8dc4"
!SGLmGeneratedData methodsFor: 'recovered'!
defaultImplementationMin: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBArithmeticElement.
    recoveredValue1 := RBInterval.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) left: (recoveredValue2) right: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) integerType.
    recoveredValue6 := (recoveredValue0) createForType: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) formula.
    (recoveredValue8) name: ('Identity').
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2022befc; bytecode file offset 0xb287c4"
!SGLmGeneratedData methodsFor: 'recovered'!
buildMdlImplInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) implConfig.
    recoveredValue1 := [
    ^self
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) implConfig.
    (self) buildMdlImplInfoMemoryClass: (recoveredValue2).
    recoveredValue3 := (self) implConfig.
    recoveredValue4 := (recoveredValue3) extraImplInfo.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) buildMdlImplInfoCaching: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2025baec; bytecode file offset 0xb583b4"
!SGLmGeneratedData methodsFor: 'recovered'!
buildMdlImplInfoMemoryClass: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImported.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [
    ^self
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) memoryClass: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a9e88; bytecode file offset 0xba676c"
!SGLmGeneratedData methodsFor: 'recovered'!
initializeStateConst: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) imported: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarsOfClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280e4528Arg1 | 
    | block280e4528Value0 block280e4528Value1 block280e4528Value2 block280e4528Value3 block280e4528Value4 |
    block280e4528Value0 := block280e4528Arg1.
    block280e4528Value1 := (block280e4528Value0) mdlLabel.
    block280e4528Value2 := SGReservedNames.
    block280e4528Value3 := (block280e4528Value2) smName.
    block280e4528Value4 := (block280e4528Value1) = (block280e4528Value3).
    block280e4528Value4
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asMdlClassType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            type := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createImplementation.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            implementation := recoveredStack0.
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

"ASDBase.ic method 0x203293ec; bytecode file offset 0xc25cc0"
!SGLmGeneratedData methodsFor: 'recovered'!
defaultImplementationForSM: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal2 := -1.
    recoveredLocal1 := 1000000.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) topCodeBlock.
    recoveredValue2 := (recoveredValue1) collectStates.
    recoveredValue3 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) id.
    recoveredBlock19Value2 := recoveredLocal2.
    recoveredBlock19Value3 := (recoveredBlock19Value1) max: (recoveredBlock19Value2).
    recoveredLocal2 := recoveredBlock19Value3.
    recoveredBlock19Value4 := recoveredBlock19Arg1.
    recoveredBlock19Value5 := (recoveredBlock19Value4) id.
    recoveredBlock19Value6 := recoveredLocal1.
    recoveredBlock19Value7 := (recoveredBlock19Value5) min: (recoveredBlock19Value6).
    recoveredBlock19Value8 := recoveredBlock19Value7.
    recoveredLocal1 := recoveredBlock19Value8.
    recoveredBlock19Value7
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) defaultImplementationMin: (recoveredValue4) max: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2049227c; bytecode file offset 0xd8eb98"
!SGLmGeneratedData methodsFor: 'recovered'!
initializeStateVariable: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarsOfClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28103750Arg1 | 
    | block28103750Value0 block28103750Value1 block28103750Value2 block28103750Value3 block28103750Value4 |
    block28103750Value0 := block28103750Arg1.
    block28103750Value1 := (block28103750Value0) mdlLabel.
    block28103750Value2 := SGReservedNames.
    block28103750Value3 := (block28103750Value2) smName.
    block28103750Value4 := (block28103750Value1) = (block28103750Value3).
    block28103750Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asMdlSmEnumType: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            type := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) createImplementation.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            implementation := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresImplementationSet.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := implementation.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) memoryClass: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCacheAutomatic.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := implementation.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDAutomatic.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) memorySegmentID: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCacheOn.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := implementation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDOn.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) memorySegmentID: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCacheOn.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := implementation.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDOff.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) memorySegmentID: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            volatile := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) imported: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

