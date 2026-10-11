"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200163f4; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_autoTab
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('autoTab'); setSelector: ('autoTab:'); changeSymbol: ('autoTabChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200169e8; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_cutSelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('cutSelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200176c0; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_scroll_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('scroll:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('linesToBeScrolled'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200180bc; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_showHorizontalScrollBar
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showHorizontalScrollBar'); setSelector: ('showHorizontalScrollBar:'); changeSymbol: ('showHorizontalScrollBarChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bb24; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_popUpMenuRequest
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('popUpMenuRequest'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c55c; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e0c8; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_tabSpacing
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('tabSpacing'); setSelector: ('tabSpacing:'); changeSymbol: ('tabSpacingChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020234; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_showVerticalScrollBar
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showVerticalScrollBar'); setSelector: ('showVerticalScrollBar:'); changeSymbol: ('showVerticalScrollBarChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021278; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_wordWrap
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('wordWrap'); setSelector: ('wordWrap:'); changeSymbol: ('wordWrapChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200225d4; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_paste
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('paste'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200227cc; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_copySelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('copySelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023c90; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_querySelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('getSelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024fb0; bytecode file offset 0x92209c"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_alignment
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('alignment'); setSelector: ('alignment:'); changeSymbol: ('alignmentChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200267f4; bytecode file offset 0x923928"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2045f550; bytecode file offset 0xd5bf88"
!AbtMultiLineEditView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_menu.
    (recoveredValue2) featureNamed: ('menu') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_wordWrap.
    (recoveredValue4) featureNamed: ('wordWrap') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_showHorizontalScrollBar.
    (recoveredValue6) featureNamed: ('showHorizontalScrollBar') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_showVerticalScrollBar.
    (recoveredValue8) featureNamed: ('showVerticalScrollBar') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_tabSpacing.
    (recoveredValue10) featureNamed: ('tabSpacing') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_popUpMenuRequest.
    (recoveredValue12) featureNamed: ('popUpMenuRequest') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_scroll_.
    (recoveredValue14) featureNamed: ('scroll:') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_autoTab.
    (recoveredValue16) featureNamed: ('autoTab') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_alignment.
    (recoveredValue18) featureNamed: ('alignment') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_object.
    (recoveredValue20) featureNamed: ('object') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_copySelection.
    (recoveredValue22) featureNamed: ('copySelection') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_cutSelection.
    (recoveredValue24) featureNamed: ('cutSelection') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_paste.
    (recoveredValue26) featureNamed: ('paste') put: (recoveredValue27).
    recoveredValue28 := (self) IS_querySelection.
    recoveredValue29 := (recoveredValue1) featureNamed: ('querySelection') put: (recoveredValue28).
    ^recoveredValue29
! !

