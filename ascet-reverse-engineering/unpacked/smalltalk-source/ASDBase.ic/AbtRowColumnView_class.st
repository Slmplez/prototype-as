"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014a9c; bytecode file offset 0x912098"
!AbtRowColumnView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwRowColumn.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019cd0; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_marginHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('marginHeight'); setSelector: ('marginHeight:'); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a0f0; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_marginWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('marginWidth'); setSelector: ('marginWidth:'); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b74c; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_resizeWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('resizeWidth'); setSelector: ('resizeWidth:'); changeSymbol: ('resizeWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb38; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_orientation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('orientation'); setSelector: ('orientation:'); changeSymbol: ('orientationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ed58; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_rowColumnType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('rowColumnType'); setSelector: ('rowColumnType:'); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200202f4; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_spacing
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('spacing'); setSelector: ('spacing:'); changeSymbol: ('spacingChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200222e0; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_numColumns
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('numColumns'); setSelector: ('numColumns:'); changeSymbol: ('numColumnsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024f2c; bytecode file offset 0x92209c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_resizeHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('resizeHeight'); setSelector: ('resizeHeight:'); changeSymbol: ('resizeHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203757d4; bytecode file offset 0xc7217c"
!AbtRowColumnView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_rowColumnType.
    (recoveredValue2) featureNamed: ('rowColumnType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_marginHeight.
    (recoveredValue4) featureNamed: ('marginHeight') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_marginWidth.
    (recoveredValue6) featureNamed: ('marginWidth') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_orientation.
    (recoveredValue8) featureNamed: ('orientation') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_spacing.
    (recoveredValue10) featureNamed: ('spacing') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_resizeHeight.
    (recoveredValue12) featureNamed: ('resizeHeight') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_resizeWidth.
    (recoveredValue14) featureNamed: ('resizeWidth') put: (recoveredValue15).
    recoveredValue16 := (self) IS_numColumns.
    recoveredValue17 := (recoveredValue1) featureNamed: ('numColumns') put: (recoveredValue16).
    ^recoveredValue17
! !

