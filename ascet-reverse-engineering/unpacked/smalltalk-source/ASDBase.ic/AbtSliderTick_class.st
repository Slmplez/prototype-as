"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025ef4; bytecode file offset 0x923928"
!AbtSliderTick class methodsFor: 'recovered'!
IS_tickSize
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: ('Integer'); getSelector: ('tickSize'); setSelector: ('tickSize:'); changeSymbol: ('tickSizeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e0c5c; bytecode file offset 0x9dd578"
!AbtSliderTick class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) IS_tickSize.
    recoveredValue3 := (recoveredValue1) featureNamed: ('tickSize') put: (recoveredValue2).
    ^recoveredValue3
! !

