"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200127b0; bytecode file offset 0x912098"
!AbtSplitWindowView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := EwSplitWindow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015890; bytecode file offset 0x92209c"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_splitBarThickness
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('splitBarThickness'); setSelector: ('splitBarThickness:'); changeSymbol: ('splitBarThicknessChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019a60; bytecode file offset 0x92209c"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_childProportions
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Collection); getSelector: ('childProportions'); setSelector: ('childProportions:'); changeSymbol: ('childProportionsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a2b8; bytecode file offset 0x92209c"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_splitBarBackgroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('splitBarBackgroundColor'); setSelector: ('splitBarBackgroundColor:'); changeSymbol: ('splitBarBackgroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a348; bytecode file offset 0x92209c"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_splitBarForegroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('splitBarForegroundColor'); setSelector: ('splitBarForegroundColor:'); changeSymbol: ('splitBarForegroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bdd0; bytecode file offset 0x92209c"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_orientation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('orientation'); setSelector: ('orientation:'); changeSymbol: ('orientationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200202a0; bytecode file offset 0x92209c"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_childMinimumSizes
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Collection); getSelector: ('childMinimumSizes'); setSelector: ('childMinimumSizes:'); changeSymbol: ('childMinimumSizesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202fb83c; bytecode file offset 0xbf8170"
!AbtSplitWindowView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_childMinimumSizes.
    (recoveredValue2) featureNamed: ('childMinimumSizes') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_childProportions.
    (recoveredValue4) featureNamed: ('childProportions') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_orientation.
    (recoveredValue6) featureNamed: ('orientation') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_splitBarThickness.
    (recoveredValue8) featureNamed: ('splitBarThickness') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_splitBarBackgroundColor.
    (recoveredValue10) featureNamed: ('splitBarBackgroundColor') put: (recoveredValue11).
    recoveredValue12 := (self) IS_splitBarForegroundColor.
    recoveredValue13 := (recoveredValue1) featureNamed: ('splitBarForegroundColor') put: (recoveredValue12).
    ^recoveredValue13
! !

