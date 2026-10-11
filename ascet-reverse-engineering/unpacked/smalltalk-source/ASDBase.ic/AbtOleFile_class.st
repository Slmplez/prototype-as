"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016c34; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_path
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsString); getSelector: ('path'); setSelector: ('path:'); changeSymbol: ('path'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017060; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_deleteWidgetNamed_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteWidgetNamed:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('aWidgetName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019280; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_saveWidget_named_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('saveWidget:named:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('aWidget'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('EsString'); parameterName: ('aName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019820; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_storageNames
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('storageNames'); setSelector: (nil); changeSymbol: ('storageNames'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f988; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_restoreAttributesNamed_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('restoreAttributesNamed:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('aName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020288; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_close
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('close'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021c5c; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_saveAttributes_named_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('saveAttributes:named:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('ByteArray'); parameterName: ('aByteArray'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('EsString'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002294c; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_open
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('open'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022b74; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_deleteAttributes
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deleteAttributes'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022dc0; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_saveAttributes_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('saveAttributes:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('ByteArray'); parameterName: ('aByteArray'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200232b8; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_restoreWidget_named_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('restoreWidget:named:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('aWidget'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('aName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025430; bytecode file offset 0x92209c"
!AbtOleFile class methodsFor: 'recovered'!
IS_restoreAttributes
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('restoreAttributes'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20420f58; bytecode file offset 0xd1d8ec"
!AbtOleFile class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_path.
    (recoveredValue2) featureNamed: ('path') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_storageNames.
    (recoveredValue4) featureNamed: ('storageNames') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_close.
    (recoveredValue6) featureNamed: ('close') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_deleteAttributes.
    (recoveredValue8) featureNamed: ('deleteAttributes') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_deleteWidgetNamed_.
    (recoveredValue10) featureNamed: ('deleteWidgetNamed:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_restoreAttributes.
    (recoveredValue12) featureNamed: ('restoreAttributes') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_restoreAttributesNamed_.
    (recoveredValue14) featureNamed: ('restoreAttributesNamed:') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_restoreWidget_named_.
    (recoveredValue16) featureNamed: ('restoreWidget:named:') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_saveAttributes_.
    (recoveredValue18) featureNamed: ('saveAttributes:') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_saveAttributes_named_.
    (recoveredValue20) featureNamed: ('saveAttributes:named:') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_saveWidget_named_.
    (recoveredValue22) featureNamed: ('saveWidget:named:') put: (recoveredValue23).
    recoveredValue24 := (self) IS_open.
    recoveredValue25 := (recoveredValue1) featureNamed: ('open') put: (recoveredValue24).
    ^recoveredValue25
! !

