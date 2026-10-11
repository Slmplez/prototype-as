"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200711b4; bytecode file offset 0x96da70"
!AbtOleDynamicControlView methodsFor: 'recovered'!
clientName
    | recoveredValue0 |
    recoveredValue0 := clientName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200711f0; bytecode file offset 0x96db0c"
!AbtOleDynamicControlView methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 |
    recoveredValue0 := licenseKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d2710; bytecode file offset 0x9cefcc"
!AbtOleDynamicControlView methodsFor: 'recovered'!
recreateWidget
    privateInterfaceSpec := nil.
    super recreateWidget.
    ^self
! !

"ASDBase.ic method 0x200e1564; bytecode file offset 0x9dde24"
!AbtOleDynamicControlView methodsFor: 'recovered'!
initialize
    clientName := ''.
    super initialize.
    ^self
! !

"ASDBase.ic method 0x20187cd0; bytecode file offset 0xa84594"
!AbtOleDynamicControlView methodsFor: 'recovered'!
propertyAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super propertyAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a4208; bytecode file offset 0xaa0ac8"
!AbtOleDynamicControlView methodsFor: 'recovered'!
clientName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := clientName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            clientName := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) recreateWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'clientNameChanged'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) signalEvent: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a50d8; bytecode file offset 0xaa19b4"
!AbtOleDynamicControlView methodsFor: 'recovered'!
licenseKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            licenseKey := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) oleWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) oleWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) licenseKey: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'licenseKeyChanged'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8bd4; bytecode file offset 0xaa5498"
!AbtOleDynamicControlView methodsFor: 'recovered'!
valueOfAttributeNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) abrAsString.
    recoveredBlock7Value2 := (self) propertyAt: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := super valueOfAttributeNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20204ef0; bytecode file offset 0xb017b0"
!AbtOleDynamicControlView methodsFor: 'recovered'!
valueOfAttributeNamed: recoveredArg1 ifAbsent: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg3.
    recoveredBlock7Value2 := (self) propertyAt: (recoveredBlock7Value0) put: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super valueOfAttributeNamed: (recoveredValue0) ifAbsent: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20217c70; bytecode file offset 0xb14530"
!AbtOleDynamicControlView methodsFor: 'recovered'!
privateInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := privateInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculatePrivateInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            privateInterfaceSpec := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := privateInterfaceSpec.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := AbtInterfaceSpec.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            privateInterfaceSpec := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := privateInterfaceSpec.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025c250; bytecode file offset 0xb58b18"
!AbtOleDynamicControlView methodsFor: 'recovered'!
abtFeatureNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := (self) privateInterfaceSpec.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (self) attributeSpecForPropertyNamed: (recoveredBlock7Value2).
    recoveredBlock7Value4 := recoveredBlock7Value3.
    recoveredLocal1 := recoveredBlock7Value4.
    (recoveredBlock7Value0) featureNamed: (recoveredBlock7Value1) put: (recoveredBlock7Value3).
    recoveredBlock7Value5 := recoveredLocal1.
    recoveredBlock7Value5
].
    recoveredValue2 := super abtFeatureNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20272da8; bytecode file offset 0xb6f670"
!AbtOleDynamicControlView methodsFor: 'recovered'!
abtFeatureNamed: recoveredArg1 selector: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := (self) privateInterfaceSpec.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (self) attributeSpecForPropertyNamed: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    (recoveredBlock10Value0) featureNamed: (recoveredBlock10Value1) put: (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredLocal1.
    recoveredBlock10Value5
].
    recoveredValue3 := super abtFeatureNamed: (recoveredValue0) selector: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20330ee4; bytecode file offset 0xc2d7d4"
!AbtOleDynamicControlView methodsFor: 'recovered'!
attributeSpecForPropertyNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := Message.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) selector: ('propertyAt:').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    (recoveredValue3) arguments: (recoveredValue6).
    recoveredLocal2 := recoveredValue1.
    recoveredValue7 := Message.
    recoveredValue8 := (recoveredValue7) new.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) selector: ('propertyAt:put:').
    recoveredValue10 := recoveredValue8.
    recoveredValue11 := Array.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue11) with: (recoveredValue12) with: (nil).
    (recoveredValue10) arguments: (recoveredValue13).
    recoveredLocal1 := recoveredValue8.
    recoveredValue14 := AbtAttributeSpec.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) getSelector: (recoveredValue17).
    recoveredValue18 := recoveredValue15.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue18) setSelector: (recoveredValue19).
    recoveredValue20 := recoveredValue15.
    recoveredValue21 := recoveredArg1.
    (recoveredValue20) changeSymbol: (recoveredValue21).
    recoveredValue22 := recoveredValue15.
    recoveredValue23 := Object.
    (recoveredValue22) attributeClass: (recoveredValue23).
    ^recoveredValue15
! !

