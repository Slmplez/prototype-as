"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041048; bytecode file offset 0x93dd2c"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
holeValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) holeValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004136c; bytecode file offset 0x93dd2c"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
byteSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) byteSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d8a0; bytecode file offset 0x95a15c"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
getByteSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) dbItem.
    recoveredValue2 := (recoveredValue1) byteSize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c584; bytecode file offset 0x9692b0"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d248; bytecode file offset 0x969c04"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20092aa4; bytecode file offset 0x98f464"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
holeValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) holeValue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d7700; bytecode file offset 0x9d3fb8"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) dim: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    dim := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200d771c; bytecode file offset 0x9d3fd4"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) bytes: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    bytes := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x203e8a6c; bytecode file offset 0xce5344"
!DBStatusStringRefFormulaItemC methodsFor: 'recovered'!
calculate: recoveredArg1
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
            recoveredStack2 := dim.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) castToDouble: (recoveredStack1) dim: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDoubleArray.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) valArray.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) indexOf: (recoveredBlock13Stack1).
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack1 := 0.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack0 ~~ recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 28].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg2.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectWithIndex: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := dbItem.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculate: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := dim.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := dbItem.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) holeValue.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) real64At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 52] ifFalse: [recoveredLocal1 := nil. recoveredPC := 86]] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

