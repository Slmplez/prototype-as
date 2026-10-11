"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d034; bytecode file offset 0x909ab8"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
createDataElementASAP2Project: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20022a30; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
type
    ^'CUBOID'
! !

"ASDBase.ic method 0x2004d37c; bytecode file offset 0x949c94"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
mapList
    | recoveredValue0 |
    recoveredValue0 := (self) at: (17).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077724; bytecode file offset 0x9757c8"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
isCuboidNode
    ^true
! !

"ASDBase.ic method 0x200a7c7c; bytecode file offset 0x9a454c"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
mapList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (17) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b4d40; bytecode file offset 0x9b16a0"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
zAxisDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) axisDescription.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: (3) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20104a70; bytecode file offset 0xa01584"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (self) ySize.
    recoveredValue3 := (self) zSize.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20125858; bytecode file offset 0xa22158"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
asap2Copy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super asap2Copy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) mapList.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) mapList: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014050c; bytecode file offset 0xa3cdd4"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
memorySize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super memorySize.
    recoveredValue1 := (self) xSize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (self) ySize.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    recoveredValue5 := (self) zSize.
    recoveredValue6 := (recoveredValue4) * (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2018a314; bytecode file offset 0xa86bdc"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
asap2Children
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super asap2Children.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSameOrderedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) mapList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f69f0; bytecode file offset 0xaf32b8"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
setCommentsLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) comments.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    super setCommentsLink: (recoveredBlock5Value0).
    recoveredBlock5Value1 := (self) mapList.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) setCommentsLink: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2027c26c; bytecode file offset 0xb78b3c"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mapList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block280e12d0Arg1 | 
    | block280e12d0Value0 block280e12d0Value1 |
    block280e12d0Value0 := block280e12d0Arg1.
    block280e12d0Value1 := (block280e12d0Value0) comments.
    block280e12d0Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) mapList: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20283568; bytecode file offset 0xb7fe48"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    super initializeDefault.
    recoveredValue0 := Array.
    recoveredValue1 := ASAP2BytesStdAxisDescription.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (recoveredValue2) name: ('xAxis').
    recoveredValue4 := ASAP2BytesStdAxisDescription.
    recoveredValue5 := (recoveredValue4) createDefault.
    recoveredValue6 := (recoveredValue5) name: ('yAxis').
    recoveredValue7 := ASAP2BytesStdAxisDescription.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredValue9 := (recoveredValue8) name: ('zAxis').
    recoveredValue10 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6) with: (recoveredValue9).
    (self) axisDescription: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2028ec04; bytecode file offset 0xb8b4e4"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 41].
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
            recoveredStack2 := [:block280e2b24Arg1 | 
    | block280e2b24Local1 block280e2b24Value0 block280e2b24Value1 block280e2b24Value2 block280e2b24Value3 block280e2b24Value4 |
    block280e2b24Value0 := block280e2b24Arg1.
    block280e2b24Value1 := (block280e2b24Value0) positioned.
    block280e2b24Value2 := block280e2b24Value1.
    block280e2b24Local1 := block280e2b24Value2.
    block280e2b24Value3 := (block280e2b24Value1) size.
    block280e2b24Value4 := (block280e2b24Value3) >= (8).
    block280e2b24Value4
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) recordLayout: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a8168; bytecode file offset 0xba4a38"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
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
            recoveredStack3 := (recoveredStack3) maxXSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := [
    0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
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
            recoveredStack4 := (recoveredStack4) maxXSize.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
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

"ASDBase.ic method 0x2030d4f4; bytecode file offset 0xc09dcc"
!ASAP2BytesCharacteristicCuboids methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super selectObjectsFrom: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapList.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := [:recoveredBlock25Block33Arg1 | 
    | recoveredBlock25Block33Value0 recoveredBlock25Block33Value1 recoveredBlock25Block33Value2 |
    recoveredBlock25Block33Value0 := recoveredArg1.
    recoveredBlock25Block33Value1 := recoveredBlock25Block33Arg1.
    recoveredBlock25Block33Value2 := (recoveredBlock25Block33Value0) at: (recoveredBlock25Block33Value1).
    recoveredBlock25Block33Value2
].
    recoveredBlock25Value2 := (recoveredBlock25Value0) inject: (recoveredBlock25Value1).
    recoveredBlock25Value3 := (self) mapList: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

