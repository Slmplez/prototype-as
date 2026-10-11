"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015bfc; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('selectionPolicy'); setSelector: ('selectionPolicy:'); changeSymbol: ('selectionPolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017aa4; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_refreshItemOnAttributeChange
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('refreshItemOnAttributeChange'); setSelector: ('refreshItemOnAttributeChange:'); changeSymbol: ('refreshItemOnAttributeChangeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b0d4; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_attributeName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Symbol); getSelector: ('attributeName'); setSelector: ('attributeName:'); changeSymbol: ('attributeNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f31c; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_showHorizontalScrollBar
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showHorizontalScrollBar'); setSelector: ('showHorizontalScrollBar:'); changeSymbol: ('showHorizontalScrollBarChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fb20; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_items
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('items'); setSelector: ('items:'); changeSymbol: ('itemsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ff28; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_defaultActionRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('defaultActionRequested'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200203fc; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_refreshEntireListOnChange
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('refreshEntireListOnChange'); setSelector: ('refreshEntireListOnChange:'); changeSymbol: ('refreshEntireListOnChangeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200212b4; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_itemMenu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('itemMenu'); setSelector: ('itemMenu:'); changeSymbol: ('itemMenuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021320; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_popUpMenuRequest
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('popUpMenuRequest'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022154; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_itemPopUpMenuRequest
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemPopUpMenuRequest'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022748; bytecode file offset 0x92209c"
!AbtExtendedList class methodsFor: 'recovered'!
IS_enabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enabled'); setSelector: ('enabled:'); changeSymbol: ('enabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002593c; bytecode file offset 0x923928"
!AbtExtendedList class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026c8c; bytecode file offset 0x923928"
!AbtExtendedList class methodsFor: 'recovered'!
IS_scrollBarDisplayPolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('scrollBarDisplayPolicy'); setSelector: ('scrollBarDisplayPolicy:'); changeSymbol: ('scrollBarDisplayPolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x204417ac; bytecode file offset 0xd3e150"
!AbtExtendedList class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_refreshItemOnAttributeChange.
    (recoveredValue2) featureNamed: ('refreshItemOnAttributeChange') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_selectionPolicy.
    (recoveredValue4) featureNamed: ('selectionPolicy') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_items.
    (recoveredValue6) featureNamed: ('items') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_showHorizontalScrollBar.
    (recoveredValue8) featureNamed: ('showHorizontalScrollBar') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_attributeName.
    (recoveredValue10) featureNamed: ('attributeName') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_menu.
    (recoveredValue12) featureNamed: ('menu') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_itemMenu.
    (recoveredValue14) featureNamed: ('itemMenu') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_defaultActionRequested.
    (recoveredValue16) featureNamed: ('defaultActionRequested') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_refreshEntireListOnChange.
    (recoveredValue18) featureNamed: ('refreshEntireListOnChange') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_popUpMenuRequest.
    (recoveredValue20) featureNamed: ('popUpMenuRequest') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_itemPopUpMenuRequest.
    (recoveredValue22) featureNamed: ('itemPopUpMenuRequest') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_enabled.
    (recoveredValue24) featureNamed: ('enabled') put: (recoveredValue25).
    recoveredValue26 := (self) IS_scrollBarDisplayPolicy.
    recoveredValue27 := (recoveredValue1) featureNamed: ('scrollBarDisplayPolicy') put: (recoveredValue26).
    ^recoveredValue27
! !

