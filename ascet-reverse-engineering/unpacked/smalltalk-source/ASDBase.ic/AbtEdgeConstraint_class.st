"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016778; bytecode file offset 0x92209c"
!AbtEdgeConstraint class methodsFor: 'recovered'!
IS_offset
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('offset'); setSelector: ('offset:'); changeSymbol: ('offsetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019838; bytecode file offset 0x92209c"
!AbtEdgeConstraint class methodsFor: 'recovered'!
IS_position
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('position'); setSelector: ('position:'); changeSymbol: ('positionChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bd94; bytecode file offset 0x92209c"
!AbtEdgeConstraint class methodsFor: 'recovered'!
IS_offsetChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('offsetChanged'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002480c; bytecode file offset 0x92209c"
!AbtEdgeConstraint class methodsFor: 'recovered'!
IS_attachment
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('attachment'); setSelector: ('attachment:'); changeSymbol: ('attachmentChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026848; bytecode file offset 0x923928"
!AbtEdgeConstraint class methodsFor: 'recovered'!
IS_positionChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('positionChanged'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a8514; bytecode file offset 0xba4eb0"
!AbtEdgeConstraint class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_offset.
    (recoveredValue2) featureNamed: ('offset') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_position.
    (recoveredValue4) featureNamed: ('position') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_attachment.
    (recoveredValue6) featureNamed: ('attachment') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_positionChanged.
    (recoveredValue8) featureNamed: ('positionChanged') put: (recoveredValue9).
    recoveredValue10 := (self) IS_offsetChanged.
    recoveredValue11 := (recoveredValue1) featureNamed: ('offsetChanged') put: (recoveredValue10).
    ^recoveredValue11
! !

