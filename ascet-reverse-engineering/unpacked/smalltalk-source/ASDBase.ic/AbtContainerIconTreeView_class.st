"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013f68; bytecode file offset 0x912098"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EwIconTree.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aa8c; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_itemChildrenAttributes
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Dictionary); getSelector: ('itemChildrenAttributes'); setSelector: ('itemChildrenAttributes:'); changeSymbol: ('itemChildrenAttributesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aeac; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_itemHasChildrenAttributes
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Dictionary); getSelector: ('itemHasChildrenAttributes'); setSelector: ('itemHasChildrenAttributes:'); changeSymbol: ('itemHasChildrenAttributesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b17c; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_itemChildrenRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemChildrenRequested'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b4dc; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_collapseItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('collapseItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f154; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_hierarchyPolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtHierarchyPolicy); getSelector: ('hierarchyPolicy'); setSelector: ('hierarchyPolicy:'); changeSymbol: ('hierarchyPolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200210c8; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_itemCollapsed
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemCollapsed'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021f5c; bytecode file offset 0x92209c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_expandItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('expandItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025e40; bytecode file offset 0x923928"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_itemExpanded
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemExpanded'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2037572c; bytecode file offset 0xc7217c"
!AbtContainerIconTreeView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_itemHasChildrenAttributes.
    (recoveredValue2) featureNamed: ('itemHasChildrenAttributes') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_itemChildrenAttributes.
    (recoveredValue4) featureNamed: ('itemChildrenAttributes') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_hierarchyPolicy.
    (recoveredValue6) featureNamed: ('hierarchyPolicy') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_itemCollapsed.
    (recoveredValue8) featureNamed: ('itemCollapsed') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_itemExpanded.
    (recoveredValue10) featureNamed: ('itemExpanded') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_collapseItem_.
    (recoveredValue12) featureNamed: ('collapseItem:') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_expandItem_.
    (recoveredValue14) featureNamed: ('expandItem:') put: (recoveredValue15).
    recoveredValue16 := (self) IS_itemChildrenRequested.
    recoveredValue17 := (recoveredValue1) featureNamed: ('itemChildrenRequested') put: (recoveredValue16).
    ^recoveredValue17
! !

