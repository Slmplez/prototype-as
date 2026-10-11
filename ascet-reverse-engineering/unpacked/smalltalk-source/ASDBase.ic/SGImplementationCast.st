"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012714; bytecode file offset 0x912098"
!SGImplementationCast methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIImplementationCast.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200185cc; bytecode file offset 0x92209c"
!SGImplementationCast methodsFor: 'recovered'!
xmlElementKind
    ^'implcast'
! !

"ASDBase.ic method 0x2001a39c; bytecode file offset 0x92209c"
!SGImplementationCast methodsFor: 'recovered'!
visualCallBackImage
    ^'ElementsTypeCast'
! !

"ASDBase.ic method 0x2001d9d8; bytecode file offset 0x92209c"
!SGImplementationCast methodsFor: 'recovered'!
kindLabel
    ^'Implementation Cast'
! !

"ASDBase.ic method 0x20037f98; bytecode file offset 0x934b68"
!SGImplementationCast methodsFor: 'recovered'!
kindLabelIfUndefined: recoveredArg1
    ^'Impl. Cast'
! !

"ASDBase.ic method 0x2003f088; bytecode file offset 0x93bf94"
!SGImplementationCast methodsFor: 'recovered'!
fixedTypeForImplCast
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGImplCastType.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200602e8; bytecode file offset 0x95cbb4"
!SGImplementationCast methodsFor: 'recovered'!
getElementScope
    (self) etasDevHalt.
    ^'local'
! !

"ASDBase.ic method 0x200732f8; bytecode file offset 0x970b34"
!SGImplementationCast methodsFor: 'recovered'!
visualCallBackImageGraphic
    ^nil
! !

"ASDBase.ic method 0x20076f14; bytecode file offset 0x9757c8"
!SGImplementationCast methodsFor: 'recovered'!
isImplConfiguredElement
    ^true
! !

"ASDBase.ic method 0x20077efc; bytecode file offset 0x9757c8"
!SGImplementationCast methodsFor: 'recovered'!
isLocal
    ^true
! !

"ASDBase.ic method 0x20077f54; bytecode file offset 0x9757c8"
!SGImplementationCast methodsFor: 'recovered'!
isImplementationCast
    ^true
! !

"ASDBase.ic method 0x2007b89c; bytecode file offset 0x97c330"
!SGImplementationCast methodsFor: 'recovered'!
convertToInterrunnablePossible
    ^false
! !

"ASDBase.ic method 0x2007e294; bytecode file offset 0x97c330"
!SGImplementationCast methodsFor: 'recovered'!
isClassVariable
    ^false
! !

"ASDBase.ic method 0x200baf68; bytecode file offset 0x9b7828"
!SGImplementationCast methodsFor: 'recovered'!
writeXMLKindAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlElementKind.
    (recoveredValue0) attr: ('kind') nmToken: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200efe3c; bytecode file offset 0x9ec7e4"
!SGImplementationCast methodsFor: 'recovered'!
methodPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('castWith') put: (#(150 350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fa834; bytecode file offset 0x9f70f8"
!SGImplementationCast methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := (self) fixedTypeForImplCast.
    (self) sgClass: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20104788; bytecode file offset 0xa01050"
!SGImplementationCast methodsFor: 'recovered'!
graphicObject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGImplementationCastGO.
    recoveredValue1 := (self) methods.
    recoveredValue2 := (self) methodPositions.
    recoveredValue3 := (recoveredValue0) createDefault: ('ImplementationCast') procedures: (recoveredValue1) positions: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2028fe10; bytecode file offset 0xb8c6f8"
!SGImplementationCast methodsFor: 'recovered'!
writeXMLPrimitiveType: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('ElementAttributes').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getModelType.
    (recoveredValue1) attr: ('modelType') nmToken: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) attr: ('basicModelType') nmToken: ('implementationCast').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) unit.
    (recoveredValue4) attr: ('unit') string: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) writeXMLUnitIdAttribute: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) closeComplex.
    recoveredValue8 := recoveredArg1.
    (self) writeXMLCustomerDatas: (recoveredValue8).
    ^self
! !

