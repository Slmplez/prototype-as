"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012a38; bytecode file offset 0x912098"
!AbtHotSpotView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwPushButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016574; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_clicked
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('clicked'); parameters: ((OrderedCollection new) yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018e6c; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_foregroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('foregroundColor'); setSelector: ('foregroundColor:'); changeSymbol: ('foregroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cfd0; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_beepOnClick
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('beepOnClick'); setSelector: ('beepOnClick:'); changeSymbol: ('beepOnClickChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e854; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_beepDuration
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('beepDuration'); setSelector: ('beepDuration:'); changeSymbol: ('beepDurationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ec08; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_backgroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('backgroundColor'); setSelector: ('backgroundColor:'); changeSymbol: ('backgroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200207e0; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_click
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('click'); parameters: ((OrderedCollection new) yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021824; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_beepFrequency
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('beepFrequency'); setSelector: ('beepFrequency:'); changeSymbol: ('beepFrequencyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002240c; bytecode file offset 0x92209c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_dragDropSpec
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtDragDropSpec); getSelector: ('dragDropSpec'); setSelector: ('dragDropSpec:'); changeSymbol: ('dragDropSpecChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20375828; bytecode file offset 0xc7217c"
!AbtHotSpotView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_beepOnClick.
    (recoveredValue2) featureNamed: ('beepOnClick') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_beepFrequency.
    (recoveredValue4) featureNamed: ('beepFrequency') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_beepDuration.
    (recoveredValue6) featureNamed: ('beepDuration') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_clicked.
    (recoveredValue8) featureNamed: ('clicked') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_click.
    (recoveredValue10) featureNamed: ('click') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_dragDropSpec.
    (recoveredValue12) featureNamed: ('dragDropSpec') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_foregroundColor.
    (recoveredValue14) featureNamed: ('foregroundColor') put: (recoveredValue15).
    recoveredValue16 := (self) IS_backgroundColor.
    recoveredValue17 := (recoveredValue1) featureNamed: ('backgroundColor') put: (recoveredValue16).
    ^recoveredValue17
! !

