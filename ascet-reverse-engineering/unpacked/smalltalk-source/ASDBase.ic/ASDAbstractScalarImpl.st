"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001d88; bytecode file offset 0x8ffcfc"
!ASDAbstractScalarImpl methodsFor: 'recovered'!
scalarImplValue
    ^self
! !

"ASDBase.ic method 0x200bddc4; bytecode file offset 0x9bb178"
!ASDAbstractScalarImpl methodsFor: 'recovered'!
isRescaled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isRescaled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2600; bytecode file offset 0x9ceec0"
!ASDAbstractScalarImpl methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    (self) isRescaled: (false).
    recoveredValue0 := super initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20140e00; bytecode file offset 0xa3d6b8"
!ASDAbstractScalarImpl methodsFor: 'recovered'!
isRescaled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := isRescaled.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := isRescaled.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2026b39c; bytecode file offset 0xb67c70"
!ASDAbstractScalarImpl methodsFor: 'recovered'!
convertToASDV50Implementation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarImplValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedFormulaName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Call_60193'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarImplValue.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedFormulaName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarImplValue.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFormulaName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) formulaName: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

