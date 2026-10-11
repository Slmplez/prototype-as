"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020eac; bytecode file offset 0x92209c"
!AbtSliderDetent class methodsFor: 'recovered'!
IS_label
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('label'); setSelector: ('label:'); changeSymbol: ('labelChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002270c; bytecode file offset 0x92209c"
!AbtSliderDetent class methodsFor: 'recovered'!
IS_position
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Number); getSelector: ('position'); setSelector: ('position:'); changeSymbol: ('positionChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016eaf4; bytecode file offset 0xa6b454"
!AbtSliderDetent class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_position.
    (recoveredValue2) featureNamed: ('position') put: (recoveredValue3).
    recoveredValue4 := (self) IS_label.
    recoveredValue5 := (recoveredValue1) featureNamed: ('label') put: (recoveredValue4).
    ^recoveredValue5
! !

