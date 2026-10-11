"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200026c0; bytecode file offset 0x8ffcfc"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
connect
    ^self
! !

"ASDBase.ic method 0x2000f224; bytecode file offset 0x90bb38"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
signals: recoveredArg1 of: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2004ee64; bytecode file offset 0x94d048"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
initializeConnection
    (self) setAttributeValueFromCodeHook.
    ^self
! !

"ASDBase.ic method 0x200502b0; bytecode file offset 0x94d048"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
destroyPart
    (self) destroyPartInternals.
    ^self
! !

"ASDBase.ic method 0x2008b0dc; bytecode file offset 0x987994"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
release
    | recoveredValue0 |
    recoveredValue0 := codeHookOwner.
    (recoveredValue0) abrRemoveInterestFrom: (self).
    ^self
! !

"ASDBase.ic method 0x200e7534; bytecode file offset 0x9e3dec"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
align: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributeOwner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeConnection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016a2e4; bytecode file offset 0xa66b98"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
connectSource: recoveredArg1 featureName: recoveredArg2 feature: recoveredArg3 toTarget: recoveredArg4 selector: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    attributeOwner := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    attributeName := recoveredValue1.
    recoveredValue2 := recoveredArg4.
    codeHookOwner := recoveredValue2.
    recoveredValue3 := recoveredArg5.
    codeHookSpec := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    attribute := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201793e0; bytecode file offset 0xa75cac"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
recalculateWhen: recoveredArg1 ifAbsent: recoveredArg2 of: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := DirectedMessage.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) receiver: (self).
    recoveredValue6 := (recoveredValue4) selector: ('setAttributeValueFromCodeHook').
    (recoveredValue0) abtWhen: (recoveredValue1) ifAbsent: (recoveredValue2) perform: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201983dc; bytecode file offset 0xa94c94"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
source: recoveredArg1 attribute: recoveredArg2 with: recoveredArg3 selector: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    attributeOwner := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    attributeName := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    codeHookOwner := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    codeHookSpec := recoveredValue3.
    recoveredValue4 := attributeOwner.
    recoveredValue5 := attributeName.
    recoveredValue6 := (recoveredValue4) abtExecutableFeatureNamed: (recoveredValue5).
    attribute := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x201b74d8; bytecode file offset 0xab3d90"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
connectSource: recoveredArg1 variableFeatureName: recoveredArg2 featureSelector: recoveredArg3 toTarget: recoveredArg4 selector: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    attributeOwner := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    attributeName := recoveredValue1.
    recoveredValue2 := recoveredArg4.
    codeHookOwner := recoveredValue2.
    recoveredValue3 := recoveredArg5.
    codeHookSpec := recoveredValue3.
    recoveredValue4 := attributeOwner.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue4) abtExecutableFeatureNamed: (recoveredValue5) selector: (recoveredValue6).
    attribute := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x2021ef5c; bytecode file offset 0xb1b81c"
!AbtAttributeToCodeHookConnection methodsFor: 'recovered'!
setAttributeValueFromCodeHook
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aligning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'setAttributeValueFromCodeHook'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            aligning := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := attribute.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := attributeOwner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := codeHookSpec.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := codeHookOwner.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) abrSendTo: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) setValueIn: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            aligning := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

