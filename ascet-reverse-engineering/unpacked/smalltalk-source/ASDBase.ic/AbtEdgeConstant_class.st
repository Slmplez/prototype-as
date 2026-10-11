"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a3d8; bytecode file offset 0x92209c"
!AbtEdgeConstant class methodsFor: 'recovered'!
IS_offsetIsPosition
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('offsetIsPosition'); setSelector: ('offsetIsPosition:'); changeSymbol: ('offsetIsPosition'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d468; bytecode file offset 0x92209c"
!AbtEdgeConstant class methodsFor: 'recovered'!
IS_offset
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('primOffset'); setSelector: ('offset:'); changeSymbol: ('offsetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016ead0; bytecode file offset 0xa6b454"
!AbtEdgeConstant class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_offset.
    (recoveredValue2) featureNamed: ('offset') put: (recoveredValue3).
    recoveredValue4 := (self) IS_offsetIsPosition.
    recoveredValue5 := (recoveredValue1) featureNamed: ('offsetIsPosition') put: (recoveredValue4).
    ^recoveredValue5
! !

