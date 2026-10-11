"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016790; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_losingFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('losingFocus'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001793c; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('gettingFocus' 'losingFocus')
! !

"ASDBase.ic method 0x20018a1c; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_maxLength
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('maxLength'); setSelector: ('maxLength:'); changeSymbol: ('maxLength'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019220; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_setFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('setFocus'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c8ec; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_editable
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('editable'); setSelector: ('editable:'); changeSymbol: ('editable'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ce2c; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_entryString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsString); getSelector: ('entryString'); setSelector: ('entryString:'); changeSymbol: ('entryChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200245cc; bytecode file offset 0x92209c"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_gettingFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('gettingFocus'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002611c; bytecode file offset 0x923928"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_entryObject
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('entryObject'); setSelector: ('entryObject:'); changeSymbol: ('entryChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20339e28; bytecode file offset 0xc367b8"
!AbtComboBoxView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_entryObject.
    (recoveredValue2) featureNamed: ('entryObject') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_entryString.
    (recoveredValue4) featureNamed: ('entryString') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_losingFocus.
    (recoveredValue6) featureNamed: ('losingFocus') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_gettingFocus.
    (recoveredValue8) featureNamed: ('gettingFocus') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_setFocus.
    (recoveredValue10) featureNamed: ('setFocus') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_editable.
    (recoveredValue12) featureNamed: ('editable') put: (recoveredValue13).
    recoveredValue14 := (self) IS_maxLength.
    recoveredValue15 := (recoveredValue1) featureNamed: ('maxLength') put: (recoveredValue14).
    ^recoveredValue15
! !

