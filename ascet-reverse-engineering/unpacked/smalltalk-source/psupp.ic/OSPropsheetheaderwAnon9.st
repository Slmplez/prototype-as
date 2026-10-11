"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000f9e0; bytecode file offset 0x165330"
!OSPropsheetheaderwAnon9 methodsFor: 'recovered'!
ppsp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011258; bytecode file offset 0x165330"
!OSPropsheetheaderwAnon9 methodsFor: 'recovered'!
phpage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b11c; bytecode file offset 0x16ea70"
!OSPropsheetheaderwAnon9 methodsFor: 'recovered'!
ppsp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSPropsheetpagew.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029ddc; bytecode file offset 0x17d6b0"
!OSPropsheetheaderwAnon9 methodsFor: 'recovered'!
phpage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := OSHpropsheetpage.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

