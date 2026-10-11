"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016d18; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_noAbort
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('noAbort'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016d84; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_title
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('title'); setSelector: ('title:'); changeSymbol: ('title'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018b0c; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_cancelIgnore
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('cancelIgnore'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018b24; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_buttonType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('buttonType'); setSelector: ('buttonType:'); changeSymbol: ('buttonType'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a648; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_promptFor_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('promptFor:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('associatedPart'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b0ec; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_defaultButtonType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('defaultButtonType'); setSelector: ('defaultButtonType:'); changeSymbol: ('defaultButtonType'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b56c; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_prompt
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('prompt'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021194; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_messageString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('messageString'); setSelector: ('messageString:'); changeSymbol: ('messageString'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022190; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_prompterStyle
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('prompterStyle'); setSelector: ('prompterStyle:'); changeSymbol: ('prompterStyle'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024110; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_okYesRetry
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('okYesRetry'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024320; bytecode file offset 0x92209c"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_iconType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('iconType'); setSelector: ('iconType:'); changeSymbol: ('iconType'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203fc990; bytecode file offset 0xcf9314"
!AbtMessagePrompter class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_iconType.
    (recoveredValue2) featureNamed: ('iconType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_okYesRetry.
    (recoveredValue4) featureNamed: ('okYesRetry') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_cancelIgnore.
    (recoveredValue6) featureNamed: ('cancelIgnore') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_noAbort.
    (recoveredValue8) featureNamed: ('noAbort') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_prompt.
    (recoveredValue10) featureNamed: ('prompt') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_buttonType.
    (recoveredValue12) featureNamed: ('buttonType') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_defaultButtonType.
    (recoveredValue14) featureNamed: ('defaultButtonType') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_prompterStyle.
    (recoveredValue16) featureNamed: ('prompterStyle') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_title.
    (recoveredValue18) featureNamed: ('title') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_promptFor_.
    (recoveredValue20) featureNamed: ('promptFor:') put: (recoveredValue21).
    recoveredValue22 := (self) IS_messageString.
    recoveredValue23 := (recoveredValue1) featureNamed: ('messageString') put: (recoveredValue22).
    ^recoveredValue23
! !

