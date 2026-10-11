"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200143e8; bytecode file offset 0x912098"
!AbtHierarchyPolicy class methodsFor: 'recovered'!
widgetHierarchyPolicyClass
    | recoveredValue0 |
    recoveredValue0 := EwHierarchyPolicy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c6d0; bytecode file offset 0x92209c"
!AbtHierarchyPolicy class methodsFor: 'recovered'!
IS_leftMargin
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('leftMargin'); setSelector: ('leftMargin:'); changeSymbol: ('leftMarginChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d3c0; bytecode file offset 0x92209c"
!AbtHierarchyPolicy class methodsFor: 'recovered'!
IS_rightMargin
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('rightMargin'); setSelector: ('rightMargin:'); changeSymbol: ('rightMarginChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020fb4; bytecode file offset 0x92209c"
!AbtHierarchyPolicy class methodsFor: 'recovered'!
IS_lines
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('lines'); setSelector: ('lines:'); changeSymbol: ('linesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023ffc; bytecode file offset 0x92209c"
!AbtHierarchyPolicy class methodsFor: 'recovered'!
IS_indentationWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('indentationWidth'); setSelector: ('indentationWidth:'); changeSymbol: ('indentationWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202528e0; bytecode file offset 0xb4f228"
!AbtHierarchyPolicy class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_lines.
    (recoveredValue2) featureNamed: ('lines') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_leftMargin.
    (recoveredValue4) featureNamed: ('leftMargin') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_rightMargin.
    (recoveredValue6) featureNamed: ('rightMargin') put: (recoveredValue7).
    recoveredValue8 := (self) IS_indentationWidth.
    recoveredValue9 := (recoveredValue1) featureNamed: ('indentationWidth') put: (recoveredValue8).
    ^recoveredValue9
! !

