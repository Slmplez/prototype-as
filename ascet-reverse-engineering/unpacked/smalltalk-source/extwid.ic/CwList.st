"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200012c8; bytecode file offset 0x52154"
!CwList methodsFor: 'recovered'!
dragDropFontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontList.
    recoveredValue1 := (recoveredValue0) fontStruct.
    ^recoveredValue1
! !

"extwid.ic method 0x20010470; bytecode file offset 0x6126c"
!CwList methodsFor: 'recovered'!
createSourceAdapter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EwBlockSourceAdapter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) widget: (self).
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := (self) selectedItems.
    recoveredBlock11Value1 := (recoveredBlock11Value0) copy.
    recoveredBlock11Value1
].
    recoveredValue4 := (recoveredValue1) sourceItemsBlock: (recoveredValue3).
    ^recoveredValue4
! !

