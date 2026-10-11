"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005520; bytecode file offset 0x90206c"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
semAnaRteMacroCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005de0; bytecode file offset 0x902744"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasAfterSymbolTo: recoveredArg1 runnableDecl: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200149dc; bytecode file offset 0x912098"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
semAnaInstanceClass
    | recoveredValue0 |
    recoveredValue0 := SGMdSemAnaAR3Instances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019130; bytecode file offset 0x92209c"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
tagImplementation
    ^'SWC-IMPLEMENTATION'
! !

"ASDBase.ic method 0x20019718; bytecode file offset 0x92209c"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
tagUsesExclusiveAreas
    ^'CAN-ENTER-EXCLUSIVE-AREA-REFS'
! !

"ASDBase.ic method 0x2001b770; bytecode file offset 0x92209c"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
tagAtomicSoftwareComponent
    ^'APPLICATION-SOFTWARE-COMPONENT-TYPE'
! !

"ASDBase.ic method 0x20025244; bytecode file offset 0x92209c"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
tagExclusiveAreaRef
    ^'CAN-ENTER-EXCLUSIVE-AREA-REF'
! !

"ASDBase.ic method 0x200885ac; bytecode file offset 0x985628"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
createARXmlTypesGenerator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGAR3XmlTypesGeneratorStrategy.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099744; bytecode file offset 0x9961d0"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlExclusiveAreasBeforeReadAccessTo: recoveredArg1 runnableDecl: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) writeARXmlExclusiveAreasTo: (recoveredValue0) runnableDecl: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2029504c; bytecode file offset 0xb91924"
!SGAR3XmlGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCodeDescriptionTo: recoveredArg1 attributes: recoveredArg2 mdlInterface: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('CODE-DESCRIPTORS').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) writeARXmlShortNameTo: (recoveredValue2) element: ('CODE') attributes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) writeARXmlCodeTypeTo: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) writeARXmlTo: (recoveredValue6) element: ('PROGRAMMING-LANGUAGE') text: ('C').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg3.
    (self) writeARXmlBehaviorRefTo: (recoveredValue7) mdlInterface: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    ^recoveredValue9
! !

