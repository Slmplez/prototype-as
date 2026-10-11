"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b498; bytecode file offset 0x96873c"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
numberOfYAxisPoints
    | recoveredValue0 |
    recoveredValue0 := numberOfYAxisPoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c6dc; bytecode file offset 0x9692b0"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
yOffset
    | recoveredValue0 |
    recoveredValue0 := yOffset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d330; bytecode file offset 0x969c04"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
yDistance
    | recoveredValue0 |
    recoveredValue0 := yDistance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b770; bytecode file offset 0x988028"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
yDistanceShift
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := yDistance.
    recoveredValue1 := (recoveredValue0) floorLog: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014e8ac; bytecode file offset 0xa4b168"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
isPowerOf2Distance
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
            recoveredStack2 := super isPowerOf2Distance.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := isYPowerOf2Distance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201da7cc; bytecode file offset 0xad7094"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
copyDataFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super copyDataFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) numberOfYAxisPoints.
    numberOfYAxisPoints := recoveredValue2.
    recoveredValue3 := yDistance.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) yDistance.
    recoveredValue6 := (recoveredValue3) = (recoveredValue5).
    recoveredValue7 := yOffset.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) yOffset.
    recoveredValue10 := (recoveredValue7) = (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20201198; bytecode file offset 0xafda58"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
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
            recoveredStack2 := numberOfYAxisPoints.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) numberOfYAxisPoints.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
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
            recoveredStack3 := (recoveredStack3) yOffset.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := distance.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistance.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023bb6c; bytecode file offset 0xb38434"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
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
            recoveredStack2 := super isSameAxisForAllDataSets.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberOfYAxisPoints.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) yOffset.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20315040; bytecode file offset 0xc1190c"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := super isSameAxis: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 56].
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
            recoveredStack1 := (recoveredStack1) numberOfYAxisPoints.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberOfYAxisPoints.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistance.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistance.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) yOffset.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) yOffset.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057f350; bytecode file offset 0xe7bc7c"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
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
    | recoveredBlock29Local1 recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 recoveredBlock29Value9 recoveredBlock29Value10 recoveredBlock29Value11 recoveredBlock29Value12 recoveredBlock29Value13 recoveredBlock29Value14 recoveredBlock29Value15 recoveredBlock29Value16 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) ileInitValue.
    recoveredBlock29Value2 := (recoveredBlock29Value1) xDistribution.
    recoveredBlock29Value3 := (recoveredBlock29Value2) staticDistanceAndOffset.
    recoveredBlock29Value4 := [:recoveredBlock29Block45Arg1 | 
    | recoveredBlock29Block45Value0 recoveredBlock29Block45Value1 recoveredBlock29Block45Value2 recoveredBlock29Block45Value3 recoveredBlock29Block45Value4 recoveredBlock29Block45Value5 recoveredBlock29Block45Value6 recoveredBlock29Block45Value7 recoveredBlock29Block45Value8 recoveredBlock29Block45Value9 recoveredBlock29Block45Value10 recoveredBlock29Block45Value11 recoveredBlock29Block45Value12 recoveredBlock29Block45Value13 recoveredBlock29Block45Value14 recoveredBlock29Block45Value15 |
    recoveredBlock29Block45Value0 := recoveredBlock29Block45Arg1.
    recoveredBlock29Block45Value1 := (recoveredBlock29Block45Value0) last.
    recoveredBlock29Block45Value2 := (recoveredBlock29Block45Value1) asString.
    recoveredBlock29Block45Value3 := ('(') , (recoveredBlock29Block45Value2).
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
    recoveredBlock29Block45Value14 := (recoveredBlock29Block45Value13) , (')').
    recoveredBlock29Block45Value15 := recoveredBlock29Block45Value14.
    recoveredBlock29Local1 := recoveredBlock29Block45Value15.
    recoveredBlock29Block45Value14
].
    recoveredBlock29Value5 := [
    recoveredBlock29Local1 := 'unknown'.
    'unknown'
].
    (recoveredBlock29Value3) ifNotNil: (recoveredBlock29Value4) ifNil: (recoveredBlock29Value5).
    recoveredBlock29Value6 := recoveredBlock29Local1.
    recoveredBlock29Value7 := (recoveredBlock29Value6) , (' x ').
    recoveredBlock29Local1 := recoveredBlock29Value7.
    recoveredBlock29Value8 := recoveredBlock29Arg1.
    recoveredBlock29Value9 := (recoveredBlock29Value8) ileInitValue.
    recoveredBlock29Value10 := (recoveredBlock29Value9) yDistribution.
    recoveredBlock29Value11 := (recoveredBlock29Value10) staticDistanceAndOffset.
    recoveredBlock29Value12 := [:recoveredBlock29Block121Arg1 | 
    | recoveredBlock29Block121Value0 recoveredBlock29Block121Value1 recoveredBlock29Block121Value2 recoveredBlock29Block121Value3 recoveredBlock29Block121Value4 recoveredBlock29Block121Value5 recoveredBlock29Block121Value6 recoveredBlock29Block121Value7 recoveredBlock29Block121Value8 recoveredBlock29Block121Value9 recoveredBlock29Block121Value10 recoveredBlock29Block121Value11 recoveredBlock29Block121Value12 recoveredBlock29Block121Value13 recoveredBlock29Block121Value14 recoveredBlock29Block121Value15 |
    recoveredBlock29Block121Value0 := recoveredBlock29Local1.
    recoveredBlock29Block121Value1 := ('(') , (recoveredBlock29Block121Value0).
    recoveredBlock29Block121Value2 := recoveredBlock29Block121Arg1.
    recoveredBlock29Block121Value3 := (recoveredBlock29Block121Value2) last.
    recoveredBlock29Block121Value4 := (recoveredBlock29Block121Value3) asString.
    recoveredBlock29Block121Value5 := (recoveredBlock29Block121Value1) , (recoveredBlock29Block121Value4).
    recoveredBlock29Block121Value6 := (recoveredBlock29Block121Value5) , (' + [0..').
    recoveredBlock29Block121Value7 := recoveredBlock29Arg1.
    recoveredBlock29Block121Value8 := (recoveredBlock29Block121Value7) ySize.
    recoveredBlock29Block121Value9 := (recoveredBlock29Block121Value8) asString.
    recoveredBlock29Block121Value10 := (recoveredBlock29Block121Value6) , (recoveredBlock29Block121Value9).
    recoveredBlock29Block121Value11 := (recoveredBlock29Block121Value10) , (']*').
    recoveredBlock29Block121Value12 := recoveredBlock29Block121Arg1.
    recoveredBlock29Block121Value13 := (recoveredBlock29Block121Value12) first.
    recoveredBlock29Block121Value14 := (recoveredBlock29Block121Value13) asString.
    recoveredBlock29Block121Value15 := (recoveredBlock29Block121Value11) , (recoveredBlock29Block121Value14).
    recoveredBlock29Local1 := recoveredBlock29Block121Value15.
    ')'
].
    recoveredBlock29Value13 := [
    | recoveredBlock29Block166Value0 recoveredBlock29Block166Value1 recoveredBlock29Block166Value2 |
    recoveredBlock29Block166Value0 := recoveredBlock29Local1.
    recoveredBlock29Block166Value1 := (recoveredBlock29Block166Value0) , ('unknown').
    recoveredBlock29Block166Value2 := recoveredBlock29Block166Value1.
    recoveredBlock29Local1 := recoveredBlock29Block166Value2.
    recoveredBlock29Block166Value1
].
    (recoveredBlock29Value11) ifNotNil: (recoveredBlock29Value12) ifNil: (recoveredBlock29Value13).
    recoveredBlock29Value14 := recoveredLocal2.
    recoveredBlock29Value15 := recoveredBlock29Local1.
    recoveredBlock29Value16 := (recoveredBlock29Value14) add: (recoveredBlock29Value15).
    recoveredBlock29Value16
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := SGBasicTempWriteStream.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) reserveTempStream.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := 'Axis of "'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := '": '.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := [:recoveredBlock224Arg1 | 
    | recoveredBlock224Value0 recoveredBlock224Value1 recoveredBlock224Value2 |
    recoveredBlock224Value0 := recoveredLocal1.
    recoveredBlock224Value1 := recoveredBlock224Arg1.
    recoveredBlock224Value2 := (recoveredBlock224Value0) nextPutAll: (recoveredBlock224Value1).
    recoveredBlock224Value2
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock237Value0 recoveredBlock237Value1 |
    recoveredBlock237Value0 := recoveredLocal1.
    recoveredBlock237Value1 := (recoveredBlock237Value0) nextPutAll: (', ').
    recoveredBlock237Value1
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) separatedBy: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) releaseGetContents.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205809c0; bytecode file offset 0xe7d2cc"
!SGMdFixed2DCharTableInfo methodsFor: 'recovered'!
processDataSets: recoveredArg1 data: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            super processDataSets: (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block28113038Arg1 | 
    | block28113038Value0 block28113038Value1 block28113038Value2 block28113038Value3 |
    block28113038Value0 := block28113038Arg1.
    block28113038Value1 := (block28113038Value0) ileInitValue.
    block28113038Value2 := (block28113038Value1) yDistribution.
    block28113038Value3 := (block28113038Value2) staticDistanceAndOffset.
    block28113038Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 :recoveredBlock40Arg2 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredBlock40Arg2.
    recoveredBlock40Value1 := [
    | recoveredBlock40Block49Value0 recoveredBlock40Block49Value1 recoveredBlock40Block49Value2 recoveredBlock40Block49Value3 recoveredBlock40Block49Value4 recoveredBlock40Block49Value5 recoveredBlock40Block49Value6 recoveredBlock40Block49Value7 recoveredBlock40Block49Value8 |
    recoveredBlock40Block49Value0 := recoveredArg1.
    recoveredBlock40Block49Value1 := recoveredArg1.
    recoveredBlock40Block49Value2 := (recoveredBlock40Block49Value1) errLabel.
    recoveredBlock40Block49Value3 := recoveredBlock40Arg1.
    recoveredBlock40Block49Value4 := (recoveredBlock40Block49Value3) ileInitValue.
    recoveredBlock40Block49Value5 := (recoveredBlock40Block49Value4) yDistribution.
    recoveredBlock40Block49Value6 := (recoveredBlock40Block49Value5) ileNativeInitValue.
    recoveredBlock40Block49Value7 := (recoveredBlock40Block49Value6) asString.
    recoveredBlock40Block49Value8 := (recoveredBlock40Block49Value0) mdlSemErrNo: (674) with: (recoveredBlock40Block49Value2) with: (recoveredBlock40Block49Value7).
    recoveredBlock40Block49Value8
].
    recoveredBlock40Value2 := (recoveredBlock40Value0) ifNil: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:block2811305cArg1 | 
    | block2811305cValue0 block2811305cValue1 |
    block2811305cValue0 := block2811305cArg1.
    block2811305cValue1 := (block2811305cValue0) isNil.
    block2811305cValue1
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:block28113080Arg1 | 
    | block28113080Value0 block28113080Value1 block28113080Value2 |
    block28113080Value0 := block28113080Arg1.
    block28113080Value1 := (block28113080Value0) first.
    block28113080Value2 := (block28113080Value1) isPowerOfTwo.
    block28113080Value2
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            isYPowerOf2Distance := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 recoveredBlock125Value5 |
    recoveredBlock125Value0 := recoveredBlock125Arg1.
    recoveredBlock125Value1 := (recoveredBlock125Value0) first.
    recoveredBlock125Value2 := recoveredLocal1.
    recoveredBlock125Value3 := (recoveredBlock125Value2) first.
    recoveredBlock125Value4 := (recoveredBlock125Value3) first.
    recoveredBlock125Value5 := (recoveredBlock125Value1) = (recoveredBlock125Value4).
    recoveredBlock125Value5
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            yDistance := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := [:block281130a4Arg1 | 
    | block281130a4Value0 block281130a4Value1 |
    block281130a4Value0 := block281130a4Arg1.
    block281130a4Value1 := (block281130a4Value0) ySize.
    block281130a4Value1
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 recoveredBlock180Value3 |
    recoveredBlock180Value0 := recoveredBlock180Arg1.
    recoveredBlock180Value1 := recoveredLocal2.
    recoveredBlock180Value2 := (recoveredBlock180Value1) first.
    recoveredBlock180Value3 := (recoveredBlock180Value0) = (recoveredBlock180Value2).
    recoveredBlock180Value3
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Value0 recoveredBlock203Value1 recoveredBlock203Value2 recoveredBlock203Value3 recoveredBlock203Value4 recoveredBlock203Value5 |
    recoveredBlock203Value0 := recoveredBlock203Arg1.
    recoveredBlock203Value1 := (recoveredBlock203Value0) at: (2).
    recoveredBlock203Value2 := recoveredLocal1.
    recoveredBlock203Value3 := (recoveredBlock203Value2) first.
    recoveredBlock203Value4 := (recoveredBlock203Value3) at: (2).
    recoveredBlock203Value5 := (recoveredBlock203Value1) = (recoveredBlock203Value4).
    recoveredBlock203Value5
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            numberOfYAxisPoints := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            yOffset := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            yDistance := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

