"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001625c; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
maxYSize
    ^4294967295
! !

"ASDBase.ic method 0x200216c8; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
iconString
    ^'ElementTypeVariableMatrix'
! !

"ASDBase.ic method 0x2004d364; bytecode file offset 0x949c94"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
ySize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (17).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200787d4; bytecode file offset 0x9757c8"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
isMatrixNode
    ^true
! !

"ASDBase.ic method 0x2007ed3c; bytecode file offset 0x97c330"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
isArrayNode
    ^false
! !

"ASDBase.ic method 0x200a7c34; bytecode file offset 0x9a454c"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
ySize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (17) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b7168; bytecode file offset 0x9b3a28"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
memorySize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super memorySize.
    recoveredValue1 := (self) ySize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc1d4; bytecode file offset 0x9c8f90"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (self) ySize.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200faa20; bytecode file offset 0x9f72f4"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) ySize: (8).
    ^self
! !

"ASDBase.ic method 0x2014447c; bytecode file offset 0xa40d50"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2023af4c; bytecode file offset 0xb37840"
!ASAP2BytesCharacteristicValMatrix methodsFor: 'recovered'!
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

