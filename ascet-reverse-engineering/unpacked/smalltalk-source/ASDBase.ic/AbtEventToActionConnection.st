"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006beec; bytecode file offset 0x9692b0"
!AbtEventToActionConnection methodsFor: 'recovered'!
actionProvider
    | recoveredValue0 |
    recoveredValue0 := actionProvider.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bfa4; bytecode file offset 0x9692b0"
!AbtEventToActionConnection methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := actionProvider.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c0f4; bytecode file offset 0x9692b0"
!AbtEventToActionConnection methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := actionProvider.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d70c; bytecode file offset 0x96a390"
!AbtEventToActionConnection methodsFor: 'recovered'!
actionSpec
    | recoveredValue0 |
    recoveredValue0 := executableAction.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b83c; bytecode file offset 0x9880f4"
!AbtEventToActionConnection methodsFor: 'recovered'!
primSend
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := executableAction.
    recoveredValue1 := actionProvider.
    recoveredValue2 := (recoveredValue0) performIn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b908c; bytecode file offset 0x9b5944"
!AbtEventToActionConnection methodsFor: 'recovered'!
primSendWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := executableAction.
    recoveredValue1 := actionProvider.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) performIn: (recoveredValue1) arguments: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7d3c; bytecode file offset 0x9c45fc"
!AbtEventToActionConnection methodsFor: 'recovered'!
parameterAttributeNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDictionaryAttributeSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) key: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ecf60; bytecode file offset 0x9e9814"
!AbtEventToActionConnection methodsFor: 'recovered'!
actionProvider: recoveredArg1 featureName: recoveredArg2 feature: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    actionProvider := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    actionName := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    executableAction := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20122b94; bytecode file offset 0xa1f45c"
!AbtEventToActionConnection methodsFor: 'recovered'!
evaluateExpression: recoveredArg1 forParameterNamed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) abrSend.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) parameterSpecNamed: (recoveredValue4).
    recoveredValue6 := (self) actionProvider.
    recoveredValue7 := (recoveredValue1) abtConvertValue: (recoveredValue3) forParameter: (recoveredValue5) in: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20134adc; bytecode file offset 0xa31394"
!AbtEventToActionConnection methodsFor: 'recovered'!
actionProvider: recoveredArg1 actionName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    actionProvider := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    actionName := recoveredValue1.
    recoveredValue2 := actionProvider.
    recoveredValue3 := actionName.
    recoveredValue4 := (recoveredValue2) abtExecutableFeatureNamed: (recoveredValue3).
    executableAction := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x20148570; bytecode file offset 0xa44e28"
!AbtEventToActionConnection methodsFor: 'recovered'!
actionProvider: recoveredArg1 variableFeatureName: recoveredArg2 featureSelector: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    actionProvider := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    actionName := recoveredValue1.
    recoveredValue2 := actionProvider.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) abtExecutableFeatureNamed: (recoveredValue3) selector: (recoveredValue4).
    executableAction := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201592b4; bytecode file offset 0xa55b74"
!AbtEventToActionConnection methodsFor: 'recovered'!
numberOfActionParameters
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actionSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameters.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db944; bytecode file offset 0xad8220"
!AbtEventToActionConnection methodsFor: 'recovered'!
resultFeatureAssoc: recoveredArg1 actionProviderClass: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Association.
    recoveredValue1 := AbtAttributeSpec.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Object.
    (recoveredValue3) attributeClass: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) getSelector: ('result').
    recoveredValue6 := (recoveredValue2) changeSymbol: ('resultChanged').
    recoveredValue7 := (recoveredValue0) key: ('result') value: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2022152c; bytecode file offset 0xb1ddf4"
!AbtEventToActionConnection methodsFor: 'recovered'!
actionParameterAttributeNamesDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actionSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameters.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) parameterName.
    recoveredBlock16Value3 := (recoveredBlock16Value0) value: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20343d50; bytecode file offset 0xc4064c"
!AbtEventToActionConnection methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := ','.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := eventName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) isString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := eventName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := eventName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := ' --> '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := actionProvider.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ','.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := actionName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) isString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := actionName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := actionName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a639c; bytecode file offset 0xca2c8c"
!AbtEventToActionConnection methodsFor: 'recovered'!
privateInterfaceSpec
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actionSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := Object.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultFeatureAssoc: (recoveredStack1) actionProviderClass: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := AbtInterfaceSpec.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) featureNamed: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            privateInterfaceSpec := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameters.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 recoveredBlock41Value11 |
    recoveredBlock41Value0 := privateInterfaceSpec.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value1) parameterName.
    recoveredBlock41Value3 := AbtDictionaryAttributeSpec.
    recoveredBlock41Value4 := (recoveredBlock41Value3) new.
    recoveredBlock41Value5 := recoveredBlock41Value4.
    recoveredBlock41Value6 := recoveredBlock41Arg1.
    recoveredBlock41Value7 := (recoveredBlock41Value6) parameterClass.
    (recoveredBlock41Value5) attributeClass: (recoveredBlock41Value7).
    recoveredBlock41Value8 := recoveredBlock41Value4.
    recoveredBlock41Value9 := recoveredBlock41Arg1.
    recoveredBlock41Value10 := (recoveredBlock41Value9) parameterName.
    (recoveredBlock41Value8) key: (recoveredBlock41Value10).
    recoveredBlock41Value11 := (recoveredBlock41Value0) featureNamed: (recoveredBlock41Value2) put: (recoveredBlock41Value4).
    recoveredBlock41Value11
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := privateInterfaceSpec.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

