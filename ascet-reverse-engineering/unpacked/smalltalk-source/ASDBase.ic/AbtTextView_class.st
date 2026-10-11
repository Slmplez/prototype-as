"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015df4; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('objectChanged' 'stringChanged')
! !

"ASDBase.ic method 0x20016cb8; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_querySelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('getSelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018830; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_string
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsString); getSelector: ('string'); setSelector: ('string:'); changeSymbol: ('stringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019bec; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_contentsConvertError
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('contentsConvertError'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a9cc; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_textLimit
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('maxLength'); setSelector: ('maxLength:'); changeSymbol: ('maxLengthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020c6c; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_converter
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtConverter); getSelector: ('converter'); setSelector: ('converter:'); changeSymbol: ('converterChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020f78; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_passwordProtect
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('passwordProtect'); setSelector: ('passwordProtect:'); changeSymbol: ('passwordProtectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022a9c; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022ff4; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_passwordCharacter
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Character); getSelector: ('passwordCharacter'); setSelector: ('passwordCharacter:'); changeSymbol: ('passwordCharacterChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200236cc; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_readOnly
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('readOnly'); setSelector: ('readOnly:'); changeSymbol: ('editableChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023dec; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_reformatOnFocusChange
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('reformatOnFocusChange'); setSelector: ('reformatOnFocusChange:'); changeSymbol: ('reformatOnFocusChangeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024e3c; bytecode file offset 0x92209c"
!AbtTextView class methodsFor: 'recovered'!
IS_userInputConvertError
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('userInputConvertError'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026860; bytecode file offset 0x923928"
!AbtTextView class methodsFor: 'recovered'!
IS_autoTab
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('autoTab'); setSelector: ('autoTab:'); changeSymbol: ('autoTabChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026b00; bytecode file offset 0x923928"
!AbtTextView class methodsFor: 'recovered'!
IS_autoSelect
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('autoSelect'); setSelector: ('autoSelect:'); changeSymbol: ('autoSelectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20441828; bytecode file offset 0xd3e150"
!AbtTextView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_object.
    (recoveredValue2) featureNamed: ('object') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_string.
    (recoveredValue4) featureNamed: ('string') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_readOnly.
    (recoveredValue6) featureNamed: ('readOnly') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_textLimit.
    (recoveredValue8) featureNamed: ('textLimit') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_converter.
    (recoveredValue10) featureNamed: ('converter') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_querySelection.
    (recoveredValue12) featureNamed: ('querySelection') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_reformatOnFocusChange.
    (recoveredValue14) featureNamed: ('reformatOnFocusChange') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_contentsConvertError.
    (recoveredValue16) featureNamed: ('contentsConvertError') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_userInputConvertError.
    (recoveredValue18) featureNamed: ('userInputConvertError') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_passwordProtect.
    (recoveredValue20) featureNamed: ('passwordProtect') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_passwordCharacter.
    (recoveredValue22) featureNamed: ('passwordCharacter') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_autoTab.
    (recoveredValue24) featureNamed: ('autoTab') put: (recoveredValue25).
    recoveredValue26 := (self) IS_autoSelect.
    recoveredValue27 := (recoveredValue1) featureNamed: ('autoSelect') put: (recoveredValue26).
    ^recoveredValue27
! !

