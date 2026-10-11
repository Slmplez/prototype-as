"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004cf6c; bytecode file offset 0x9498f0"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
arraySize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (13).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cf90; bytecode file offset 0x9498f0"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
xSize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (13).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20088570; bytecode file offset 0x985628"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a791c; bytecode file offset 0x9a421c"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
arraySize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (13) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7940; bytecode file offset 0x9a421c"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
xSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (13) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb674; bytecode file offset 0x9b7f40"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
matrixDim: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) atOrNil: (1).
    (self) xSize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fa9ac; bytecode file offset 0x9f7294"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) xSize: (1).
    ^self
! !

"ASDBase.ic method 0x2013851c; bytecode file offset 0xa34de4"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createAccessor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := DBLiteralVector.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) arraySize.
    recoveredValue5 := (recoveredValue2) create: (recoveredValue3) size: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201addc4; bytecode file offset 0xaaa68c"
!ASAP2BytesMeasurementBooleanArray methodsFor: 'recovered'!
xyzDimension
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) xSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifNil: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

