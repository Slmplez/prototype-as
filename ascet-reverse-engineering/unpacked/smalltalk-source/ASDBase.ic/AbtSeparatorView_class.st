"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012f18; bytecode file offset 0x912098"
!AbtSeparatorView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwSeparator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017a68; bytecode file offset 0x92209c"
!AbtSeparatorView class methodsFor: 'recovered'!
IS_margin
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('margin'); setSelector: ('margin:'); changeSymbol: ('marginChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c568; bytecode file offset 0x92209c"
!AbtSeparatorView class methodsFor: 'recovered'!
IS_separatorType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('separatorType'); setSelector: ('separatorType:'); changeSymbol: ('separatorTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e584; bytecode file offset 0x92209c"
!AbtSeparatorView class methodsFor: 'recovered'!
IS_orientation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('orientation'); setSelector: ('orientation:'); changeSymbol: ('orientationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201f0434; bytecode file offset 0xaecd38"
!AbtSeparatorView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_separatorType.
    (recoveredValue2) featureNamed: ('separatorType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_orientation.
    (recoveredValue4) featureNamed: ('orientation') put: (recoveredValue5).
    recoveredValue6 := (self) IS_margin.
    recoveredValue7 := (recoveredValue1) featureNamed: ('margin') put: (recoveredValue6).
    ^recoveredValue7
! !

