"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005da18; bytecode file offset 0x95a2cc"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
isPowerOf2Distance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := isPowerOf2Distance.
    recoveredValue1 := (recoveredValue0) = (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066e7c; bytecode file offset 0x9646f8"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
numberOfXAxisPoints
    | recoveredValue0 |
    recoveredValue0 := numberOfAxisPoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068dcc; bytecode file offset 0x965b90"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
xOffset
    | recoveredValue0 |
    recoveredValue0 := offset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f80; bytecode file offset 0x966bdc"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
xDistance
    | recoveredValue0 |
    recoveredValue0 := distance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b198; bytecode file offset 0x987a68"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
xDistanceShift
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := distance.
    recoveredValue1 := (recoveredValue0) floorLog: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011ff74; bytecode file offset 0xa1c834"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
copyDataFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) numberOfXAxisPoints.
    numberOfAxisPoints := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) xDistance.
    distance := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) xOffset.
    offset := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201809bc; bytecode file offset 0xa7d27c"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
isSameAxisForAllDataSets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberOfXAxisPoints.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) xOffset.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024ca20; bytecode file offset 0xb492e4"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
convert: recoveredArg1 and: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPowerOf2Distance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPowerOf2Distance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            isPowerOf2Distance := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSameAxisForAllDataSets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSameAxisForAllDataSets.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSameAxis: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) copyDataFrom: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027679c; bytecode file offset 0xb73060"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := numberOfAxisPoints.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) numberOfXAxisPoints.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := offset.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) xOffset.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := distance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistance.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPowerOf2Distance.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPowerOf2Distance.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028ef68; bytecode file offset 0xb8b82c"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
isSameAxis: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSameAxisForAllDataSets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSameAxisForAllDataSets.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfXAxisPoints.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberOfXAxisPoints.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistance.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistance.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) xOffset.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) xOffset.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048ef10; bytecode file offset 0xd8b814"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
allDistances: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Distances of "'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '" are unknown '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := allData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) ileInitValue.
    recoveredBlock29Value2 := (recoveredBlock29Value1) xDistribution.
    recoveredBlock29Value3 := (recoveredBlock29Value2) staticDistanceAndOffset.
    recoveredBlock29Value4 := [:recoveredBlock29Block43Arg1 | 
    | recoveredBlock29Block43Value0 recoveredBlock29Block43Value1 recoveredBlock29Block43Value2 recoveredBlock29Block43Value3 recoveredBlock29Block43Value4 |
    recoveredBlock29Block43Value0 := recoveredLocal2.
    recoveredBlock29Block43Value1 := recoveredBlock29Block43Arg1.
    recoveredBlock29Block43Value2 := (recoveredBlock29Block43Value1) first.
    recoveredBlock29Block43Value3 := (recoveredBlock29Block43Value2) asString.
    recoveredBlock29Block43Value4 := (recoveredBlock29Block43Value0) add: (recoveredBlock29Block43Value3).
    recoveredBlock29Block43Value4
].
    recoveredBlock29Value5 := (recoveredBlock29Value3) ifNotNil: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := SGBasicTempWriteStream.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) reserveTempStream.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'Distances of "'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := '": '.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 |
    recoveredBlock94Value0 := recoveredLocal1.
    recoveredBlock94Value1 := recoveredBlock94Arg1.
    recoveredBlock94Value2 := (recoveredBlock94Value1) asString.
    recoveredBlock94Value3 := (recoveredBlock94Value0) nextPutAll: (recoveredBlock94Value2).
    recoveredBlock94Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock109Value0 recoveredBlock109Value1 |
    recoveredBlock109Value0 := recoveredLocal1.
    recoveredBlock109Value1 := (recoveredBlock109Value0) nextPutAll: (', ').
    recoveredBlock109Value1
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) separatedBy: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) releaseGetContents.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c73a4; bytecode file offset 0xdc3cb8"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
allAxis: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Axis of "'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '" are unknown '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := allData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) ileInitValue.
    recoveredBlock29Value2 := (recoveredBlock29Value1) xDistribution.
    recoveredBlock29Value3 := (recoveredBlock29Value2) staticDistanceAndOffset.
    recoveredBlock29Value4 := [:recoveredBlock29Block45Arg1 | 
    | recoveredBlock29Block45Value0 recoveredBlock29Block45Value1 recoveredBlock29Block45Value2 recoveredBlock29Block45Value3 recoveredBlock29Block45Value4 recoveredBlock29Block45Value5 recoveredBlock29Block45Value6 recoveredBlock29Block45Value7 recoveredBlock29Block45Value8 recoveredBlock29Block45Value9 recoveredBlock29Block45Value10 recoveredBlock29Block45Value11 recoveredBlock29Block45Value12 recoveredBlock29Block45Value13 recoveredBlock29Block45Value14 |
    recoveredBlock29Block45Value0 := recoveredLocal2.
    recoveredBlock29Block45Value1 := recoveredBlock29Block45Arg1.
    recoveredBlock29Block45Value2 := (recoveredBlock29Block45Value1) last.
    recoveredBlock29Block45Value3 := (recoveredBlock29Block45Value2) asString.
    recoveredBlock29Block45Value4 := (recoveredBlock29Block45Value3) , (' + [0..').
    recoveredBlock29Block45Value5 := recoveredBlock29Arg1.
    recoveredBlock29Block45Value6 := (recoveredBlock29Block45Value5) xSize.
    recoveredBlock29Block45Value7 := (recoveredBlock29Block45Value6) asString.
    recoveredBlock29Block45Value8 := (recoveredBlock29Block45Value4) , (recoveredBlock29Block45Value7).
    recoveredBlock29Block45Value9 := (recoveredBlock29Block45Value8) , (']*').
    recoveredBlock29Block45Value10 := recoveredBlock29Block45Arg1.
    recoveredBlock29Block45Value11 := (recoveredBlock29Block45Value10) first.
    recoveredBlock29Block45Value12 := (recoveredBlock29Block45Value11) asString.
    recoveredBlock29Block45Value13 := (recoveredBlock29Block45Value9) , (recoveredBlock29Block45Value12).
    recoveredBlock29Block45Value14 := (recoveredBlock29Block45Value0) add: (recoveredBlock29Block45Value13).
    recoveredBlock29Block45Value14
].
    recoveredBlock29Value5 := (recoveredBlock29Value3) ifNotNil: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := SGBasicTempWriteStream.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) reserveTempStream.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 'Axis of "'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := '": '.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 |
    recoveredBlock116Value0 := recoveredLocal1.
    recoveredBlock116Value1 := recoveredBlock116Arg1.
    recoveredBlock116Value2 := (recoveredBlock116Value0) nextPutAll: (recoveredBlock116Value1).
    recoveredBlock116Value2
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock129Value0 recoveredBlock129Value1 |
    recoveredBlock129Value0 := recoveredLocal1.
    recoveredBlock129Value1 := (recoveredBlock129Value0) nextPutAll: (', ').
    recoveredBlock129Value1
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) separatedBy: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) releaseGetContents.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205840f4; bytecode file offset 0xe809fc"
!SGMdFixedCharTableInfo methodsFor: 'recovered'!
processDataSets: recoveredArg1 data: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            allData := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block28113470Arg1 | 
    | block28113470Value0 block28113470Value1 block28113470Value2 block28113470Value3 |
    block28113470Value0 := block28113470Arg1.
    block28113470Value1 := (block28113470Value0) ileInitValue.
    block28113470Value2 := (block28113470Value1) xDistribution.
    block28113470Value3 := (block28113470Value2) staticDistanceAndOffset.
    block28113470Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [:recoveredBlock43Arg1 :recoveredBlock43Arg2 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredBlock43Arg2.
    recoveredBlock43Value1 := [
    | recoveredBlock43Block53Value0 recoveredBlock43Block53Value1 recoveredBlock43Block53Value2 recoveredBlock43Block53Value3 recoveredBlock43Block53Value4 recoveredBlock43Block53Value5 recoveredBlock43Block53Value6 recoveredBlock43Block53Value7 recoveredBlock43Block53Value8 |
    recoveredBlock43Block53Value0 := recoveredArg1.
    recoveredBlock43Block53Value1 := recoveredArg1.
    recoveredBlock43Block53Value2 := (recoveredBlock43Block53Value1) errLabel.
    recoveredBlock43Block53Value3 := recoveredBlock43Arg1.
    recoveredBlock43Block53Value4 := (recoveredBlock43Block53Value3) ileInitValue.
    recoveredBlock43Block53Value5 := (recoveredBlock43Block53Value4) xDistribution.
    recoveredBlock43Block53Value6 := (recoveredBlock43Block53Value5) ileNativeInitValue.
    recoveredBlock43Block53Value7 := (recoveredBlock43Block53Value6) asString.
    recoveredBlock43Block53Value8 := (recoveredBlock43Block53Value0) mdlSemErrNo: (674) with: (recoveredBlock43Block53Value2) with: (recoveredBlock43Block53Value7).
    recoveredBlock43Block53Value8
].
    recoveredBlock43Value2 := (recoveredBlock43Value0) ifNil: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [:block28113494Arg1 | 
    | block28113494Value0 block28113494Value1 |
    block28113494Value0 := block28113494Arg1.
    block28113494Value1 := (block28113494Value0) isNil.
    block28113494Value1
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := [:block281134b8Arg1 | 
    | block281134b8Value0 block281134b8Value1 block281134b8Value2 |
    block281134b8Value0 := block281134b8Arg1.
    block281134b8Value1 := (block281134b8Value0) first.
    block281134b8Value2 := (block281134b8Value1) isPowerOfTwo.
    block281134b8Value2
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            isPowerOf2Distance := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 recoveredBlock129Value4 recoveredBlock129Value5 |
    recoveredBlock129Value0 := recoveredBlock129Arg1.
    recoveredBlock129Value1 := (recoveredBlock129Value0) first.
    recoveredBlock129Value2 := recoveredLocal1.
    recoveredBlock129Value3 := (recoveredBlock129Value2) first.
    recoveredBlock129Value4 := (recoveredBlock129Value3) first.
    recoveredBlock129Value5 := (recoveredBlock129Value1) = (recoveredBlock129Value4).
    recoveredBlock129Value5
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 263].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            distance := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:block281134dcArg1 | 
    | block281134dcValue0 block281134dcValue1 |
    block281134dcValue0 := block281134dcArg1.
    block281134dcValue1 := (block281134dcValue0) xSize.
    block281134dcValue1
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := [:recoveredBlock184Arg1 | 
    | recoveredBlock184Value0 recoveredBlock184Value1 recoveredBlock184Value2 recoveredBlock184Value3 |
    recoveredBlock184Value0 := recoveredBlock184Arg1.
    recoveredBlock184Value1 := recoveredLocal2.
    recoveredBlock184Value2 := (recoveredBlock184Value1) first.
    recoveredBlock184Value3 := (recoveredBlock184Value0) = (recoveredBlock184Value2).
    recoveredBlock184Value3
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 263].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := [:recoveredBlock207Arg1 | 
    | recoveredBlock207Value0 recoveredBlock207Value1 recoveredBlock207Value2 recoveredBlock207Value3 recoveredBlock207Value4 recoveredBlock207Value5 |
    recoveredBlock207Value0 := recoveredBlock207Arg1.
    recoveredBlock207Value1 := (recoveredBlock207Value0) at: (2).
    recoveredBlock207Value2 := recoveredLocal1.
    recoveredBlock207Value3 := (recoveredBlock207Value2) first.
    recoveredBlock207Value4 := (recoveredBlock207Value3) at: (2).
    recoveredBlock207Value5 := (recoveredBlock207Value1) = (recoveredBlock207Value4).
    recoveredBlock207Value5
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 263].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            numberOfAxisPoints := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            offset := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            distance := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

