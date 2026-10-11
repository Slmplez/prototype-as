"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200026fc; bytecode file offset 0x534f0"
!EwHierarchy methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"extwid.ic method 0x200027f4; bytecode file offset 0x53678"
!EwHierarchy methodsFor: 'recovered'!
expanded
    | recoveredValue0 |
    recoveredValue0 := expanded.
    ^recoveredValue0
! !

"extwid.ic method 0x20002a0c; bytecode file offset 0x53810"
!EwHierarchy methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := size.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b74; bytecode file offset 0x53998"
!EwHierarchy methodsFor: 'recovered'!
depth
    | recoveredValue0 |
    recoveredValue0 := depth.
    ^recoveredValue0
! !

"extwid.ic method 0x20002d14; bytecode file offset 0x53ae8"
!EwHierarchy methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"extwid.ic method 0x20005ae4; bytecode file offset 0x568ac"
!EwHierarchy methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0) indenting: (0).
    ^self
! !

"extwid.ic method 0x20006330; bytecode file offset 0x5710c"
!EwHierarchy methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    items := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006460; bytecode file offset 0x57284"
!EwHierarchy methodsFor: 'recovered'!
expanded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expanded := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200064f0; bytecode file offset 0x57404"
!EwHierarchy methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    size := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006764; bytecode file offset 0x57568"
!EwHierarchy methodsFor: 'recovered'!
depth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    depth := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000681c; bytecode file offset 0x576a8"
!EwHierarchy methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200094f8; bytecode file offset 0x5a2c4"
!EwHierarchy methodsFor: 'recovered'!
lastExpanded
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20009ac4; bytecode file offset 0x5a890"
!EwHierarchy methodsFor: 'recovered'!
rootHierarchy
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootHierarchy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000e8a4; bytecode file offset 0x5f678"
!EwHierarchy methodsFor: 'recovered'!
populateHeadingNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) depth: (0).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) subhierarchy: (nil).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) hierarchy: (self).
    (recoveredValue0) item: (nil).
    ^self
! !

"extwid.ic method 0x2001296c; bytecode file offset 0x63740"
!EwHierarchy methodsFor: 'recovered'!
itemsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) itemsDo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (self) expandedDo: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20013514; bytecode file offset 0x642ec"
!EwHierarchy methodsFor: 'recovered'!
isLastChildSubhierarchy: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20013698; bytecode file offset 0x64478"
!EwHierarchy methodsFor: 'recovered'!
addExpanded: recoveredArg1 node: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) expanded: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20017364; bytecode file offset 0x68148"
!EwHierarchy methodsFor: 'recovered'!
basicExpandAt: recoveredArg1 children: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwHierarchy.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) parent: (self).
    recoveredValue5 := (self) depth.
    recoveredValue6 := (recoveredValue5) + (1).
    (recoveredValue3) depth: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    (self) addExpanded: (recoveredValue7) node: (recoveredValue8).
    recoveredValue9 := (self) size.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue9) + (recoveredValue11).
    (self) size: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"extwid.ic method 0x200181bc; bytecode file offset 0x68f90"
!EwHierarchy methodsFor: 'recovered'!
recalculateSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) items.
    recoveredValue1 := (recoveredValue0) size.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg2.
    recoveredBlock10Value2 := (recoveredBlock10Value1) size.
    recoveredBlock10Value3 := (recoveredBlock10Value0) + (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (self) expandedDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (self) size: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20018b14; bytecode file offset 0x698ec"
!EwHierarchy methodsFor: 'recovered'!
expandedDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) key.
    recoveredBlock17Value3 := recoveredBlock17Arg1.
    recoveredBlock17Value4 := (recoveredBlock17Value3) value.
    recoveredBlock17Value5 := (recoveredBlock17Value0) value: (recoveredBlock17Value2) value: (recoveredBlock17Value4).
    recoveredBlock17Value5
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20019578; bytecode file offset 0x6a348"
!EwHierarchy methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg2.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack3 := recoveredArg1.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) includes: (recoveredBlock15Stack3).
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 32] ifFalse: [recoveredBlock15PC := 35].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := true.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001c9c4; bytecode file offset 0x6d7a0"
!EwHierarchy methodsFor: 'recovered'!
isLastChild: recoveredArg1 subhierarchy: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastExpanded.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) items.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2001de84; bytecode file offset 0x6ec64"
!EwHierarchy methodsFor: 'recovered'!
refreshItemsUnder: recoveredArg1 at: recoveredArg2 childrenBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) subHierarchyAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collapseAt: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) refreshItems: (recoveredStack1) childrenBlock: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) recalculateSize.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001f240; bytecode file offset 0x70018"
!EwHierarchy methodsFor: 'recovered'!
parentOf: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Local1 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg2.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) parentOf: (recoveredBlock15Stack2).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := true.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 39] ifFalse: [recoveredBlock15PC := 34].
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) items.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2).
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local1.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack3 := false.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            (recoveredBlock15Stack2 == recoveredBlock15Stack3) ifTrue: [recoveredBlock15PC := 49] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20023c5c; bytecode file offset 0x74a38"
!EwHierarchy methodsFor: 'recovered'!
removeExpanded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) key.
    recoveredBlock17Value2 := recoveredArg1.
    recoveredBlock17Value3 := (recoveredBlock17Value1) == (recoveredBlock17Value2).
    recoveredBlock17Value3
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirst: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) expanded: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002ae24; bytecode file offset 0x7bbf4"
!EwHierarchy methodsFor: 'recovered'!
subHierarchyAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 44].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            (recoveredBlock14Stack1 ~~ recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 56] ifFalse: [recoveredBlock14PC := 54].
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 72] ifFalse: [recoveredBlock14PC := 82].
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) subHierarchyAt: (recoveredBlock14Stack2).
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    ^nil
! !

"extwid.ic method 0x2002ae9c; bytecode file offset 0x7bc6c"
!EwHierarchy methodsFor: 'recovered'!
itemIsExpandedAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            (recoveredBlock14Stack1 ~~ recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 44] ifFalse: [recoveredBlock14PC := 42].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := true.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 54] ifFalse: [recoveredBlock14PC := 56].
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 72] ifFalse: [recoveredBlock14PC := 82].
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) itemIsExpandedAt: (recoveredBlock14Stack2).
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    ^false
! !

"extwid.ic method 0x2002d4d8; bytecode file offset 0x7e2b0"
!EwHierarchy methodsFor: 'recovered'!
collapseAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 58].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            (recoveredBlock14Stack2) removeExpanded: (recoveredBlock14Stack3).
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) size.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            (recoveredBlock14Stack1) size: (recoveredBlock14Stack2).
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 74] ifFalse: [recoveredBlock14PC := 93].
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) collapseAt: (recoveredBlock14Stack2).
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) size.
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            (recoveredBlock14Stack1) size: (recoveredBlock14Stack2).
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 103.
        ].
        recoveredBlock14Step = 103 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    ^0
! !

"extwid.ic method 0x2002f4c4; bytecode file offset 0x802bc"
!EwHierarchy methodsFor: 'recovered'!
expandedIndexesAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) subHierarchyAt: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal2.
            recoveredBlock34PC := 43.
        ].
        recoveredBlock34Step = 43 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) + (1).
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal3.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal2.
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            (recoveredBlock34Stack1) add: (recoveredBlock34Stack2).
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal2.
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) expandedIndexesAt: (recoveredBlock34Stack1).
            recoveredBlock34PC := 60.
        ].
        recoveredBlock34Step = 60 ifTrue: [
            recoveredLocal1 := recoveredBlock34Stack0.
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack0 := nil.
            recoveredBlock34PC := 64.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            (recoveredBlock34Stack1 == nil) ifTrue: [recoveredBlock34PC := 88] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack0 := recoveredLocal3.
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 77.
        ].
        recoveredBlock34Step = 77 ifTrue: [
            (recoveredBlock34Stack0) addAll: (recoveredBlock34Stack1).
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredBlock34Stack0 := recoveredLocal1.
            recoveredBlock34PC := 82.
        ].
        recoveredBlock34Step = 82 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) last.
            recoveredBlock34PC := 84.
        ].
        recoveredBlock34Step = 84 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Stack0.
            recoveredBlock34PC := 85.
        ].
        recoveredBlock34Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 88.
        ].
        recoveredBlock34Step = 88 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack0.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := Interval.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) from: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002fb3c; bytecode file offset 0x8091c"
!EwHierarchy methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 55].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) items.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 70] ifFalse: [recoveredBlock14PC := 80].
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2).
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    recoveredValue1 := ('hw') == ('call_81562').
    recoveredValue2 := (self) items.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) - (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := [
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 recoveredBlock115Value3 |
    recoveredBlock115Value0 := (self) items.
    recoveredBlock115Value1 := (self) items.
    recoveredBlock115Value2 := (recoveredBlock115Value1) size.
    recoveredBlock115Value3 := (recoveredBlock115Value0) at: (recoveredBlock115Value2).
    recoveredBlock115Value3
].
    recoveredValue9 := (recoveredValue2) at: (recoveredValue7) ifAbsent: (recoveredValue8).
    ^recoveredValue9
! !

"extwid.ic method 0x20031a00; bytecode file offset 0x827d8"
!EwHierarchy methodsFor: 'recovered'!
expandAt: recoveredArg1 children: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            (recoveredBlock14Stack1 ~~ recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 44] ifFalse: [recoveredBlock14PC := 42].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 54] ifFalse: [recoveredBlock14PC := 70].
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) basicExpandAt: (recoveredBlock14Stack2) children: (recoveredBlock14Stack3).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 86] ifFalse: [recoveredBlock14PC := 114].
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) expandAt: (recoveredBlock14Stack2) children: (recoveredBlock14Stack3).
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            (recoveredBlock14Stack1 == nil) ifTrue: [recoveredBlock14PC := 112] ifFalse: [recoveredBlock14PC := 104].
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) size.
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) size.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 110.
        ].
        recoveredBlock14Step = 110 ifTrue: [
            (recoveredBlock14Stack1) size: (recoveredBlock14Stack2).
            recoveredBlock14PC := 112.
        ].
        recoveredBlock14Step = 112 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 114 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 117.
        ].
        recoveredBlock14Step = 117 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 118.
        ].
        recoveredBlock14Step = 118 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 119 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 122.
        ].
        recoveredBlock14Step = 122 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 123.
        ].
        recoveredBlock14Step = 123 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 124.
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 127.
        ].
        recoveredBlock14Step = 127 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) - (recoveredValue2).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) basicExpandAt: (recoveredValue5) children: (recoveredValue6).
    ^recoveredValue7
! !

"extwid.ic method 0x20034584; bytecode file offset 0x85378"
!EwHierarchy methodsFor: 'recovered'!
printOn: recoveredArg1 indenting: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expanded.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack3) tab.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2 isInteger) ifTrue: [(recoveredStack2 > 0) ifTrue: [recoveredStack2 := recoveredStack2 - 1. recoveredPC := 52] ifFalse: [recoveredPC := 67]] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) >= (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) printOn: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := (recoveredBlock83Value0) key.
    recoveredBlock83Value2 := recoveredLocal1.
    recoveredBlock83Value3 := (recoveredBlock83Value1) == (recoveredBlock83Value2).
    recoveredBlock83Value3
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) findFirst: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack2) printOn: (recoveredStack3) indenting: (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 28] ifFalse: [recoveredPC := 166]] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20034da0; bytecode file offset 0x85bb0"
!EwHierarchy methodsFor: 'recovered'!
refreshItems: recoveredArg1 childrenBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ('PR') = ('1ENSJ13').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := (self) rootHierarchy.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack3 := self.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) items.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) size.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) > (recoveredBlock28Stack3).
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 64] ifFalse: [recoveredBlock28PC := 46].
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal3.
            recoveredBlock28PC := 50.
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) items.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal4.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (self) expandedDo: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) items: (recoveredValue7).
    (self) expanded: (nil).
    recoveredLocal2 := 0.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := [:recoveredBlock88Arg1 :recoveredBlock88Arg2 | 
    | recoveredBlock88Local1 recoveredBlock88Local2 recoveredBlock88Local3 recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 97.
        ].
        recoveredBlock88Step = 97 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 99.
        ].
        recoveredBlock88Step = 99 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) indexOf: (recoveredBlock88Stack2).
            recoveredBlock88PC := 101.
        ].
        recoveredBlock88Step = 101 ifTrue: [
            recoveredBlock88Local2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 102.
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 105.
        ].
        recoveredBlock88Step = 105 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 107.
        ].
        recoveredBlock88Step = 107 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) indexOf: (recoveredBlock88Stack2).
            recoveredBlock88PC := 109.
        ].
        recoveredBlock88Step = 109 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 110.
        ].
        recoveredBlock88Step = 110 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 111.
        ].
        recoveredBlock88Step = 111 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Local1.
            recoveredBlock88PC := 112.
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88Stack3 := 0.
            recoveredBlock88PC := 114.
        ].
        recoveredBlock88Step = 114 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) > (recoveredBlock88Stack3).
            recoveredBlock88PC := 115.
        ].
        recoveredBlock88Step = 115 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 118] ifFalse: [recoveredBlock88PC := 160].
        ].
        recoveredBlock88Step = 118 ifTrue: [
            recoveredBlock88PC := 119.
        ].
        recoveredBlock88Step = 119 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg2.
            recoveredBlock88PC := 122.
        ].
        recoveredBlock88Step = 122 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 124.
        ].
        recoveredBlock88Step = 124 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Local2.
            recoveredBlock88PC := 125.
        ].
        recoveredBlock88Step = 125 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) value: (recoveredBlock88Stack2) value: (recoveredBlock88Stack3).
            recoveredBlock88PC := 127.
        ].
        recoveredBlock88Step = 127 ifTrue: [
            recoveredBlock88Local3 := recoveredBlock88Stack1.
            recoveredBlock88PC := 128.
        ].
        recoveredBlock88Step = 128 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 129.
        ].
        recoveredBlock88Step = 129 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Local3.
            recoveredBlock88PC := 130.
        ].
        recoveredBlock88Step = 130 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) isEmpty.
            recoveredBlock88PC := 132.
        ].
        recoveredBlock88Step = 132 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 160] ifFalse: [recoveredBlock88PC := 136].
        ].
        recoveredBlock88Step = 136 ifTrue: [
            recoveredBlock88PC := 137.
        ].
        recoveredBlock88Step = 137 ifTrue: [
            recoveredBlock88Stack1 := self.
            recoveredBlock88PC := 138.
        ].
        recoveredBlock88Step = 138 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Local1.
            recoveredBlock88PC := 139.
        ].
        recoveredBlock88Step = 139 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Arg2.
            recoveredBlock88PC := 140.
        ].
        recoveredBlock88Step = 140 ifTrue: [
            (recoveredBlock88Stack1) addExpanded: (recoveredBlock88Stack2) node: (recoveredBlock88Stack3).
            recoveredBlock88PC := 142.
        ].
        recoveredBlock88Step = 142 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg2.
            recoveredBlock88PC := 143.
        ].
        recoveredBlock88Step = 143 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Local3.
            recoveredBlock88PC := 144.
        ].
        recoveredBlock88Step = 144 ifTrue: [
            recoveredBlock88Stack3 := recoveredArg2.
            recoveredBlock88PC := 147.
        ].
        recoveredBlock88Step = 147 ifTrue: [
            (recoveredBlock88Stack1) refreshItems: (recoveredBlock88Stack2) childrenBlock: (recoveredBlock88Stack3).
            recoveredBlock88PC := 149.
        ].
        recoveredBlock88Step = 149 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal2.
            recoveredBlock88PC := 152.
        ].
        recoveredBlock88Step = 152 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg2.
            recoveredBlock88PC := 153.
        ].
        recoveredBlock88Step = 153 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) size.
            recoveredBlock88PC := 155.
        ].
        recoveredBlock88Step = 155 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) + (recoveredBlock88Stack2).
            recoveredBlock88PC := 156.
        ].
        recoveredBlock88Step = 156 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 157.
        ].
        recoveredBlock88Step = 157 ifTrue: [
            recoveredLocal2 := recoveredBlock88Stack2.
            recoveredBlock88PC := 160.
        ].
        recoveredBlock88Step = 160 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
    (recoveredValue8) with: (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue11) + (recoveredValue13).
    (self) size: (recoveredValue14).
    ^self
! !

"extwid.ic method 0x200363f0; bytecode file offset 0x871c8"
!EwHierarchy methodsFor: 'recovered'!
indexOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Local3 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (1).
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (-1).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) items.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 44] ifFalse: [recoveredBlock14PC := 54].
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            ^recoveredBlock14Stack2
        ].
        recoveredBlock14Step = 54 ifTrue: [
            (recoveredBlock14Stack1 isInteger and: [recoveredBlock14Local1 isInteger]) ifTrue: [(recoveredBlock14Local1 + 1 <= recoveredBlock14Stack1) ifTrue: [recoveredBlock14Local1 := recoveredBlock14Local1 + 1. recoveredBlock14PC := 32] ifFalse: [recoveredBlock14Local1 := nil. recoveredBlock14PC := 68]] ifFalse: [recoveredBlock14PC := 58].
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (1).
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Stack3.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack4.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) < (recoveredBlock14Stack3).
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 66] ifFalse: [recoveredBlock14PC := 32].
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) indexOf: (recoveredBlock14Stack2).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local2.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 96] ifFalse: [recoveredBlock14PC := 102].
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 103.
        ].
        recoveredBlock14Step = 103 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 104.
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Local3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 110.
        ].
        recoveredBlock14Step = 110 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 115.
        ].
        recoveredBlock14Step = 115 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 116.
        ].
        recoveredBlock14Step = 116 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack2.
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 119 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 134] ifFalse: [recoveredPC := 191]] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20036e00; bytecode file offset 0x87bfc"
!EwHierarchy methodsFor: 'recovered'!
populateListNode: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 88].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) depth.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            (recoveredBlock14Stack2) depth: (recoveredBlock14Stack3).
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg2.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            (recoveredBlock14Stack3 ~~ recoveredBlock14Stack4) ifTrue: [recoveredBlock14PC := 64] ifFalse: [recoveredBlock14PC := 60].
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg2.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack3 := nil.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            (recoveredBlock14Stack2) subhierarchy: (recoveredBlock14Stack3).
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            (recoveredBlock14Stack2) hierarchy: (recoveredBlock14Stack3).
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) items.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack4 := recoveredLocal2.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) - (recoveredBlock14Stack4).
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg2.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (recoveredBlock14Stack4).
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) item: (recoveredBlock14Stack2).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 104] ifFalse: [recoveredBlock14PC := 118].
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 111.
        ].
        recoveredBlock14Step = 111 ifTrue: [
            recoveredBlock14Stack4 := recoveredLocal2.
            recoveredBlock14PC := 114.
        ].
        recoveredBlock14Step = 114 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) - (recoveredBlock14Stack4).
            recoveredBlock14PC := 115.
        ].
        recoveredBlock14Step = 115 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) populateListNode: (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 117.
        ].
        recoveredBlock14Step = 117 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 118 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 121.
        ].
        recoveredBlock14Step = 121 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 122.
        ].
        recoveredBlock14Step = 122 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 123.
        ].
        recoveredBlock14Step = 123 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 127.
        ].
        recoveredBlock14Step = 127 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 128.
        ].
        recoveredBlock14Step = 128 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 131.
        ].
        recoveredBlock14Step = 131 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    recoveredValue1 := ('hw') == ('call_81562').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) depth.
    (recoveredValue3) depth: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) subhierarchy: (nil).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) hierarchy: (self).
    recoveredValue7 := (self) items.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue8) - (recoveredValue9).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredValue13 := [
    | recoveredBlock170Stack0 recoveredBlock170Stack1 recoveredBlock170Stack2 recoveredBlock170PC recoveredBlock170Step recoveredBlock170Done recoveredBlock170Result |
    recoveredBlock170Stack0 := self.
    recoveredBlock170PC := 176.
    recoveredBlock170Done := false.
    [recoveredBlock170Done not] whileTrue: [
        recoveredBlock170Step := recoveredBlock170PC.
        recoveredBlock170Step = 176 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) items.
            recoveredBlock170PC := 178.
        ].
        recoveredBlock170Step = 178 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) isEmpty.
            recoveredBlock170PC := 180.
        ].
        recoveredBlock170Step = 180 ifTrue: [
            (recoveredBlock170Stack0) ifTrue: [recoveredBlock170PC := 184] ifFalse: [recoveredBlock170PC := 188].
        ].
        recoveredBlock170Step = 184 ifTrue: [
            recoveredBlock170Stack0 := nil.
            recoveredBlock170PC := 185.
        ].
        recoveredBlock170Step = 185 ifTrue: [
            recoveredBlock170PC := 198.
        ].
        recoveredBlock170Step = 188 ifTrue: [
            recoveredBlock170Stack0 := self.
            recoveredBlock170PC := 189.
        ].
        recoveredBlock170Step = 189 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) items.
            recoveredBlock170PC := 191.
        ].
        recoveredBlock170Step = 191 ifTrue: [
            recoveredBlock170Stack1 := self.
            recoveredBlock170PC := 192.
        ].
        recoveredBlock170Step = 192 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) items.
            recoveredBlock170PC := 194.
        ].
        recoveredBlock170Step = 194 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) size.
            recoveredBlock170PC := 196.
        ].
        recoveredBlock170Step = 196 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) at: (recoveredBlock170Stack1).
            recoveredBlock170PC := 198.
        ].
        recoveredBlock170Step = 198 ifTrue: [
            recoveredBlock170Result := recoveredBlock170Stack0.
            recoveredBlock170Done := true.
        ].
    ].
    recoveredBlock170Result
].
    recoveredValue14 := (recoveredValue7) at: (recoveredValue12) ifAbsent: (recoveredValue13).
    recoveredValue15 := (recoveredValue2) item: (recoveredValue14).
    ^recoveredValue15
! !

"extwid.ic method 0x2003aaac; bytecode file offset 0x8b8a8"
!EwHierarchy methodsFor: 'recovered'!
listNodes: recoveredArg1 fromAbsolute: recoveredArg2 relative: recoveredArg3 to: recoveredArg4 withIndexesDo: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 :recoveredBlock32Arg2 | 
    | recoveredBlock32Local1 recoveredBlock32Local2 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32Stack6 recoveredBlock32Stack7 recoveredBlock32Stack8 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal4.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (recoveredBlock32Stack2).
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal5.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) - (recoveredBlock32Stack2).
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg3.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) >= (recoveredBlock32Stack2).
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 56] ifFalse: [recoveredBlock32PC := 160].
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal5.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg3.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal4.
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) - (recoveredBlock32Stack3).
            recoveredBlock32PC := 66.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack3 := 1.
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) max: (recoveredBlock32Stack3).
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (recoveredBlock32Stack2).
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (-1).
            recoveredBlock32PC := 71.
        ].
        recoveredBlock32Step = 71 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg4.
            recoveredBlock32PC := 76.
        ].
        recoveredBlock32Step = 76 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal4.
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) - (recoveredBlock32Stack3).
            recoveredBlock32PC := 80.
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal5.
            recoveredBlock32PC := 83.
        ].
        recoveredBlock32Step = 83 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) + (recoveredBlock32Stack3).
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) min: (recoveredBlock32Stack2).
            recoveredBlock32PC := 85.
        ].
        recoveredBlock32Step = 85 ifTrue: [
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 91.
        ].
        recoveredBlock32Step = 91 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) new.
            recoveredBlock32PC := 92.
        ].
        recoveredBlock32Step = 92 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 93.
        ].
        recoveredBlock32Step = 93 ifTrue: [
            recoveredBlock32Stack4 := self.
            recoveredBlock32PC := 94.
        ].
        recoveredBlock32Step = 94 ifTrue: [
            recoveredBlock32Stack4 := (recoveredBlock32Stack4) items.
            recoveredBlock32PC := 96.
        ].
        recoveredBlock32Step = 96 ifTrue: [
            recoveredBlock32Stack5 := recoveredBlock32Local1.
            recoveredBlock32PC := 97.
        ].
        recoveredBlock32Step = 97 ifTrue: [
            recoveredBlock32Stack4 := (recoveredBlock32Stack4) at: (recoveredBlock32Stack5).
            recoveredBlock32PC := 99.
        ].
        recoveredBlock32Step = 99 ifTrue: [
            (recoveredBlock32Stack3) item: (recoveredBlock32Stack4).
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 102.
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Local1.
            recoveredBlock32PC := 103.
        ].
        recoveredBlock32Step = 103 ifTrue: [
            recoveredBlock32Stack5 := recoveredBlock32Arg1.
            recoveredBlock32PC := 104.
        ].
        recoveredBlock32Step = 104 ifTrue: [
            (recoveredBlock32Stack4 ~~ recoveredBlock32Stack5) ifTrue: [recoveredBlock32PC := 112] ifFalse: [recoveredBlock32PC := 108].
        ].
        recoveredBlock32Step = 108 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Arg2.
            recoveredBlock32PC := 109.
        ].
        recoveredBlock32Step = 109 ifTrue: [
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 112 ifTrue: [
            recoveredBlock32Stack4 := nil.
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 113 ifTrue: [
            (recoveredBlock32Stack3) subhierarchy: (recoveredBlock32Stack4).
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 116.
        ].
        recoveredBlock32Step = 116 ifTrue: [
            recoveredBlock32Stack4 := self.
            recoveredBlock32PC := 117.
        ].
        recoveredBlock32Step = 117 ifTrue: [
            (recoveredBlock32Stack3) hierarchy: (recoveredBlock32Stack4).
            recoveredBlock32PC := 119.
        ].
        recoveredBlock32Step = 119 ifTrue: [
            recoveredBlock32Stack3 := self.
            recoveredBlock32PC := 120.
        ].
        recoveredBlock32Step = 120 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) depth.
            recoveredBlock32PC := 122.
        ].
        recoveredBlock32Step = 122 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) depth: (recoveredBlock32Stack3).
            recoveredBlock32PC := 124.
        ].
        recoveredBlock32Step = 124 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg5.
            recoveredBlock32PC := 130.
        ].
        recoveredBlock32Step = 130 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal2.
            recoveredBlock32PC := 133.
        ].
        recoveredBlock32Step = 133 ifTrue: [
            recoveredBlock32Stack4 := recoveredLocal3.
            recoveredBlock32PC := 136.
        ].
        recoveredBlock32Step = 136 ifTrue: [
            (recoveredBlock32Stack2) value: (recoveredBlock32Stack3) value: (recoveredBlock32Stack4).
            recoveredBlock32PC := 138.
        ].
        recoveredBlock32Step = 138 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal3.
            recoveredBlock32PC := 141.
        ].
        recoveredBlock32Step = 141 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) + (1).
            recoveredBlock32PC := 142.
        ].
        recoveredBlock32Step = 142 ifTrue: [
            recoveredLocal3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 145 ifTrue: [
            (recoveredBlock32Stack1 isInteger and: [recoveredBlock32Local1 isInteger]) ifTrue: [(recoveredBlock32Local1 + 1 <= recoveredBlock32Stack1) ifTrue: [recoveredBlock32Local1 := recoveredBlock32Local1 + 1. recoveredBlock32PC := 88] ifFalse: [recoveredBlock32Local1 := nil. recoveredBlock32PC := 159]] ifFalse: [recoveredBlock32PC := 149].
        ].
        recoveredBlock32Step = 149 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 150.
        ].
        recoveredBlock32Step = 150 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local1.
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) + (1).
            recoveredBlock32PC := 152.
        ].
        recoveredBlock32Step = 152 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Stack3.
            recoveredBlock32PC := 153.
        ].
        recoveredBlock32Step = 153 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack4.
            recoveredBlock32PC := 154.
        ].
        recoveredBlock32Step = 154 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) < (recoveredBlock32Stack3).
            recoveredBlock32PC := 155.
        ].
        recoveredBlock32Step = 155 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 157] ifFalse: [recoveredBlock32PC := 88].
        ].
        recoveredBlock32Step = 157 ifTrue: [
            recoveredBlock32Stack2 := nil.
            recoveredBlock32PC := 158.
        ].
        recoveredBlock32Step = 158 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 159.
        ].
        recoveredBlock32Step = 159 ifTrue: [
            recoveredBlock32PC := 160.
        ].
        recoveredBlock32Step = 160 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 161.
        ].
        recoveredBlock32Step = 161 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg4.
            recoveredBlock32PC := 164.
        ].
        recoveredBlock32Step = 164 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) >= (recoveredBlock32Stack2).
            recoveredBlock32PC := 165.
        ].
        recoveredBlock32Step = 165 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 168] ifFalse: [recoveredBlock32PC := 176].
        ].
        recoveredBlock32Step = 168 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 171.
        ].
        recoveredBlock32Step = 171 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg2.
            recoveredBlock32PC := 174.
        ].
        recoveredBlock32Step = 174 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) - (recoveredBlock32Stack2).
            recoveredBlock32PC := 175.
        ].
        recoveredBlock32Step = 175 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 176 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 179.
        ].
        recoveredBlock32Step = 179 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg2.
            recoveredBlock32PC := 180.
        ].
        recoveredBlock32Step = 180 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg1.
            recoveredBlock32PC := 183.
        ].
        recoveredBlock32Step = 183 ifTrue: [
            recoveredBlock32Stack4 := recoveredLocal3.
            recoveredBlock32PC := 186.
        ].
        recoveredBlock32Step = 186 ifTrue: [
            recoveredBlock32Stack5 := recoveredArg3.
            recoveredBlock32PC := 189.
        ].
        recoveredBlock32Step = 189 ifTrue: [
            recoveredBlock32Stack6 := recoveredBlock32Local2.
            recoveredBlock32PC := 190.
        ].
        recoveredBlock32Step = 190 ifTrue: [
            recoveredBlock32Stack5 := (recoveredBlock32Stack5) - (recoveredBlock32Stack6).
            recoveredBlock32PC := 191.
        ].
        recoveredBlock32Step = 191 ifTrue: [
            recoveredBlock32Stack6 := recoveredArg4.
            recoveredBlock32PC := 194.
        ].
        recoveredBlock32Step = 194 ifTrue: [
            recoveredBlock32Stack7 := recoveredBlock32Local2.
            recoveredBlock32PC := 195.
        ].
        recoveredBlock32Step = 195 ifTrue: [
            recoveredBlock32Stack6 := (recoveredBlock32Stack6) - (recoveredBlock32Stack7).
            recoveredBlock32PC := 196.
        ].
        recoveredBlock32Step = 196 ifTrue: [
            recoveredBlock32Stack7 := recoveredArg5.
            recoveredBlock32PC := 199.
        ].
        recoveredBlock32Step = 199 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) listNodes: (recoveredBlock32Stack3) fromAbsolute: (recoveredBlock32Stack4) relative: (recoveredBlock32Stack5) to: (recoveredBlock32Stack6) withIndexesDo: (recoveredBlock32Stack7).
            recoveredBlock32PC := 202.
        ].
        recoveredBlock32Step = 202 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (recoveredBlock32Stack2).
            recoveredBlock32PC := 203.
        ].
        recoveredBlock32Step = 203 ifTrue: [
            recoveredLocal3 := recoveredBlock32Stack1.
            recoveredBlock32PC := 206.
        ].
        recoveredBlock32Step = 206 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 207.
        ].
        recoveredBlock32Step = 207 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg2.
            recoveredBlock32PC := 208.
        ].
        recoveredBlock32Step = 208 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) size.
            recoveredBlock32PC := 209.
        ].
        recoveredBlock32Step = 209 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (recoveredBlock32Stack2).
            recoveredBlock32PC := 210.
        ].
        recoveredBlock32Step = 210 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 211.
        ].
        recoveredBlock32Step = 211 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 212.
        ].
        recoveredBlock32Step = 212 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg4.
            recoveredBlock32PC := 215.
        ].
        recoveredBlock32Step = 215 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) >= (recoveredBlock32Stack2).
            recoveredBlock32PC := 216.
        ].
        recoveredBlock32Step = 216 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 220] ifFalse: [recoveredBlock32PC := 228].
        ].
        recoveredBlock32Step = 220 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 223.
        ].
        recoveredBlock32Step = 223 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg2.
            recoveredBlock32PC := 226.
        ].
        recoveredBlock32Step = 226 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) - (recoveredBlock32Stack2).
            recoveredBlock32PC := 227.
        ].
        recoveredBlock32Step = 227 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 228 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 229.
        ].
        recoveredBlock32Step = 229 ifTrue: [
            recoveredLocal4 := recoveredBlock32Stack1.
            recoveredBlock32PC := 232.
        ].
        recoveredBlock32Step = 232 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 233.
        ].
        recoveredBlock32Step = 233 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 234.
        ].
        recoveredBlock32Step = 234 ifTrue: [
            recoveredLocal5 := recoveredBlock32Stack2.
            recoveredBlock32PC := 237.
        ].
        recoveredBlock32Step = 237 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 336.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack4 := (recoveredStack4) items.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack3) item: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack3) subhierarchy: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack3) hierarchy: (recoveredStack4).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := (recoveredStack3) depth.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 284] ifFalse: [recoveredPC := 365]] ifFalse: [recoveredPC := 339].
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 361] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

