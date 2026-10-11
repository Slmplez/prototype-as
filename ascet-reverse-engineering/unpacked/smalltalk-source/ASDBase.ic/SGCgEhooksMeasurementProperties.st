"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200221b4; bytecode file offset 0x92209c"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
unknownEntry
    ^'unknown'
! !

"ASDBase.ic method 0x200524b0; bytecode file offset 0x94f0e0"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
errLabelBooleanInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) physInterval.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredValue2 := (recoveredValue1) asString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200615b4; bytecode file offset 0x95e838"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
hasBooleanType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errLabelBooleanInterval.
    recoveredValue1 := (recoveredValue0) equals: ('[0,1]').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062118; bytecode file offset 0x95ebd4"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
hasUnknownType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) implType.
    recoveredValue1 := (self) unknownEntry.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009da74; bytecode file offset 0x99a3d4"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
lowerLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) unknownEntry.
    recoveredValue1 := (self) getAttribute: ('LowerLimit') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009da88; bytecode file offset 0x99a3d4"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
implType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) unknownEntry.
    recoveredValue1 := (self) getAttribute: ('ImplType') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009dad8; bytecode file offset 0x99a3d4"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
formula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) unknownEntry.
    recoveredValue1 := (self) getAttribute: ('Formula') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009db00; bytecode file offset 0x99a3d4"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
upperLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) unknownEntry.
    recoveredValue1 := (self) getAttribute: ('UpperLimit') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a37f0; bytecode file offset 0x9a0b4c"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
formula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('Formula') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ac0; bytecode file offset 0x9a0b4c"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
implType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('ImplType') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c30; bytecode file offset 0x9a0b4c"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
lowerLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('LowerLimit') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d60; bytecode file offset 0x9a0b4c"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
upperLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('UpperLimit') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20141444; bytecode file offset 0xa3ddcc"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
hasIle32FloatType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileImplType.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isIleFloat32Type.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2014150c; bytecode file offset 0xa3ddcc"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
hasFloatType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileImplType.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isIleFloatType.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20141624; bytecode file offset 0xa3df70"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
implInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileImplType.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) getInterval.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20152a48; bytecode file offset 0xa4f30c"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
errLabelImplInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) implInterval.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) asString.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) unknownEntry.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20173430; bytecode file offset 0xa6fcf4"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
ileImplType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBDataTypes.
    recoveredValue1 := (self) implType.
    recoveredValue2 := (recoveredValue0) fromASAP2DataType: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    ^recoveredBlock9Value0
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

"ASDBase.ic method 0x20187208; bytecode file offset 0xa83acc"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
hasIdenticalImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileImplType.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) getImplType.
    recoveredBlock5Value3 := (recoveredBlock5Value0) equalsType: (recoveredBlock5Value2).
    ^recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20222c20; bytecode file offset 0xb1f4e8"
!SGCgEhooksMeasurementProperties methodsFor: 'recovered'!
physInterval
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowerLimit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) unknownEntry.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) upperLimit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) unknownEntry.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

