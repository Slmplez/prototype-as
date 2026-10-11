"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015e78; bytecode file offset 0x92209c"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_clientUserName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('clientUserName'); setSelector: (nil); changeSymbol: ('clientNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016448; bytecode file offset 0x92209c"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_enableVerbsMenu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enableVerbsMenu'); setSelector: ('enableVerbsMenu:'); changeSymbol: ('enableVerbsMenu'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aa98; bytecode file offset 0x92209c"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_doVerb_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('doVerb:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('aVerb'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ac84; bytecode file offset 0x92209c"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_verbs
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Array); getSelector: ('verbs'); setSelector: (nil); changeSymbol: ('verbsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f5ec; bytecode file offset 0x92209c"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021e30; bytecode file offset 0x92209c"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_oleWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (CwWidget); getSelector: ('oleWidget'); setSelector: (nil); changeSymbol: ('oleWidgetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202fb72c; bytecode file offset 0xbf8170"
!AbtOlePrimitiveView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_doVerb_.
    (recoveredValue2) featureNamed: ('doVerb:') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_oleWidget.
    (recoveredValue4) featureNamed: ('oleWidget') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_menu.
    (recoveredValue6) featureNamed: ('menu') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_enableVerbsMenu.
    (recoveredValue8) featureNamed: ('enableVerbsMenu') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_verbs.
    (recoveredValue10) featureNamed: ('verbs') put: (recoveredValue11).
    recoveredValue12 := (self) IS_clientUserName.
    recoveredValue13 := (recoveredValue1) featureNamed: ('clientUserName') put: (recoveredValue12).
    ^recoveredValue13
! !

