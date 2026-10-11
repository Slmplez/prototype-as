"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f160; bytecode file offset 0x92209c"
!AbtAbstractDragDropSpec class methodsFor: 'recovered'!
IS_canBeDragTarget
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('canBeDragTarget'); setSelector: ('canBeDragTarget:'); changeSymbol: ('canBeDragTargetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022334; bytecode file offset 0x92209c"
!AbtAbstractDragDropSpec class methodsFor: 'recovered'!
IS_canBeDragSource
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('canBeDragSource'); setSelector: ('canBeDragSource:'); changeSymbol: ('canBeDragSourceChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016eb84; bytecode file offset 0xa6b454"
!AbtAbstractDragDropSpec class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_canBeDragSource.
    (recoveredValue2) featureNamed: ('canBeDragSource') put: (recoveredValue3).
    recoveredValue4 := (self) IS_canBeDragTarget.
    recoveredValue5 := (recoveredValue1) featureNamed: ('canBeDragTarget') put: (recoveredValue4).
    ^recoveredValue5
! !

