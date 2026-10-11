"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a268; bytecode file offset 0x908be4"
!AbtOleControlView class methodsFor: 'recovered'!
clientName
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200142bc; bytecode file offset 0x912098"
!AbtOleControlView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := AbtOleExtendedWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bc20; bytecode file offset 0x92209c"
!AbtOleControlView class methodsFor: 'recovered'!
IS_propertyAt_put_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('propertyAt:put:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('aPropertyName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('anObject'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bf50; bytecode file offset 0x92209c"
!AbtOleControlView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022670; bytecode file offset 0x92209c"
!AbtOleControlView class methodsFor: 'recovered'!
IS_ambientPropertySelector
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Symbol); getSelector: ('ambientPropertySelector'); setSelector: ('ambientPropertySelector:'); changeSymbol: ('ambientPropertySelectorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022ad8; bytecode file offset 0x92209c"
!AbtOleControlView class methodsFor: 'recovered'!
IS_invoke_withArguments_returnType_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('invoke:withArguments:returnType:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('methodName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Array'); parameterName: ('argumentsArray'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('returnType'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024bfc; bytecode file offset 0x92209c"
!AbtOleControlView class methodsFor: 'recovered'!
IS_propertyAt_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('propertyAt:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('aPropertyName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025810; bytecode file offset 0x923928"
!AbtOleControlView class methodsFor: 'recovered'!
IS_ambientPropertyReceiver
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('ambientPropertyReceiver'); setSelector: ('ambientPropertyReceiver:'); changeSymbol: ('ambientPropertyReceiverChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f990; bytecode file offset 0x96c42c"
!AbtOleControlView class methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 |
    recoveredValue0 := licenseKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5f74; bytecode file offset 0x9c29e8"
!AbtOleControlView class methodsFor: 'recovered'!
licenseKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    licenseKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201613ac; bytecode file offset 0xa5dc6c"
!AbtOleControlView class methodsFor: 'recovered'!
getLicenseKey
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) clientName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OleControl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) clientName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLicenseKey: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            licenseKey := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fb770; bytecode file offset 0xbf8170"
!AbtOleControlView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_ambientPropertyReceiver.
    (recoveredValue2) featureNamed: ('ambientPropertyReceiver') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_ambientPropertySelector.
    (recoveredValue4) featureNamed: ('ambientPropertySelector') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_fontName.
    (recoveredValue6) featureNamed: ('fontName') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_propertyAt_.
    (recoveredValue8) featureNamed: ('propertyAt:') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_propertyAt_put_.
    (recoveredValue10) featureNamed: ('propertyAt:put:') put: (recoveredValue11).
    recoveredValue12 := (self) IS_invoke_withArguments_returnType_.
    recoveredValue13 := (recoveredValue1) featureNamed: ('invoke:withArguments:returnType:') put: (recoveredValue12).
    ^recoveredValue13
! !

