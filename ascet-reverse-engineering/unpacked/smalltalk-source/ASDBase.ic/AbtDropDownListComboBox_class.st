"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014b2c; bytecode file offset 0x912098"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwComboBox.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001706c; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_attributeName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Symbol); getSelector: ('attributeName'); setSelector: ('attributeName:'); changeSymbol: ('attributeNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018374; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_listDroppedDown
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('listDroppedDown'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a150; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_itemsConvertError
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('itemsConvertError'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b98c; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb50; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('selectedItemChanged' 'selectionIndexChanged')
! !

"ASDBase.ic method 0x2001d258; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_selectedItem
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('selectedItem'); setSelector: ('selectedItem:'); changeSymbol: ('selectedItemChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e500; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_listRemoved
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('listRemoved'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e518; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_selectedItemChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('selectedItemChanged'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e818; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_stayDroppedDown
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('stayDroppedDown'); setSelector: ('stayDroppedDown:'); changeSymbol: ('stayDroppedDownChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fe80; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_selectionIsValid
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('selectionIsValid'); setSelector: (nil); changeSymbol: ('selectionIsValidChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021bb4; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_items
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('items'); setSelector: ('items:'); changeSymbol: ('itemsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021c38; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_visibleItemCount
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('visibleItemCount'); setSelector: ('visibleItemCount:'); changeSymbol: ('visibleItemCountChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002468c; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_selectionIndex
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('selectionIndex'); setSelector: ('selectionIndex:'); changeSymbol: ('selectionIndexChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024cb0; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_selectionIndexChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('selectionIndexChanged'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anIndex'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024d28; bytecode file offset 0x92209c"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_removeList
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('removeList'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026e84; bytecode file offset 0x923928"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_converter
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtConverter); getSelector: ('converter'); setSelector: ('converter:'); changeSymbol: ('converterChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026f8c; bytecode file offset 0x923928"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_dropListDown
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('dropListDown'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20493cb4; bytecode file offset 0xd90688"
!AbtDropDownListComboBox class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_attributeName.
    (recoveredValue2) featureNamed: ('attributeName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_stayDroppedDown.
    (recoveredValue4) featureNamed: ('stayDroppedDown') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_items.
    (recoveredValue6) featureNamed: ('items') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_selectedItem.
    (recoveredValue8) featureNamed: ('selectedItem') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_selectionIndex.
    (recoveredValue10) featureNamed: ('selectionIndex') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_selectedItemChanged.
    (recoveredValue12) featureNamed: ('selectedItemChanged') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_selectionIndexChanged.
    (recoveredValue14) featureNamed: ('selectionIndexChanged') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_converter.
    (recoveredValue16) featureNamed: ('converter') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_fontName.
    (recoveredValue18) featureNamed: ('fontName') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_visibleItemCount.
    (recoveredValue20) featureNamed: ('visibleItemCount') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_itemsConvertError.
    (recoveredValue22) featureNamed: ('itemsConvertError') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_listDroppedDown.
    (recoveredValue24) featureNamed: ('listDroppedDown') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_listRemoved.
    (recoveredValue26) featureNamed: ('listRemoved') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) IS_selectionIsValid.
    (recoveredValue28) featureNamed: ('selectionIsValid') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) IS_dropListDown.
    (recoveredValue30) featureNamed: ('dropListDown') put: (recoveredValue31).
    recoveredValue32 := (self) IS_removeList.
    recoveredValue33 := (recoveredValue1) featureNamed: ('removeList') put: (recoveredValue32).
    ^recoveredValue33
! !

