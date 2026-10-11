"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b3f8; bytecode file offset 0x92209c"
!AbtPacketingContainerDetailsView class methodsFor: 'recovered'!
IS_statusLabelBackgroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('statusLabelBackgroundColor'); setSelector: ('statusLabelBackgroundColor:'); changeSymbol: ('statusLabelBackgroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200217ac; bytecode file offset 0x92209c"
!AbtPacketingContainerDetailsView class methodsFor: 'recovered'!
IS_statusLabelFontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('statusLabelFontName'); setSelector: ('statusLabelFontName:'); changeSymbol: ('statusLabelFontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023210; bytecode file offset 0x92209c"
!AbtPacketingContainerDetailsView class methodsFor: 'recovered'!
IS_statusLabelString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('statusLabelString'); setSelector: ('statusLabelString:'); changeSymbol: ('statusLabelStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024a34; bytecode file offset 0x92209c"
!AbtPacketingContainerDetailsView class methodsFor: 'recovered'!
IS_statusLabelForegroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('statusLabelForegroundColor'); setSelector: ('statusLabelForegroundColor:'); changeSymbol: ('statusLabelForegroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002617c; bytecode file offset 0x923928"
!AbtPacketingContainerDetailsView class methodsFor: 'recovered'!
IS_packetRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('packetRequested'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a8550; bytecode file offset 0xba4eb0"
!AbtPacketingContainerDetailsView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_statusLabelBackgroundColor.
    (recoveredValue2) featureNamed: ('statusLabelBackgroundColor') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_statusLabelForegroundColor.
    (recoveredValue4) featureNamed: ('statusLabelForegroundColor') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_statusLabelString.
    (recoveredValue6) featureNamed: ('statusLabelString') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_packetRequested.
    (recoveredValue8) featureNamed: ('packetRequested') put: (recoveredValue9).
    recoveredValue10 := (self) IS_statusLabelFontName.
    recoveredValue11 := (recoveredValue1) featureNamed: ('statusLabelFontName') put: (recoveredValue10).
    ^recoveredValue11
! !

