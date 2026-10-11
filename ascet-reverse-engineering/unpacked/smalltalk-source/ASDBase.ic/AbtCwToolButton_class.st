"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019670; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_width
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('separatorWidth'); setSelector: ('separatorWidth:'); changeSymbol: ('separatorWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c7b4; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_toolTipText
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('toolTipText'); setSelector: ('toolTipText:'); changeSymbol: ('toolTipTextChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cad8; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_clicked
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('clicked'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002180c; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_image
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('image'); setSelector: ('image:'); changeSymbol: ('imageChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022b2c; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_buttonType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('buttonType'); setSelector: ('buttonType:'); changeSymbol: ('buttonTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023654; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_set
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('set'); setSelector: ('set:'); changeSymbol: ('setChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002417c; bytecode file offset 0x92209c"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_graphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('graphicsDescriptor'); setSelector: ('graphicsDescriptor:'); changeSymbol: ('graphicsDescriptor'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a849c; bytecode file offset 0xba4eb0"
!AbtCwToolButton class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_buttonType.
    (recoveredValue2) featureNamed: ('buttonType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_set.
    (recoveredValue4) featureNamed: ('set') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_toolTipText.
    (recoveredValue6) featureNamed: ('toolTipText') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_clicked.
    (recoveredValue8) featureNamed: ('clicked') put: (recoveredValue9).
    recoveredValue10 := (self) IS_graphicsDescriptor.
    recoveredValue11 := (recoveredValue1) featureNamed: ('graphicsDescriptor') put: (recoveredValue10).
    ^recoveredValue11
! !

