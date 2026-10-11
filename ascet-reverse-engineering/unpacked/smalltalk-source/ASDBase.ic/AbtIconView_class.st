"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013824; bytecode file offset 0x912098"
!AbtIconView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := AbtIconWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017a74; bytecode file offset 0x92209c"
!AbtIconView class methodsFor: 'recovered'!
IS_enabled
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('enabled'); setSelector: ('enabled:'); changeSymbol: ('enabledChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb2c; bytecode file offset 0x92209c"
!AbtIconView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021734; bytecode file offset 0x92209c"
!AbtIconView class methodsFor: 'recovered'!
IS_label
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('label'); setSelector: ('label:'); changeSymbol: ('labelChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021e6c; bytecode file offset 0x92209c"
!AbtIconView class methodsFor: 'recovered'!
IS_graphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('graphicsDescriptor'); setSelector: ('graphicsDescriptor:'); changeSymbol: ('graphicsDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002213c; bytecode file offset 0x92209c"
!AbtIconView class methodsFor: 'recovered'!
IS_representingObject
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('representingObject'); setSelector: ('representingObject:'); changeSymbol: ('representingObjectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201ff970; bytecode file offset 0xafc248"
!AbtIconView class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := AbtStrObject.
    (recoveredValue1) valueOfAttributeNamed: ('label') put: (recoveredValue2).
    recoveredValue3 := AbtIconDescriptor.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) moduleName: (nil).
    recoveredValue6 := (recoveredValue4) id: (1).
    recoveredValue7 := (recoveredValue0) valueOfAttributeNamed: ('graphicsDescriptor') put: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202a8460; bytecode file offset 0xba4eb0"
!AbtIconView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_representingObject.
    (recoveredValue2) featureNamed: ('representingObject') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_label.
    (recoveredValue4) featureNamed: ('label') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_graphicsDescriptor.
    (recoveredValue6) featureNamed: ('graphicsDescriptor') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_fontName.
    (recoveredValue8) featureNamed: ('fontName') put: (recoveredValue9).
    recoveredValue10 := (self) IS_enabled.
    recoveredValue11 := (recoveredValue1) featureNamed: ('enabled') put: (recoveredValue10).
    ^recoveredValue11
! !

