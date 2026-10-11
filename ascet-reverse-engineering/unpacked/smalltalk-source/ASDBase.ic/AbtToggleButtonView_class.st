"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001461c; bytecode file offset 0x912098"
!AbtToggleButtonView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwToggleButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200194fc; bytecode file offset 0x92209c"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019ad8; bytecode file offset 0x92209c"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_indicatorOn
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('indicatorOn'); setSelector: ('indicatorOn:'); changeSymbol: ('indicatorOnChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fdcc; bytecode file offset 0x92209c"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_set
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('set'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200226a0; bytecode file offset 0x92209c"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_clear
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('clear'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200246a4; bytecode file offset 0x92209c"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_selectionChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('selectionChanged'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002528c; bytecode file offset 0x92209c"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_selection
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('selection'); setSelector: ('selection:'); changeSymbol: ('selectionChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026bb4; bytecode file offset 0x923928"
!AbtToggleButtonView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('selectionChanged')
! !

"ASDBase.ic method 0x202fb880; bytecode file offset 0xbf8170"
!AbtToggleButtonView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_selection.
    (recoveredValue2) featureNamed: ('selection') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_indicatorOn.
    (recoveredValue4) featureNamed: ('indicatorOn') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_set.
    (recoveredValue6) featureNamed: ('set') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_clear.
    (recoveredValue8) featureNamed: ('clear') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_selectionChanged.
    (recoveredValue10) featureNamed: ('selectionChanged') put: (recoveredValue11).
    recoveredValue12 := (self) IS_object.
    recoveredValue13 := (recoveredValue1) featureNamed: ('object') put: (recoveredValue12).
    ^recoveredValue13
! !

