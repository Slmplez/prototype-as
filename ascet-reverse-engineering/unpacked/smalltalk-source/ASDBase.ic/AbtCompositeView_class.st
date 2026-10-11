"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017ee8; bytecode file offset 0x92209c"
!AbtCompositeView class methodsFor: 'recovered'!
IS_hoverHelpEnabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('hoverHelpEnabled'); setSelector: ('hoverHelpEnabled:'); changeSymbol: ('hoverHelpEnabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a438; bytecode file offset 0x92209c"
!AbtCompositeView class methodsFor: 'recovered'!
IS_hoverHelpRemoved
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('hoverHelpRemoved'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtEwHoverHelpCallbackData'); parameterName: ('hoverHelpCallData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c898; bytecode file offset 0x92209c"
!AbtCompositeView class methodsFor: 'recovered'!
IS_hoverHelpRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('hoverHelpRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtEwHoverHelpCallbackData'); parameterName: ('hoverHelpCallData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ce20; bytecode file offset 0x92209c"
!AbtCompositeView class methodsFor: 'recovered'!
IS_dragDropSpec
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtDragDropSpec); getSelector: ('dragDropSpec'); setSelector: ('dragDropSpec:'); changeSymbol: ('dragDropSpecChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200217d0; bytecode file offset 0x92209c"
!AbtCompositeView class methodsFor: 'recovered'!
IS_popUpMenuRequest
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('popUpMenuRequest'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024e00; bytecode file offset 0x92209c"
!AbtCompositeView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202fb7b4; bytecode file offset 0xbf8170"
!AbtCompositeView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_menu.
    (recoveredValue2) featureNamed: ('menu') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_popUpMenuRequest.
    (recoveredValue4) featureNamed: ('popUpMenuRequest') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_hoverHelpRequested.
    (recoveredValue6) featureNamed: ('hoverHelpRequested') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_hoverHelpRemoved.
    (recoveredValue8) featureNamed: ('hoverHelpRemoved') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_hoverHelpEnabled.
    (recoveredValue10) featureNamed: ('hoverHelpEnabled') put: (recoveredValue11).
    recoveredValue12 := (self) IS_dragDropSpec.
    recoveredValue13 := (recoveredValue1) featureNamed: ('dragDropSpec') put: (recoveredValue12).
    ^recoveredValue13
! !

