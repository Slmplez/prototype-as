"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200752c4; bytecode file offset 0x9757c8"
!RBXAxisGraph methodsFor: 'recovered'!
isXAxisGraph
    ^true
! !

"ASDBase.ic method 0x200cf4a0; bytecode file offset 0x9cbd5c"
!RBXAxisGraph methodsFor: 'recovered'!
getAxisPixExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := p2.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := p1.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) abs.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010c2d0; bytecode file offset 0xa08b8c"
!RBXAxisGraph methodsFor: 'recovered'!
initialize
    super initialize.
    pixTicDist := 200.
    ^self
! !

"ASDBase.ic method 0x2014db10; bytecode file offset 0xa4a3d0"
!RBXAxisGraph methodsFor: 'recovered'!
signalValueMoved
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
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
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            oldRect := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20182ef8; bytecode file offset 0xa7f7c0"
!RBXAxisGraph methodsFor: 'recovered'!
updateDisplayedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateDisplayedObjects.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := manager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllGridGraphs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d0464Arg1 | 
    | block280d0464Value0 block280d0464Value1 |
    block280d0464Value0 := block280d0464Arg1.
    block280d0464Value1 := (block280d0464Value0) updateDisplayedObjects.
    block280d0464Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20198d58; bytecode file offset 0xa95618"
!RBXAxisGraph methodsFor: 'recovered'!
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := oldRect.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := oldRect.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            oldRect := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021f138; bytecode file offset 0xb1ba04"
!RBXAxisGraph methodsFor: 'recovered'!
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
            recoveredStack2 := [:block280dba80Arg1 | 
    | block280dba80Stack0 block280dba80Stack1 block280dba80Stack2 block280dba80Stack3 block280dba80PC block280dba80Step block280dba80Done block280dba80Result |
    block280dba80Stack0 := self.
    block280dba80PC := 4.
    block280dba80Done := false.
    [block280dba80Done not] whileTrue: [
        block280dba80Step := block280dba80PC.
        block280dba80Step = 4 ifTrue: [
            block280dba80Stack1 := false.
            block280dba80PC := 5.
        ].
        block280dba80Step = 5 ifTrue: [
            block280dba80Stack2 := block280dba80Arg1.
            block280dba80PC := 6.
        ].
        block280dba80Step = 6 ifTrue: [
            block280dba80Stack2 := (block280dba80Stack2) isLineGO.
            block280dba80PC := 7.
        ].
        block280dba80Step = 7 ifTrue: [
            (block280dba80Stack2) ifTrue: [block280dba80PC := 10] ifFalse: [block280dba80PC := 19].
        ].
        block280dba80Step = 10 ifTrue: [
            block280dba80PC := 11.
        ].
        block280dba80Step = 11 ifTrue: [
            block280dba80Stack1 := block280dba80Arg1.
            block280dba80PC := 12.
        ].
        block280dba80Step = 12 ifTrue: [
            block280dba80Stack1 := (block280dba80Stack1) pointA.
            block280dba80PC := 13.
        ].
        block280dba80Step = 13 ifTrue: [
            block280dba80Stack1 := (block280dba80Stack1) x.
            block280dba80PC := 14.
        ].
        block280dba80Step = 14 ifTrue: [
            block280dba80Stack2 := block280dba80Arg1.
            block280dba80PC := 15.
        ].
        block280dba80Step = 15 ifTrue: [
            block280dba80Stack2 := (block280dba80Stack2) pointB.
            block280dba80PC := 17.
        ].
        block280dba80Step = 17 ifTrue: [
            block280dba80Stack2 := (block280dba80Stack2) x.
            block280dba80PC := 18.
        ].
        block280dba80Step = 18 ifTrue: [
            block280dba80Stack1 := (block280dba80Stack1) = (block280dba80Stack2).
            block280dba80PC := 19.
        ].
        block280dba80Step = 19 ifTrue: [
            block280dba80Result := block280dba80Stack1.
            block280dba80Done := true.
        ].
    ].
    block280dba80Result
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

"ASDBase.ic method 0x204cbce0; bytecode file offset 0xdc85d4"
!RBXAxisGraph methodsFor: 'recovered'!
createDispObjectsMinimal
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFont.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'GDU-Fehler: Achsenfont nicht richtig geladen (fontStruct isNil)'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := RBLineGO.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := lineStyle.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := manager.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := p1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := p2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) createWithLineStyle: (recoveredStack4) manager: (recoveredStack5) pointA: (recoveredStack6) pointB: (recoveredStack7).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := RBLineGO.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := lineStyle.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := manager.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := p1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack7 := p1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack9 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack8 := (recoveredStack8) @ (recoveredStack9).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack7 := (recoveredStack7) - (recoveredStack8).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) createWithLineStyle: (recoveredStack4) manager: (recoveredStack5) pointA: (recoveredStack6) pointB: (recoveredStack7).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := RBLineGO.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := lineStyle.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := manager.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := p2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := p2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack8 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack7 := (recoveredStack7) @ (recoveredStack8).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack6 := (recoveredStack6) - (recoveredStack7).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithLineStyle: (recoveredStack3) manager: (recoveredStack4) pointA: (recoveredStack5) pointB: (recoveredStack6).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNameUnitText.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := RBTextGO.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := p2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := 7.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := 'TaLeft'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := font.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := lineStyle.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack7 := manager.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) text: (recoveredStack3) alignment: (recoveredStack4) font: (recoveredStack5) lineStyle: (recoveredStack6) manager: (recoveredStack7).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            displayedObjects := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ef100; bytecode file offset 0xeeba38"
!RBXAxisGraph methodsFor: 'recovered'!
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
            recoveredLocal8 := recoveredStack1.
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
            recoveredLocal7 := recoveredStack1.
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) getActArgArray.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Local1 recoveredBlock108Local2 recoveredBlock108Local3 recoveredBlock108Local4 recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108Stack4 recoveredBlock108Stack5 recoveredBlock108Stack6 recoveredBlock108Stack7 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := logAxis.
            recoveredBlock108PC := 116.
        ].
        recoveredBlock108Step = 116 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 118.
        ].
        recoveredBlock108Step = 118 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) posForValue: (recoveredBlock108Stack2).
            recoveredBlock108PC := 120.
        ].
        recoveredBlock108Step = 120 ifTrue: [
            recoveredBlock108Local4 := recoveredBlock108Stack1.
            recoveredBlock108PC := 121.
        ].
        recoveredBlock108Step = 121 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 123.
        ].
        recoveredBlock108Step = 123 ifTrue: [
            recoveredBlock108Stack2 := 10.
            recoveredBlock108PC := 125.
        ].
        recoveredBlock108Step = 125 ifTrue: [
            recoveredBlock108Stack3 := recoveredLocal11.
            recoveredBlock108PC := 128.
        ].
        recoveredBlock108Step = 128 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) * (recoveredBlock108Stack3).
            recoveredBlock108PC := 129.
        ].
        recoveredBlock108Step = 129 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) roundTo: (recoveredBlock108Stack2).
            recoveredBlock108PC := 131.
        ].
        recoveredBlock108Step = 131 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 133.
        ].
        recoveredBlock108Step = 133 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) - (recoveredBlock108Stack2).
            recoveredBlock108PC := 134.
        ].
        recoveredBlock108Step = 134 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) abs.
            recoveredBlock108PC := 136.
        ].
        recoveredBlock108Step = 136 ifTrue: [
            recoveredBlock108Stack2 := #[123 20 174 71 225 122 116 63].
            recoveredBlock108PC := 138.
        ].
        recoveredBlock108Step = 138 ifTrue: [
            recoveredBlock108Stack3 := recoveredLocal12.
            recoveredBlock108PC := 141.
        ].
        recoveredBlock108Step = 141 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) * (recoveredBlock108Stack3).
            recoveredBlock108PC := 142.
        ].
        recoveredBlock108Step = 142 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) < (recoveredBlock108Stack2).
            recoveredBlock108PC := 143.
        ].
        recoveredBlock108Step = 143 ifTrue: [
            (recoveredBlock108Stack1) ifTrue: [recoveredBlock108PC := 146] ifFalse: [recoveredBlock108PC := 154].
        ].
        recoveredBlock108Step = 146 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal8.
            recoveredBlock108PC := 149.
        ].
        recoveredBlock108Step = 149 ifTrue: [
            recoveredBlock108Local1 := recoveredBlock108Stack1.
            recoveredBlock108PC := 150.
        ].
        recoveredBlock108Step = 150 ifTrue: [
            recoveredBlock108PC := 161.
        ].
        recoveredBlock108Step = 154 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal8.
            recoveredBlock108PC := 157.
        ].
        recoveredBlock108Step = 157 ifTrue: [
            recoveredBlock108Stack2 := 2.
            recoveredBlock108PC := 159.
        ].
        recoveredBlock108Step = 159 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) // (recoveredBlock108Stack2).
            recoveredBlock108PC := 160.
        ].
        recoveredBlock108Step = 160 ifTrue: [
            recoveredBlock108Local1 := recoveredBlock108Stack1.
            recoveredBlock108PC := 161.
        ].
        recoveredBlock108Step = 161 ifTrue: [
            recoveredBlock108Stack1 := p1.
            recoveredBlock108PC := 163.
        ].
        recoveredBlock108Step = 163 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local4.
            recoveredBlock108PC := 164.
        ].
        recoveredBlock108Step = 164 ifTrue: [
            recoveredBlock108Stack3 := 0.
            recoveredBlock108PC := 166.
        ].
        recoveredBlock108Step = 166 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) @ (recoveredBlock108Stack3).
            recoveredBlock108PC := 168.
        ].
        recoveredBlock108Step = 168 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) + (recoveredBlock108Stack2).
            recoveredBlock108PC := 169.
        ].
        recoveredBlock108Step = 169 ifTrue: [
            recoveredBlock108Local3 := recoveredBlock108Stack1.
            recoveredBlock108PC := 170.
        ].
        recoveredBlock108Step = 170 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Local3.
            recoveredBlock108PC := 171.
        ].
        recoveredBlock108Step = 171 ifTrue: [
            recoveredBlock108Stack2 := 0.
            recoveredBlock108PC := 173.
        ].
        recoveredBlock108Step = 173 ifTrue: [
            recoveredBlock108Stack3 := recoveredBlock108Local1.
            recoveredBlock108PC := 174.
        ].
        recoveredBlock108Step = 174 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) @ (recoveredBlock108Stack3).
            recoveredBlock108PC := 176.
        ].
        recoveredBlock108Step = 176 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) - (recoveredBlock108Stack2).
            recoveredBlock108PC := 177.
        ].
        recoveredBlock108Step = 177 ifTrue: [
            recoveredBlock108Local2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 178.
        ].
        recoveredBlock108Step = 178 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal13.
            recoveredBlock108PC := 181.
        ].
        recoveredBlock108Step = 181 ifTrue: [
            recoveredBlock108Stack2 := RBLineGO.
            recoveredBlock108PC := 183.
        ].
        recoveredBlock108Step = 183 ifTrue: [
            recoveredBlock108Stack3 := lineStyle.
            recoveredBlock108PC := 185.
        ].
        recoveredBlock108Step = 185 ifTrue: [
            recoveredBlock108Stack4 := manager.
            recoveredBlock108PC := 187.
        ].
        recoveredBlock108Step = 187 ifTrue: [
            recoveredBlock108Stack5 := recoveredBlock108Local3.
            recoveredBlock108PC := 188.
        ].
        recoveredBlock108Step = 188 ifTrue: [
            recoveredBlock108Stack6 := recoveredBlock108Local2.
            recoveredBlock108PC := 189.
        ].
        recoveredBlock108Step = 189 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) createWithLineStyle: (recoveredBlock108Stack3) manager: (recoveredBlock108Stack4) pointA: (recoveredBlock108Stack5) pointB: (recoveredBlock108Stack6).
            recoveredBlock108PC := 192.
        ].
        recoveredBlock108Step = 192 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) add: (recoveredBlock108Stack2).
            recoveredBlock108PC := 194.
        ].
        recoveredBlock108Step = 194 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := [:recoveredBlock232Arg1 | 
    | recoveredBlock232Local1 recoveredBlock232Stack0 recoveredBlock232Stack1 recoveredBlock232Stack2 recoveredBlock232Stack3 recoveredBlock232Stack4 recoveredBlock232Stack5 recoveredBlock232Stack6 recoveredBlock232Stack7 recoveredBlock232Stack8 recoveredBlock232Stack9 recoveredBlock232PC recoveredBlock232Step recoveredBlock232Done recoveredBlock232Result |
    recoveredBlock232Stack0 := self.
    recoveredBlock232PC := 238.
    recoveredBlock232Done := false.
    [recoveredBlock232Done not] whileTrue: [
        recoveredBlock232Step := recoveredBlock232PC.
        recoveredBlock232Step = 238 ifTrue: [
            recoveredBlock232Stack1 := recoveredLocal3.
            recoveredBlock232PC := 241.
        ].
        recoveredBlock232Step = 241 ifTrue: [
            (recoveredBlock232Stack1 == nil) ifTrue: [recoveredBlock232PC := 258] ifFalse: [recoveredBlock232PC := 244].
        ].
        recoveredBlock232Step = 244 ifTrue: [
            recoveredBlock232Stack1 := recoveredBlock232Arg1.
            recoveredBlock232PC := 245.
        ].
        recoveredBlock232Step = 245 ifTrue: [
            recoveredBlock232Stack2 := recoveredLocal3.
            recoveredBlock232PC := 248.
        ].
        recoveredBlock232Step = 248 ifTrue: [
            recoveredBlock232Stack1 := (recoveredBlock232Stack1) - (recoveredBlock232Stack2).
            recoveredBlock232PC := 249.
        ].
        recoveredBlock232Step = 249 ifTrue: [
            recoveredBlock232Stack2 := recoveredLocal2.
            recoveredBlock232PC := 252.
        ].
        recoveredBlock232Step = 252 ifTrue: [
            recoveredBlock232Stack1 := (recoveredBlock232Stack1) > (recoveredBlock232Stack2).
            recoveredBlock232PC := 253.
        ].
        recoveredBlock232Step = 253 ifTrue: [
            recoveredBlock232Local1 := recoveredBlock232Stack1.
            recoveredBlock232PC := 254.
        ].
        recoveredBlock232Step = 254 ifTrue: [
            recoveredBlock232PC := 260.
        ].
        recoveredBlock232Step = 258 ifTrue: [
            recoveredBlock232Stack1 := true.
            recoveredBlock232PC := 259.
        ].
        recoveredBlock232Step = 259 ifTrue: [
            recoveredBlock232Local1 := recoveredBlock232Stack1.
            recoveredBlock232PC := 260.
        ].
        recoveredBlock232Step = 260 ifTrue: [
            recoveredBlock232Stack1 := nil.
            recoveredBlock232PC := 261.
        ].
        recoveredBlock232Step = 261 ifTrue: [
            recoveredBlock232Stack2 := recoveredBlock232Local1.
            recoveredBlock232PC := 262.
        ].
        recoveredBlock232Step = 262 ifTrue: [
            (recoveredBlock232Stack2) ifTrue: [recoveredBlock232PC := 266] ifFalse: [recoveredBlock232PC := 330].
        ].
        recoveredBlock232Step = 266 ifTrue: [
            recoveredBlock232PC := 267.
        ].
        recoveredBlock232Step = 267 ifTrue: [
            recoveredBlock232Stack1 := p1.
            recoveredBlock232PC := 269.
        ].
        recoveredBlock232Step = 269 ifTrue: [
            recoveredBlock232Stack1 := (recoveredBlock232Stack1) x.
            recoveredBlock232PC := 271.
        ].
        recoveredBlock232Step = 271 ifTrue: [
            recoveredBlock232Stack2 := logAxis.
            recoveredBlock232PC := 273.
        ].
        recoveredBlock232Step = 273 ifTrue: [
            recoveredBlock232Stack3 := recoveredBlock232Arg1.
            recoveredBlock232PC := 274.
        ].
        recoveredBlock232Step = 274 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) posForValue: (recoveredBlock232Stack3).
            recoveredBlock232PC := 276.
        ].
        recoveredBlock232Step = 276 ifTrue: [
            recoveredBlock232Stack1 := (recoveredBlock232Stack1) + (recoveredBlock232Stack2).
            recoveredBlock232PC := 277.
        ].
        recoveredBlock232Step = 277 ifTrue: [
            recoveredLocal5 := recoveredBlock232Stack1.
            recoveredBlock232PC := 280.
        ].
        recoveredBlock232Step = 280 ifTrue: [
            recoveredBlock232Stack1 := logAxis.
            recoveredBlock232PC := 282.
        ].
        recoveredBlock232Step = 282 ifTrue: [
            recoveredBlock232Stack2 := recoveredBlock232Arg1.
            recoveredBlock232PC := 283.
        ].
        recoveredBlock232Step = 283 ifTrue: [
            recoveredBlock232Stack3 := recoveredLocal12.
            recoveredBlock232PC := 286.
        ].
        recoveredBlock232Step = 286 ifTrue: [
            recoveredBlock232Stack4 := #[252 169 241 210 77 98 80 63].
            recoveredBlock232PC := 288.
        ].
        recoveredBlock232Step = 288 ifTrue: [
            recoveredBlock232Stack3 := (recoveredBlock232Stack3) * (recoveredBlock232Stack4).
            recoveredBlock232PC := 289.
        ].
        recoveredBlock232Step = 289 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) roundTo: (recoveredBlock232Stack3).
            recoveredBlock232PC := 291.
        ].
        recoveredBlock232Step = 291 ifTrue: [
            recoveredBlock232Stack1 := (recoveredBlock232Stack1) getStringRepresentation: (recoveredBlock232Stack2).
            recoveredBlock232PC := 293.
        ].
        recoveredBlock232Step = 293 ifTrue: [
            recoveredLocal10 := recoveredBlock232Stack1.
            recoveredBlock232PC := 296.
        ].
        recoveredBlock232Step = 296 ifTrue: [
            recoveredBlock232Stack1 := recoveredLocal13.
            recoveredBlock232PC := 299.
        ].
        recoveredBlock232Step = 299 ifTrue: [
            recoveredBlock232Stack2 := RBTextGO.
            recoveredBlock232PC := 301.
        ].
        recoveredBlock232Step = 301 ifTrue: [
            recoveredBlock232Stack3 := recoveredLocal5.
            recoveredBlock232PC := 304.
        ].
        recoveredBlock232Step = 304 ifTrue: [
            recoveredBlock232Stack4 := recoveredLocal6.
            recoveredBlock232PC := 307.
        ].
        recoveredBlock232Step = 307 ifTrue: [
            recoveredBlock232Stack3 := (recoveredBlock232Stack3) @ (recoveredBlock232Stack4).
            recoveredBlock232PC := 309.
        ].
        recoveredBlock232Step = 309 ifTrue: [
            recoveredBlock232Stack4 := recoveredLocal10.
            recoveredBlock232PC := 312.
        ].
        recoveredBlock232Step = 312 ifTrue: [
            recoveredBlock232Stack5 := 'TaLeft'.
            recoveredBlock232PC := 314.
        ].
        recoveredBlock232Step = 314 ifTrue: [
            recoveredBlock232Stack6 := font.
            recoveredBlock232PC := 316.
        ].
        recoveredBlock232Step = 316 ifTrue: [
            recoveredBlock232Stack7 := lineStyle.
            recoveredBlock232PC := 318.
        ].
        recoveredBlock232Step = 318 ifTrue: [
            recoveredBlock232Stack8 := manager.
            recoveredBlock232PC := 320.
        ].
        recoveredBlock232Step = 320 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) createAt: (recoveredBlock232Stack3) text: (recoveredBlock232Stack4) alignment: (recoveredBlock232Stack5) font: (recoveredBlock232Stack6) lineStyle: (recoveredBlock232Stack7) manager: (recoveredBlock232Stack8).
            recoveredBlock232PC := 323.
        ].
        recoveredBlock232Step = 323 ifTrue: [
            (recoveredBlock232Stack1) add: (recoveredBlock232Stack2).
            recoveredBlock232PC := 325.
        ].
        recoveredBlock232Step = 325 ifTrue: [
            recoveredBlock232Stack1 := recoveredBlock232Arg1.
            recoveredBlock232PC := 326.
        ].
        recoveredBlock232Step = 326 ifTrue: [
            recoveredBlock232Stack2 := recoveredBlock232Stack1.
            recoveredBlock232PC := 327.
        ].
        recoveredBlock232Step = 327 ifTrue: [
            recoveredLocal3 := recoveredBlock232Stack2.
            recoveredBlock232PC := 330.
        ].
        recoveredBlock232Step = 330 ifTrue: [
            recoveredBlock232Result := recoveredBlock232Stack1.
            recoveredBlock232Done := true.
        ].
    ].
    recoveredBlock232Result
].
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNameUnitText.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 399] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := RBTextGO.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := p2.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack5 := 7.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack4 := 'TaLeft'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack5 := font.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack6 := lineStyle.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack7 := manager.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) text: (recoveredStack3) alignment: (recoveredStack4) font: (recoveredStack5) lineStyle: (recoveredStack6) manager: (recoveredStack7).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            displayedObjects := recoveredStack0.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20628c50; bytecode file offset 0xf25598"
!RBXAxisGraph methodsFor: 'recovered'!
createDispObjectsFull
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFont.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'GDU-Fehler: Achsenfont nicht richtig geladen (fontStruct isNil)'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := '0'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := RBLineGO.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := lineStyle.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := manager.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := p1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := p2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithLineStyle: (recoveredStack3) manager: (recoveredStack4) pointA: (recoveredStack5) pointB: (recoveredStack6).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := pixTicDist.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundUpTo2or5or10.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundToDecade.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOffset.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal13 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := logAxis.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExtent.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Local1 recoveredBlock151Local2 recoveredBlock151Local3 recoveredBlock151Local4 recoveredBlock151Stack0 recoveredBlock151Stack1 recoveredBlock151Stack2 recoveredBlock151Stack3 recoveredBlock151Stack4 recoveredBlock151Stack5 recoveredBlock151Stack6 recoveredBlock151Stack7 recoveredBlock151PC recoveredBlock151Step recoveredBlock151Done recoveredBlock151Result |
    recoveredBlock151Stack0 := self.
    recoveredBlock151PC := 158.
    recoveredBlock151Done := false.
    [recoveredBlock151Done not] whileTrue: [
        recoveredBlock151Step := recoveredBlock151PC.
        recoveredBlock151Step = 158 ifTrue: [
            recoveredBlock151Stack1 := logAxis.
            recoveredBlock151PC := 160.
        ].
        recoveredBlock151Step = 160 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Arg1.
            recoveredBlock151PC := 162.
        ].
        recoveredBlock151Step = 162 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) posForValue: (recoveredBlock151Stack2).
            recoveredBlock151PC := 164.
        ].
        recoveredBlock151Step = 164 ifTrue: [
            recoveredBlock151Local4 := recoveredBlock151Stack1.
            recoveredBlock151PC := 165.
        ].
        recoveredBlock151Step = 165 ifTrue: [
            recoveredBlock151Stack1 := recoveredBlock151Arg1.
            recoveredBlock151PC := 167.
        ].
        recoveredBlock151Step = 167 ifTrue: [
            recoveredBlock151Stack2 := 10.
            recoveredBlock151PC := 169.
        ].
        recoveredBlock151Step = 169 ifTrue: [
            recoveredBlock151Stack3 := recoveredLocal12.
            recoveredBlock151PC := 172.
        ].
        recoveredBlock151Step = 172 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) * (recoveredBlock151Stack3).
            recoveredBlock151PC := 173.
        ].
        recoveredBlock151Step = 173 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) roundTo: (recoveredBlock151Stack2).
            recoveredBlock151PC := 175.
        ].
        recoveredBlock151Step = 175 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Arg1.
            recoveredBlock151PC := 177.
        ].
        recoveredBlock151Step = 177 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) - (recoveredBlock151Stack2).
            recoveredBlock151PC := 178.
        ].
        recoveredBlock151Step = 178 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) abs.
            recoveredBlock151PC := 180.
        ].
        recoveredBlock151Step = 180 ifTrue: [
            recoveredBlock151Stack2 := #[0 0 0 0 0 0 224 63].
            recoveredBlock151PC := 182.
        ].
        recoveredBlock151Step = 182 ifTrue: [
            recoveredBlock151Stack3 := recoveredLocal14.
            recoveredBlock151PC := 185.
        ].
        recoveredBlock151Step = 185 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) * (recoveredBlock151Stack3).
            recoveredBlock151PC := 186.
        ].
        recoveredBlock151Step = 186 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) < (recoveredBlock151Stack2).
            recoveredBlock151PC := 187.
        ].
        recoveredBlock151Step = 187 ifTrue: [
            (recoveredBlock151Stack1) ifTrue: [recoveredBlock151PC := 190] ifFalse: [recoveredBlock151PC := 200].
        ].
        recoveredBlock151Step = 190 ifTrue: [
            recoveredBlock151Stack1 := recoveredLocal9.
            recoveredBlock151PC := 193.
        ].
        recoveredBlock151Step = 193 ifTrue: [
            recoveredBlock151Stack2 := 2.
            recoveredBlock151PC := 195.
        ].
        recoveredBlock151Step = 195 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) // (recoveredBlock151Stack2).
            recoveredBlock151PC := 196.
        ].
        recoveredBlock151Step = 196 ifTrue: [
            recoveredBlock151Local1 := recoveredBlock151Stack1.
            recoveredBlock151PC := 197.
        ].
        recoveredBlock151Step = 197 ifTrue: [
            recoveredBlock151PC := 207.
        ].
        recoveredBlock151Step = 200 ifTrue: [
            recoveredBlock151Stack1 := recoveredLocal9.
            recoveredBlock151PC := 203.
        ].
        recoveredBlock151Step = 203 ifTrue: [
            recoveredBlock151Stack2 := 4.
            recoveredBlock151PC := 205.
        ].
        recoveredBlock151Step = 205 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) // (recoveredBlock151Stack2).
            recoveredBlock151PC := 206.
        ].
        recoveredBlock151Step = 206 ifTrue: [
            recoveredBlock151Local1 := recoveredBlock151Stack1.
            recoveredBlock151PC := 207.
        ].
        recoveredBlock151Step = 207 ifTrue: [
            recoveredBlock151Stack1 := p1.
            recoveredBlock151PC := 209.
        ].
        recoveredBlock151Step = 209 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Local4.
            recoveredBlock151PC := 210.
        ].
        recoveredBlock151Step = 210 ifTrue: [
            recoveredBlock151Stack3 := 0.
            recoveredBlock151PC := 212.
        ].
        recoveredBlock151Step = 212 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) @ (recoveredBlock151Stack3).
            recoveredBlock151PC := 214.
        ].
        recoveredBlock151Step = 214 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) + (recoveredBlock151Stack2).
            recoveredBlock151PC := 215.
        ].
        recoveredBlock151Step = 215 ifTrue: [
            recoveredBlock151Local3 := recoveredBlock151Stack1.
            recoveredBlock151PC := 216.
        ].
        recoveredBlock151Step = 216 ifTrue: [
            recoveredBlock151Stack1 := recoveredBlock151Local3.
            recoveredBlock151PC := 217.
        ].
        recoveredBlock151Step = 217 ifTrue: [
            recoveredBlock151Stack2 := 0.
            recoveredBlock151PC := 219.
        ].
        recoveredBlock151Step = 219 ifTrue: [
            recoveredBlock151Stack3 := recoveredBlock151Local1.
            recoveredBlock151PC := 220.
        ].
        recoveredBlock151Step = 220 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) @ (recoveredBlock151Stack3).
            recoveredBlock151PC := 222.
        ].
        recoveredBlock151Step = 222 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) - (recoveredBlock151Stack2).
            recoveredBlock151PC := 223.
        ].
        recoveredBlock151Step = 223 ifTrue: [
            recoveredBlock151Local2 := recoveredBlock151Stack1.
            recoveredBlock151PC := 224.
        ].
        recoveredBlock151Step = 224 ifTrue: [
            recoveredBlock151Stack1 := recoveredLocal15.
            recoveredBlock151PC := 227.
        ].
        recoveredBlock151Step = 227 ifTrue: [
            recoveredBlock151Stack2 := RBLineGO.
            recoveredBlock151PC := 229.
        ].
        recoveredBlock151Step = 229 ifTrue: [
            recoveredBlock151Stack3 := lineStyle.
            recoveredBlock151PC := 231.
        ].
        recoveredBlock151Step = 231 ifTrue: [
            recoveredBlock151Stack4 := manager.
            recoveredBlock151PC := 233.
        ].
        recoveredBlock151Step = 233 ifTrue: [
            recoveredBlock151Stack5 := recoveredBlock151Local3.
            recoveredBlock151PC := 234.
        ].
        recoveredBlock151Step = 234 ifTrue: [
            recoveredBlock151Stack6 := recoveredBlock151Local2.
            recoveredBlock151PC := 235.
        ].
        recoveredBlock151Step = 235 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) createWithLineStyle: (recoveredBlock151Stack3) manager: (recoveredBlock151Stack4) pointA: (recoveredBlock151Stack5) pointB: (recoveredBlock151Stack6).
            recoveredBlock151PC := 238.
        ].
        recoveredBlock151Step = 238 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) add: (recoveredBlock151Stack2).
            recoveredBlock151PC := 240.
        ].
        recoveredBlock151Step = 240 ifTrue: [
            recoveredBlock151Result := recoveredBlock151Stack1.
            recoveredBlock151Done := true.
        ].
    ].
    recoveredBlock151Result
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 313].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 331].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := logAxis.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExtent.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack4 := [:recoveredBlock346Arg1 | 
    | recoveredBlock346Local1 recoveredBlock346Stack0 recoveredBlock346Stack1 recoveredBlock346Stack2 recoveredBlock346Stack3 recoveredBlock346Stack4 recoveredBlock346Stack5 recoveredBlock346Stack6 recoveredBlock346Stack7 recoveredBlock346Stack8 recoveredBlock346Stack9 recoveredBlock346PC recoveredBlock346Step recoveredBlock346Done recoveredBlock346Result |
    recoveredBlock346Stack0 := self.
    recoveredBlock346PC := 352.
    recoveredBlock346Done := false.
    [recoveredBlock346Done not] whileTrue: [
        recoveredBlock346Step := recoveredBlock346PC.
        recoveredBlock346Step = 352 ifTrue: [
            recoveredBlock346Stack1 := recoveredBlock346Arg1.
            recoveredBlock346PC := 353.
        ].
        recoveredBlock346Step = 353 ifTrue: [
            recoveredBlock346Stack2 := recoveredLocal3.
            recoveredBlock346PC := 356.
        ].
        recoveredBlock346Step = 356 ifTrue: [
            recoveredBlock346Stack3 := recoveredLocal14.
            recoveredBlock346PC := 359.
        ].
        recoveredBlock346Step = 359 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) * (recoveredBlock346Stack3).
            recoveredBlock346PC := 360.
        ].
        recoveredBlock346Step = 360 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) roundTo: (recoveredBlock346Stack2).
            recoveredBlock346PC := 362.
        ].
        recoveredBlock346Step = 362 ifTrue: [
            recoveredBlock346Stack2 := recoveredBlock346Arg1.
            recoveredBlock346PC := 363.
        ].
        recoveredBlock346Step = 363 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) - (recoveredBlock346Stack2).
            recoveredBlock346PC := 364.
        ].
        recoveredBlock346Step = 364 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) abs.
            recoveredBlock346PC := 366.
        ].
        recoveredBlock346Step = 366 ifTrue: [
            recoveredBlock346Stack2 := #[0 0 0 0 0 0 224 63].
            recoveredBlock346PC := 368.
        ].
        recoveredBlock346Step = 368 ifTrue: [
            recoveredBlock346Stack3 := recoveredLocal14.
            recoveredBlock346PC := 371.
        ].
        recoveredBlock346Step = 371 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) * (recoveredBlock346Stack3).
            recoveredBlock346PC := 372.
        ].
        recoveredBlock346Step = 372 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) < (recoveredBlock346Stack2).
            recoveredBlock346PC := 373.
        ].
        recoveredBlock346Step = 373 ifTrue: [
            recoveredBlock346Local1 := recoveredBlock346Stack1.
            recoveredBlock346PC := 374.
        ].
        recoveredBlock346Step = 374 ifTrue: [
            recoveredBlock346Stack1 := nil.
            recoveredBlock346PC := 375.
        ].
        recoveredBlock346Step = 375 ifTrue: [
            recoveredBlock346Stack2 := recoveredBlock346Local1.
            recoveredBlock346PC := 376.
        ].
        recoveredBlock346Step = 376 ifTrue: [
            (recoveredBlock346Stack2) ifTrue: [recoveredBlock346PC := 380] ifFalse: [recoveredBlock346PC := 491].
        ].
        recoveredBlock346Step = 380 ifTrue: [
            recoveredBlock346PC := 381.
        ].
        recoveredBlock346Step = 381 ifTrue: [
            recoveredBlock346Stack1 := recoveredBlock346Arg1.
            recoveredBlock346PC := 382.
        ].
        recoveredBlock346Step = 382 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) abs.
            recoveredBlock346PC := 384.
        ].
        recoveredBlock346Step = 384 ifTrue: [
            recoveredBlock346Stack2 := (Fraction) numerator: (1) denominator: (10000000000).
            recoveredBlock346PC := 386.
        ].
        recoveredBlock346Step = 386 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) < (recoveredBlock346Stack2).
            recoveredBlock346PC := 387.
        ].
        recoveredBlock346Step = 387 ifTrue: [
            (recoveredBlock346Stack1) ifTrue: [recoveredBlock346PC := 390] ifFalse: [recoveredBlock346PC := 398].
        ].
        recoveredBlock346Step = 390 ifTrue: [
            recoveredBlock346Stack1 := #[0 0 0 0 0 0 0 0].
            recoveredBlock346PC := 392.
        ].
        recoveredBlock346Step = 392 ifTrue: [
            recoveredLocal7 := recoveredBlock346Stack1.
            recoveredBlock346PC := 395.
        ].
        recoveredBlock346Step = 395 ifTrue: [
            recoveredBlock346PC := 402.
        ].
        recoveredBlock346Step = 398 ifTrue: [
            recoveredBlock346Stack1 := recoveredBlock346Arg1.
            recoveredBlock346PC := 399.
        ].
        recoveredBlock346Step = 399 ifTrue: [
            recoveredLocal7 := recoveredBlock346Stack1.
            recoveredBlock346PC := 402.
        ].
        recoveredBlock346Step = 402 ifTrue: [
            recoveredBlock346Stack1 := recoveredLocal2.
            recoveredBlock346PC := 405.
        ].
        recoveredBlock346Step = 405 ifTrue: [
            (recoveredBlock346Stack1) ifTrue: [recoveredBlock346PC := 408] ifFalse: [recoveredBlock346PC := 420].
        ].
        recoveredBlock346Step = 408 ifTrue: [
            recoveredBlock346Stack1 := recoveredLocal7.
            recoveredBlock346PC := 411.
        ].
        recoveredBlock346Step = 411 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) asHexString.
            recoveredBlock346PC := 413.
        ].
        recoveredBlock346Step = 413 ifTrue: [
            recoveredLocal11 := recoveredBlock346Stack1.
            recoveredBlock346PC := 416.
        ].
        recoveredBlock346Step = 416 ifTrue: [
            recoveredBlock346PC := 428.
        ].
        recoveredBlock346Step = 420 ifTrue: [
            recoveredBlock346Stack1 := recoveredLocal7.
            recoveredBlock346PC := 423.
        ].
        recoveredBlock346Step = 423 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) printString.
            recoveredBlock346PC := 425.
        ].
        recoveredBlock346Step = 425 ifTrue: [
            recoveredLocal11 := recoveredBlock346Stack1.
            recoveredBlock346PC := 428.
        ].
        recoveredBlock346Step = 428 ifTrue: [
            recoveredBlock346Stack1 := recoveredLocal1.
            recoveredBlock346PC := 431.
        ].
        recoveredBlock346Step = 431 ifTrue: [
            recoveredBlock346Stack2 := recoveredLocal11.
            recoveredBlock346PC := 434.
        ].
        recoveredBlock346Step = 434 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) textWidth: (recoveredBlock346Stack2).
            recoveredBlock346PC := 436.
        ].
        recoveredBlock346Step = 436 ifTrue: [
            recoveredLocal10 := recoveredBlock346Stack1.
            recoveredBlock346PC := 439.
        ].
        recoveredBlock346Step = 439 ifTrue: [
            recoveredBlock346Stack1 := p1.
            recoveredBlock346PC := 441.
        ].
        recoveredBlock346Step = 441 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) x.
            recoveredBlock346PC := 443.
        ].
        recoveredBlock346Step = 443 ifTrue: [
            recoveredBlock346Stack2 := logAxis.
            recoveredBlock346PC := 445.
        ].
        recoveredBlock346Step = 445 ifTrue: [
            recoveredBlock346Stack3 := recoveredBlock346Arg1.
            recoveredBlock346PC := 446.
        ].
        recoveredBlock346Step = 446 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) posForValue: (recoveredBlock346Stack3).
            recoveredBlock346PC := 448.
        ].
        recoveredBlock346Step = 448 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) + (recoveredBlock346Stack2).
            recoveredBlock346PC := 449.
        ].
        recoveredBlock346Step = 449 ifTrue: [
            recoveredBlock346Stack2 := recoveredLocal10.
            recoveredBlock346PC := 452.
        ].
        recoveredBlock346Step = 452 ifTrue: [
            recoveredBlock346Stack3 := 2.
            recoveredBlock346PC := 454.
        ].
        recoveredBlock346Step = 454 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) // (recoveredBlock346Stack3).
            recoveredBlock346PC := 455.
        ].
        recoveredBlock346Step = 455 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) - (recoveredBlock346Stack2).
            recoveredBlock346PC := 456.
        ].
        recoveredBlock346Step = 456 ifTrue: [
            recoveredLocal5 := recoveredBlock346Stack1.
            recoveredBlock346PC := 459.
        ].
        recoveredBlock346Step = 459 ifTrue: [
            recoveredBlock346Stack1 := self.
            recoveredBlock346PC := 460.
        ].
        recoveredBlock346Step = 460 ifTrue: [
            (recoveredBlock346Stack1) unfinished.
            recoveredBlock346PC := 462.
        ].
        recoveredBlock346Step = 462 ifTrue: [
            recoveredBlock346Stack1 := recoveredLocal15.
            recoveredBlock346PC := 465.
        ].
        recoveredBlock346Step = 465 ifTrue: [
            recoveredBlock346Stack2 := RBTextGO.
            recoveredBlock346PC := 467.
        ].
        recoveredBlock346Step = 467 ifTrue: [
            recoveredBlock346Stack3 := recoveredLocal5.
            recoveredBlock346PC := 470.
        ].
        recoveredBlock346Step = 470 ifTrue: [
            recoveredBlock346Stack4 := recoveredLocal6.
            recoveredBlock346PC := 473.
        ].
        recoveredBlock346Step = 473 ifTrue: [
            recoveredBlock346Stack3 := (recoveredBlock346Stack3) @ (recoveredBlock346Stack4).
            recoveredBlock346PC := 475.
        ].
        recoveredBlock346Step = 475 ifTrue: [
            recoveredBlock346Stack4 := recoveredLocal11.
            recoveredBlock346PC := 478.
        ].
        recoveredBlock346Step = 478 ifTrue: [
            recoveredBlock346Stack5 := 'TaLeft'.
            recoveredBlock346PC := 480.
        ].
        recoveredBlock346Step = 480 ifTrue: [
            recoveredBlock346Stack6 := font.
            recoveredBlock346PC := 482.
        ].
        recoveredBlock346Step = 482 ifTrue: [
            recoveredBlock346Stack7 := lineStyle.
            recoveredBlock346PC := 484.
        ].
        recoveredBlock346Step = 484 ifTrue: [
            recoveredBlock346Stack8 := manager.
            recoveredBlock346PC := 486.
        ].
        recoveredBlock346Step = 486 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) createAt: (recoveredBlock346Stack3) text: (recoveredBlock346Stack4) alignment: (recoveredBlock346Stack5) font: (recoveredBlock346Stack6) lineStyle: (recoveredBlock346Stack7) manager: (recoveredBlock346Stack8).
            recoveredBlock346PC := 489.
        ].
        recoveredBlock346Step = 489 ifTrue: [
            recoveredBlock346Stack1 := (recoveredBlock346Stack1) add: (recoveredBlock346Stack2).
            recoveredBlock346PC := 491.
        ].
        recoveredBlock346Step = 491 ifTrue: [
            recoveredBlock346Result := recoveredBlock346Stack1.
            recoveredBlock346Done := true.
        ].
    ].
    recoveredBlock346Result
].
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNameUnitText.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 576] ifFalse: [recoveredPC := 504].
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := RBTextGO.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := p1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack3 := p2.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack4 := p1.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := p2.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack4 := 'TaLeft'.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack5 := font.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack6 := lineStyle.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack7 := manager.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) text: (recoveredStack3) alignment: (recoveredStack4) font: (recoveredStack5) lineStyle: (recoveredStack6) manager: (recoveredStack7).
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            displayedObjects := recoveredStack0.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

