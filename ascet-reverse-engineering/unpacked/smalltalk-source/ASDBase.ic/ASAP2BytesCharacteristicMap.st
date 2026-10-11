"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200188a8; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
type
    ^'MAP'
! !

"ASDBase.ic method 0x2001df6c; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
iconString
    ^'ElementTypeTableTwoD'
! !

"ASDBase.ic method 0x20075aac; bytecode file offset 0x9757c8"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
isCalibrationMap
    ^true
! !

"ASDBase.ic method 0x200cc234; bytecode file offset 0x9c8f90"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (self) ySize.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f9ba8; bytecode file offset 0x9f646c"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
memorySize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super memorySize.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (self) ySize.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201cda1c; bytecode file offset 0xaca2e0"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
createDeviceLink: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variants.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASAP2MapLabel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) device: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := ASAP2VariantLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := ASAP2MapLabel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) device: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) device: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f592c; bytecode file offset 0xaf2210"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
selectValidRecordLayout: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRescale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280d833cArg1 | 
    | block280d833cValue0 block280d833cValue1 |
    block280d833cValue0 := block280d833cArg1.
    block280d833cValue1 := (block280d833cValue0) isMapLayout.
    block280d833cValue1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020b4f8; bytecode file offset 0xb07f0c"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
dataElementEditType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'FKf'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGroup.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'GKf'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRescale.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'RKf'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := 'KF'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219af0; bytecode file offset 0xb163cc"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeDefault.
    recoveredValue0 := Array.
    recoveredValue1 := ASAP2BytesStdAxisDescription.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (recoveredValue2) name: ('xAxis').
    recoveredValue4 := ASAP2BytesStdAxisDescription.
    recoveredValue5 := (recoveredValue4) createDefault.
    recoveredValue6 := (recoveredValue5) name: ('yAxis').
    recoveredValue7 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    (self) axisDescription: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2023af28; bytecode file offset 0xb37840"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) maxXSize.
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
            recoveredStack3 := (recoveredStack3) maxYSize.
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

"ASDBase.ic method 0x202fd020; bytecode file offset 0xbf9900"
!ASAP2BytesCharacteristicMap methodsFor: 'recovered'!
addDefaultObjectReferencesFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addDefaultObjectReferencesFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsRecordLayout.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 52].
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
            recoveredStack1 := (recoveredStack1) asap2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordLayout.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e925cArg1 | 
    | block280e925cLocal1 block280e925cStack0 block280e925cStack1 block280e925cStack2 block280e925cStack3 block280e925cStack4 block280e925cPC block280e925cStep block280e925cDone block280e925cResult |
    block280e925cStack0 := self.
    block280e925cPC := 4.
    block280e925cDone := false.
    [block280e925cDone not] whileTrue: [
        block280e925cStep := block280e925cPC.
        block280e925cStep = 4 ifTrue: [
            block280e925cStack1 := false.
            block280e925cPC := 5.
        ].
        block280e925cStep = 5 ifTrue: [
            block280e925cStack2 := block280e925cArg1.
            block280e925cPC := 6.
        ].
        block280e925cStep = 6 ifTrue: [
            block280e925cStack2 := (block280e925cStack2) positioned.
            block280e925cPC := 8.
        ].
        block280e925cStep = 8 ifTrue: [
            block280e925cStack3 := block280e925cStack2.
            block280e925cPC := 9.
        ].
        block280e925cStep = 9 ifTrue: [
            block280e925cLocal1 := block280e925cStack3.
            block280e925cPC := 10.
        ].
        block280e925cStep = 10 ifTrue: [
            block280e925cStack2 := (block280e925cStack2) size.
            block280e925cPC := 12.
        ].
        block280e925cStep = 12 ifTrue: [
            block280e925cStack3 := 4.
            block280e925cPC := 14.
        ].
        block280e925cStep = 14 ifTrue: [
            block280e925cStack2 := (block280e925cStack2) > (block280e925cStack3).
            block280e925cPC := 15.
        ].
        block280e925cStep = 15 ifTrue: [
            (block280e925cStack2) ifTrue: [block280e925cPC := 18] ifFalse: [block280e925cPC := 25].
        ].
        block280e925cStep = 18 ifTrue: [
            block280e925cPC := 19.
        ].
        block280e925cStep = 19 ifTrue: [
            block280e925cStack1 := block280e925cLocal1.
            block280e925cPC := 20.
        ].
        block280e925cStep = 20 ifTrue: [
            block280e925cStack1 := (block280e925cStack1) size.
            block280e925cPC := 22.
        ].
        block280e925cStep = 22 ifTrue: [
            block280e925cStack2 := 8.
            block280e925cPC := 24.
        ].
        block280e925cStep = 24 ifTrue: [
            block280e925cStack1 := (block280e925cStack1) < (block280e925cStack2).
            block280e925cPC := 25.
        ].
        block280e925cStep = 25 ifTrue: [
            block280e925cResult := block280e925cStack1.
            block280e925cDone := true.
        ].
    ].
    block280e925cResult
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) recordLayout: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

