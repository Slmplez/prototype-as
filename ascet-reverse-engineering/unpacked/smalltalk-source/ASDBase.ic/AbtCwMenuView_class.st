"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200196e8; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_mappedWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('mappedWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001979c; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_enabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enabled'); setSelector: ('enabled:'); changeSymbol: ('enabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a6d8; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_mappedWhenManaged
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('mappedWhenManaged'); setSelector: ('mappedWhenManaged:'); changeSymbol: ('mappedWhenManagedChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a7a4; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_openWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('openWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bca4; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cbec; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_popUpMenuRequest
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('popUpMenuRequest'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002252c; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_closeWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('closeWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002276c; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_aboutToUnmapWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToUnmapWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023468; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_unmappedWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('unmappedWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023630; bytecode file offset 0x92209c"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_aboutToMapWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToMapWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203d4bd0; bytecode file offset 0xcd1544"
!AbtCwMenuView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_enabled.
    (recoveredValue2) featureNamed: ('enabled') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_menu.
    (recoveredValue4) featureNamed: ('menu') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_mappedWhenManaged.
    (recoveredValue6) featureNamed: ('mappedWhenManaged') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_aboutToMapWidget.
    (recoveredValue8) featureNamed: ('aboutToMapWidget') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_mappedWidget.
    (recoveredValue10) featureNamed: ('mappedWidget') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_aboutToUnmapWidget.
    (recoveredValue12) featureNamed: ('aboutToUnmapWidget') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_unmappedWidget.
    (recoveredValue14) featureNamed: ('unmappedWidget') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_openWidget.
    (recoveredValue16) featureNamed: ('openWidget') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_closeWidget.
    (recoveredValue18) featureNamed: ('closeWidget') put: (recoveredValue19).
    recoveredValue20 := (self) IS_popUpMenuRequest.
    recoveredValue21 := (recoveredValue1) featureNamed: ('popUpMenuRequest') put: (recoveredValue20).
    ^recoveredValue21
! !

