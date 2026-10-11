"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013e54; bytecode file offset 0x912098"
!AbtCwStatusBarView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwStatusBar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016484; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_fontList
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (CwFontList); getSelector: ('fontList'); setSelector: ('fontList:'); changeSymbol: ('fontListChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200165c8; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_items
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('items'); setSelector: (nil); changeSymbol: ('itemsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001673c; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_addItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('addItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtCwPanel'); parameterName: ('anAbtCwPanel'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200173c0; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_deleteItems_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteItems:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('OrderedCollection'); parameterName: ('anOrderedCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aabc; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_deleteAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c694; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_labelString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('labelString'); setSelector: ('labelString:'); changeSymbol: ('labelStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d318; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fcac; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_deleteItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtCwPanel'); parameterName: ('anAbtCwPanel'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022520; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_showPanels
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showPanels'); setSelector: ('showPanels:'); changeSymbol: ('showPanelsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024eb4; bytecode file offset 0x92209c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_currentPanel
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwPanel); getSelector: ('currentPanel'); setSelector: ('currentPanel:'); changeSymbol: ('currentPanelChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20375780; bytecode file offset 0xc7217c"
!AbtCwStatusBarView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_labelString.
    (recoveredValue2) featureNamed: ('labelString') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_showPanels.
    (recoveredValue4) featureNamed: ('showPanels') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_fontName.
    (recoveredValue6) featureNamed: ('fontName') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_deleteAllItems.
    (recoveredValue8) featureNamed: ('deleteAllItems') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_deleteItem_.
    (recoveredValue10) featureNamed: ('deleteItem:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_deleteItems_.
    (recoveredValue12) featureNamed: ('deleteItems:') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_addItem_.
    (recoveredValue14) featureNamed: ('addItem:') put: (recoveredValue15).
    recoveredValue16 := (self) IS_items.
    recoveredValue17 := (recoveredValue1) featureNamed: ('items') put: (recoveredValue16).
    ^recoveredValue17
! !

