"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012558; bytecode file offset 0x912098"
!AbtSuperimposedIconView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := AbtSuperimposedIconWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015ea8; bytecode file offset 0x92209c"
!AbtSuperimposedIconView class methodsFor: 'recovered'!
IS_backgroundGraphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('backgroundGraphicsDescriptor'); setSelector: ('backgroundGraphicsDescriptor:'); changeSymbol: ('backgroundGraphicsDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e0c24; bytecode file offset 0x9dd578"
!AbtSuperimposedIconView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) IS_backgroundGraphicsDescriptor.
    recoveredValue3 := (recoveredValue1) featureNamed: ('backgroundGraphicsDescriptor') put: (recoveredValue2).
    ^recoveredValue3
! !

