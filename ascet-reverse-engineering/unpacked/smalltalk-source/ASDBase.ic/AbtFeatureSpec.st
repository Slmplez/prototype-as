"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003a38; bytecode file offset 0x90206c"
!AbtFeatureSpec methodsFor: 'recovered'!
signalIn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2002ab04; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isPrimitiveAttribute
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isPrimitiveAttribute.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c784; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isPrimitiveAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isPrimitiveAction.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030284; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isAction.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031334; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isEvent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031f54; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isPrimitiveEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isPrimitiveEvent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033514; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isSubpartFeature
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isSubpartFeature.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033a14; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
featureType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) featureType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200347b4; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isAttribute
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isAttribute.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037604; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
isInstanceAttribute
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isInstanceAttribute.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037684; bytecode file offset 0x934580"
!AbtFeatureSpec methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) abtExtraInstanceVariables.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066bc4; bytecode file offset 0x9646f8"
!AbtFeatureSpec methodsFor: 'recovered'!
abtExtraInstanceVariables
    | recoveredValue0 |
    recoveredValue0 := extraInstanceVariables.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074170; bytecode file offset 0x970b34"
!AbtFeatureSpec methodsFor: 'recovered'!
attributeClass
    ^nil
! !

"ASDBase.ic method 0x20164d20; bytecode file offset 0xa615ec"
!AbtFeatureSpec methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtExtraInstanceVariables.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtExtraInstanceVariables.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20184170; bytecode file offset 0xa80a4c"
!AbtFeatureSpec methodsFor: 'recovered'!
typedBySecondaryPartType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            extraInstanceVariables := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'typedBySecondaryPartType'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20184188; bytecode file offset 0xa80a4c"
!AbtFeatureSpec methodsFor: 'recovered'!
inheritsSecondaryPartType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            extraInstanceVariables := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'inheritsSecondaryPartType'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e1f6c; bytecode file offset 0xade840"
!AbtFeatureSpec methodsFor: 'recovered'!
typedBySecondaryPartType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'typedBySecondaryPartType'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e1f80; bytecode file offset 0xade840"
!AbtFeatureSpec methodsFor: 'recovered'!
inheritsSecondaryPartType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'inheritsSecondaryPartType'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

