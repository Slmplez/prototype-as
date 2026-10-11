"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014cf4; bytecode file offset 0x912098"
!AbtPushButtonView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwPushButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017b64; bytecode file offset 0x92209c"
!AbtPushButtonView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('clicked')
! !

"ASDBase.ic method 0x200180ec; bytecode file offset 0x92209c"
!AbtPushButtonView class methodsFor: 'recovered'!
IS_clicked
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('clicked'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a3a8; bytecode file offset 0x92209c"
!AbtPushButtonView class methodsFor: 'recovered'!
IS_showAsDefault
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('showAsDefault'); setSelector: ('showAsDefault:'); changeSymbol: ('showAsDefaultChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ed7c; bytecode file offset 0x92209c"
!AbtPushButtonView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200249d4; bytecode file offset 0x92209c"
!AbtPushButtonView class methodsFor: 'recovered'!
IS_click
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('click'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20252878; bytecode file offset 0xb4f228"
!AbtPushButtonView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_click.
    (recoveredValue2) featureNamed: ('click') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_clicked.
    (recoveredValue4) featureNamed: ('clicked') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_showAsDefault.
    (recoveredValue6) featureNamed: ('showAsDefault') put: (recoveredValue7).
    recoveredValue8 := (self) IS_object.
    recoveredValue9 := (recoveredValue1) featureNamed: ('object') put: (recoveredValue8).
    ^recoveredValue9
! !

