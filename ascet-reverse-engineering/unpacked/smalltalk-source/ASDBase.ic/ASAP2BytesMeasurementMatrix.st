"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005ae0; bytecode file offset 0x902744"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
putIn: recoveredArg1 arraySize: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2002384c; bytecode file offset 0x92209c"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
iconString
    ^'ElementTypeVariableMatrix'
! !

"ASDBase.ic method 0x2004d020; bytecode file offset 0x9498f0"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
ySize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (13).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075134; bytecode file offset 0x9757c8"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
isMatrixNode
    ^true
! !

"ASDBase.ic method 0x2007ee4c; bytecode file offset 0x97c330"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
isArrayNode
    ^false
! !

"ASDBase.ic method 0x200a78ec; bytecode file offset 0x9a421c"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
ySize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (13) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c89b8; bytecode file offset 0x9c52c4"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
addToProjectAsCalibration: recoveredArg1 device: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := ASAP2BytesCharacteristicValMatrix.
    recoveredValue3 := (self) addToProjectAsCalibration: (recoveredValue0) device: (recoveredValue1) class: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc4a4; bytecode file offset 0x9c8f90"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (self) ySize.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fa95c; bytecode file offset 0x9f7294"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) ySize: (1).
    ^self
! !

"ASDBase.ic method 0x2013f544; bytecode file offset 0xa3be00"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
bitMask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20144468; bytecode file offset 0xa40d50"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
matrixDim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) atOrNil: (1).
    (self) xSize: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) atOrNil: (2).
    (self) ySize: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201558f0; bytecode file offset 0xa521ac"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
bitMask: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023af04; bytecode file offset 0xb37840"
!ASAP2BytesMeasurementMatrix methodsFor: 'recovered'!
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
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) ySize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [
    0
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) ifNil: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

