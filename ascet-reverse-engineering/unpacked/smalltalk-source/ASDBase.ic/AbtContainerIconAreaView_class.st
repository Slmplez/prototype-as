"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013170; bytecode file offset 0x912098"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EwIconArea.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016004; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_aboutToBeginEdit
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToBeginEdit'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('EwBeginEditCallbackData'); parameterName: ('beginEditInfo'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200167c0; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_refreshAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001718c; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_visualInfoRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('visualInfoRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('EwVisualInfoCallbackData'); parameterName: ('itemVisualInfo'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018f44; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_editable
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('editable'); setSelector: ('editable:'); changeSymbol: ('editableChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200199d0; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_selectItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('selectItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a3cc; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_selectionIsValid
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('selectionIsValid'); setSelector: (nil); changeSymbol: ('selectionIsValidChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a42c; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_deselectAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deselectAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b170; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_makeItemFullyVisible_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('makeItemFullyVisible:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c1cc; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_aboutToEndEdit
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToEndEdit'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('EwEndEditCallbackData'); parameterName: ('endEditInfo'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d198; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_editItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('editItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dc00; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_refreshItems_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshItems:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Collection'); parameterName: ('aCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001eb18; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_labelOrientation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('labelOrientation'); setSelector: ('labelOrientation:'); changeSymbol: ('labelOrientationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f19c; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_defaultItemIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('defaultItemIconDescriptor'); setSelector: ('defaultItemIconDescriptor:'); changeSymbol: ('defaultItemIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f28c; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_innerMargin
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('innerMargin'); setSelector: ('innerMargin:'); changeSymbol: ('innerMarginChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ff34; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022814; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_selectedItem
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('selectedItem'); setSelector: ('selectedItem:'); changeSymbol: ('selectedItemChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022838; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_arrangeItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('arrangeItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022a00; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_deselectItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deselectItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022b38; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_selectAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('selectAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023a98; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_endEdit
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('endEdit'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024044; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_itemMargin
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('itemMargin'); setSelector: ('itemMargin:'); changeSymbol: ('itemMarginChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025028; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_refreshItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200250ac; bytecode file offset 0x92209c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_selectedItemsChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('selectedItemsChanged'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026d7c; bytecode file offset 0x923928"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_selectedItems
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('selectedItems'); setSelector: ('selectedItems:'); changeSymbol: ('selectedItemsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20526fac; bytecode file offset 0xe2392c"
!AbtContainerIconAreaView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_selectedItem.
    (recoveredValue2) featureNamed: ('selectedItem') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_selectedItems.
    (recoveredValue4) featureNamed: ('selectedItems') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_labelOrientation.
    (recoveredValue6) featureNamed: ('labelOrientation') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_fontName.
    (recoveredValue8) featureNamed: ('fontName') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_innerMargin.
    (recoveredValue10) featureNamed: ('innerMargin') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_defaultItemIconDescriptor.
    (recoveredValue12) featureNamed: ('defaultItemIconDescriptor') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_selectedItemsChanged.
    (recoveredValue14) featureNamed: ('selectedItemsChanged') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_arrangeItems.
    (recoveredValue16) featureNamed: ('arrangeItems') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_deselectAllItems.
    (recoveredValue18) featureNamed: ('deselectAllItems') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_deselectItem_.
    (recoveredValue20) featureNamed: ('deselectItem:') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_makeItemFullyVisible_.
    (recoveredValue22) featureNamed: ('makeItemFullyVisible:') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_selectAllItems.
    (recoveredValue24) featureNamed: ('selectAllItems') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_selectItem_.
    (recoveredValue26) featureNamed: ('selectItem:') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) IS_refreshItem_.
    (recoveredValue28) featureNamed: ('refreshItem:') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) IS_refreshItems_.
    (recoveredValue30) featureNamed: ('refreshItems:') put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := (self) IS_refreshAllItems.
    (recoveredValue32) featureNamed: ('refreshAllItems') put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := (self) IS_visualInfoRequested.
    (recoveredValue34) featureNamed: ('visualInfoRequested') put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := (self) IS_selectionIsValid.
    (recoveredValue36) featureNamed: ('selectionIsValid') put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := (self) IS_aboutToBeginEdit.
    (recoveredValue38) featureNamed: ('aboutToBeginEdit') put: (recoveredValue39).
    recoveredValue40 := recoveredValue1.
    recoveredValue41 := (self) IS_aboutToEndEdit.
    (recoveredValue40) featureNamed: ('aboutToEndEdit') put: (recoveredValue41).
    recoveredValue42 := recoveredValue1.
    recoveredValue43 := (self) IS_editItem_.
    (recoveredValue42) featureNamed: ('editItem:') put: (recoveredValue43).
    recoveredValue44 := recoveredValue1.
    recoveredValue45 := (self) IS_endEdit.
    (recoveredValue44) featureNamed: ('endEdit') put: (recoveredValue45).
    recoveredValue46 := recoveredValue1.
    recoveredValue47 := (self) IS_editable.
    (recoveredValue46) featureNamed: ('editable') put: (recoveredValue47).
    recoveredValue48 := (self) IS_itemMargin.
    recoveredValue49 := (recoveredValue1) featureNamed: ('itemMargin') put: (recoveredValue48).
    ^recoveredValue49
! !

