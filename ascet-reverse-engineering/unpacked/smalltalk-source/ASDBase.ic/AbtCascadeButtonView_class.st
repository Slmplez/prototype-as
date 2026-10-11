"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012dd4; bytecode file offset 0x912098"
!AbtCascadeButtonView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwCascadeButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200160dc; bytecode file offset 0x92209c"
!AbtCascadeButtonView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016d54; bytecode file offset 0x92209c"
!AbtCascadeButtonView class methodsFor: 'recovered'!
IS_menuCascaded
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('menuCascaded'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026f80; bytecode file offset 0x923928"
!AbtCascadeButtonView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201f03b0; bytecode file offset 0xaecd38"
!AbtCascadeButtonView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_menu.
    (recoveredValue2) featureNamed: ('menu') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_menuCascaded.
    (recoveredValue4) featureNamed: ('menuCascaded') put: (recoveredValue5).
    recoveredValue6 := (self) IS_object.
    recoveredValue7 := (recoveredValue1) featureNamed: ('object') put: (recoveredValue6).
    ^recoveredValue7
! !

