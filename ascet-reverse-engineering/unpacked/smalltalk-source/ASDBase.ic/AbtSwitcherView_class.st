"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200198e0; bytecode file offset 0x92209c"
!AbtSwitcherView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b1f4; bytecode file offset 0x92209c"
!AbtSwitcherView class methodsFor: 'recovered'!
IS_enabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enabled'); setSelector: ('enabled:'); changeSymbol: ('enabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025fd8; bytecode file offset 0x923928"
!AbtSwitcherView class methodsFor: 'recovered'!
IS_topViewName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtPart); getSelector: (nil); setSelector: ('topViewName:'); changeSymbol: ('topViewNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026c38; bytecode file offset 0x923928"
!AbtSwitcherView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('topViewNameChanged')
! !

"ASDBase.ic method 0x201f0408; bytecode file offset 0xaecd38"
!AbtSwitcherView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_topViewName.
    (recoveredValue2) featureNamed: ('topViewName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_enabled.
    (recoveredValue4) featureNamed: ('enabled') put: (recoveredValue5).
    recoveredValue6 := (self) IS_menu.
    recoveredValue7 := (recoveredValue1) featureNamed: ('menu') put: (recoveredValue6).
    ^recoveredValue7
! !

