"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ee24; bytecode file offset 0x92209c"
!AbtPortableNotebook class methodsFor: 'recovered'!
IS_aboutToChangePages
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToChangePages'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021728; bytecode file offset 0x92209c"
!AbtPortableNotebook class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021f98; bytecode file offset 0x92209c"
!AbtPortableNotebook class methodsFor: 'recovered'!
IS_currentPageIndex
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('currentPageIndex'); setSelector: ('currentPageIndex:'); changeSymbol: ('currentPageIndexChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002300c; bytecode file offset 0x92209c"
!AbtPortableNotebook class methodsFor: 'recovered'!
IS_currentPage
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtPortableNotebookPageView); getSelector: ('currentPage'); setSelector: ('currentPage:'); changeSymbol: ('currentPageChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20252844; bytecode file offset 0xb4f228"
!AbtPortableNotebook class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_aboutToChangePages.
    (recoveredValue2) featureNamed: ('aboutToChangePages') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_fontName.
    (recoveredValue4) featureNamed: ('fontName') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_currentPageIndex.
    (recoveredValue6) featureNamed: ('currentPageIndex') put: (recoveredValue7).
    recoveredValue8 := (self) IS_currentPage.
    recoveredValue9 := (recoveredValue1) featureNamed: ('currentPage') put: (recoveredValue8).
    ^recoveredValue9
! !

