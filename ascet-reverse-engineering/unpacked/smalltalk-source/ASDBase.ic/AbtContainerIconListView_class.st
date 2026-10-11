"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012954; bytecode file offset 0x912098"
!AbtContainerIconListView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EwIconList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018878; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_emphasisPolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('emphasisPolicy'); setSelector: ('emphasisPolicy:'); changeSymbol: ('emphasisPolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a084; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_editItem_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('editItem:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anItem'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b230; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_showIcons
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showIcons'); setSelector: ('showIcons:'); changeSymbol: ('showIconsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b9b0; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_itemWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('itemWidth'); setSelector: ('itemWidth:'); changeSymbol: ('itemWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d0d8; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_defaultItemIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('defaultItemIconDescriptor'); setSelector: ('defaultItemIconDescriptor:'); changeSymbol: ('defaultItemIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e380; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_endEdit
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('endEdit'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022754; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_innerMargin
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('innerMargin'); setSelector: ('innerMargin:'); changeSymbol: ('innerMarginChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023048; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_editable
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('editable'); setSelector: ('editable:'); changeSymbol: ('editableChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023bb8; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_aboutToEndEdit
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToEndEdit'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('EwEndEditCallbackData'); parameterName: ('endEditInfo'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023c9c; bytecode file offset 0x92209c"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_aboutToBeginEdit
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToBeginEdit'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('EwBeginEditCallbackData'); parameterName: ('beginEditInfo'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025f30; bytecode file offset 0x923928"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_labelOrientation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('labelOrientation'); setSelector: ('labelOrientation:'); changeSymbol: ('labelOrientationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203fc84c; bytecode file offset 0xcf9314"
!AbtContainerIconListView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_defaultItemIconDescriptor.
    (recoveredValue2) featureNamed: ('defaultItemIconDescriptor') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_labelOrientation.
    (recoveredValue4) featureNamed: ('labelOrientation') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_emphasisPolicy.
    (recoveredValue6) featureNamed: ('emphasisPolicy') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_innerMargin.
    (recoveredValue8) featureNamed: ('innerMargin') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_itemWidth.
    (recoveredValue10) featureNamed: ('itemWidth') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_showIcons.
    (recoveredValue12) featureNamed: ('showIcons') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_aboutToBeginEdit.
    (recoveredValue14) featureNamed: ('aboutToBeginEdit') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_aboutToEndEdit.
    (recoveredValue16) featureNamed: ('aboutToEndEdit') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_editItem_.
    (recoveredValue18) featureNamed: ('editItem:') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_endEdit.
    (recoveredValue20) featureNamed: ('endEdit') put: (recoveredValue21).
    recoveredValue22 := (self) IS_editable.
    recoveredValue23 := (recoveredValue1) featureNamed: ('editable') put: (recoveredValue22).
    ^recoveredValue23
! !

