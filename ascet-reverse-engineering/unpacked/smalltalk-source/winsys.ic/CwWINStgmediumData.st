"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002d18; bytecode file offset 0x7efc0"
!CwWINStgmediumData methodsFor: 'recovered'!
tymed
    | recoveredValue0 |
    recoveredValue0 := tymed.
    ^recoveredValue0
! !

"winsys.ic method 0x20002ea8; bytecode file offset 0x7f220"
!CwWINStgmediumData methodsFor: 'recovered'!
iDataObject
    | recoveredValue0 |
    recoveredValue0 := iDataObject.
    ^recoveredValue0
! !

"winsys.ic method 0x20007364; bytecode file offset 0x836b4"
!CwWINStgmediumData methodsFor: 'recovered'!
tymed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tymed := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200076b4; bytecode file offset 0x838d4"
!CwWINStgmediumData methodsFor: 'recovered'!
iDataObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iDataObject := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20015e14; bytecode file offset 0x91fec"
!CwWINStgmediumData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('{').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := tymed.
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPutAll: ('}').
    ^self
! !

