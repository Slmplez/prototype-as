"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001dc24; bytecode file offset 0x92209c"
!RBWAxisGraph methodsFor: 'recovered'!
axisNameText
    ^'Z'
! !

"ASDBase.ic method 0x200789b4; bytecode file offset 0x9757c8"
!RBWAxisGraph methodsFor: 'recovered'!
isWAxisGraph
    ^true
! !

"ASDBase.ic method 0x200cf490; bytecode file offset 0x9cbd5c"
!RBWAxisGraph methodsFor: 'recovered'!
getAxisPixExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := p2.
    recoveredValue1 := (recoveredValue0) y.
    recoveredValue2 := p1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) abs.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea26c; bytecode file offset 0x9e6c94"
!RBWAxisGraph methodsFor: 'recovered'!
setLineColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super setLineColor: (recoveredValue0).
    (self) updateDisplayedObjects.
    ^self
! !

"ASDBase.ic method 0x2010c2c0; bytecode file offset 0xa08b8c"
!RBWAxisGraph methodsFor: 'recovered'!
initialize
    super initialize.
    pixTicDist := 200.
    ^self
! !

"ASDBase.ic method 0x2016fc0c; bytecode file offset 0xa6c4cc"
!RBWAxisGraph methodsFor: 'recovered'!
updateDisplayedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := displayType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'valuesOnly'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) createDispObjectsValuesOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) createDispObjectsFull.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021f118; bytecode file offset 0xb1ba04"
!RBWAxisGraph methodsFor: 'recovered'!
getTicObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := displayedObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280dba5cArg1 | 
    | block280dba5cStack0 block280dba5cStack1 block280dba5cStack2 block280dba5cStack3 block280dba5cPC block280dba5cStep block280dba5cDone block280dba5cResult |
    block280dba5cStack0 := self.
    block280dba5cPC := 4.
    block280dba5cDone := false.
    [block280dba5cDone not] whileTrue: [
        block280dba5cStep := block280dba5cPC.
        block280dba5cStep = 4 ifTrue: [
            block280dba5cStack1 := false.
            block280dba5cPC := 5.
        ].
        block280dba5cStep = 5 ifTrue: [
            block280dba5cStack2 := block280dba5cArg1.
            block280dba5cPC := 6.
        ].
        block280dba5cStep = 6 ifTrue: [
            block280dba5cStack2 := (block280dba5cStack2) isLineGO.
            block280dba5cPC := 7.
        ].
        block280dba5cStep = 7 ifTrue: [
            (block280dba5cStack2) ifTrue: [block280dba5cPC := 10] ifFalse: [block280dba5cPC := 19].
        ].
        block280dba5cStep = 10 ifTrue: [
            block280dba5cPC := 11.
        ].
        block280dba5cStep = 11 ifTrue: [
            block280dba5cStack1 := block280dba5cArg1.
            block280dba5cPC := 12.
        ].
        block280dba5cStep = 12 ifTrue: [
            block280dba5cStack1 := (block280dba5cStack1) pointA.
            block280dba5cPC := 13.
        ].
        block280dba5cStep = 13 ifTrue: [
            block280dba5cStack1 := (block280dba5cStack1) y.
            block280dba5cPC := 14.
        ].
        block280dba5cStep = 14 ifTrue: [
            block280dba5cStack2 := block280dba5cArg1.
            block280dba5cPC := 15.
        ].
        block280dba5cStep = 15 ifTrue: [
            block280dba5cStack2 := (block280dba5cStack2) pointB.
            block280dba5cPC := 17.
        ].
        block280dba5cStep = 17 ifTrue: [
            block280dba5cStack2 := (block280dba5cStack2) y.
            block280dba5cPC := 18.
        ].
        block280dba5cStep = 18 ifTrue: [
            block280dba5cStack1 := (block280dba5cStack1) = (block280dba5cStack2).
            block280dba5cPC := 19.
        ].
        block280dba5cStep = 19 ifTrue: [
            block280dba5cResult := block280dba5cStack1.
            block280dba5cDone := true.
        ].
    ].
    block280dba5cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203079f0; bytecode file offset 0xc042c0"
!RBWAxisGraph methodsFor: 'recovered'!
redisplayRectsForSignalEditing
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := oldRect.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := oldRect.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            oldRect := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllGridGraphs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) giveRedisplayRects.
    recoveredBlock29Value3 := (recoveredBlock29Value0) , (recoveredBlock29Value2).
    recoveredBlock29Value4 := recoveredBlock29Value3.
    recoveredLocal1 := recoveredBlock29Value4.
    recoveredBlock29Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032e6ec; bytecode file offset 0xc2afc0"
!RBWAxisGraph methodsFor: 'recovered'!
signalValueMoved
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := displayType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'valuesOnly'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            oldRect := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) createDispObjectsValuesOnly.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := oldRect.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) merge: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            oldRect := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDependChannels.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := manager.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) getGridGraphForChannel: (recoveredBlock30Stack3).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack3.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            (recoveredBlock30Stack2 == nil) ifTrue: [recoveredBlock30PC := 56] ifFalse: [recoveredBlock30PC := 50].
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) signalValueMoved.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f2ea8; bytecode file offset 0xeef7e8"
!RBWAxisGraph methodsFor: 'recovered'!
createDispObjectsValuesOnly
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFont.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'GDU-Fehler: Achsenfont nicht richtig geladen (fontStruct isNil)'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := '0'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := RBLineGO.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := lineStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := manager.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := p1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := p2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithLineStyle: (recoveredStack3) manager: (recoveredStack4) pointA: (recoveredStack5) pointB: (recoveredStack6).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := pixTicDist.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundUpTo2or5or10.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundToDecade.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) getActValArray.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Local1 recoveredBlock110Local2 recoveredBlock110Local3 recoveredBlock110Local4 recoveredBlock110Stack0 recoveredBlock110Stack1 recoveredBlock110Stack2 recoveredBlock110Stack3 recoveredBlock110Stack4 recoveredBlock110Stack5 recoveredBlock110Stack6 recoveredBlock110Stack7 recoveredBlock110PC recoveredBlock110Step recoveredBlock110Done recoveredBlock110Result |
    recoveredBlock110Stack0 := self.
    recoveredBlock110PC := 116.
    recoveredBlock110Done := false.
    [recoveredBlock110Done not] whileTrue: [
        recoveredBlock110Step := recoveredBlock110PC.
        recoveredBlock110Step = 116 ifTrue: [
            recoveredBlock110Stack1 := logAxis.
            recoveredBlock110PC := 118.
        ].
        recoveredBlock110Step = 118 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Arg1.
            recoveredBlock110PC := 120.
        ].
        recoveredBlock110Step = 120 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) posForValue: (recoveredBlock110Stack2).
            recoveredBlock110PC := 122.
        ].
        recoveredBlock110Step = 122 ifTrue: [
            recoveredBlock110Local4 := recoveredBlock110Stack1.
            recoveredBlock110PC := 123.
        ].
        recoveredBlock110Step = 123 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Arg1.
            recoveredBlock110PC := 125.
        ].
        recoveredBlock110Step = 125 ifTrue: [
            recoveredBlock110Stack2 := 10.
            recoveredBlock110PC := 127.
        ].
        recoveredBlock110Step = 127 ifTrue: [
            recoveredBlock110Stack3 := recoveredLocal4.
            recoveredBlock110PC := 130.
        ].
        recoveredBlock110Step = 130 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) * (recoveredBlock110Stack3).
            recoveredBlock110PC := 131.
        ].
        recoveredBlock110Step = 131 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) roundTo: (recoveredBlock110Stack2).
            recoveredBlock110PC := 133.
        ].
        recoveredBlock110Step = 133 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Arg1.
            recoveredBlock110PC := 135.
        ].
        recoveredBlock110Step = 135 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) - (recoveredBlock110Stack2).
            recoveredBlock110PC := 136.
        ].
        recoveredBlock110Step = 136 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) abs.
            recoveredBlock110PC := 138.
        ].
        recoveredBlock110Step = 138 ifTrue: [
            recoveredBlock110Stack2 := #[123 20 174 71 225 122 116 63].
            recoveredBlock110PC := 140.
        ].
        recoveredBlock110Step = 140 ifTrue: [
            recoveredBlock110Stack3 := recoveredLocal12.
            recoveredBlock110PC := 143.
        ].
        recoveredBlock110Step = 143 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) * (recoveredBlock110Stack3).
            recoveredBlock110PC := 144.
        ].
        recoveredBlock110Step = 144 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) < (recoveredBlock110Stack2).
            recoveredBlock110PC := 145.
        ].
        recoveredBlock110Step = 145 ifTrue: [
            (recoveredBlock110Stack1) ifTrue: [recoveredBlock110PC := 148] ifFalse: [recoveredBlock110PC := 156].
        ].
        recoveredBlock110Step = 148 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal5.
            recoveredBlock110PC := 151.
        ].
        recoveredBlock110Step = 151 ifTrue: [
            recoveredBlock110Local1 := recoveredBlock110Stack1.
            recoveredBlock110PC := 152.
        ].
        recoveredBlock110Step = 152 ifTrue: [
            recoveredBlock110PC := 163.
        ].
        recoveredBlock110Step = 156 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal5.
            recoveredBlock110PC := 159.
        ].
        recoveredBlock110Step = 159 ifTrue: [
            recoveredBlock110Stack2 := 2.
            recoveredBlock110PC := 161.
        ].
        recoveredBlock110Step = 161 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) // (recoveredBlock110Stack2).
            recoveredBlock110PC := 162.
        ].
        recoveredBlock110Step = 162 ifTrue: [
            recoveredBlock110Local1 := recoveredBlock110Stack1.
            recoveredBlock110PC := 163.
        ].
        recoveredBlock110Step = 163 ifTrue: [
            recoveredBlock110Stack1 := p1.
            recoveredBlock110PC := 165.
        ].
        recoveredBlock110Step = 165 ifTrue: [
            recoveredBlock110Stack2 := 0.
            recoveredBlock110PC := 167.
        ].
        recoveredBlock110Step = 167 ifTrue: [
            recoveredBlock110Stack3 := recoveredBlock110Local4.
            recoveredBlock110PC := 168.
        ].
        recoveredBlock110Step = 168 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) @ (recoveredBlock110Stack3).
            recoveredBlock110PC := 170.
        ].
        recoveredBlock110Step = 170 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) + (recoveredBlock110Stack2).
            recoveredBlock110PC := 171.
        ].
        recoveredBlock110Step = 171 ifTrue: [
            recoveredBlock110Local3 := recoveredBlock110Stack1.
            recoveredBlock110PC := 172.
        ].
        recoveredBlock110Step = 172 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Local3.
            recoveredBlock110PC := 173.
        ].
        recoveredBlock110Step = 173 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Local1.
            recoveredBlock110PC := 174.
        ].
        recoveredBlock110Step = 174 ifTrue: [
            recoveredBlock110Stack3 := 0.
            recoveredBlock110PC := 176.
        ].
        recoveredBlock110Step = 176 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) @ (recoveredBlock110Stack3).
            recoveredBlock110PC := 178.
        ].
        recoveredBlock110Step = 178 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) - (recoveredBlock110Stack2).
            recoveredBlock110PC := 179.
        ].
        recoveredBlock110Step = 179 ifTrue: [
            recoveredBlock110Local2 := recoveredBlock110Stack1.
            recoveredBlock110PC := 180.
        ].
        recoveredBlock110Step = 180 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal13.
            recoveredBlock110PC := 183.
        ].
        recoveredBlock110Step = 183 ifTrue: [
            recoveredBlock110Stack2 := RBLineGO.
            recoveredBlock110PC := 185.
        ].
        recoveredBlock110Step = 185 ifTrue: [
            recoveredBlock110Stack3 := lineStyle.
            recoveredBlock110PC := 187.
        ].
        recoveredBlock110Step = 187 ifTrue: [
            recoveredBlock110Stack4 := manager.
            recoveredBlock110PC := 189.
        ].
        recoveredBlock110Step = 189 ifTrue: [
            recoveredBlock110Stack5 := recoveredBlock110Local3.
            recoveredBlock110PC := 190.
        ].
        recoveredBlock110Step = 190 ifTrue: [
            recoveredBlock110Stack6 := recoveredBlock110Local2.
            recoveredBlock110PC := 191.
        ].
        recoveredBlock110Step = 191 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) createWithLineStyle: (recoveredBlock110Stack3) manager: (recoveredBlock110Stack4) pointA: (recoveredBlock110Stack5) pointB: (recoveredBlock110Stack6).
            recoveredBlock110PC := 194.
        ].
        recoveredBlock110Step = 194 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) add: (recoveredBlock110Stack2).
            recoveredBlock110PC := 196.
        ].
        recoveredBlock110Step = 196 ifTrue: [
            recoveredBlock110Result := recoveredBlock110Stack1.
            recoveredBlock110Done := true.
        ].
    ].
    recoveredBlock110Result
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 248 63].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Local1 recoveredBlock234Stack0 recoveredBlock234Stack1 recoveredBlock234Stack2 recoveredBlock234Stack3 recoveredBlock234Stack4 recoveredBlock234Stack5 recoveredBlock234Stack6 recoveredBlock234Stack7 recoveredBlock234Stack8 recoveredBlock234Stack9 recoveredBlock234PC recoveredBlock234Step recoveredBlock234Done recoveredBlock234Result |
    recoveredBlock234Stack0 := self.
    recoveredBlock234PC := 240.
    recoveredBlock234Done := false.
    [recoveredBlock234Done not] whileTrue: [
        recoveredBlock234Step := recoveredBlock234PC.
        recoveredBlock234Step = 240 ifTrue: [
            recoveredBlock234Stack1 := recoveredLocal10.
            recoveredBlock234PC := 243.
        ].
        recoveredBlock234Step = 243 ifTrue: [
            (recoveredBlock234Stack1 == nil) ifTrue: [recoveredBlock234PC := 260] ifFalse: [recoveredBlock234PC := 246].
        ].
        recoveredBlock234Step = 246 ifTrue: [
            recoveredBlock234Stack1 := recoveredBlock234Arg1.
            recoveredBlock234PC := 247.
        ].
        recoveredBlock234Step = 247 ifTrue: [
            recoveredBlock234Stack2 := recoveredLocal10.
            recoveredBlock234PC := 250.
        ].
        recoveredBlock234Step = 250 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) - (recoveredBlock234Stack2).
            recoveredBlock234PC := 251.
        ].
        recoveredBlock234Step = 251 ifTrue: [
            recoveredBlock234Stack2 := recoveredLocal3.
            recoveredBlock234PC := 254.
        ].
        recoveredBlock234Step = 254 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) > (recoveredBlock234Stack2).
            recoveredBlock234PC := 255.
        ].
        recoveredBlock234Step = 255 ifTrue: [
            recoveredBlock234Local1 := recoveredBlock234Stack1.
            recoveredBlock234PC := 256.
        ].
        recoveredBlock234Step = 256 ifTrue: [
            recoveredBlock234PC := 262.
        ].
        recoveredBlock234Step = 260 ifTrue: [
            recoveredBlock234Stack1 := true.
            recoveredBlock234PC := 261.
        ].
        recoveredBlock234Step = 261 ifTrue: [
            recoveredBlock234Local1 := recoveredBlock234Stack1.
            recoveredBlock234PC := 262.
        ].
        recoveredBlock234Step = 262 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 263.
        ].
        recoveredBlock234Step = 263 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Local1.
            recoveredBlock234PC := 264.
        ].
        recoveredBlock234Step = 264 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 268] ifFalse: [recoveredBlock234PC := 351].
        ].
        recoveredBlock234Step = 268 ifTrue: [
            recoveredBlock234PC := 269.
        ].
        recoveredBlock234Step = 269 ifTrue: [
            recoveredBlock234Stack1 := p1.
            recoveredBlock234PC := 271.
        ].
        recoveredBlock234Step = 271 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) y.
            recoveredBlock234PC := 273.
        ].
        recoveredBlock234Step = 273 ifTrue: [
            recoveredBlock234Stack2 := logAxis.
            recoveredBlock234PC := 275.
        ].
        recoveredBlock234Step = 275 ifTrue: [
            recoveredBlock234Stack3 := recoveredBlock234Arg1.
            recoveredBlock234PC := 276.
        ].
        recoveredBlock234Step = 276 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) posForValue: (recoveredBlock234Stack3).
            recoveredBlock234PC := 278.
        ].
        recoveredBlock234Step = 278 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) + (recoveredBlock234Stack2).
            recoveredBlock234PC := 279.
        ].
        recoveredBlock234Step = 279 ifTrue: [
            recoveredLocal9 := recoveredBlock234Stack1.
            recoveredBlock234PC := 282.
        ].
        recoveredBlock234Step = 282 ifTrue: [
            recoveredBlock234Stack1 := logAxis.
            recoveredBlock234PC := 284.
        ].
        recoveredBlock234Step = 284 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg1.
            recoveredBlock234PC := 285.
        ].
        recoveredBlock234Step = 285 ifTrue: [
            recoveredBlock234Stack3 := recoveredLocal12.
            recoveredBlock234PC := 288.
        ].
        recoveredBlock234Step = 288 ifTrue: [
            recoveredBlock234Stack4 := #[252 169 241 210 77 98 80 63].
            recoveredBlock234PC := 290.
        ].
        recoveredBlock234Step = 290 ifTrue: [
            recoveredBlock234Stack3 := (recoveredBlock234Stack3) * (recoveredBlock234Stack4).
            recoveredBlock234PC := 291.
        ].
        recoveredBlock234Step = 291 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) roundTo: (recoveredBlock234Stack3).
            recoveredBlock234PC := 293.
        ].
        recoveredBlock234Step = 293 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) getStringRepresentation: (recoveredBlock234Stack2).
            recoveredBlock234PC := 295.
        ].
        recoveredBlock234Step = 295 ifTrue: [
            recoveredLocal11 := recoveredBlock234Stack1.
            recoveredBlock234PC := 298.
        ].
        recoveredBlock234Step = 298 ifTrue: [
            recoveredBlock234Stack1 := recoveredLocal7.
            recoveredBlock234PC := 301.
        ].
        recoveredBlock234Step = 301 ifTrue: [
            recoveredBlock234Stack2 := recoveredLocal1.
            recoveredBlock234PC := 304.
        ].
        recoveredBlock234Step = 304 ifTrue: [
            recoveredBlock234Stack3 := recoveredLocal11.
            recoveredBlock234PC := 307.
        ].
        recoveredBlock234Step = 307 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) textWidth: (recoveredBlock234Stack3).
            recoveredBlock234PC := 309.
        ].
        recoveredBlock234Step = 309 ifTrue: [
            recoveredBlock234Stack3 := 90.
            recoveredBlock234PC := 312.
        ].
        recoveredBlock234Step = 312 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) - (recoveredBlock234Stack3).
            recoveredBlock234PC := 313.
        ].
        recoveredBlock234Step = 313 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) - (recoveredBlock234Stack2).
            recoveredBlock234PC := 314.
        ].
        recoveredBlock234Step = 314 ifTrue: [
            recoveredLocal8 := recoveredBlock234Stack1.
            recoveredBlock234PC := 317.
        ].
        recoveredBlock234Step = 317 ifTrue: [
            recoveredBlock234Stack1 := recoveredLocal13.
            recoveredBlock234PC := 320.
        ].
        recoveredBlock234Step = 320 ifTrue: [
            recoveredBlock234Stack2 := RBTextGO.
            recoveredBlock234PC := 322.
        ].
        recoveredBlock234Step = 322 ifTrue: [
            recoveredBlock234Stack3 := recoveredLocal8.
            recoveredBlock234PC := 325.
        ].
        recoveredBlock234Step = 325 ifTrue: [
            recoveredBlock234Stack4 := recoveredLocal9.
            recoveredBlock234PC := 328.
        ].
        recoveredBlock234Step = 328 ifTrue: [
            recoveredBlock234Stack3 := (recoveredBlock234Stack3) @ (recoveredBlock234Stack4).
            recoveredBlock234PC := 330.
        ].
        recoveredBlock234Step = 330 ifTrue: [
            recoveredBlock234Stack4 := recoveredLocal11.
            recoveredBlock234PC := 333.
        ].
        recoveredBlock234Step = 333 ifTrue: [
            recoveredBlock234Stack5 := 'TaLeft'.
            recoveredBlock234PC := 335.
        ].
        recoveredBlock234Step = 335 ifTrue: [
            recoveredBlock234Stack6 := font.
            recoveredBlock234PC := 337.
        ].
        recoveredBlock234Step = 337 ifTrue: [
            recoveredBlock234Stack7 := lineStyle.
            recoveredBlock234PC := 339.
        ].
        recoveredBlock234Step = 339 ifTrue: [
            recoveredBlock234Stack8 := manager.
            recoveredBlock234PC := 341.
        ].
        recoveredBlock234Step = 341 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) createAt: (recoveredBlock234Stack3) text: (recoveredBlock234Stack4) alignment: (recoveredBlock234Stack5) font: (recoveredBlock234Stack6) lineStyle: (recoveredBlock234Stack7) manager: (recoveredBlock234Stack8).
            recoveredBlock234PC := 344.
        ].
        recoveredBlock234Step = 344 ifTrue: [
            (recoveredBlock234Stack1) add: (recoveredBlock234Stack2).
            recoveredBlock234PC := 346.
        ].
        recoveredBlock234Step = 346 ifTrue: [
            recoveredBlock234Stack1 := recoveredBlock234Arg1.
            recoveredBlock234PC := 347.
        ].
        recoveredBlock234Step = 347 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Stack1.
            recoveredBlock234PC := 348.
        ].
        recoveredBlock234Step = 348 ifTrue: [
            recoveredLocal10 := recoveredBlock234Stack2.
            recoveredBlock234PC := 351.
        ].
        recoveredBlock234Step = 351 ifTrue: [
            recoveredBlock234Result := recoveredBlock234Stack1.
            recoveredBlock234Done := true.
        ].
    ].
    recoveredBlock234Result
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNameUnitText.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 407] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := RBTextGO.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := p2.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := p2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := font.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack4 := 'TaLeft'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack5 := font.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack6 := lineStyle.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack7 := manager.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) text: (recoveredStack3) alignment: (recoveredStack4) font: (recoveredStack5) lineStyle: (recoveredStack6) manager: (recoveredStack7).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            displayedObjects := recoveredStack0.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062e674; bytecode file offset 0xf2afd8"
!RBWAxisGraph methodsFor: 'recovered'!
createDispObjectsFull
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := RBLineStyle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) controller.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultXAxisLineColor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) color: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFont.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'GDU-Fehler: Achsenfont nicht richtig geladen (fontStruct isNil)'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := '0'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := RBLineGO.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := manager.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := p1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := p2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithLineStyle: (recoveredStack3) manager: (recoveredStack4) pointA: (recoveredStack5) pointB: (recoveredStack6).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := pixTicDist.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundUpTo2or5or10.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundToDecade.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOffset.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal14 := recoveredStack2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := logAxis.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExtent.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Local1 recoveredBlock167Local2 recoveredBlock167Local3 recoveredBlock167Local4 recoveredBlock167Stack0 recoveredBlock167Stack1 recoveredBlock167Stack2 recoveredBlock167Stack3 recoveredBlock167Stack4 recoveredBlock167Stack5 recoveredBlock167Stack6 recoveredBlock167Stack7 recoveredBlock167PC recoveredBlock167Step recoveredBlock167Done recoveredBlock167Result |
    recoveredBlock167Stack0 := self.
    recoveredBlock167PC := 174.
    recoveredBlock167Done := false.
    [recoveredBlock167Done not] whileTrue: [
        recoveredBlock167Step := recoveredBlock167PC.
        recoveredBlock167Step = 174 ifTrue: [
            recoveredBlock167Stack1 := logAxis.
            recoveredBlock167PC := 176.
        ].
        recoveredBlock167Step = 176 ifTrue: [
            recoveredBlock167Stack2 := recoveredBlock167Arg1.
            recoveredBlock167PC := 178.
        ].
        recoveredBlock167Step = 178 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) posForValue: (recoveredBlock167Stack2).
            recoveredBlock167PC := 180.
        ].
        recoveredBlock167Step = 180 ifTrue: [
            recoveredBlock167Local4 := recoveredBlock167Stack1.
            recoveredBlock167PC := 181.
        ].
        recoveredBlock167Step = 181 ifTrue: [
            recoveredBlock167Stack1 := recoveredBlock167Arg1.
            recoveredBlock167PC := 183.
        ].
        recoveredBlock167Step = 183 ifTrue: [
            recoveredBlock167Stack2 := 10.
            recoveredBlock167PC := 185.
        ].
        recoveredBlock167Step = 185 ifTrue: [
            recoveredBlock167Stack3 := recoveredLocal5.
            recoveredBlock167PC := 188.
        ].
        recoveredBlock167Step = 188 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) * (recoveredBlock167Stack3).
            recoveredBlock167PC := 189.
        ].
        recoveredBlock167Step = 189 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) roundTo: (recoveredBlock167Stack2).
            recoveredBlock167PC := 191.
        ].
        recoveredBlock167Step = 191 ifTrue: [
            recoveredBlock167Stack2 := recoveredBlock167Arg1.
            recoveredBlock167PC := 193.
        ].
        recoveredBlock167Step = 193 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) - (recoveredBlock167Stack2).
            recoveredBlock167PC := 194.
        ].
        recoveredBlock167Step = 194 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) abs.
            recoveredBlock167PC := 196.
        ].
        recoveredBlock167Step = 196 ifTrue: [
            recoveredBlock167Stack2 := #[0 0 0 0 0 0 224 63].
            recoveredBlock167PC := 198.
        ].
        recoveredBlock167Step = 198 ifTrue: [
            recoveredBlock167Stack3 := recoveredLocal15.
            recoveredBlock167PC := 201.
        ].
        recoveredBlock167Step = 201 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) * (recoveredBlock167Stack3).
            recoveredBlock167PC := 202.
        ].
        recoveredBlock167Step = 202 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) < (recoveredBlock167Stack2).
            recoveredBlock167PC := 203.
        ].
        recoveredBlock167Step = 203 ifTrue: [
            (recoveredBlock167Stack1) ifTrue: [recoveredBlock167PC := 206] ifFalse: [recoveredBlock167PC := 220].
        ].
        recoveredBlock167Step = 206 ifTrue: [
            recoveredBlock167Stack1 := 2.
            recoveredBlock167PC := 208.
        ].
        recoveredBlock167Step = 208 ifTrue: [
            recoveredBlock167Stack2 := recoveredLocal6.
            recoveredBlock167PC := 211.
        ].
        recoveredBlock167Step = 211 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) * (recoveredBlock167Stack2).
            recoveredBlock167PC := 212.
        ].
        recoveredBlock167Step = 212 ifTrue: [
            recoveredBlock167Stack2 := 3.
            recoveredBlock167PC := 214.
        ].
        recoveredBlock167Step = 214 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) // (recoveredBlock167Stack2).
            recoveredBlock167PC := 215.
        ].
        recoveredBlock167Step = 215 ifTrue: [
            recoveredBlock167Local1 := recoveredBlock167Stack1.
            recoveredBlock167PC := 216.
        ].
        recoveredBlock167Step = 216 ifTrue: [
            recoveredBlock167PC := 227.
        ].
        recoveredBlock167Step = 220 ifTrue: [
            recoveredBlock167Stack1 := recoveredLocal6.
            recoveredBlock167PC := 223.
        ].
        recoveredBlock167Step = 223 ifTrue: [
            recoveredBlock167Stack2 := 2.
            recoveredBlock167PC := 225.
        ].
        recoveredBlock167Step = 225 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) // (recoveredBlock167Stack2).
            recoveredBlock167PC := 226.
        ].
        recoveredBlock167Step = 226 ifTrue: [
            recoveredBlock167Local1 := recoveredBlock167Stack1.
            recoveredBlock167PC := 227.
        ].
        recoveredBlock167Step = 227 ifTrue: [
            recoveredBlock167Stack1 := p1.
            recoveredBlock167PC := 229.
        ].
        recoveredBlock167Step = 229 ifTrue: [
            recoveredBlock167Stack2 := 0.
            recoveredBlock167PC := 231.
        ].
        recoveredBlock167Step = 231 ifTrue: [
            recoveredBlock167Stack3 := recoveredBlock167Local4.
            recoveredBlock167PC := 232.
        ].
        recoveredBlock167Step = 232 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) @ (recoveredBlock167Stack3).
            recoveredBlock167PC := 234.
        ].
        recoveredBlock167Step = 234 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) + (recoveredBlock167Stack2).
            recoveredBlock167PC := 235.
        ].
        recoveredBlock167Step = 235 ifTrue: [
            recoveredBlock167Local3 := recoveredBlock167Stack1.
            recoveredBlock167PC := 236.
        ].
        recoveredBlock167Step = 236 ifTrue: [
            recoveredBlock167Stack1 := recoveredBlock167Local3.
            recoveredBlock167PC := 237.
        ].
        recoveredBlock167Step = 237 ifTrue: [
            recoveredBlock167Stack2 := recoveredBlock167Local1.
            recoveredBlock167PC := 238.
        ].
        recoveredBlock167Step = 238 ifTrue: [
            recoveredBlock167Stack3 := 0.
            recoveredBlock167PC := 240.
        ].
        recoveredBlock167Step = 240 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) @ (recoveredBlock167Stack3).
            recoveredBlock167PC := 242.
        ].
        recoveredBlock167Step = 242 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) - (recoveredBlock167Stack2).
            recoveredBlock167PC := 243.
        ].
        recoveredBlock167Step = 243 ifTrue: [
            recoveredBlock167Local2 := recoveredBlock167Stack1.
            recoveredBlock167PC := 244.
        ].
        recoveredBlock167Step = 244 ifTrue: [
            recoveredBlock167Stack1 := recoveredLocal16.
            recoveredBlock167PC := 247.
        ].
        recoveredBlock167Step = 247 ifTrue: [
            recoveredBlock167Stack2 := RBLineGO.
            recoveredBlock167PC := 249.
        ].
        recoveredBlock167Step = 249 ifTrue: [
            recoveredBlock167Stack3 := recoveredLocal1.
            recoveredBlock167PC := 252.
        ].
        recoveredBlock167Step = 252 ifTrue: [
            recoveredBlock167Stack4 := manager.
            recoveredBlock167PC := 254.
        ].
        recoveredBlock167Step = 254 ifTrue: [
            recoveredBlock167Stack5 := recoveredBlock167Local3.
            recoveredBlock167PC := 255.
        ].
        recoveredBlock167Step = 255 ifTrue: [
            recoveredBlock167Stack6 := recoveredBlock167Local2.
            recoveredBlock167PC := 256.
        ].
        recoveredBlock167Step = 256 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) createWithLineStyle: (recoveredBlock167Stack3) manager: (recoveredBlock167Stack4) pointA: (recoveredBlock167Stack5) pointB: (recoveredBlock167Stack6).
            recoveredBlock167PC := 259.
        ].
        recoveredBlock167Step = 259 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) add: (recoveredBlock167Stack2).
            recoveredBlock167PC := 261.
        ].
        recoveredBlock167Step = 261 ifTrue: [
            recoveredBlock167Result := recoveredBlock167Stack1.
            recoveredBlock167Done := true.
        ].
    ].
    recoveredBlock167Result
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := p2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := p1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := p1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 0 224 63].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 331].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 342] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 365].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := logAxis.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExtent.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack4 := [:recoveredBlock380Arg1 | 
    | recoveredBlock380Local1 recoveredBlock380Local2 recoveredBlock380Stack0 recoveredBlock380Stack1 recoveredBlock380Stack2 recoveredBlock380Stack3 recoveredBlock380Stack4 recoveredBlock380Stack5 recoveredBlock380Stack6 recoveredBlock380Stack7 recoveredBlock380Stack8 recoveredBlock380Stack9 recoveredBlock380PC recoveredBlock380Step recoveredBlock380Done recoveredBlock380Result |
    recoveredBlock380Stack0 := self.
    recoveredBlock380PC := 386.
    recoveredBlock380Done := false.
    [recoveredBlock380Done not] whileTrue: [
        recoveredBlock380Step := recoveredBlock380PC.
        recoveredBlock380Step = 386 ifTrue: [
            recoveredBlock380Stack1 := p1.
            recoveredBlock380PC := 388.
        ].
        recoveredBlock380Step = 388 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) y.
            recoveredBlock380PC := 390.
        ].
        recoveredBlock380Step = 390 ifTrue: [
            recoveredBlock380Stack2 := logAxis.
            recoveredBlock380PC := 392.
        ].
        recoveredBlock380Step = 392 ifTrue: [
            recoveredBlock380Stack3 := recoveredBlock380Arg1.
            recoveredBlock380PC := 393.
        ].
        recoveredBlock380Step = 393 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) posForValue: (recoveredBlock380Stack3).
            recoveredBlock380PC := 395.
        ].
        recoveredBlock380Step = 395 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) + (recoveredBlock380Stack2).
            recoveredBlock380PC := 396.
        ].
        recoveredBlock380Step = 396 ifTrue: [
            recoveredBlock380Stack2 := recoveredLocal7.
            recoveredBlock380PC := 399.
        ].
        recoveredBlock380Step = 399 ifTrue: [
            recoveredBlock380Stack3 := 2.
            recoveredBlock380PC := 401.
        ].
        recoveredBlock380Step = 401 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) // (recoveredBlock380Stack3).
            recoveredBlock380PC := 402.
        ].
        recoveredBlock380Step = 402 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) - (recoveredBlock380Stack2).
            recoveredBlock380PC := 403.
        ].
        recoveredBlock380Step = 403 ifTrue: [
            recoveredBlock380Local2 := recoveredBlock380Stack1.
            recoveredBlock380PC := 404.
        ].
        recoveredBlock380Step = 404 ifTrue: [
            recoveredBlock380Stack1 := recoveredBlock380Arg1.
            recoveredBlock380PC := 405.
        ].
        recoveredBlock380Step = 405 ifTrue: [
            recoveredBlock380Stack2 := recoveredLocal11.
            recoveredBlock380PC := 408.
        ].
        recoveredBlock380Step = 408 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal15.
            recoveredBlock380PC := 411.
        ].
        recoveredBlock380Step = 411 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) * (recoveredBlock380Stack3).
            recoveredBlock380PC := 412.
        ].
        recoveredBlock380Step = 412 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) roundTo: (recoveredBlock380Stack2).
            recoveredBlock380PC := 414.
        ].
        recoveredBlock380Step = 414 ifTrue: [
            recoveredBlock380Stack2 := recoveredBlock380Arg1.
            recoveredBlock380PC := 415.
        ].
        recoveredBlock380Step = 415 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) - (recoveredBlock380Stack2).
            recoveredBlock380PC := 416.
        ].
        recoveredBlock380Step = 416 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) abs.
            recoveredBlock380PC := 418.
        ].
        recoveredBlock380Step = 418 ifTrue: [
            recoveredBlock380Stack2 := #[0 0 0 0 0 0 224 63].
            recoveredBlock380PC := 420.
        ].
        recoveredBlock380Step = 420 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal15.
            recoveredBlock380PC := 423.
        ].
        recoveredBlock380Step = 423 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) * (recoveredBlock380Stack3).
            recoveredBlock380PC := 424.
        ].
        recoveredBlock380Step = 424 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) < (recoveredBlock380Stack2).
            recoveredBlock380PC := 425.
        ].
        recoveredBlock380Step = 425 ifTrue: [
            recoveredBlock380Local1 := recoveredBlock380Stack1.
            recoveredBlock380PC := 426.
        ].
        recoveredBlock380Step = 426 ifTrue: [
            recoveredBlock380Stack1 := recoveredBlock380Local1.
            recoveredBlock380PC := 427.
        ].
        recoveredBlock380Step = 427 ifTrue: [
            recoveredBlock380Stack2 := recoveredBlock380Local2.
            recoveredBlock380PC := 428.
        ].
        recoveredBlock380Step = 428 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal2.
            recoveredBlock380PC := 431.
        ].
        recoveredBlock380Step = 431 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) - (recoveredBlock380Stack3).
            recoveredBlock380PC := 432.
        ].
        recoveredBlock380Step = 432 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) abs.
            recoveredBlock380PC := 434.
        ].
        recoveredBlock380Step = 434 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal7.
            recoveredBlock380PC := 437.
        ].
        recoveredBlock380Step = 437 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) > (recoveredBlock380Stack3).
            recoveredBlock380PC := 438.
        ].
        recoveredBlock380Step = 438 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) & (recoveredBlock380Stack2).
            recoveredBlock380PC := 440.
        ].
        recoveredBlock380Step = 440 ifTrue: [
            recoveredBlock380Local1 := recoveredBlock380Stack1.
            recoveredBlock380PC := 441.
        ].
        recoveredBlock380Step = 441 ifTrue: [
            recoveredBlock380Stack1 := nil.
            recoveredBlock380PC := 442.
        ].
        recoveredBlock380Step = 442 ifTrue: [
            recoveredBlock380Stack2 := recoveredBlock380Local1.
            recoveredBlock380PC := 443.
        ].
        recoveredBlock380Step = 443 ifTrue: [
            (recoveredBlock380Stack2) ifTrue: [recoveredBlock380PC := 446] ifFalse: [recoveredBlock380PC := 569].
        ].
        recoveredBlock380Step = 446 ifTrue: [
            recoveredBlock380PC := 447.
        ].
        recoveredBlock380Step = 447 ifTrue: [
            recoveredBlock380Stack1 := p2.
            recoveredBlock380PC := 449.
        ].
        recoveredBlock380Step = 449 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) y.
            recoveredBlock380PC := 451.
        ].
        recoveredBlock380Step = 451 ifTrue: [
            recoveredBlock380Stack2 := recoveredBlock380Local2.
            recoveredBlock380PC := 452.
        ].
        recoveredBlock380Step = 452 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) - (recoveredBlock380Stack2).
            recoveredBlock380PC := 453.
        ].
        recoveredBlock380Step = 453 ifTrue: [
            recoveredBlock380Stack2 := 1.
            recoveredBlock380PC := 455.
        ].
        recoveredBlock380Step = 455 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal7.
            recoveredBlock380PC := 458.
        ].
        recoveredBlock380Step = 458 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) * (recoveredBlock380Stack3).
            recoveredBlock380PC := 459.
        ].
        recoveredBlock380Step = 459 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) < (recoveredBlock380Stack2).
            recoveredBlock380PC := 460.
        ].
        recoveredBlock380Step = 460 ifTrue: [
            (recoveredBlock380Stack1) ifTrue: [recoveredBlock380PC := 464] ifFalse: [recoveredBlock380PC := 476].
        ].
        recoveredBlock380Step = 464 ifTrue: [
            recoveredBlock380Stack1 := p2.
            recoveredBlock380PC := 466.
        ].
        recoveredBlock380Step = 466 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) y.
            recoveredBlock380PC := 468.
        ].
        recoveredBlock380Step = 468 ifTrue: [
            recoveredBlock380Stack2 := 1.
            recoveredBlock380PC := 470.
        ].
        recoveredBlock380Step = 470 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal7.
            recoveredBlock380PC := 473.
        ].
        recoveredBlock380Step = 473 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) * (recoveredBlock380Stack3).
            recoveredBlock380PC := 474.
        ].
        recoveredBlock380Step = 474 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) - (recoveredBlock380Stack2).
            recoveredBlock380PC := 475.
        ].
        recoveredBlock380Step = 475 ifTrue: [
            recoveredBlock380Local2 := recoveredBlock380Stack1.
            recoveredBlock380PC := 476.
        ].
        recoveredBlock380Step = 476 ifTrue: [
            recoveredBlock380Stack1 := recoveredBlock380Arg1.
            recoveredBlock380PC := 477.
        ].
        recoveredBlock380Step = 477 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) abs.
            recoveredBlock380PC := 479.
        ].
        recoveredBlock380Step = 479 ifTrue: [
            recoveredBlock380Stack2 := (Fraction) numerator: (1) denominator: (10000000000).
            recoveredBlock380PC := 481.
        ].
        recoveredBlock380Step = 481 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) < (recoveredBlock380Stack2).
            recoveredBlock380PC := 482.
        ].
        recoveredBlock380Step = 482 ifTrue: [
            (recoveredBlock380Stack1) ifTrue: [recoveredBlock380PC := 486] ifFalse: [recoveredBlock380PC := 494].
        ].
        recoveredBlock380Step = 486 ifTrue: [
            recoveredBlock380Stack1 := #[0 0 0 0 0 0 0 0].
            recoveredBlock380PC := 488.
        ].
        recoveredBlock380Step = 488 ifTrue: [
            recoveredLocal12 := recoveredBlock380Stack1.
            recoveredBlock380PC := 491.
        ].
        recoveredBlock380Step = 491 ifTrue: [
            recoveredBlock380PC := 498.
        ].
        recoveredBlock380Step = 494 ifTrue: [
            recoveredBlock380Stack1 := recoveredBlock380Arg1.
            recoveredBlock380PC := 495.
        ].
        recoveredBlock380Step = 495 ifTrue: [
            recoveredLocal12 := recoveredBlock380Stack1.
            recoveredBlock380PC := 498.
        ].
        recoveredBlock380Step = 498 ifTrue: [
            recoveredBlock380Stack1 := logAxis.
            recoveredBlock380PC := 500.
        ].
        recoveredBlock380Step = 500 ifTrue: [
            recoveredBlock380Stack2 := recoveredLocal12.
            recoveredBlock380PC := 503.
        ].
        recoveredBlock380Step = 503 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) getStringRepresentation: (recoveredBlock380Stack2).
            recoveredBlock380PC := 505.
        ].
        recoveredBlock380Step = 505 ifTrue: [
            recoveredLocal13 := recoveredBlock380Stack1.
            recoveredBlock380PC := 508.
        ].
        recoveredBlock380Step = 508 ifTrue: [
            recoveredBlock380Stack1 := self.
            recoveredBlock380PC := 509.
        ].
        recoveredBlock380Step = 509 ifTrue: [
            (recoveredBlock380Stack1) unfinished.
            recoveredBlock380PC := 511.
        ].
        recoveredBlock380Step = 511 ifTrue: [
            recoveredBlock380Stack1 := recoveredLocal8.
            recoveredBlock380PC := 514.
        ].
        recoveredBlock380Step = 514 ifTrue: [
            recoveredBlock380Stack2 := recoveredLocal3.
            recoveredBlock380PC := 517.
        ].
        recoveredBlock380Step = 517 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal13.
            recoveredBlock380PC := 520.
        ].
        recoveredBlock380Step = 520 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) textWidth: (recoveredBlock380Stack3).
            recoveredBlock380PC := 522.
        ].
        recoveredBlock380Step = 522 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) - (recoveredBlock380Stack2).
            recoveredBlock380PC := 523.
        ].
        recoveredBlock380Step = 523 ifTrue: [
            recoveredLocal9 := recoveredBlock380Stack1.
            recoveredBlock380PC := 526.
        ].
        recoveredBlock380Step = 526 ifTrue: [
            recoveredBlock380Stack1 := recoveredLocal9.
            recoveredBlock380PC := 529.
        ].
        recoveredBlock380Step = 529 ifTrue: [
            recoveredBlock380Stack2 := self.
            recoveredBlock380PC := 530.
        ].
        recoveredBlock380Step = 530 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) getTwoDPane.
            recoveredBlock380PC := 532.
        ].
        recoveredBlock380Step = 532 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) logicalOrigin.
            recoveredBlock380PC := 534.
        ].
        recoveredBlock380Step = 534 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) x.
            recoveredBlock380PC := 536.
        ].
        recoveredBlock380Step = 536 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) max: (recoveredBlock380Stack2).
            recoveredBlock380PC := 538.
        ].
        recoveredBlock380Step = 538 ifTrue: [
            recoveredLocal9 := recoveredBlock380Stack1.
            recoveredBlock380PC := 541.
        ].
        recoveredBlock380Step = 541 ifTrue: [
            recoveredBlock380Stack1 := recoveredLocal16.
            recoveredBlock380PC := 544.
        ].
        recoveredBlock380Step = 544 ifTrue: [
            recoveredBlock380Stack2 := RBTextGO.
            recoveredBlock380PC := 546.
        ].
        recoveredBlock380Step = 546 ifTrue: [
            recoveredBlock380Stack3 := recoveredLocal9.
            recoveredBlock380PC := 549.
        ].
        recoveredBlock380Step = 549 ifTrue: [
            recoveredBlock380Stack4 := recoveredBlock380Local2.
            recoveredBlock380PC := 550.
        ].
        recoveredBlock380Step = 550 ifTrue: [
            recoveredBlock380Stack3 := (recoveredBlock380Stack3) @ (recoveredBlock380Stack4).
            recoveredBlock380PC := 552.
        ].
        recoveredBlock380Step = 552 ifTrue: [
            recoveredBlock380Stack4 := recoveredLocal13.
            recoveredBlock380PC := 555.
        ].
        recoveredBlock380Step = 555 ifTrue: [
            recoveredBlock380Stack5 := 'TaLeft'.
            recoveredBlock380PC := 557.
        ].
        recoveredBlock380Step = 557 ifTrue: [
            recoveredBlock380Stack6 := font.
            recoveredBlock380PC := 559.
        ].
        recoveredBlock380Step = 559 ifTrue: [
            recoveredBlock380Stack7 := recoveredLocal1.
            recoveredBlock380PC := 562.
        ].
        recoveredBlock380Step = 562 ifTrue: [
            recoveredBlock380Stack8 := manager.
            recoveredBlock380PC := 564.
        ].
        recoveredBlock380Step = 564 ifTrue: [
            recoveredBlock380Stack2 := (recoveredBlock380Stack2) createAt: (recoveredBlock380Stack3) text: (recoveredBlock380Stack4) alignment: (recoveredBlock380Stack5) font: (recoveredBlock380Stack6) lineStyle: (recoveredBlock380Stack7) manager: (recoveredBlock380Stack8).
            recoveredBlock380PC := 567.
        ].
        recoveredBlock380Step = 567 ifTrue: [
            recoveredBlock380Stack1 := (recoveredBlock380Stack1) add: (recoveredBlock380Stack2).
            recoveredBlock380PC := 569.
        ].
        recoveredBlock380Step = 569 ifTrue: [
            recoveredBlock380Result := recoveredBlock380Stack1.
            recoveredBlock380Done := true.
        ].
    ].
    recoveredBlock380Result
].
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := RBTextGO.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack3 := p2.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack4 := 150.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack4 := (recoveredStack4) axisNameText.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack5 := 'TaLeft'.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack6 := font.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack8 := manager.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := (recoveredStack2) createAt: (recoveredStack3) text: (recoveredStack4) alignment: (recoveredStack5) font: (recoveredStack6) lineStyle: (recoveredStack7) manager: (recoveredStack8).
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            displayedObjects := recoveredStack1.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

