"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013fec; bytecode file offset 0x912098"
!AbtCwToolBarView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwToolBar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016f4c; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_deleteItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtCwToolButton'); parameterName: ('anAbtCwToolButton'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a444; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_deleteAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ac6c; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b638; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_addItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('addItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtCwToolButton'); parameterName: ('anAbtCwToolButton'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002087c; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_items
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('items'); setSelector: (nil); changeSymbol: ('itemsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022f1c; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_showTips
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showTips'); setSelector: ('showTips:'); changeSymbol: ('showTipsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200241f4; bytecode file offset 0x92209c"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_deleteItems_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteItems:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('OrderedCollection'); parameterName: ('anOrderedCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20339d90; bytecode file offset 0xc367b8"
!AbtCwToolBarView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_fontName.
    (recoveredValue2) featureNamed: ('fontName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_showTips.
    (recoveredValue4) featureNamed: ('showTips') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_deleteAllItems.
    (recoveredValue6) featureNamed: ('deleteAllItems') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_deleteItems_.
    (recoveredValue8) featureNamed: ('deleteItems:') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_deleteItem_.
    (recoveredValue10) featureNamed: ('deleteItem:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_items.
    (recoveredValue12) featureNamed: ('items') put: (recoveredValue13).
    recoveredValue14 := (self) IS_addItem_.
    recoveredValue15 := (recoveredValue1) featureNamed: ('addItem:') put: (recoveredValue14).
    ^recoveredValue15
! !

