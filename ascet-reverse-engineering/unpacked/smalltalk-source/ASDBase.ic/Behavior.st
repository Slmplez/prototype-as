"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000f98; bytecode file offset 0x8ffcfc"
!Behavior methodsFor: 'recovered'!
abtAsPartType
    ^self
! !

"ASDBase.ic method 0x20004810; bytecode file offset 0x90206c"
!Behavior methodsFor: 'recovered'!
abtCloneWithRecursionSet: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006728; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
abtNewUnbuiltPart
    | recoveredValue0 |
    recoveredValue0 := (self) newPart.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20006c68; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
abtAsPartTypeRef
    | recoveredValue0 |
    recoveredValue0 := (self) symbol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007034; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
IS_self
    | recoveredValue0 |
    recoveredValue0 := (self) selfReferenceAttributeSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009944; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
newPart
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009de8; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
abtCreatePart
    | recoveredValue0 |
    recoveredValue0 := (self) newPart.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a328; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
asAbtConverter
    | recoveredValue0 |
    recoveredValue0 := (self) untitledConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a4b4; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
abtInterfaceSpecCacheKey
    | recoveredValue0 |
    recoveredValue0 := (self) qualifiedName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a628; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
qualifiedName
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b9d8; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := (self) symbol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bcf0; bytecode file offset 0x908be4"
!Behavior methodsFor: 'recovered'!
abtNewDeferredUpdateTarget
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d124; bytecode file offset 0x909ab8"
!Behavior methodsFor: 'recovered'!
OLE_instanceInterfaceSpec: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000df74; bytecode file offset 0x90ab8c"
!Behavior methodsFor: 'recovered'!
newPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) newPart.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012a2c; bytecode file offset 0x912098"
!Behavior methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c7e4; bytecode file offset 0x92209c"
!Behavior methodsFor: 'recovered'!
abtInterfaceBuilderRepositoryKey
    ^'AbtInterfaceSpec'
! !

"ASDBase.ic method 0x20028924; bytecode file offset 0x934580"
!Behavior methodsFor: 'recovered'!
allInstanceVariableNamesDB
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allInstVarNames.
    recoveredValue1 := (recoveredValue0) asArray.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029084; bytecode file offset 0x934580"
!Behavior methodsFor: 'recovered'!
displayName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e754; bytecode file offset 0x934580"
!Behavior methodsFor: 'recovered'!
untitledConverter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) untitledConverterClass.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f144; bytecode file offset 0x934580"
!Behavior methodsFor: 'recovered'!
instanceAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mergedInterfaceSpec.
    recoveredValue1 := (recoveredValue0) interfaceSpecAttributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035a24; bytecode file offset 0x934580"
!Behavior methodsFor: 'recovered'!
instanceFeatures
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mergedInterfaceSpec.
    recoveredValue1 := (recoveredValue0) interfaceSpecFeatures.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039770; bytecode file offset 0x938608"
!Behavior methodsFor: 'recovered'!
abtInstanceFeature: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f388; bytecode file offset 0x93bf94"
!Behavior methodsFor: 'recovered'!
abrConverter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtClassConverter.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073448; bytecode file offset 0x970b34"
!Behavior methodsFor: 'recovered'!
abtUntranslatedConstants
    ^nil
! !

"ASDBase.ic method 0x20073c08; bytecode file offset 0x970b34"
!Behavior methodsFor: 'recovered'!
recursiveDeferredUpdateOperationClass
    ^nil
! !

"ASDBase.ic method 0x200741d8; bytecode file offset 0x970b34"
!Behavior methodsFor: 'recovered'!
abtSeparatedConstants
    ^nil
! !

"ASDBase.ic method 0x20076cf4; bytecode file offset 0x9757c8"
!Behavior methodsFor: 'recovered'!
isTerminalClass
    ^true
! !

"ASDBase.ic method 0x200770dc; bytecode file offset 0x9757c8"
!Behavior methodsFor: 'recovered'!
isBehaviorKind
    ^true
! !

"ASDBase.ic method 0x200780bc; bytecode file offset 0x9757c8"
!Behavior methodsFor: 'recovered'!
abrIsImmutable
    ^true
! !

"ASDBase.ic method 0x2007b71c; bytecode file offset 0x97c330"
!Behavior methodsFor: 'recovered'!
abrInstancesAreImmutable
    ^false
! !

"ASDBase.ic method 0x2007efbc; bytecode file offset 0x97c330"
!Behavior methodsFor: 'recovered'!
abtIsObservableObjectClass
    ^false
! !

"ASDBase.ic method 0x20086ab8; bytecode file offset 0x98376c"
!Behavior methodsFor: 'recovered'!
abtPrimitiveFeatureNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) abtInstanceFeatureNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008733c; bytecode file offset 0x983c18"
!Behavior methodsFor: 'recovered'!
abtPrimitiveFeatureNamed: recoveredArg1 selector: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) abtInstanceFeature: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089ce0; bytecode file offset 0x986668"
!Behavior methodsFor: 'recovered'!
attributeSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtAttributeSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) attributeClass: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089d6c; bytecode file offset 0x986668"
!Behavior methodsFor: 'recovered'!
codeHookSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtAttributeSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) attributeClass: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089d94; bytecode file offset 0x986668"
!Behavior methodsFor: 'recovered'!
variableAttributeSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtVariableAttributeSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) attributeClass: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094778; bytecode file offset 0x991174"
!Behavior methodsFor: 'recovered'!
abtInstanceFeatureNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) abtInstanceFeatureNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a4a8; bytecode file offset 0x997194"
!Behavior methodsFor: 'recovered'!
abtInstanceFeatureNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mergedInterfaceSpec.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) interfaceSpecFeatureNamed: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009bad0; bytecode file offset 0x998444"
!Behavior methodsFor: 'recovered'!
abtPrimFlushInterfaceSpecCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtRunInterfacesApp.
    recoveredValue1 := (self) abtInterfaceSpecCacheKey.
    (recoveredValue0) removeInterfaceSpecKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad9f0; bytecode file offset 0x9aa2a8"
!Behavior methodsFor: 'recovered'!
abtCreatePart: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) abtCreatePart: (recoveredValue0) parent: (recoveredValue1) owner: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e0cb0; bytecode file offset 0x9dd578"
!Behavior methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) IS_self.
    recoveredValue3 := (recoveredValue1) featureNamed: ('self') put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200eff74; bytecode file offset 0x9ec83c"
!Behavior methodsFor: 'recovered'!
abtDefaultInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) abtSelfReferenceSymbol.
    recoveredValue4 := (self) selfReferenceAttributeSpec.
    (recoveredValue2) interfaceSpecFeatureNamed: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201171a0; bytecode file offset 0xa13ac4"
!Behavior methodsFor: 'recovered'!
abtFlushInterfaceSpecCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c7200Arg1 | 
    | block280c7200Value0 block280c7200Value1 |
    block280c7200Value0 := block280c7200Arg1.
    block280c7200Value1 := (block280c7200Value0) abtPrimFlushInterfaceSpecCache.
    block280c7200Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) withAllSubclassesDo: (recoveredStack1).
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

"ASDBase.ic method 0x2012caa0; bytecode file offset 0xa2937c"
!Behavior methodsFor: 'recovered'!
removeAllInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9d50Arg1 | 
    | block280c9d50Value0 block280c9d50Value1 |
    block280c9d50Value0 := block280c9d50Arg1.
    block280c9d50Value1 := (block280c9d50Value0) become: (nil).
    block280c9d50Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165814; bytecode file offset 0xa620d4"
!Behavior methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: ('aTotal').
    recoveredValue3 := (recoveredValue2) + (1).
    (recoveredValue0) at: ('aTotal') put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) at: (self) put: (1).
    ^self
! !

"ASDBase.ic method 0x2016d43c; bytecode file offset 0xa69cfc"
!Behavior methodsFor: 'recovered'!
abtCreatePart: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtCreatePart.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) parentPart: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
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
            (recoveredStack0) abtAddSubpart: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016ee10; bytecode file offset 0xa6b6e4"
!Behavior methodsFor: 'recovered'!
getMergedInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) superclass.
    recoveredValue3 := (recoveredValue2) mergedInterfaceSpec.
    recoveredValue4 := (recoveredValue3) interfaceSpecFeatures.
    recoveredValue5 := (self) abtInstanceInterfaceSpec.
    recoveredValue6 := (recoveredValue5) interfaceSpecFeatures.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    recoveredValue8 := (recoveredValue1) features: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20171564; bytecode file offset 0xa6de2c"
!Behavior methodsFor: 'recovered'!
abtIdString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMetaclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'm'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbol.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201758a4; bytecode file offset 0xa7215c"
!Behavior methodsFor: 'recovered'!
includesBehaviorFor: recoveredArg1
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
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := superclass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := superclass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesBehaviorFor: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018fa34; bytecode file offset 0xa8c300"
!Behavior methodsFor: 'recovered'!
abtInstanceInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtCalculatesRuntimeInterfaceSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtCalculateRuntimeInterfaceSpec.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtSelfReferenceSymbol.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) selfReferenceAttributeSpec.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) featureNamed: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtDefaultInterfaceSpec.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019cee0; bytecode file offset 0xa997a0"
!Behavior methodsFor: 'recovered'!
abtCreatePart: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3 atIndex: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtCreatePart.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) parentPart: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) abtAddSubpart: (recoveredStack1) named: (recoveredStack2) atIndex: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dd098; bytecode file offset 0xad9960"
!Behavior methodsFor: 'recovered'!
mergedInterfaceSpec
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtRunInterfacesApp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceSpecsFor: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtRunInterfacesApp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) getMergedInterfaceSpec.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceSpecsFor: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201eb474; bytecode file offset 0xae7d48"
!Behavior methodsFor: 'recovered'!
selfReferenceAttributeSpec
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtAttributeSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'yourself'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) getSelector: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeClass: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) abrInstancesAreImmutable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'IChanged'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) changeSymbol: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a878; bytecode file offset 0xb37148"
!Behavior methodsFor: 'recovered'!
memoryAllocationFailed
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGlobalInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalInfo.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) lowMinimum.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 262144.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveFailed.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) lowMinimum: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20293e3c; bytecode file offset 0xb906fc"
!Behavior methodsFor: 'recovered'!
abtInstanceAttributeNamed: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtInstanceFeatureNamed: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAttribute.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203123d8; bytecode file offset 0xc0eca4"
!Behavior methodsFor: 'recovered'!
abtInstanceFeature: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) errorHandler.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := Processor.
    recoveredValue4 := (recoveredValue3) activeProcess.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := Processor.
    recoveredBlock14Value1 := (recoveredBlock14Value0) activeProcess.
    recoveredBlock14Value2 := recoveredLocal2.
    (recoveredBlock14Value1) errorHandler: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredArg2.
    recoveredBlock14Value4 := (recoveredBlock14Value3) value.
    ^recoveredBlock14Value4
].
    (recoveredValue4) errorHandler: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) perform: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := Processor.
    recoveredValue9 := (recoveredValue8) activeProcess.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) errorHandler: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

