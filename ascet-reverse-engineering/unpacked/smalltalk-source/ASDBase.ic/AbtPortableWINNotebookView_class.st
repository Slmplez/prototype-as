"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014a84; bytecode file offset 0x912098"
!AbtPortableWINNotebookView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EwWINNotebook.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bd40; bytecode file offset 0x92209c"
!AbtPortableWINNotebookView class methodsFor: 'recovered'!
IS_tabHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('tabHeight'); setSelector: ('tabHeight:'); changeSymbol: ('tabHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025f48; bytecode file offset 0x923928"
!AbtPortableWINNotebookView class methodsFor: 'recovered'!
IS_tabsPerRow
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('tabsPerRow'); setSelector: ('tabsPerRow:'); changeSymbol: ('tabsPerRowChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016eb60; bytecode file offset 0xa6b454"
!AbtPortableWINNotebookView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_tabsPerRow.
    (recoveredValue2) featureNamed: ('tabsPerRow') put: (recoveredValue3).
    recoveredValue4 := (self) IS_tabHeight.
    recoveredValue5 := (recoveredValue1) featureNamed: ('tabHeight') put: (recoveredValue4).
    ^recoveredValue5
! !

