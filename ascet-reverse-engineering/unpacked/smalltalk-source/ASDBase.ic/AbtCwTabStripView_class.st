"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012f78; bytecode file offset 0x912098"
!AbtCwTabStripView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwTabStrip.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cee0; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_removeTab_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('removeTab:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('AbtCwTabView'); parameterName: ('anAbtCwTabView'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d774; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_selectedItem
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (CwTab); getSelector: ('selectedItem'); setSelector: (nil); changeSymbol: ('selectedItem'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020444; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_item_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('item:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anInteger'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020594; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200209b4; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_currentTabIndex
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('currentTabIndex'); setSelector: ('currentTabIndex:'); changeSymbol: ('currentTabIndexChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021464; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_clear
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('clear'); parameters: ((OrderedCollection new) yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024e30; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_currentTab
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwTabView); getSelector: ('currentTab'); setSelector: ('currentTab:'); changeSymbol: ('currentTabChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200254e4; bytecode file offset 0x92209c"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_remove_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('remove:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anInteger'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025bac; bytecode file offset 0x923928"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_showTips
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showTips'); setSelector: ('showTips:'); changeSymbol: ('showTipsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a858c; bytecode file offset 0xba4eb0"
!AbtCwTabStripView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_fontName.
    (recoveredValue2) featureNamed: ('fontName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_showTips.
    (recoveredValue4) featureNamed: ('showTips') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_currentTab.
    (recoveredValue6) featureNamed: ('currentTab') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_currentTabIndex.
    (recoveredValue8) featureNamed: ('currentTabIndex') put: (recoveredValue9).
    recoveredValue10 := (self) IS_removeTab_.
    recoveredValue11 := (recoveredValue1) featureNamed: ('removeTab:') put: (recoveredValue10).
    ^recoveredValue11
! !

