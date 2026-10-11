"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007afc; bytecode file offset 0x908be4"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
autosarTypesStrategy
    | recoveredValue0 |
    recoveredValue0 := (self) arXmlTypesGeneratorStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020ce4; bytecode file offset 0x92209c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
rteCalPrmCallMacroName
    ^'Rte_Calprm'
! !

"ASDBase.ic method 0x2002c8d4; bytecode file offset 0x934580"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
allSupportedPrimitiveTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arXmlTypesGeneratorStrategy.
    recoveredValue1 := (recoveredValue0) allSupportedPrimitiveTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d634; bytecode file offset 0x934580"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
importList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) importsTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200388e0; bytecode file offset 0x935c54"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
mustBeCalledFromRunnable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isMdlRunnableDeclRequired.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eed8; bytecode file offset 0x93bf94"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ebdc; bytecode file offset 0x94d048"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
tagExclusiveAreaRef
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004edb0; bytecode file offset 0x94d048"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
semAnaInstanceClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ee7c; bytecode file offset 0x94d048"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
createARXmlTypesGenerator
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004efa8; bytecode file offset 0x94d048"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
tagAtomicSoftwareComponent
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f7ac; bytecode file offset 0x94d048"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
tagUsesExclusiveAreas
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fa34; bytecode file offset 0x94d048"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
tagImplementation
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005376c; bytecode file offset 0x9505d0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
semAnaRteMacroCall: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200579c8; bytecode file offset 0x956284"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDataDefPropsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) arXmlTypesGeneratorStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) writeARXmlDataDefPropsTo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059a70; bytecode file offset 0x9566ac"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasBeforeReadAccessTo: recoveredArg1 runnableDecl: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059b54; bytecode file offset 0x9566ac"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasAfterSymbolTo: recoveredArg1 runnableDecl: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005ae78; bytecode file offset 0x957a6c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCodeDescriptionTo: recoveredArg1 attributes: recoveredArg2 mdlInterface: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2007e7dc; bytecode file offset 0x97c330"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
supportsRteDRead
    ^false
! !

"ASDBase.ic method 0x200ca674; bytecode file offset 0x9c7020"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDescriptionTo: recoveredArg1 text: recoveredArg2 comment: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arXmlTypesGeneratorStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) writeARXmlDescriptionTo: (recoveredValue1) text: (recoveredValue2) comment: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200da4ec; bytecode file offset 0x9d6db0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
instanceAnalysis: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) semAnaInstanceClass.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) anyMdlNode: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fd280; bytecode file offset 0x9f9b3c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
rteCalPrmCallMacroName: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) rteCalPrmCallMacroName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Rte_CalPrm'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201163d4; bytecode file offset 0xa12ca4"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
arXmlTypesGeneratorStrategy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arXmlTypesGeneratorStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlTypesGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            arXmlTypesGeneratorStrategy := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := arXmlTypesGeneratorStrategy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20122454; bytecode file offset 0xa1ed1c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlBehaviorRefTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagInternalBehavior.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    recoveredValue4 := (self) arXmlPackageInternalBehavior: (recoveredValue3).
    recoveredValue5 := (self) writeARXmlDestinationTo: (recoveredValue0) element: ('BEHAVIOR-REF') attribute: (recoveredValue1) value: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20122674; bytecode file offset 0xa1ef38"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreaRefTo: recoveredArg1 exclusiveArea: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagExclusiveAreaRef.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arXmlPackageExclusiveArea: (recoveredValue2).
    (self) writeARXmlDestinationTo: (recoveredValue0) element: (recoveredValue1) attribute: ('EXCLUSIVE-AREA') value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012660c; bytecode file offset 0xa22ecc"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
createARXmlSwComponent: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) tagAtomicSoftwareComponent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createARXmlARFragment: (recoveredValue0) mdlInterface: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (self) writeARXmlPortsTo: (recoveredValue3) mdlClassInterface: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015386c; bytecode file offset 0xa50130"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
mdlSWComponentInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) resetDocFragmentList.
    recoveredValue0 := recoveredArg1.
    (self) createARXmlSwComponent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) createARXmlInternalBehavior: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) createARXmlImplementationDescription: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20186c48; bytecode file offset 0xa83558"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
arXmlDestinationAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) arXmlTypesGeneratorStrategy.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) arXmlDestinationAttribute: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) arXmlDestinationAttribute: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20187884; bytecode file offset 0xa84154"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCodeDescriptionTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGAutosarAttributes.
    recoveredValue2 := SGCgAutosarSettings.
    recoveredValue3 := (recoveredValue2) categoryCodeDescription.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) componentInfo.
    recoveredValue6 := (self) arXmlShortNameCategory: (recoveredValue3) componentInfo: (recoveredValue5).
    recoveredValue7 := (recoveredValue1) shortName: (recoveredValue6) uuid: (nil).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) writeARXmlCodeDescriptionTo: (recoveredValue0) attributes: (recoveredValue7) mdlInterface: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ac7f0; bytecode file offset 0xaa90d4"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRequirededComSpecsTo: recoveredArg1 varDecl: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCSInterfaceType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
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
            recoveredStack3 := 'REQUIRED-COM-SPECS'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlTo: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) writeARXmlClientComSpecTo: (recoveredStack2) varDecl: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac80c; bytecode file offset 0xaa90d4"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlProvidedComSpecsTo: recoveredArg1 varDecl: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCSInterfaceType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
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
            recoveredStack3 := 'PROVIDED-COM-SPECS'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlTo: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) writeARXmlServerComSpecTo: (recoveredStack2) varDecl: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9e18; bytecode file offset 0xad66e0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgComplexClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRecordType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super arXmlPackageType: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlTypesGeneratorStrategy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlPackageType: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6580; bytecode file offset 0xae2e4c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetDocFragmentList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlTypesGeneratorStrategy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) docFragmentList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            docFragmentList := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarTypesStrategy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlTypesGeneratorStrategy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) docFragmentList.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            docFragmentList := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eec5c; bytecode file offset 0xaeb548"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlProvidePortTo: recoveredArg1 varDecl: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) writeARXmlShortNameTo: (recoveredValue0) element: ('P-PORT-PROTOTYPE') attributes: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (self) writeARXmlProvidedComSpecsTo: (recoveredValue3) varDecl: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) mdlClass.
    (self) writeARXmlTo: (recoveredValue5) element: ('PROVIDED-INTERFACE-TREF') typeReference: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201eec7c; bytecode file offset 0xaeb548"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRequirePortTo: recoveredArg1 varDecl: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) writeARXmlShortNameTo: (recoveredValue0) element: ('R-PORT-PROTOTYPE') attributes: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (self) writeARXmlRequirededComSpecsTo: (recoveredValue3) varDecl: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) mdlClass.
    (self) writeARXmlTo: (recoveredValue5) element: ('REQUIRED-INTERFACE-TREF') typeReference: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20237fe4; bytecode file offset 0xb348c0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
createARXmlImplementationDescription: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) tagImplementation.
    recoveredValue1 := SGCgAutosarSettings.
    recoveredValue2 := (recoveredValue1) categoryImplementationDescription.
    recoveredValue3 := SGCgAutosarSettings.
    recoveredValue4 := (recoveredValue3) categoryImplementationDescription.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) componentInfo.
    recoveredValue7 := (self) arXmlPackageCategory: (recoveredValue4) componentInfo: (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) mdlClassType.
    recoveredValue10 := (recoveredValue9) implId.
    recoveredValue11 := (recoveredValue10) asString.
    recoveredValue12 := (self) createARXmlFragment: (recoveredValue0) category: (recoveredValue2) packageName: (recoveredValue7) uuid: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg1.
    (self) writeARXmlCodeDescriptionTo: (recoveredValue13) mdlInterface: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x20260b50; bytecode file offset 0xb5d430"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
internalExclusiveAreaDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := internalExclusiveAreaDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMdInstVarDecl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := SGCgTypeFactory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) createResourceType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := SGCgName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := SGIlAbstractExpander.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) arInternalExclusiveAreaName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) mdlName: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            internalExclusiveAreaDecl := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := internalExclusiveAreaDecl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f634c; bytecode file offset 0xbf2c24"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlClientComSpecTo: recoveredArg1 varDecl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlClass.
    recoveredValue3 := (recoveredValue0) componentInterface: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) sortedMethods.
    recoveredBlock10Value2 := [:recoveredBlock10Block20Arg1 | 
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 recoveredBlock10Block20Value2 recoveredBlock10Block20Value3 recoveredBlock10Block20Value4 |
    recoveredBlock10Block20Value0 := recoveredArg1.
    recoveredBlock10Block20Value1 := (self) writeARXmlTo: (recoveredBlock10Block20Value0) element: ('CLIENT-COM-SPEC').
    recoveredBlock10Local1 := recoveredBlock10Block20Value1.
    recoveredBlock10Block20Value2 := recoveredBlock10Local1.
    recoveredBlock10Block20Value3 := recoveredBlock10Block20Arg1.
    recoveredBlock10Block20Value4 := (self) writeARXmlOperationRefTo: (recoveredBlock10Block20Value2) operation: (recoveredBlock10Block20Value3).
    recoveredBlock10Block20Value4
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203043b0; bytecode file offset 0xc00c9c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
createDestinationAttributesTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgAutosarSettings.
    recoveredValue4 := (recoveredValue3) categorySRInterface.
    recoveredValue5 := (self) tagSRInterface.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SGCgAutosarSettings.
    recoveredValue8 := (recoveredValue7) categoryCSInterface.
    (recoveredValue6) at: (recoveredValue8) put: ('CLIENT-SERVER-INTERFACE').
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SGCgAutosarSettings.
    recoveredValue11 := (recoveredValue10) categoryCalibrationInterface.
    recoveredValue12 := (self) tagCalibrationInterface.
    (recoveredValue9) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := SGCgAutosarSettings.
    recoveredValue15 := (recoveredValue14) categorySwComponent.
    recoveredValue16 := (self) tagAtomicSoftwareComponent.
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SGCgAutosarSettings.
    recoveredValue19 := (recoveredValue18) categoryRunnable.
    (recoveredValue17) at: (recoveredValue19) put: ('RUNNABLE-ENTITY').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2030a4dc; bytecode file offset 0xc06db0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRunnablesTo: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedRunnableDecls.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerDocument.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'RUNNABLES'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredLocal1.
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (self) writeARXmlRunnableTo: (recoveredBlock36Value0) runnableDecl: (recoveredBlock36Value1).
    recoveredBlock36Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031efe0; bytecode file offset 0xc1b8d0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
createARXmlInternalBehavior: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryInternalBehavior.
    recoveredValue2 := SGCgAutosarSettings.
    recoveredValue3 := (recoveredValue2) categoryInternalBehavior.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) componentInfo.
    recoveredValue6 := (self) arXmlPackageCategory: (recoveredValue3) componentInfo: (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) componentAttributes.
    recoveredValue9 := (recoveredValue8) arBehaviorUUID.
    recoveredValue10 := (self) createARXmlFragment: ('INTERNAL-BEHAVIOR') category: (recoveredValue1) packageName: (recoveredValue6) uuid: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) mdlClassType.
    (self) writeARXmlTo: (recoveredValue11) element: ('COMPONENT-REF') typeReference: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg1.
    (self) writeARXmlEventsTo: (recoveredValue14) mdlClassInterface: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredArg1.
    (self) writeARXmlResourcesTo: (recoveredValue16) mdlClassInterface: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := recoveredArg1.
    (self) writeARXmlInterrunnableVariablesTo: (recoveredValue18) mdlClassInterface: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredArg1.
    (self) writeARXmlRunnablesTo: (recoveredValue20) mdlClassInterface: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x20334ec0; bytecode file offset 0xc3179c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlServerComSpecTo: recoveredArg1 varDecl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlClass.
    recoveredValue3 := (recoveredValue0) componentInterface: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) sortedMethods.
    recoveredBlock10Value2 := [:recoveredBlock10Block20Arg1 | 
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 recoveredBlock10Block20Value2 recoveredBlock10Block20Value3 recoveredBlock10Block20Value4 recoveredBlock10Block20Value5 |
    recoveredBlock10Block20Value0 := recoveredArg1.
    recoveredBlock10Block20Value1 := (self) writeARXmlTo: (recoveredBlock10Block20Value0) element: ('SERVER-COM-SPEC').
    recoveredBlock10Local1 := recoveredBlock10Block20Value1.
    recoveredBlock10Block20Value2 := recoveredBlock10Local1.
    recoveredBlock10Block20Value3 := recoveredBlock10Block20Arg1.
    (self) writeARXmlOperationRefTo: (recoveredBlock10Block20Value2) operation: (recoveredBlock10Block20Value3).
    recoveredBlock10Block20Value4 := recoveredBlock10Local1.
    recoveredBlock10Block20Value5 := (self) writeARXmlQueueLengthTo: (recoveredBlock10Block20Value4) size: (1).
    recoveredBlock10Block20Value5
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2035782c; bytecode file offset 0xc54110"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
semAnaRteCall: recoveredArg1 executableScope: recoveredArg2 runnableScopes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRteCalPrm.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280efb8cArg1 | 
    | block280efb8cValue0 block280efb8cValue1 |
    block280efb8cValue0 := block280efb8cArg1.
    block280efb8cValue1 := (block280efb8cValue0) source.
    block280efb8cValue1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280efbb0Arg1 | 
    | block280efbb0Value0 block280efbb0Value1 block280efbb0Value2 |
    block280efbb0Value0 := block280efbb0Arg1.
    block280efbb0Value1 := (block280efbb0Value0) errLabel.
    block280efbb0Value2 := ('Called from ') , (block280efbb0Value1).
    block280efbb0Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 118.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelRunnableDeclRequired.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a5cd4; bytecode file offset 0xca25b4"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasTo: recoveredArg1 runnableDecl: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) allUsedExclusiveAreas.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) usesAnyMessage.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) internalExclusiveAreaDecl: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectExclusiveAreas: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) tagUsesExclusiveAreas.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 |
    recoveredBlock59Value0 := recoveredLocal1.
    recoveredBlock59Value1 := recoveredBlock59Arg1.
    recoveredBlock59Value2 := (self) writeARXmlExclusiveAreaRefTo: (recoveredBlock59Value0) exclusiveArea: (recoveredBlock59Value1).
    recoveredBlock59Value2
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204123f4; bytecode file offset 0xd0ece4"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlPortsTo: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('PORTS').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) sortedInstVars.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Local2 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isMdlRequirePort.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 30].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isMdlProvidePort.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 84].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := SGAutosarAttributes.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack4 := recoveredArg2.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack4 := (recoveredBlock18Stack4) componentInfo.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) arXmlShortNamePort: (recoveredBlock18Stack3) componentInfo: (recoveredBlock18Stack4).
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) uuid.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack4 := recoveredBlock18Arg1.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) shortName: (recoveredBlock18Stack2) uuid: (recoveredBlock18Stack3) varDecl: (recoveredBlock18Stack4).
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Local2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isMdlRequirePort.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 60] ifFalse: [recoveredBlock18PC := 72].
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Stack4 := recoveredBlock18Local2.
            recoveredBlock18PC := 66.
        ].
        recoveredBlock18Step = 66 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) writeARXmlRequirePortTo: (recoveredBlock18Stack2) varDecl: (recoveredBlock18Stack3) attributes: (recoveredBlock18Stack4).
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredBlock18Stack4 := recoveredBlock18Local2.
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) writeARXmlProvidePortTo: (recoveredBlock18Stack2) varDecl: (recoveredBlock18Stack3) attributes: (recoveredBlock18Stack4).
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18PC := 91.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 85.
        ].
        recoveredBlock18Step = 85 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 87.
        ].
        recoveredBlock18Step = 87 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) scope.
            recoveredBlock18PC := 89.
        ].
        recoveredBlock18Step = 89 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) arXmlTypeFromASCETElement: (recoveredBlock18Stack2) scope: (recoveredBlock18Stack3).
            recoveredBlock18PC := 91.
        ].
        recoveredBlock18Step = 91 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20444d4c; bytecode file offset 0xd4164c"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlResourcesTo: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedRunnableDecls.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) allUsedExclusiveAreas.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            (recoveredBlock14Stack1) addAll: (recoveredBlock14Stack2).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) usesAnyMessage.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 34] ifFalse: [recoveredBlock14PC := 48].
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) mdlClassType.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) internalExclusiveAreaDecl: (recoveredBlock14Stack3).
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectExclusiveAreas: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'EXCLUSIVE-AREAS'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 recoveredBlock80Value4 recoveredBlock80Value5 |
    recoveredBlock80Value0 := recoveredLocal2.
    recoveredBlock80Value1 := SGAutosarAttributes.
    recoveredBlock80Value2 := recoveredBlock80Arg1.
    recoveredBlock80Value3 := (self) arXmlShortNameExclusiveArea: (recoveredBlock80Value2).
    recoveredBlock80Value4 := (recoveredBlock80Value1) shortName: (recoveredBlock80Value3) uuid: (nil).
    recoveredBlock80Value5 := (self) writeARXmlShortNameTo: (recoveredBlock80Value0) element: ('EXCLUSIVE-AREA') attributes: (recoveredBlock80Value4).
    recoveredBlock80Value5
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045c02c; bytecode file offset 0xd58928"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlSRInterfaceElementAccessTo: recoveredArg1 rteCalls: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := [:block281002b8Arg1 | 
    | block281002b8Value0 block281002b8Value1 |
    block281002b8Value0 := block281002b8Arg1.
    block281002b8Value1 := (block281002b8Value0) isRteIRead.
    block281002b8Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateDataAccess: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) writeARXmlDataReadAccessTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := [:block281002dcArg1 | 
    | block281002dcStack0 block281002dcStack1 block281002dcStack2 block281002dcStack3 block281002dcPC block281002dcStep block281002dcDone block281002dcResult |
    block281002dcStack0 := self.
    block281002dcPC := 4.
    block281002dcDone := false.
    [block281002dcDone not] whileTrue: [
        block281002dcStep := block281002dcPC.
        block281002dcStep = 4 ifTrue: [
            block281002dcStack1 := false.
            block281002dcPC := 5.
        ].
        block281002dcStep = 5 ifTrue: [
            block281002dcStack2 := block281002dcArg1.
            block281002dcPC := 6.
        ].
        block281002dcStep = 6 ifTrue: [
            block281002dcStack2 := (block281002dcStack2) isRteRead.
            block281002dcPC := 8.
        ].
        block281002dcStep = 8 ifTrue: [
            (block281002dcStack2) ifTrue: [block281002dcPC := 12] ifFalse: [block281002dcPC := 17].
        ].
        block281002dcStep = 12 ifTrue: [
            block281002dcPC := 13.
        ].
        block281002dcStep = 13 ifTrue: [
            block281002dcStack1 := block281002dcArg1.
            block281002dcPC := 14.
        ].
        block281002dcStep = 14 ifTrue: [
            block281002dcStack1 := (block281002dcStack1) isRteDRead.
            block281002dcPC := 16.
        ].
        block281002dcStep = 16 ifTrue: [
            block281002dcStack1 := (block281002dcStack1) not.
            block281002dcPC := 17.
        ].
        block281002dcStep = 17 ifTrue: [
            block281002dcResult := block281002dcStack1.
            block281002dcDone := true.
        ].
    ].
    block281002dcResult
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateDataAccess: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := [:block28100300Arg1 | 
    | block28100300Stack0 block28100300Stack1 block28100300Stack2 block28100300Stack3 block28100300PC block28100300Step block28100300Done block28100300Result |
    block28100300Stack0 := self.
    block28100300PC := 4.
    block28100300Done := false.
    [block28100300Done not] whileTrue: [
        block28100300Step := block28100300PC.
        block28100300Step = 4 ifTrue: [
            block28100300Stack1 := false.
            block28100300PC := 5.
        ].
        block28100300Step = 5 ifTrue: [
            block28100300Stack2 := block28100300Arg1.
            block28100300PC := 6.
        ].
        block28100300Step = 6 ifTrue: [
            block28100300Stack2 := (block28100300Stack2) isRteRead.
            block28100300PC := 8.
        ].
        block28100300Step = 8 ifTrue: [
            (block28100300Stack2) ifTrue: [block28100300PC := 12] ifFalse: [block28100300PC := 16].
        ].
        block28100300Step = 12 ifTrue: [
            block28100300PC := 13.
        ].
        block28100300Step = 13 ifTrue: [
            block28100300Stack1 := block28100300Arg1.
            block28100300PC := 14.
        ].
        block28100300Step = 14 ifTrue: [
            block28100300Stack1 := (block28100300Stack1) isRteDRead.
            block28100300PC := 16.
        ].
        block28100300Step = 16 ifTrue: [
            block28100300Result := block28100300Stack1.
            block28100300Done := true.
        ].
    ].
    block28100300Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) select: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) avoidDuplicateDataAccess: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) writeARXmlDataReceivePointsTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := [:block28100324Arg1 | 
    | block28100324Value0 block28100324Value1 |
    block28100324Value0 := block28100324Arg1.
    block28100324Value1 := (block28100324Value0) isRteWrite.
    block28100324Value1
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateDataAccess: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) writeARXmlDataSendPointsTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := [:block28100348Arg1 | 
    | block28100348Stack0 block28100348Stack1 block28100348Stack2 block28100348Stack3 block28100348PC block28100348Step block28100348Done block28100348Result |
    block28100348Stack0 := self.
    block28100348PC := 4.
    block28100348Done := false.
    [block28100348Done not] whileTrue: [
        block28100348Step := block28100348PC.
        block28100348Step = 4 ifTrue: [
            block28100348Stack1 := true.
            block28100348PC := 5.
        ].
        block28100348Step = 5 ifTrue: [
            block28100348Stack2 := block28100348Arg1.
            block28100348PC := 6.
        ].
        block28100348Step = 6 ifTrue: [
            block28100348Stack2 := (block28100348Stack2) isRteIWriteRef.
            block28100348PC := 8.
        ].
        block28100348Step = 8 ifTrue: [
            (block28100348Stack2) ifTrue: [block28100348PC := 16] ifFalse: [block28100348PC := 12].
        ].
        block28100348Step = 12 ifTrue: [
            block28100348PC := 13.
        ].
        block28100348Step = 13 ifTrue: [
            block28100348Stack1 := block28100348Arg1.
            block28100348PC := 14.
        ].
        block28100348Step = 14 ifTrue: [
            block28100348Stack1 := (block28100348Stack1) isRteIWrite.
            block28100348PC := 16.
        ].
        block28100348Step = 16 ifTrue: [
            block28100348Result := block28100348Stack1.
            block28100348Done := true.
        ].
    ].
    block28100348Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateDataAccess: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) writeARXmlDataWriteAccessTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045ca0c; bytecode file offset 0xd592f0"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
semAnaRteCall: recoveredArg1 executableScope: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustBeCalledFromRunnable: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableEntity.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableEntity.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 117.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabelRunnableDeclRequired.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEventDeclRequired.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) arEvent.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) arEvent.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlARTimingEvent.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRunnableDecl.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 1172.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabelRunnableDeclRequired.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 1171.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabelRunnableDeclRequired.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) runnableEntity.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053c508; bytecode file offset 0xe38e74"
!SGAbstractARXmlComponentGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRunnableTo: recoveredArg1 runnableDecl: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) allIssuedRTECalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2810e19cArg1 :block2810e19cArg2 | 
    | block2810e19cValue0 block2810e19cValue1 block2810e19cValue2 block2810e19cValue3 block2810e19cValue4 block2810e19cValue5 block2810e19cValue6 |
    block2810e19cValue0 := block2810e19cArg1.
    block2810e19cValue1 := (block2810e19cValue0) concreteReceiver.
    block2810e19cValue2 := (block2810e19cValue1) errLabel.
    block2810e19cValue3 := block2810e19cArg2.
    block2810e19cValue4 := (block2810e19cValue3) concreteReceiver.
    block2810e19cValue5 := (block2810e19cValue4) errLabel.
    block2810e19cValue6 := (block2810e19cValue2) < (block2810e19cValue5).
    block2810e19cValue6
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) arCategory.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) arXmlDestinationAttribute: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := SGAutosarAttributes.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) settings.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlLabel.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := (recoveredStack6) scope.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) componentInfo.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) shortNameRunnable: (recoveredStack5) componentInfo: (recoveredStack6).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) uuid.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) shortName: (recoveredStack4) uuid: (recoveredStack5) source: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlShortNameTo: (recoveredStack1) element: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'CAN-BE-INVOKED-CONCURRENTLY'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrInvokedConcurrently.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) writeARXmlExclusiveAreasBeforeReadAccessTo: (recoveredStack1) runnableDecl: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) writeARXmlSRInterfaceElementAccessTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlServerRunnableDecl.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'MINIMUM-START-INTERVAL'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) minimumStartTime.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:block2810e1c0Arg1 | 
    | block2810e1c0Value0 block2810e1c0Value1 |
    block2810e1c0Value0 := block2810e1c0Arg1.
    block2810e1c0Value1 := (block2810e1c0Value0) isRteIrvIWrite.
    block2810e1c0Value1
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := [:block2810e1e4Arg1 | 
    | block2810e1e4Stack0 block2810e1e4Stack1 block2810e1e4Stack2 block2810e1e4Stack3 block2810e1e4PC block2810e1e4Step block2810e1e4Done block2810e1e4Result |
    block2810e1e4Stack0 := self.
    block2810e1e4PC := 4.
    block2810e1e4Done := false.
    [block2810e1e4Done not] whileTrue: [
        block2810e1e4Step := block2810e1e4PC.
        block2810e1e4Step = 4 ifTrue: [
            block2810e1e4Stack1 := true.
            block2810e1e4PC := 5.
        ].
        block2810e1e4Step = 5 ifTrue: [
            block2810e1e4Stack2 := block2810e1e4Arg1.
            block2810e1e4PC := 6.
        ].
        block2810e1e4Step = 6 ifTrue: [
            block2810e1e4Stack2 := (block2810e1e4Stack2) isRteIrvIRead.
            block2810e1e4PC := 8.
        ].
        block2810e1e4Step = 8 ifTrue: [
            (block2810e1e4Stack2) ifTrue: [block2810e1e4PC := 16] ifFalse: [block2810e1e4PC := 12].
        ].
        block2810e1e4Step = 12 ifTrue: [
            block2810e1e4PC := 13.
        ].
        block2810e1e4Step = 13 ifTrue: [
            block2810e1e4Stack1 := block2810e1e4Arg1.
            block2810e1e4PC := 14.
        ].
        block2810e1e4Step = 14 ifTrue: [
            block2810e1e4Stack1 := (block2810e1e4Stack1) isRteIrvRead.
            block2810e1e4PC := 16.
        ].
        block2810e1e4Step = 16 ifTrue: [
            block2810e1e4Result := block2810e1e4Stack1.
            block2810e1e4Done := true.
        ].
    ].
    block2810e1e4Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack4) addAll: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateDataAccess: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) writeARXmlIRVReadAccessTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := [:block2810e208Arg1 | 
    | block2810e208Value0 block2810e208Value1 |
    block2810e208Value0 := block2810e208Arg1.
    block2810e208Value1 := (block2810e208Value0) isRteCall.
    block2810e208Value1
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateCalls: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) writeARXmlServerCallPointsTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 'SYMBOL'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlSymbol: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) writeARXmlExclusiveAreasAfterSymbolTo: (recoveredStack1) runnableDecl: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := [:block2810e22cArg1 | 
    | block2810e22cValue0 block2810e22cValue1 |
    block2810e22cValue0 := block2810e22cArg1.
    block2810e22cValue1 := (block2810e22cValue0) isRteIrvWrite.
    block2810e22cValue1
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack4) addAll: (recoveredStack5).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) avoidDuplicateDataAccess: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) writeARXmlIRVWriteAccessTo: (recoveredStack1) rteCalls: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

