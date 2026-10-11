"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013158; bytecode file offset 0x912098"
!AbtDrawnButtonView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwDrawnButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200209c0; bytecode file offset 0x92209c"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_exposed
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('exposed'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020a14; bytecode file offset 0x92209c"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_resized
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('resized'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200220a0; bytecode file offset 0x92209c"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200237f8; bytecode file offset 0x92209c"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_clicked
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('clicked'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025b4c; bytecode file offset 0x923928"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_click
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('click'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026b3c; bytecode file offset 0x923928"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_pushButton3DLookEnabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('pushButton3DLookEnabled'); setSelector: ('pushButton3DLookEnabled:'); changeSymbol: ('pushButton3DLookEnabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202fb6e8; bytecode file offset 0xbf8170"
!AbtDrawnButtonView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_click.
    (recoveredValue2) featureNamed: ('click') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_pushButton3DLookEnabled.
    (recoveredValue4) featureNamed: ('pushButton3DLookEnabled') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_clicked.
    (recoveredValue6) featureNamed: ('clicked') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_resized.
    (recoveredValue8) featureNamed: ('resized') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_exposed.
    (recoveredValue10) featureNamed: ('exposed') put: (recoveredValue11).
    recoveredValue12 := (self) IS_object.
    recoveredValue13 := (recoveredValue1) featureNamed: ('object') put: (recoveredValue12).
    ^recoveredValue13
! !

