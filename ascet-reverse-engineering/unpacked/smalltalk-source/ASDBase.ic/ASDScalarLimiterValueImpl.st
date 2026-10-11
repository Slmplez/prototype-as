"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000100; bytecode file offset 0x8ffcfc"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
generateConstants
    ^self
! !

"ASDBase.ic method 0x20065c44; bytecode file offset 0x963428"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
limitAssignments
    | recoveredValue0 |
    recoveredValue0 := limitAssignments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006765c; bytecode file offset 0x9646f8"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
limitOverflow
    | recoveredValue0 |
    recoveredValue0 := limitOverflow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068d74; bytecode file offset 0x965b90"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
keepResolution
    | recoveredValue0 |
    recoveredValue0 := keepResolution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069890; bytecode file offset 0x966bdc"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
reduceResolution
    | recoveredValue0 |
    recoveredValue0 := reduceResolution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdacc; bytecode file offset 0x9bb178"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
limitAssignments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    limitAssignments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf328; bytecode file offset 0x9bc0b4"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
limitOverflow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    limitOverflow := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c03a4; bytecode file offset 0x9bd228"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
keepResolution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keepResolution := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1468; bytecode file offset 0x9bdf14"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
reduceResolution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reduceResolution := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c195c; bytecode file offset 0x9beac8"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
automaticResolution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    automaticResolution := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2039b5c8; bytecode file offset 0xc97ea8"
!ASDScalarLimiterValueImpl methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitAssignments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitAssignments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) useLimiter: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflow.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflow.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) limitOverflows.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) dontLimitOverflows.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) setAutomaticResolution.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) keepResolution.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) keepResolution.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setKeepResolution.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) reduceResolution.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) reduceResolution.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) setReduceResolution.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

