"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001790c; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_graphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('graphicsDescriptor'); setSelector: ('graphicsDescriptor:'); changeSymbol: ('graphicsDescriptor'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018d10; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_image
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('image'); setSelector: ('image:'); changeSymbol: ('image'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019208; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_aboutToBeSwitchedFrom
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToBeSwitchedFrom'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ce08; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_toolTipText
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('toolTipText'); setSelector: ('toolTipText:'); changeSymbol: ('toolTipTextChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f7f0; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_formOffset
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('formOffset'); setSelector: ('formOffset:'); changeSymbol: ('formOffsetChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021f20; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_aboutToBeSwitchedTo
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('aboutToBeSwitchedTo'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024b84; bytecode file offset 0x92209c"
!AbtCwTabView class methodsFor: 'recovered'!
IS_labelString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('labelString'); setSelector: ('labelString:'); changeSymbol: ('labelStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2025aeac; bytecode file offset 0xb57774"
!AbtCwTabView class methodsFor: 'recovered'!
imageFromDescriptor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIconDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) icon.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) pixmap.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := XmUNSPECIFIEDPIXMAP.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := XmUNSPECIFIEDICON.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a85c8; bytecode file offset 0xba4eb0"
!AbtCwTabView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_labelString.
    (recoveredValue2) featureNamed: ('labelString') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_toolTipText.
    (recoveredValue4) featureNamed: ('toolTipText') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_graphicsDescriptor.
    (recoveredValue6) featureNamed: ('graphicsDescriptor') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_aboutToBeSwitchedTo.
    (recoveredValue8) featureNamed: ('aboutToBeSwitchedTo') put: (recoveredValue9).
    recoveredValue10 := (self) IS_aboutToBeSwitchedFrom.
    recoveredValue11 := (recoveredValue1) featureNamed: ('aboutToBeSwitchedFrom') put: (recoveredValue10).
    ^recoveredValue11
! !

