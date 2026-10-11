"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015c8c; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019b80; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_refreshAllItems
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshAllItems'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019c10; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_visualInfoRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('visualInfoRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('EwVisualInfoCallbackData'); parameterName: ('itemVisualInfo'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a51c; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_refreshIndex_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshIndex:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anInteger'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a6e4; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_itemHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('itemHeight'); setSelector: ('itemHeight:'); changeSymbol: ('itemHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b374; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_refreshItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023cc0; bytecode file offset 0x92209c"
!AbtContainerList class methodsFor: 'recovered'!
IS_refreshItems_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshItems:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Collection'); parameterName: ('aCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026104; bytecode file offset 0x923928"
!AbtContainerList class methodsFor: 'recovered'!
IS_refreshIndices_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('refreshIndices:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Collection'); parameterName: ('aCollection'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20375630; bytecode file offset 0xc7217c"
!AbtContainerList class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_fontName.
    (recoveredValue2) featureNamed: ('fontName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_itemHeight.
    (recoveredValue4) featureNamed: ('itemHeight') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_refreshIndex_.
    (recoveredValue6) featureNamed: ('refreshIndex:') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_refreshItem_.
    (recoveredValue8) featureNamed: ('refreshItem:') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_refreshItems_.
    (recoveredValue10) featureNamed: ('refreshItems:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_refreshIndices_.
    (recoveredValue12) featureNamed: ('refreshIndices:') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_refreshAllItems.
    (recoveredValue14) featureNamed: ('refreshAllItems') put: (recoveredValue15).
    recoveredValue16 := (self) IS_visualInfoRequested.
    recoveredValue17 := (recoveredValue1) featureNamed: ('visualInfoRequested') put: (recoveredValue16).
    ^recoveredValue17
! !

