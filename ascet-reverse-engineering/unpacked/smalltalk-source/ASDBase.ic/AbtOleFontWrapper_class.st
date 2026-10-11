"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018998; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_size
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OSVariantarg); getSelector: ('size'); setSelector: (nil); changeSymbol: ('sizeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dae0; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_charset
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('charset'); setSelector: ('charset:'); changeSymbol: ('charsetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f43c; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_weight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('weight'); setSelector: (nil); changeSymbol: ('weightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f5d4; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_name
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('name'); setSelector: (nil); changeSymbol: ('nameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200230f0; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_bold
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('bold'); setSelector: ('bold:'); changeSymbol: ('boldChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023fb4; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_fontNameString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002411c; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_strikethrough
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('strikethrough'); setSelector: ('strikethrough:'); changeSymbol: ('strikethroughChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024ed8; bytecode file offset 0x92209c"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_underline
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('underline'); setSelector: ('underline:'); changeSymbol: ('underlineChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027040; bytecode file offset 0x923928"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_italic
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('italic'); setSelector: ('italic:'); changeSymbol: ('italicChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203a7eac; bytecode file offset 0xca48c8"
!AbtOleFontWrapper class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_bold.
    (recoveredValue2) featureNamed: ('bold') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_charset.
    (recoveredValue4) featureNamed: ('charset') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_italic.
    (recoveredValue6) featureNamed: ('italic') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_name.
    (recoveredValue8) featureNamed: ('name') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_size.
    (recoveredValue10) featureNamed: ('size') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_strikethrough.
    (recoveredValue12) featureNamed: ('strikethrough') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_underline.
    (recoveredValue14) featureNamed: ('underline') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_weight.
    (recoveredValue16) featureNamed: ('weight') put: (recoveredValue17).
    recoveredValue18 := (self) IS_fontNameString.
    recoveredValue19 := (recoveredValue1) featureNamed: ('fontNameString') put: (recoveredValue18).
    ^recoveredValue19
! !

