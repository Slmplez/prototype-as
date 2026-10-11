"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025804; bytecode file offset 0x923928"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
maxZSize
    ^4294967295
! !

"ASDBase.ic method 0x2004d4a4; bytecode file offset 0x949d5c"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
zSize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (18).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c3ec; bytecode file offset 0x97c330"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
isMatrixNode
    ^false
! !

"ASDBase.ic method 0x200a7cf4; bytecode file offset 0x9a45f4"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
zSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (18) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b712c; bytecode file offset 0x9b3a28"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
memorySize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super memorySize.
    recoveredValue1 := (self) zSize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fa9f8; bytecode file offset 0x9f72f4"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) zSize: (8).
    ^self
! !

"ASDBase.ic method 0x20104a54; bytecode file offset 0xa01584"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (self) ySize.
    recoveredValue3 := (self) zSize.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b3770; bytecode file offset 0xab0064"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
matrixDim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) atOrNil: (1).
    (self) xSize: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) atOrNil: (2).
    (self) ySize: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) atOrNil: (3).
    (self) zSize: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202a80b4; bytecode file offset 0xba49e4"
!ASAP2BytesCharacteristicValCuboid methodsFor: 'recovered'!
xyzDimension
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) zSize.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) ifNil: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

