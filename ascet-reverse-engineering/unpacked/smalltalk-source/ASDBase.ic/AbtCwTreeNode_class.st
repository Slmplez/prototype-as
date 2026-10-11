"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200141f0; bytecode file offset 0x912098"
!AbtCwTreeNode class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwTreeNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200161f0; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_showPlusMinus
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showPlusMinus'); setSelector: ('showPlusMinus:'); changeSymbol: ('showPlusMinusChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200178f4; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_nodeName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('nodeName'); setSelector: ('nodeName:'); changeSymbol: ('nodeNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ae10; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_selectedGraphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('selectedGraphicsDescriptor'); setSelector: ('selectedGraphicsDescriptor:'); changeSymbol: ('selectedGraphicsDescriptor'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ae7c; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menu'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001be3c; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_parentNode
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('parentNode'); setSelector: ('parentNode:'); changeSymbol: ('parentNodeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002159c; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_graphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('graphicsDescriptor'); setSelector: ('graphicsDescriptor:'); changeSymbol: ('graphicsDescriptor'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024470; bytecode file offset 0x92209c"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_index
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('index'); setSelector: ('index:'); changeSymbol: ('indexChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20252810; bytecode file offset 0xb4f228"
!AbtCwTreeNode class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_index.
    (recoveredValue2) featureNamed: ('index') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_graphicsDescriptor.
    (recoveredValue4) featureNamed: ('graphicsDescriptor') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_selectedGraphicsDescriptor.
    (recoveredValue6) featureNamed: ('selectedGraphicsDescriptor') put: (recoveredValue7).
    recoveredValue8 := (self) IS_showPlusMinus.
    recoveredValue9 := (recoveredValue1) featureNamed: ('showPlusMinus') put: (recoveredValue8).
    ^recoveredValue9
! !

