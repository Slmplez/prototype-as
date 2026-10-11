"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20078e5c; bytecode file offset 0x9757c8"
!CwObjectList methodsFor: 'recovered'!
isList
    ^true
! !

"ASDBase.ic method 0x200e058c; bytecode file offset 0x9dce70"
!CwObjectList methodsFor: 'recovered'!
selectFirstItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) items.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) selectedItems: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e05a8; bytecode file offset 0x9dce70"
!CwObjectList methodsFor: 'recovered'!
selectLastItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) items.
    recoveredValue2 := (recoveredValue1) last.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) selectedItems: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201542c8; bytecode file offset 0xa50b84"
!CwObjectList methodsFor: 'recovered'!
selectedItemsWithNotify: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) selectItem: (recoveredBlock5Value0) notify: (true).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

