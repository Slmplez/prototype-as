"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003758; bytecode file offset 0x90206c"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
semAnaRteMacroCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200058e0; bytecode file offset 0x902744"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRequirededComSpecsTo: recoveredArg1 varDecl: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005ae8; bytecode file offset 0x902744"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasBeforeReadAccessTo: recoveredArg1 runnableDecl: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005e48; bytecode file offset 0x902744"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlProvidedComSpecsTo: recoveredArg1 varDecl: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20015768; bytecode file offset 0x912098"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
semAnaInstanceClass
    | recoveredValue0 |
    recoveredValue0 := SGMdSemAnaAR2Instances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001eff8; bytecode file offset 0x92209c"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
tagAtomicSoftwareComponent
    ^'ATOMIC-SOFTWARE-COMPONENT-TYPE'
! !

"ASDBase.ic method 0x2001f8f8; bytecode file offset 0x92209c"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
tagUsesExclusiveAreas
    ^'USES-EXCLUSIVE-AREAS'
! !

"ASDBase.ic method 0x2001fdc0; bytecode file offset 0x92209c"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
tagExclusiveAreaRef
    ^'EXCLUSIVE-AREA-REF'
! !

"ASDBase.ic method 0x200210d4; bytecode file offset 0x92209c"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
tagImplementation
    ^'IMPLEMENTATION'
! !

"ASDBase.ic method 0x20088b10; bytecode file offset 0x985628"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
createARXmlTypesGenerator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGAR2XmlTypesGeneratorStrategy.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099798; bytecode file offset 0x9961d0"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasAfterSymbolTo: recoveredArg1 runnableDecl: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) writeARXmlExclusiveAreasTo: (recoveredValue0) runnableDecl: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014b204; bytecode file offset 0xa47ac8"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreaRefTo: recoveredArg1 exclusiveArea: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('RUNNABLE-ENTITY-CAN-ENTER-EXCLUSIVE-AREA').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    super writeARXmlExclusiveAreaRefTo: (recoveredValue2) exclusiveArea: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2018c064; bytecode file offset 0xa88928"
!SGAR2XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCodeDescriptionTo: recoveredArg1 attributes: recoveredArg2 mdlInterface: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    (self) writeARXmlBehaviorRefTo: (recoveredValue0) mdlInterface: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) writeARXmlShortNameTo: (recoveredValue2) element: ('CODE-DESCRIPTOR') attributes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) writeARXmlCodeTypeTo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

