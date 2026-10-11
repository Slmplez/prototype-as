"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200181e8; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_traversalOn
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('traversalOn'); setSelector: ('traversalOn:'); changeSymbol: ('traversalOnChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018938; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_labelString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('labelString'); setSelector: ('labelString:'); changeSymbol: ('labelStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ab10; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_backgroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('backgroundColor'); setSelector: ('backgroundColor:'); changeSymbol: ('backgroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b338; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_borderWidth
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('borderWidth'); setSelector: ('borderWidth:'); changeSymbol: ('borderWidthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f910; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_framingSpec
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('framingSpec'); setSelector: ('framingSpec:'); changeSymbol: ('framingSpecChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020030; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_tabGroup
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('tabGroup'); setSelector: ('tabGroup:'); changeSymbol: ('tabGroupChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002219c; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_foregroundColor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('foregroundColor'); setSelector: ('foregroundColor:'); changeSymbol: ('foregroundColorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022880; bytecode file offset 0x92209c"
!AbtCwItem class methodsFor: 'recovered'!
IS_menu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCwMenuView); getSelector: ('menu'); setSelector: ('menu:'); changeSymbol: ('menuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2029ba78; bytecode file offset 0xb98340"
!AbtCwItem class methodsFor: 'recovered'!
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIconDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) icon.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) pixmap.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := XmUNSPECIFIEDPIXMAP.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := XmUNSPECIFIEDICON.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20375684; bytecode file offset 0xc7217c"
!AbtCwItem class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_labelString.
    (recoveredValue2) featureNamed: ('labelString') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_borderWidth.
    (recoveredValue4) featureNamed: ('borderWidth') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_foregroundColor.
    (recoveredValue6) featureNamed: ('foregroundColor') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_backgroundColor.
    (recoveredValue8) featureNamed: ('backgroundColor') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_framingSpec.
    (recoveredValue10) featureNamed: ('framingSpec') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_tabGroup.
    (recoveredValue12) featureNamed: ('tabGroup') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_traversalOn.
    (recoveredValue14) featureNamed: ('traversalOn') put: (recoveredValue15).
    recoveredValue16 := (self) IS_menu.
    recoveredValue17 := (recoveredValue1) featureNamed: ('menu') put: (recoveredValue16).
    ^recoveredValue17
! !

