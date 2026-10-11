"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200161e4; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_answerString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('answerString'); setSelector: ('answerString:'); changeSymbol: ('answerString'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001649c; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_prompt
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('prompt'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016580; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_title
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('title'); setSelector: ('title:'); changeSymbol: ('title'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200185fc; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_defaultAnswerString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('defaultAnswerString'); setSelector: ('defaultAnswerString:'); changeSymbol: ('defaultAnswerString'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018740; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_prompterStyle
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('prompterStyle'); setSelector: ('prompterStyle:'); changeSymbol: ('prompterStyle'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022bec; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_cancel
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('cancel'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022d54; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_promptFor_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('promptFor:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('associatedPart'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002462c; bytecode file offset 0x92209c"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_messageString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('messageString'); setSelector: ('messageString:'); changeSymbol: ('messageString'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026218; bytecode file offset 0x923928"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_ok
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('ok'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('contentsString'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203a7f08; bytecode file offset 0xca48c8"
!AbtTextPrompter class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_answerString.
    (recoveredValue2) featureNamed: ('answerString') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_messageString.
    (recoveredValue4) featureNamed: ('messageString') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_prompterStyle.
    (recoveredValue6) featureNamed: ('prompterStyle') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_title.
    (recoveredValue8) featureNamed: ('title') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_ok.
    (recoveredValue10) featureNamed: ('ok') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_cancel.
    (recoveredValue12) featureNamed: ('cancel') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_prompt.
    (recoveredValue14) featureNamed: ('prompt') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_promptFor_.
    (recoveredValue16) featureNamed: ('promptFor:') put: (recoveredValue17).
    recoveredValue18 := (self) IS_defaultAnswerString.
    recoveredValue19 := (recoveredValue1) featureNamed: ('defaultAnswerString') put: (recoveredValue18).
    ^recoveredValue19
! !

