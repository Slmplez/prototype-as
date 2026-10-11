"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012b34; bytecode file offset 0x912098"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EwPMNotebook.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016ae4; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_minorTabWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('minorTabWidth'); setSelector: ('minorTabWidth:'); changeSymbol: ('minorTabWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016f10; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_majorTabHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('majorTabHeight'); setSelector: ('majorTabHeight:'); changeSymbol: ('majorTabHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001865c; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_minorTabHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('minorTabHeight'); setSelector: ('minorTabHeight:'); changeSymbol: ('minorTabHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b8d8; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_backPagePosition
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('backPagePosition'); setSelector: ('backPagePosition:'); changeSymbol: ('backPagePositionChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c640; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_pageButtonHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('pageButtonHeight'); setSelector: ('pageButtonHeight:'); changeSymbol: ('pageButtonHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001df0c; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_orientation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('orientation'); setSelector: ('orientation:'); changeSymbol: ('orientationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f580; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_bindingType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('bindingType'); setSelector: ('bindingType:'); changeSymbol: ('bindingTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002483c; bytecode file offset 0x92209c"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_pageButtonWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('pageButtonWidth'); setSelector: ('pageButtonWidth:'); changeSymbol: ('pageButtonWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025bf4; bytecode file offset 0x923928"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_majorTabWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('majorTabWidth'); setSelector: ('majorTabWidth:'); changeSymbol: ('majorTabWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203a7f64; bytecode file offset 0xca48c8"
!AbtPortablePMNotebookView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_bindingType.
    (recoveredValue2) featureNamed: ('bindingType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_backPagePosition.
    (recoveredValue4) featureNamed: ('backPagePosition') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_majorTabWidth.
    (recoveredValue6) featureNamed: ('majorTabWidth') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_minorTabHeight.
    (recoveredValue8) featureNamed: ('minorTabHeight') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_orientation.
    (recoveredValue10) featureNamed: ('orientation') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_minorTabWidth.
    (recoveredValue12) featureNamed: ('minorTabWidth') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_pageButtonWidth.
    (recoveredValue14) featureNamed: ('pageButtonWidth') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_majorTabHeight.
    (recoveredValue16) featureNamed: ('majorTabHeight') put: (recoveredValue17).
    recoveredValue18 := (self) IS_pageButtonHeight.
    recoveredValue19 := (recoveredValue1) featureNamed: ('pageButtonHeight') put: (recoveredValue18).
    ^recoveredValue19
! !

