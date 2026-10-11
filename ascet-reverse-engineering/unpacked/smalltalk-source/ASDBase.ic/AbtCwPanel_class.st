"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017870; bytecode file offset 0x92209c"
!AbtCwPanel class methodsFor: 'recovered'!
IS_labelString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('labelString'); setSelector: ('labelString:'); changeSymbol: ('labelStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aec4; bytecode file offset 0x92209c"
!AbtCwPanel class methodsFor: 'recovered'!
IS_width
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('width'); setSelector: ('width:'); changeSymbol: ('widthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022508; bytecode file offset 0x92209c"
!AbtCwPanel class methodsFor: 'recovered'!
IS_shadowType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('shadowType'); setSelector: ('shadowType:'); changeSymbol: ('shadowTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024578; bytecode file offset 0x92209c"
!AbtCwPanel class methodsFor: 'recovered'!
IS_clicked
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('clicked'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024fbc; bytecode file offset 0x92209c"
!AbtCwPanel class methodsFor: 'recovered'!
IS_recomputeSize
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('recomputeSize'); setSelector: ('recomputeSize:'); changeSymbol: ('recomputeSizeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20252948; bytecode file offset 0xb4f228"
!AbtCwPanel class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_recomputeSize.
    (recoveredValue2) featureNamed: ('recomputeSize') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_shadowType.
    (recoveredValue4) featureNamed: ('shadowType') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_width.
    (recoveredValue6) featureNamed: ('width') put: (recoveredValue7).
    recoveredValue8 := (self) IS_clicked.
    recoveredValue9 := (recoveredValue1) featureNamed: ('clicked') put: (recoveredValue8).
    ^recoveredValue9
! !

