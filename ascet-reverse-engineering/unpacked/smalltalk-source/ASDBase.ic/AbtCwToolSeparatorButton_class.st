"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015af4; bytecode file offset 0x92209c"
!AbtCwToolSeparatorButton class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b398; bytecode file offset 0x92209c"
!AbtCwToolSeparatorButton class methodsFor: 'recovered'!
IS_view
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtBasicView); getSelector: ('view'); setSelector: ('view:'); changeSymbol: ('viewChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d1e0; bytecode file offset 0x92209c"
!AbtCwToolSeparatorButton class methodsFor: 'recovered'!
IS_width
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('width'); setSelector: ('width:'); changeSymbol: ('widthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024f98; bytecode file offset 0x92209c"
!AbtCwToolSeparatorButton class methodsFor: 'recovered'!
IS_labelString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('labelString'); setSelector: ('labelString:'); changeSymbol: ('labelStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20252914; bytecode file offset 0xb4f228"
!AbtCwToolSeparatorButton class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_width.
    (recoveredValue2) featureNamed: ('width') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_view.
    (recoveredValue4) featureNamed: ('view') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_menu.
    (recoveredValue6) featureNamed: ('menu') put: (recoveredValue7).
    recoveredValue8 := (self) IS_labelString.
    recoveredValue9 := (recoveredValue1) featureNamed: ('labelString') put: (recoveredValue8).
    ^recoveredValue9
! !

