"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013530; bytecode file offset 0x912098"
!AbtCwTreeView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwTreeView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016280; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_selectedItem
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('selectedItem'); setSelector: ('selectedItem:'); changeSymbol: ('selectedItemChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001658c; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_lineType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('lineType'); setSelector: ('lineType:'); changeSymbol: ('lineTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016880; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_showRootLines
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showRootLines'); setSelector: ('showRootLines:'); changeSymbol: ('showRootLinesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200169c4; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_attributeName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Symbol); getSelector: ('attributeName'); setSelector: ('attributeName:'); changeSymbol: ('attributeNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016b08; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_itemAdded
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemAdded'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016bb0; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_add_parent_index_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('add:parent:index:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('newItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('parentItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anIndex'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001760c; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_addAll_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('addAll:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('OrderedCollection'); parameterName: ('newItemsCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018f2c; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_addAll_parent_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('addAll:parent:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('OrderedCollection'); parameterName: ('newItemsCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('parentItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200192d4; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_deleteItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a9d8; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_add_after_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('add:after:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('newItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('existingItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aa08; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_expandItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('expandItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001be84; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_add_node_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('add:node:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('newItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anAbtCwTreeNode'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c814; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_selectedNode
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwTreeNode); getSelector: ('selectedNode'); setSelector: ('selectedNode:'); changeSymbol: ('selectedNodeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb14; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d2a0; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_showPlusMinus
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showPlusMinus'); setSelector: ('showPlusMinus:'); changeSymbol: ('showPlusMinusChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d480; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_showLines
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showLines'); setSelector: ('showLines:'); changeSymbol: ('showLinesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d4ec; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_collapseItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('collapseItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dd80; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_add_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('add:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('newItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e3f8; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_deselectAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deselectAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e464; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_defaultGraphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('defaultGraphicsDescriptor'); setSelector: ('defaultGraphicsDescriptor:'); changeSymbol: ('defaultGraphicsDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ed88; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_visibleItemCount
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('visibleItemCount'); setSelector: ('visibleItemCount:'); changeSymbol: ('visibleItemCountChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f0ac; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_showImages
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showImages'); setSelector: ('showImages:'); changeSymbol: ('showImagesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fe50; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_rootForItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('rootForItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200219ec; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_childrenForItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('childrenForItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200220f4; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_parentForItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('parentForItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200227f0; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_itemCollapsed
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemCollapsed'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022ce8; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200235c4; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_defaultSelectedGraphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('defaultSelectedGraphicsDescriptor'); setSelector: ('defaultSelectedGraphicsDescriptor:'); changeSymbol: ('defaultSelectedGraphicsDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023b10; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_add_parent_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('add:parent:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('newItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('parentItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023d44; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_deleteItems_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteItems:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('OrderedCollection'); parameterName: ('anItemsCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024908; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_itemExpanded
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemExpanded'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200249e0; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_add_before_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('add:before:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('newItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('existingItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024aac; bytecode file offset 0x92209c"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_showItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('showItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002674c; bytecode file offset 0x923928"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_indentation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('indentation'); setSelector: ('indentation:'); changeSymbol: ('indentationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026764; bytecode file offset 0x923928"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_isExpandedItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('isExpandedItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200268f0; bytecode file offset 0x923928"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_deleteAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x205aae38; bytecode file offset 0xea7808"
!AbtCwTreeView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_indentation.
    (recoveredValue2) featureNamed: ('indentation') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_showImages.
    (recoveredValue4) featureNamed: ('showImages') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_showPlusMinus.
    (recoveredValue6) featureNamed: ('showPlusMinus') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_deleteAllItems.
    (recoveredValue8) featureNamed: ('deleteAllItems') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_deleteItem_.
    (recoveredValue10) featureNamed: ('deleteItem:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_expandItem_.
    (recoveredValue12) featureNamed: ('expandItem:') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_isExpandedItem_.
    (recoveredValue14) featureNamed: ('isExpandedItem:') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_showItem_.
    (recoveredValue16) featureNamed: ('showItem:') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_selectedItem.
    (recoveredValue18) featureNamed: ('selectedItem') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_menu.
    (recoveredValue20) featureNamed: ('menu') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_fontName.
    (recoveredValue22) featureNamed: ('fontName') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_attributeName.
    (recoveredValue24) featureNamed: ('attributeName') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_add_.
    (recoveredValue26) featureNamed: ('add:') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) IS_add_after_.
    (recoveredValue28) featureNamed: ('add:after:') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) IS_add_before_.
    (recoveredValue30) featureNamed: ('add:before:') put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := (self) IS_add_parent_index_.
    (recoveredValue32) featureNamed: ('add:parent:index:') put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := (self) IS_selectedNode.
    (recoveredValue34) featureNamed: ('selectedNode') put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := (self) IS_itemCollapsed.
    (recoveredValue36) featureNamed: ('itemCollapsed') put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := (self) IS_itemExpanded.
    (recoveredValue38) featureNamed: ('itemExpanded') put: (recoveredValue39).
    recoveredValue40 := recoveredValue1.
    recoveredValue41 := (self) IS_collapseItem_.
    (recoveredValue40) featureNamed: ('collapseItem:') put: (recoveredValue41).
    recoveredValue42 := recoveredValue1.
    recoveredValue43 := (self) IS_showLines.
    (recoveredValue42) featureNamed: ('showLines') put: (recoveredValue43).
    recoveredValue44 := recoveredValue1.
    recoveredValue45 := (self) IS_showRootLines.
    (recoveredValue44) featureNamed: ('showRootLines') put: (recoveredValue45).
    recoveredValue46 := recoveredValue1.
    recoveredValue47 := (self) IS_visibleItemCount.
    (recoveredValue46) featureNamed: ('visibleItemCount') put: (recoveredValue47).
    recoveredValue48 := recoveredValue1.
    recoveredValue49 := (self) IS_parentForItem_.
    (recoveredValue48) featureNamed: ('parentForItem:') put: (recoveredValue49).
    recoveredValue50 := recoveredValue1.
    recoveredValue51 := (self) IS_rootForItem_.
    (recoveredValue50) featureNamed: ('rootForItem:') put: (recoveredValue51).
    recoveredValue52 := recoveredValue1.
    recoveredValue53 := (self) IS_childrenForItem_.
    (recoveredValue52) featureNamed: ('childrenForItem:') put: (recoveredValue53).
    recoveredValue54 := recoveredValue1.
    recoveredValue55 := (self) IS_defaultGraphicsDescriptor.
    (recoveredValue54) featureNamed: ('defaultGraphicsDescriptor') put: (recoveredValue55).
    recoveredValue56 := recoveredValue1.
    recoveredValue57 := (self) IS_defaultSelectedGraphicsDescriptor.
    (recoveredValue56) featureNamed: ('defaultSelectedGraphicsDescriptor') put: (recoveredValue57).
    recoveredValue58 := recoveredValue1.
    recoveredValue59 := (self) IS_itemAdded.
    (recoveredValue58) featureNamed: ('itemAdded') put: (recoveredValue59).
    recoveredValue60 := recoveredValue1.
    recoveredValue61 := (self) IS_add_parent_.
    (recoveredValue60) featureNamed: ('add:parent:') put: (recoveredValue61).
    recoveredValue62 := recoveredValue1.
    recoveredValue63 := (self) IS_deleteItems_.
    (recoveredValue62) featureNamed: ('deleteItems:') put: (recoveredValue63).
    recoveredValue64 := recoveredValue1.
    recoveredValue65 := (self) IS_deselectAllItems.
    (recoveredValue64) featureNamed: ('deselectAllItems') put: (recoveredValue65).
    recoveredValue66 := recoveredValue1.
    recoveredValue67 := (self) IS_addAll_.
    (recoveredValue66) featureNamed: ('addAll:') put: (recoveredValue67).
    recoveredValue68 := (self) IS_addAll_parent_.
    recoveredValue69 := (recoveredValue1) featureNamed: ('addAll:parent:') put: (recoveredValue68).
    ^recoveredValue69
! !

