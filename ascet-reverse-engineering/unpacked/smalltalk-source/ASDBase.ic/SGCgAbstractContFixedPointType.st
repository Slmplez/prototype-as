"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053790; bytecode file offset 0x9505d0"
!SGCgAbstractContFixedPointType methodsFor: 'recovered'!
isCgFormulaIdentical: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200aa96c; bytecode file offset 0x9a722c"
!SGCgAbstractContFixedPointType methodsFor: 'recovered'!
setImplInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredValue2 := super setImplInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d7194; bytecode file offset 0x9d3a70"
!SGCgAbstractContFixedPointType methodsFor: 'recovered'!
copyWithFloatImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (self) physicalUnit.
    recoveredValue4 := (recoveredValue0) createContRealImpl: (recoveredValue2) physicalUnit: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d71ac; bytecode file offset 0x9d3a70"
!SGCgAbstractContFixedPointType methodsFor: 'recovered'!
adaptFloatImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (self) physicalUnit.
    recoveredValue4 := (recoveredValue0) createContRealImpl: (recoveredValue2) physicalUnit: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20132f0c; bytecode file offset 0xa2f7e0"
!SGCgAbstractContFixedPointType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgFormulaIdentical: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20132f20; bytecode file offset 0xa2f7e0"
!SGCgAbstractContFixedPointType methodsFor: 'recovered'!
isCgTypeIdenticalAllowWiderIntervalIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super isCgTypeIdenticalAllowWiderIntervalIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgFormulaIdentical: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

