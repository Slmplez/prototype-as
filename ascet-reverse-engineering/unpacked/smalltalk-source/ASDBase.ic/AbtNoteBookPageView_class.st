"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001383c; bytecode file offset 0x912098"
!AbtNoteBookPageView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := AbtCwNoteBookForm.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a234; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_unmappedWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('unmappedWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001afc0; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_tabContents
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('tabContents'); setSelector: ('tabContents:'); changeSymbol: ('tabContentsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b14c; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_pageWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (CwWidget); getSelector: ('pageWidget'); setSelector: ('pageWidget:'); changeSymbol: ('pageWidgetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bc2c; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_tabMnemonic
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Character); getSelector: ('tabMnemonic'); setSelector: ('tabMnemonic:'); changeSymbol: ('tabMnemonicChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cff4; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_aboutToMapWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToMapWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ebfc; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_mappedWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('mappedWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f16c; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_mappedWhenManaged
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('mappedWhenManaged'); setSelector: ('mappedWhenManaged:'); changeSymbol: ('mappedWhenManagedChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022184; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_noteBookSwitchedToMe
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('noteBookSwitchedToMe'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022fac; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_noteBookSwitchedFromMe
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('noteBookSwitchedFromMe'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002408c; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_aboutToUnmapWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToUnmapWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200241b8; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_framingSpec
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtViewAttachmentConstraint); getSelector: ('framingSpec'); setSelector: ('framingSpec:'); changeSymbol: ('framingSpecChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024efc; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_userData
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('userData'); setSelector: ('userData:'); changeSymbol: ('userDataChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025034; bytecode file offset 0x92209c"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_tabType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('tabType'); setSelector: ('tabType:'); changeSymbol: ('tabTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002686c; bytecode file offset 0x923928"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_statusText
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('statusText'); setSelector: ('statusText:'); changeSymbol: ('statusTextChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2045f5d4; bytecode file offset 0xd5bf88"
!AbtNoteBookPageView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_pageWidget.
    (recoveredValue2) featureNamed: ('pageWidget') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_statusText.
    (recoveredValue4) featureNamed: ('statusText') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_tabContents.
    (recoveredValue6) featureNamed: ('tabContents') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_userData.
    (recoveredValue8) featureNamed: ('userData') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_tabMnemonic.
    (recoveredValue10) featureNamed: ('tabMnemonic') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_noteBookSwitchedToMe.
    (recoveredValue12) featureNamed: ('noteBookSwitchedToMe') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_noteBookSwitchedFromMe.
    (recoveredValue14) featureNamed: ('noteBookSwitchedFromMe') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_tabType.
    (recoveredValue16) featureNamed: ('tabType') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_framingSpec.
    (recoveredValue18) featureNamed: ('framingSpec') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_mappedWhenManaged.
    (recoveredValue20) featureNamed: ('mappedWhenManaged') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_aboutToMapWidget.
    (recoveredValue22) featureNamed: ('aboutToMapWidget') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_mappedWidget.
    (recoveredValue24) featureNamed: ('mappedWidget') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_aboutToUnmapWidget.
    (recoveredValue26) featureNamed: ('aboutToUnmapWidget') put: (recoveredValue27).
    recoveredValue28 := (self) IS_unmappedWidget.
    recoveredValue29 := (recoveredValue1) featureNamed: ('unmappedWidget') put: (recoveredValue28).
    ^recoveredValue29
! !

