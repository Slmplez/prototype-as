"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022280; bytecode file offset 0x92209c"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
iconString
    ^'ElementTypeVariableArray'
! !

"ASDBase.ic method 0x2004cd90; bytecode file offset 0x949804"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
xSize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cdb4; bytecode file offset 0x949804"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
arraySize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076454; bytecode file offset 0x9757c8"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
isArrayNode
    ^true
! !

"ASDBase.ic method 0x200889f8; bytecode file offset 0x985628"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a77fc; bytecode file offset 0x9a4138"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
arraySize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (12) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7850; bytecode file offset 0x9a4138"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
xSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (12) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb644; bytecode file offset 0x9b7f40"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
matrixDim: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) atOrNil: (1).
    (self) xSize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c89f8; bytecode file offset 0x9c52c4"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
addToProjectAsCalibration: recoveredArg1 device: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := ASAP2BytesCharacteristicValblk.
    recoveredValue3 := (self) addToProjectAsCalibration: (recoveredValue0) device: (recoveredValue1) class: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fa934; bytecode file offset 0x9f7294"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) xSize: (1).
    ^self
! !

"ASDBase.ic method 0x20138500; bytecode file offset 0xa34de4"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2013f500; bytecode file offset 0xa3bddc"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
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
            recoveredStack1 := 13.
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
            recoveredStack1 := 13.
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

"ASDBase.ic method 0x201558ac; bytecode file offset 0xa52188"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
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
            recoveredStack1 := 13.
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
            recoveredStack1 := 13.
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

"ASDBase.ic method 0x201add54; bytecode file offset 0xaaa68c"
!ASAP2BytesMeasurementArray methodsFor: 'recovered'!
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

