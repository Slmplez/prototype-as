"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012e10; bytecode file offset 0x912098"
!AbtFormView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwForm.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016af0; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_resizePolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('resizePolicy'); setSelector: ('resizePolicy:'); changeSymbol: ('resizePolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019d60; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_marginWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('marginWidth'); setSelector: ('marginWidth:'); changeSymbol: ('marginWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019d6c; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_textFontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('textFontName'); setSelector: ('textFontName:'); changeSymbol: ('textFontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001db7c; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_fractionBase
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('fractionBase'); setSelector: ('fractionBase:'); changeSymbol: ('fractionBaseChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e830; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_buttonFontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('buttonFontName'); setSelector: ('buttonFontName:'); changeSymbol: ('buttonFontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020438; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_marginHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('marginHeight'); setSelector: ('marginHeight:'); changeSymbol: ('marginHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020954; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_horizontalSpacing
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('horizontalSpacing'); setSelector: ('horizontalSpacing:'); changeSymbol: ('horizontalSpacingChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002174c; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_backgroundGraphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('backgroundGraphicsDescriptor'); setSelector: ('backgroundGraphicsDescriptor:'); changeSymbol: ('backgroundGraphicsDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022220; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_verticalSpacing
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('verticalSpacing'); setSelector: ('verticalSpacing:'); changeSymbol: ('verticalSpacingChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200224c0; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_rubberPositioning
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('rubberPositioning'); setSelector: ('rubberPositioning:'); changeSymbol: ('rubberPositioningChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022c1c; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_labelFontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('labelFontName'); setSelector: ('labelFontName:'); changeSymbol: ('labelFontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200253a0; bytecode file offset 0x92209c"
!AbtFormView class methodsFor: 'recovered'!
IS_wallpaperStyle
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('wallpaperStyle'); setSelector: ('wallpaperStyle:'); changeSymbol: ('wallpaperStyleChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20420fcc; bytecode file offset 0xd1d8ec"
!AbtFormView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_labelFontName.
    (recoveredValue2) featureNamed: ('labelFontName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_textFontName.
    (recoveredValue4) featureNamed: ('textFontName') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_buttonFontName.
    (recoveredValue6) featureNamed: ('buttonFontName') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_fractionBase.
    (recoveredValue8) featureNamed: ('fractionBase') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_marginHeight.
    (recoveredValue10) featureNamed: ('marginHeight') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_marginWidth.
    (recoveredValue12) featureNamed: ('marginWidth') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_resizePolicy.
    (recoveredValue14) featureNamed: ('resizePolicy') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_verticalSpacing.
    (recoveredValue16) featureNamed: ('verticalSpacing') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_horizontalSpacing.
    (recoveredValue18) featureNamed: ('horizontalSpacing') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_rubberPositioning.
    (recoveredValue20) featureNamed: ('rubberPositioning') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_wallpaperStyle.
    (recoveredValue22) featureNamed: ('wallpaperStyle') put: (recoveredValue23).
    recoveredValue24 := (self) IS_backgroundGraphicsDescriptor.
    recoveredValue25 := (recoveredValue1) featureNamed: ('backgroundGraphicsDescriptor') put: (recoveredValue24).
    ^recoveredValue25
! !

