"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d48c; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
iconString
    ^'ElementTypeTableOneD'
! !

"ASDBase.ic method 0x2002150c; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
type
    ^'CURVE'
! !

"ASDBase.ic method 0x20076104; bytecode file offset 0x9757c8"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
isCalibrationCurve
    ^true
! !

"ASDBase.ic method 0x20088cb4; bytecode file offset 0x985628"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7140; bytecode file offset 0x9b3a28"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
memorySize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super memorySize.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a325c; bytecode file offset 0xa9fb34"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeDefault.
    recoveredValue0 := Array.
    recoveredValue1 := ASAP2BytesStdAxisDescription.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (recoveredValue2) name: ('xAxis').
    recoveredValue4 := (recoveredValue0) with: (recoveredValue3).
    (self) axisDescription: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201add70; bytecode file offset 0xaaa68c"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201cda04; bytecode file offset 0xaca2e0"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
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
            recoveredStack0 := ASAP2CurveLabel.
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
            recoveredStack1 := ASAP2CurveLabel.
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

"ASDBase.ic method 0x201ef860; bytecode file offset 0xaec130"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super createAccessor: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := DBLiteralVector.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f5948; bytecode file offset 0xaf2210"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
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
            recoveredStack1 := [:block280d8360Arg1 | 
    | block280d8360Value0 block280d8360Value1 |
    block280d8360Value0 := block280d8360Arg1.
    block280d8360Value1 := (block280d8360Value0) isCurveLayout.
    block280d8360Value1
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

"ASDBase.ic method 0x2020b540; bytecode file offset 0xb07f0c"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
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
            recoveredStack0 := 'FKl'.
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
            recoveredStack0 := 'GKl'.
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
            recoveredStack0 := 'RKl'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := 'KL'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d1c0c; bytecode file offset 0xbce4f8"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
changeToCurveAxis
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) createCharacteristicType: ('CURVE_AXIS').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) createBytesObjectIn: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) floats.
    recoveredValue5 := (recoveredValue4) copy.
    (recoveredValue3) floats: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) bytes.
    recoveredValue8 := (recoveredValue7) copy.
    (recoveredValue6) bytes: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) compuMethod.
    (recoveredValue10) compuMethod: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := (self) recordLayout.
    (recoveredValue12) recordLayout: (recoveredValue13).
    recoveredValue14 := recoveredValue9.
    recoveredValue15 := (self) comparisonQuantity.
    (recoveredValue14) comparisonQuantity: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x202fcfb4; bytecode file offset 0xbf9894"
!ASAP2BytesCharacteristicCurve methodsFor: 'recovered'!
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
            recoveredStack2 := [:block280e9238Arg1 | 
    | block280e9238Local1 block280e9238Stack0 block280e9238Stack1 block280e9238Stack2 block280e9238Stack3 block280e9238Stack4 block280e9238PC block280e9238Step block280e9238Done block280e9238Result |
    block280e9238Stack0 := self.
    block280e9238PC := 4.
    block280e9238Done := false.
    [block280e9238Done not] whileTrue: [
        block280e9238Step := block280e9238PC.
        block280e9238Step = 4 ifTrue: [
            block280e9238Stack1 := false.
            block280e9238PC := 5.
        ].
        block280e9238Step = 5 ifTrue: [
            block280e9238Stack2 := block280e9238Arg1.
            block280e9238PC := 6.
        ].
        block280e9238Step = 6 ifTrue: [
            block280e9238Stack2 := (block280e9238Stack2) positioned.
            block280e9238PC := 8.
        ].
        block280e9238Step = 8 ifTrue: [
            block280e9238Stack3 := block280e9238Stack2.
            block280e9238PC := 9.
        ].
        block280e9238Step = 9 ifTrue: [
            block280e9238Local1 := block280e9238Stack3.
            block280e9238PC := 10.
        ].
        block280e9238Step = 10 ifTrue: [
            block280e9238Stack2 := (block280e9238Stack2) size.
            block280e9238PC := 12.
        ].
        block280e9238Step = 12 ifTrue: [
            block280e9238Stack3 := 1.
            block280e9238PC := 14.
        ].
        block280e9238Step = 14 ifTrue: [
            block280e9238Stack2 := (block280e9238Stack2) > (block280e9238Stack3).
            block280e9238PC := 15.
        ].
        block280e9238Step = 15 ifTrue: [
            (block280e9238Stack2) ifTrue: [block280e9238PC := 18] ifFalse: [block280e9238PC := 25].
        ].
        block280e9238Step = 18 ifTrue: [
            block280e9238PC := 19.
        ].
        block280e9238Step = 19 ifTrue: [
            block280e9238Stack1 := block280e9238Local1.
            block280e9238PC := 20.
        ].
        block280e9238Step = 20 ifTrue: [
            block280e9238Stack1 := (block280e9238Stack1) size.
            block280e9238PC := 22.
        ].
        block280e9238Step = 22 ifTrue: [
            block280e9238Stack2 := 5.
            block280e9238PC := 24.
        ].
        block280e9238Step = 24 ifTrue: [
            block280e9238Stack1 := (block280e9238Stack1) < (block280e9238Stack2).
            block280e9238PC := 25.
        ].
        block280e9238Step = 25 ifTrue: [
            block280e9238Result := block280e9238Stack1.
            block280e9238Done := true.
        ].
    ].
    block280e9238Result
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

