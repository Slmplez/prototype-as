"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015cc8; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_lastErrorString
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('lastErrorString'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016460; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_propertyAt_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('propertyAt:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('propertyName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016724; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_invoke_withArguments_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('invoke:withArguments:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('methodName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Array'); parameterName: ('argumentsArray'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a96c; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_self
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OleAutomationObject); getSelector: ('yourself'); setSelector: (nil); changeSymbol: ('IChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020b4c; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_invoke_withArguments_returnType_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('invoke:withArguments:returnType:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('methodName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Array'); parameterName: ('argumentsArray'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Boolean'); parameterName: ('returnType'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020c90; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_propertyAt_put_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('propertyAt:put:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('propertyName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('value'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024464; bytecode file offset 0x92209c"
!OleAutomationObject class methodsFor: 'recovered'!
IS_releaseObject
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('releaseObject'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20339d44; bytecode file offset 0xc367b8"
!OleAutomationObject class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_releaseObject.
    (recoveredValue2) featureNamed: ('releaseObject') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_self.
    (recoveredValue4) featureNamed: ('self') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_lastErrorString.
    (recoveredValue6) featureNamed: ('lastErrorString') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_invoke_withArguments_.
    (recoveredValue8) featureNamed: ('invoke:withArguments:') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_invoke_withArguments_returnType_.
    (recoveredValue10) featureNamed: ('invoke:withArguments:returnType:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_propertyAt_.
    (recoveredValue12) featureNamed: ('propertyAt:') put: (recoveredValue13).
    recoveredValue14 := (self) IS_propertyAt_put_.
    recoveredValue15 := (recoveredValue1) featureNamed: ('propertyAt:put:') put: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x203cf164; bytecode file offset 0xccba4c"
!OleAutomationObject class methodsFor: 'recovered'!
abtGetObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) clsidFrom: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveObject: (recoveredStack1) ppunk: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := SOk.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := OSIUnknown.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := IIDIDispatch.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryInterface: (recoveredStack1) ppvObject: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := SOk.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) release.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) release.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := OSIDispatch.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint32At: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) forDispatch: (recoveredStack1) lcid: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

