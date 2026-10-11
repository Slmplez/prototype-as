"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200024d8; bytecode file offset 0x4d424"
!EmSortedHierarchy methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"kernel.ic method 0x20003e04; bytecode file offset 0x4ed88"
!EmSortedHierarchy methodsFor: 'recovered'!
root
    | recoveredValue0 |
    recoveredValue0 := topLevel.
    ^recoveredValue0
! !

"kernel.ic method 0x20006374; bytecode file offset 0x51284"
!EmSortedHierarchy methodsFor: 'recovered'!
allElementsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := topLevel.
    recoveredValue1 := recoveredArg1.
    (self) elements: (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200078c0; bytecode file offset 0x5280c"
!EmSortedHierarchy methodsFor: 'recovered'!
parentSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentSelector := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20009404; bytecode file offset 0x54318"
!EmSortedHierarchy methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := topLevel.
    recoveredValue1 := recoveredArg1.
    (self) print: (recoveredValue0) on: (recoveredValue1) level: ('').
    ^self
! !

"kernel.ic method 0x2000c7e8; bytecode file offset 0x576fc"
!EmSortedHierarchy methodsFor: 'recovered'!
addAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) at: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"kernel.ic method 0x20011d24; bytecode file offset 0x5cc4c"
!EmSortedHierarchy methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    parentSelector := 'superclass'.
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    contents := recoveredValue2.
    recoveredValue3 := Class.
    recoveredValue4 := (recoveredValue3) sortBlock.
    sortBlock := recoveredValue4.
    recoveredValue5 := SortedCollection.
    recoveredValue6 := sortBlock.
    recoveredValue7 := (recoveredValue5) sortBlock: (recoveredValue6).
    topLevel := recoveredValue7.
    ^self
! !

"kernel.ic method 0x2001a744; bytecode file offset 0x65670"
!EmSortedHierarchy methodsFor: 'recovered'!
print: recoveredArg1 on: recoveredArg2 level: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := recoveredArg3.
    (recoveredBlock7Value1) nextPutAll: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) name.
    (recoveredBlock7Value3) nextPutAll: (recoveredBlock7Value5).
    (recoveredBlock7Value0) cr.
    recoveredBlock7Value6 := recoveredBlock7Arg1.
    recoveredBlock7Value7 := (self) at: (recoveredBlock7Value6).
    recoveredBlock7Value8 := recoveredArg2.
    recoveredBlock7Value9 := recoveredArg3.
    recoveredBlock7Value10 := (recoveredBlock7Value9) , (' ').
    recoveredBlock7Value11 := (self) print: (recoveredBlock7Value7) on: (recoveredBlock7Value8) level: (recoveredBlock7Value10).
    recoveredBlock7Value11
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2001ccec; bytecode file offset 0x67c14"
!EmSortedHierarchy methodsFor: 'recovered'!
elements: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack1) value: (recoveredBlock7Stack2).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := contents.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack4 := [
    #()
].
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3) ifAbsent: (recoveredBlock7Stack4).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isEmpty.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) elements: (recoveredBlock7Stack2) do: (recoveredBlock7Stack3).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2001cd4c; bytecode file offset 0x67c78"
!EmSortedHierarchy methodsFor: 'recovered'!
sort: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) addAll: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asSet.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue3) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
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
            recoveredBlock28Stack2 := recoveredLocal2.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) includes: (recoveredBlock28Stack3).
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 44] ifFalse: [recoveredBlock28PC := 51].
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) addLast: (recoveredBlock28Stack2).
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (self) allElementsDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"kernel.ic method 0x20023810; bytecode file offset 0x6e73c"
!EmSortedHierarchy methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack2 := parentSelector.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) perform: (recoveredBlock9Stack2).
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredLocal2 := recoveredBlock9Stack2.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            (recoveredBlock9Stack1 ~~ nil) ifTrue: [recoveredBlock9PC := 40] ifFalse: [recoveredBlock9PC := 30].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := topLevel.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            (recoveredBlock9Stack1) add: (recoveredBlock9Stack2).
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9PC := 80.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal2.
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) at: (recoveredBlock9Stack2).
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Stack2 := #().
            recoveredBlock9PC := 51.
        ].
        recoveredBlock9Step = 51 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) = (recoveredBlock9Stack2).
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 56] ifFalse: [recoveredBlock9PC := 72].
        ].
        recoveredBlock9Step = 56 ifTrue: [
            recoveredBlock9Stack1 := contents.
            recoveredBlock9PC := 58.
        ].
        recoveredBlock9Step = 58 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal2.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            recoveredBlock9Stack3 := SortedCollection.
            recoveredBlock9PC := 63.
        ].
        recoveredBlock9Step = 63 ifTrue: [
            recoveredBlock9Stack4 := sortBlock.
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) sortBlock: (recoveredBlock9Stack4).
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) at: (recoveredBlock9Stack2) put: (recoveredBlock9Stack3).
            recoveredBlock9PC := 69.
        ].
        recoveredBlock9Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 72.
        ].
        recoveredBlock9Step = 72 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal1.
            recoveredBlock9PC := 75.
        ].
        recoveredBlock9Step = 75 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 78.
        ].
        recoveredBlock9Step = 78 ifTrue: [
            (recoveredBlock9Stack1) add: (recoveredBlock9Stack2).
            recoveredBlock9PC := 80.
        ].
        recoveredBlock9Step = 80 ifTrue: [
            recoveredBlock9Stack1 := contents.
            recoveredBlock9PC := 82.
        ].
        recoveredBlock9Step = 82 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 85 ifTrue: [
            recoveredBlock9Stack3 := #().
            recoveredBlock9PC := 87.
        ].
        recoveredBlock9Step = 87 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) at: (recoveredBlock9Stack2) put: (recoveredBlock9Stack3).
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 89 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

