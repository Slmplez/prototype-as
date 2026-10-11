"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014760; bytecode file offset 0x912098"
!AbtDrawingAreaView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwDrawingArea.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017e34; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('resized' 'exposed')
! !

"ASDBase.ic method 0x2001d708; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d8d0; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_resizePolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('resizePolicy'); setSelector: ('resizePolicy:'); changeSymbol: ('resizePolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e290; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_enabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enabled'); setSelector: ('enabled:'); changeSymbol: ('enabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fd18; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_marginHeight
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('marginHeight'); setSelector: ('marginHeight:'); changeSymbol: ('marginHeightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020ed0; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_marginWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('marginWidth'); setSelector: ('marginWidth:'); changeSymbol: ('marginWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002237c; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_resized
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('resized'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025604; bytecode file offset 0x92209c"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_exposed
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('exposed'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20339ddc; bytecode file offset 0xc367b8"
!AbtDrawingAreaView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_resized.
    (recoveredValue2) featureNamed: ('resized') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_marginWidth.
    (recoveredValue4) featureNamed: ('marginWidth') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_marginHeight.
    (recoveredValue6) featureNamed: ('marginHeight') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_resizePolicy.
    (recoveredValue8) featureNamed: ('resizePolicy') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_exposed.
    (recoveredValue10) featureNamed: ('exposed') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_enabled.
    (recoveredValue12) featureNamed: ('enabled') put: (recoveredValue13).
    recoveredValue14 := (self) IS_menu.
    recoveredValue15 := (recoveredValue1) featureNamed: ('menu') put: (recoveredValue14).
    ^recoveredValue15
! !

