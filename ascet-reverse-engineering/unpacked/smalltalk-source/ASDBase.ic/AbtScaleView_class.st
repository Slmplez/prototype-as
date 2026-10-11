"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200150c0; bytecode file offset 0x912098"
!AbtScaleView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwScale.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001943c; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_maximumValue
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('maximumValue'); setSelector: ('maximumValue:'); changeSymbol: ('maximumValueChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019b8c; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_minimumValue
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('minimumValue'); setSelector: ('minimumValue:'); changeSymbol: ('minimumValueChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bcec; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_title
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('title'); setSelector: ('title:'); changeSymbol: ('titleChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001be78; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_sliderDragged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('sliderDragged'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ece0; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_showCurrentValueLabel
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showCurrentValueLabel'); setSelector: ('showCurrentValueLabel:'); changeSymbol: ('showCurrentValueLabelChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020f3c; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_dragDropSpec
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtDragDropSpec); getSelector: ('dragDropSpec'); setSelector: ('dragDropSpec:'); changeSymbol: ('dragDropSpecChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021ad0; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_vertical
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('vertical'); setSelector: ('vertical:'); changeSymbol: ('verticalChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022064; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022b98; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_processingDirection
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('processingDirection'); setSelector: ('processingDirection:'); changeSymbol: ('processingDirectionChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025778; bytecode file offset 0x92209c"
!AbtScaleView class methodsFor: 'recovered'!
IS_value
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('value'); setSelector: ('value:'); changeSymbol: ('valueChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026e30; bytecode file offset 0x923928"
!AbtScaleView class methodsFor: 'recovered'!
IS_valueDecimalDigits
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('valueDecimalDigits'); setSelector: ('valueDecimalDigits:'); changeSymbol: ('valueDecimalDigitsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203fc8b8; bytecode file offset 0xcf9314"
!AbtScaleView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_value.
    (recoveredValue2) featureNamed: ('value') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_maximumValue.
    (recoveredValue4) featureNamed: ('maximumValue') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_minimumValue.
    (recoveredValue6) featureNamed: ('minimumValue') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_valueDecimalDigits.
    (recoveredValue8) featureNamed: ('valueDecimalDigits') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_vertical.
    (recoveredValue10) featureNamed: ('vertical') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_title.
    (recoveredValue12) featureNamed: ('title') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_showCurrentValueLabel.
    (recoveredValue14) featureNamed: ('showCurrentValueLabel') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_processingDirection.
    (recoveredValue16) featureNamed: ('processingDirection') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_fontName.
    (recoveredValue18) featureNamed: ('fontName') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_sliderDragged.
    (recoveredValue20) featureNamed: ('sliderDragged') put: (recoveredValue21).
    recoveredValue22 := (self) IS_dragDropSpec.
    recoveredValue23 := (recoveredValue1) featureNamed: ('dragDropSpec') put: (recoveredValue22).
    ^recoveredValue23
! !

