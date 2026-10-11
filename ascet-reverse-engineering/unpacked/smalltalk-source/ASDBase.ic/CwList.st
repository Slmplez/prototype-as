"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057908; bytecode file offset 0x956284"
!CwList methodsFor: 'recovered'!
wbIndexOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) indexOf: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7de0; bytecode file offset 0x9b46dc"
!CwList methodsFor: 'recovered'!
wbAddSortedItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    (self) wbAddAllSortedItems: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fc5cc; bytecode file offset 0x9f8ea8"
!CwList methodsFor: 'recovered'!
wbAddAllSortedItems: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addAll: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) asSortedCollection.
    (self) items: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201616a4; bytecode file offset 0xa5df64"
!CwList methodsFor: 'recovered'!
wbReselectItem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedItems.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) selectItem: (recoveredBlock5Value0) notify: (true).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

