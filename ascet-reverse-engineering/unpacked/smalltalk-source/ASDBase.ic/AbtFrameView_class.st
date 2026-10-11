"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200145b0; bytecode file offset 0x912098"
!AbtFrameView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwFrame.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200171d4; bytecode file offset 0x92209c"
!AbtFrameView class methodsFor: 'recovered'!
IS_enabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enabled'); setSelector: ('enabled:'); changeSymbol: ('enabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cf7c; bytecode file offset 0x92209c"
!AbtFrameView class methodsFor: 'recovered'!
IS_shadowType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('shadowType'); setSelector: ('shadowType:'); changeSymbol: ('shadowTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200216bc; bytecode file offset 0x92209c"
!AbtFrameView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201f0460; bytecode file offset 0xaecd38"
!AbtFrameView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_shadowType.
    (recoveredValue2) featureNamed: ('shadowType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_enabled.
    (recoveredValue4) featureNamed: ('enabled') put: (recoveredValue5).
    recoveredValue6 := (self) IS_menu.
    recoveredValue7 := (recoveredValue1) featureNamed: ('menu') put: (recoveredValue6).
    ^recoveredValue7
! !

