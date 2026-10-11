"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20050fc0; bytecode file offset 0x94f0e0"
!RBConnectionPointBranch methodsFor: 'recovered'!
connectionWrappers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) connections.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006aa5c; bytecode file offset 0x967a18"
!RBConnectionPointBranch methodsFor: 'recovered'!
branchingPoints
    | recoveredValue0 |
    recoveredValue0 := branchingPoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c1814; bytecode file offset 0x9beac8"
!RBConnectionPointBranch methodsFor: 'recovered'!
branchingPoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    branchingPoints := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da5cc; bytecode file offset 0x9d6e90"
!RBConnectionPointBranch methodsFor: 'recovered'!
addConnection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) connections.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ff720; bytecode file offset 0x9fc02c"
!RBConnectionPointBranch methodsFor: 'recovered'!
removeConnection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) connections.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    (self) generateBranchingPoints.
    ^self
! !

"ASDBase.ic method 0x20114570; bytecode file offset 0xa10e38"
!RBConnectionPointBranch methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) connections: (recoveredValue1).
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    (self) branchingPoints: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013527c; bytecode file offset 0xa31b3c"
!RBConnectionPointBranch methodsFor: 'recovered'!
cornerPoints: recoveredArg1 ofConnection: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013fb4c; bytecode file offset 0xa3c414"
!RBConnectionPointBranch methodsFor: 'recovered'!
changeStarted
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cbf7cArg1 | 
    | block280cbf7cValue0 block280cbf7cValue1 |
    block280cbf7cValue0 := block280cbf7cArg1.
    block280cbf7cValue1 := (block280cbf7cValue0) changeStarted.
    block280cbf7cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20203e78; bytecode file offset 0xb00744"
!RBConnectionPointBranch methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) connections.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) copy.
    recoveredBlock6Value3 := (recoveredBlock6Value0) moveConnectionPointBasic: (self) to: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) position: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2021feb0; bytecode file offset 0xb1c780"
!RBConnectionPointBranch methodsFor: 'recovered'!
giveRedisplayRects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) connections.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) giveRedisplayRects.
    recoveredBlock12Value3 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2025a224; bytecode file offset 0xb56af8"
!RBConnectionPointBranch methodsFor: 'recovered'!
removeConnectionGOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) connections.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) frame.
    (recoveredBlock12Value0) add: (recoveredBlock12Value2).
    recoveredBlock12Value3 := recoveredBlock12Arg1.
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value3) removeGO: (recoveredBlock12Value4) display: (false).
    recoveredBlock12Value5
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20270370; bytecode file offset 0xb6cc40"
!RBConnectionPointBranch methodsFor: 'recovered'!
visibleConnections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) connections.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) key.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isVisible.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 33].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20319f50; bytecode file offset 0xc1680c"
!RBConnectionPointBranch methodsFor: 'recovered'!
compare: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050f3ac; bytecode file offset 0xe0bca8"
!RBConnectionPointBranch methodsFor: 'recovered'!
generateBranchingPoints
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block2810b214Arg1 | 
    | block2810b214Value0 block2810b214Value1 |
    block2810b214Value0 := block2810b214Arg1.
    block2810b214Value1 := (block2810b214Value0) setCornerPoints.
    block2810b214Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleConnections.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) branchingPoints: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [:recoveredBlock59Arg1 :recoveredBlock59Arg2 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 |
    recoveredBlock59Value0 := recoveredLocal7.
    recoveredBlock59Value1 := recoveredBlock59Arg2.
    recoveredBlock59Value2 := (recoveredBlock59Value1) + (1).
    recoveredBlock59Value3 := recoveredLocal6.
    recoveredBlock59Value4 := [:recoveredBlock59Block76Arg1 | 
    | recoveredBlock59Block76Stack0 recoveredBlock59Block76Stack1 recoveredBlock59Block76Stack2 recoveredBlock59Block76Stack3 recoveredBlock59Block76Stack4 recoveredBlock59Block76Stack5 recoveredBlock59Block76PC recoveredBlock59Block76Step recoveredBlock59Block76Done recoveredBlock59Block76Result |
    recoveredBlock59Block76Stack0 := self.
    recoveredBlock59Block76PC := 82.
    recoveredBlock59Block76Done := false.
    [recoveredBlock59Block76Done not] whileTrue: [
        recoveredBlock59Block76Step := recoveredBlock59Block76PC.
        recoveredBlock59Block76Step = 82 ifTrue: [
            recoveredBlock59Block76Stack1 := nil.
            recoveredBlock59Block76PC := 83.
        ].
        recoveredBlock59Block76Step = 83 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredBlock59Arg1.
            recoveredBlock59Block76PC := 86.
        ].
        recoveredBlock59Block76Step = 86 ifTrue: [
            recoveredBlock59Block76Stack2 := (recoveredBlock59Block76Stack2) notEmpty.
            recoveredBlock59Block76PC := 88.
        ].
        recoveredBlock59Block76Step = 88 ifTrue: [
            (recoveredBlock59Block76Stack2) ifTrue: [recoveredBlock59Block76PC := 92] ifFalse: [recoveredBlock59Block76PC := 173].
        ].
        recoveredBlock59Block76Step = 92 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredBlock59Block76Arg1.
            recoveredBlock59Block76PC := 93.
        ].
        recoveredBlock59Block76Step = 93 ifTrue: [
            recoveredBlock59Block76Stack2 := (recoveredBlock59Block76Stack2) notEmpty.
            recoveredBlock59Block76PC := 95.
        ].
        recoveredBlock59Block76Step = 95 ifTrue: [
            (recoveredBlock59Block76Stack2) ifTrue: [recoveredBlock59Block76PC := 98] ifFalse: [recoveredBlock59Block76PC := 173].
        ].
        recoveredBlock59Block76Step = 98 ifTrue: [
            recoveredBlock59Block76PC := 99.
        ].
        recoveredBlock59Block76Step = 99 ifTrue: [
            recoveredBlock59Block76Stack1 := self.
            recoveredBlock59Block76PC := 100.
        ].
        recoveredBlock59Block76Step = 100 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredBlock59Arg1.
            recoveredBlock59Block76PC := 103.
        ].
        recoveredBlock59Block76Step = 103 ifTrue: [
            recoveredBlock59Block76Stack3 := recoveredBlock59Block76Arg1.
            recoveredBlock59Block76PC := 104.
        ].
        recoveredBlock59Block76Step = 104 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) compare: (recoveredBlock59Block76Stack2) with: (recoveredBlock59Block76Stack3).
            recoveredBlock59Block76PC := 106.
        ].
        recoveredBlock59Block76Step = 106 ifTrue: [
            recoveredLocal4 := recoveredBlock59Block76Stack1.
            recoveredBlock59Block76PC := 109.
        ].
        recoveredBlock59Block76Step = 109 ifTrue: [
            recoveredBlock59Block76Stack1 := recoveredBlock59Arg1.
            recoveredBlock59Block76PC := 112.
        ].
        recoveredBlock59Block76Step = 112 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredLocal4.
            recoveredBlock59Block76PC := 115.
        ].
        recoveredBlock59Block76Step = 115 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) at: (recoveredBlock59Block76Stack2).
            recoveredBlock59Block76PC := 117.
        ].
        recoveredBlock59Block76Step = 117 ifTrue: [
            recoveredLocal3 := recoveredBlock59Block76Stack1.
            recoveredBlock59Block76PC := 120.
        ].
        recoveredBlock59Block76Step = 120 ifTrue: [
            recoveredBlock59Block76Stack1 := recoveredBlock59Block76Arg1.
            recoveredBlock59Block76PC := 121.
        ].
        recoveredBlock59Block76Step = 121 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredLocal4.
            recoveredBlock59Block76PC := 124.
        ].
        recoveredBlock59Block76Step = 124 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) at: (recoveredBlock59Block76Stack2).
            recoveredBlock59Block76PC := 126.
        ].
        recoveredBlock59Block76Step = 126 ifTrue: [
            recoveredLocal2 := recoveredBlock59Block76Stack1.
            recoveredBlock59Block76PC := 129.
        ].
        recoveredBlock59Block76Step = 129 ifTrue: [
            recoveredBlock59Block76Stack1 := recoveredLocal4.
            recoveredBlock59Block76PC := 132.
        ].
        recoveredBlock59Block76Step = 132 ifTrue: [
            recoveredBlock59Block76Stack2 := 1.
            recoveredBlock59Block76PC := 134.
        ].
        recoveredBlock59Block76Step = 134 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) = (recoveredBlock59Block76Stack2).
            recoveredBlock59Block76PC := 135.
        ].
        recoveredBlock59Block76Step = 135 ifTrue: [
            (recoveredBlock59Block76Stack1) ifTrue: [recoveredBlock59Block76PC := 138] ifFalse: [recoveredBlock59Block76PC := 148].
        ].
        recoveredBlock59Block76Step = 138 ifTrue: [
            recoveredBlock59Block76Stack1 := self.
            recoveredBlock59Block76PC := 139.
        ].
        recoveredBlock59Block76Step = 139 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) position.
            recoveredBlock59Block76PC := 141.
        ].
        recoveredBlock59Block76Step = 141 ifTrue: [
            recoveredLocal1 := recoveredBlock59Block76Stack1.
            recoveredBlock59Block76PC := 144.
        ].
        recoveredBlock59Block76Step = 144 ifTrue: [
            recoveredBlock59Block76PC := 160.
        ].
        recoveredBlock59Block76Step = 148 ifTrue: [
            recoveredBlock59Block76Stack1 := recoveredBlock59Arg1.
            recoveredBlock59Block76PC := 151.
        ].
        recoveredBlock59Block76Step = 151 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredLocal4.
            recoveredBlock59Block76PC := 154.
        ].
        recoveredBlock59Block76Step = 154 ifTrue: [
            recoveredBlock59Block76Stack2 := (recoveredBlock59Block76Stack2) + (-1).
            recoveredBlock59Block76PC := 155.
        ].
        recoveredBlock59Block76Step = 155 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) at: (recoveredBlock59Block76Stack2).
            recoveredBlock59Block76PC := 157.
        ].
        recoveredBlock59Block76Step = 157 ifTrue: [
            recoveredLocal1 := recoveredBlock59Block76Stack1.
            recoveredBlock59Block76PC := 160.
        ].
        recoveredBlock59Block76Step = 160 ifTrue: [
            recoveredBlock59Block76Stack1 := self.
            recoveredBlock59Block76PC := 161.
        ].
        recoveredBlock59Block76Step = 161 ifTrue: [
            recoveredBlock59Block76Stack2 := recoveredLocal1.
            recoveredBlock59Block76PC := 164.
        ].
        recoveredBlock59Block76Step = 164 ifTrue: [
            recoveredBlock59Block76Stack3 := recoveredLocal3.
            recoveredBlock59Block76PC := 167.
        ].
        recoveredBlock59Block76Step = 167 ifTrue: [
            recoveredBlock59Block76Stack4 := recoveredLocal2.
            recoveredBlock59Block76PC := 170.
        ].
        recoveredBlock59Block76Step = 170 ifTrue: [
            recoveredBlock59Block76Stack1 := (recoveredBlock59Block76Stack1) findBranchingPoint: (recoveredBlock59Block76Stack2) pointA: (recoveredBlock59Block76Stack3) pontB: (recoveredBlock59Block76Stack4).
            recoveredBlock59Block76PC := 173.
        ].
        recoveredBlock59Block76Step = 173 ifTrue: [
            recoveredBlock59Block76Result := recoveredBlock59Block76Stack1.
            recoveredBlock59Block76Done := true.
        ].
    ].
    recoveredBlock59Block76Result
].
    recoveredBlock59Value5 := (recoveredBlock59Value0) from: (recoveredBlock59Value2) to: (recoveredBlock59Value3) do: (recoveredBlock59Value4).
    recoveredBlock59Value5
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) from: (recoveredStack1) to: (recoveredStack2) doWithIndex: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := branchingPoints.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20516ee0; bytecode file offset 0xe137a8"
!RBConnectionPointBranch methodsFor: 'recovered'!
findBranchingPoint: recoveredArg1 pointA: recoveredArg2 pontB: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 169].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) branchingPoints.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) branchingPoints.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

