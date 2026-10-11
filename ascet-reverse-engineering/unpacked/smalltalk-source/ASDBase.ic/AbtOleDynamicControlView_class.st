"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013ac4; bytecode file offset 0x912098"
!AbtOleDynamicControlView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := AbtOleExtendedWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016ed4; bytecode file offset 0x92209c"
!AbtOleDynamicControlView class methodsFor: 'recovered'!
IS_licenseKey
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('licenseKey'); setSelector: ('licenseKey:'); changeSymbol: ('licenseKeyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a8d0; bytecode file offset 0x92209c"
!AbtOleDynamicControlView class methodsFor: 'recovered'!
IS_clientName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('clientName'); setSelector: ('clientName:'); changeSymbol: ('clientNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016eaac; bytecode file offset 0xa6b454"
!AbtOleDynamicControlView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_clientName.
    (recoveredValue2) featureNamed: ('clientName') put: (recoveredValue3).
    recoveredValue4 := (self) IS_licenseKey.
    recoveredValue5 := (recoveredValue1) featureNamed: ('licenseKey') put: (recoveredValue4).
    ^recoveredValue5
! !

