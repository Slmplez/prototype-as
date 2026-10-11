"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c25a0; bytecode file offset 0x9bf474"
!MapSymbolMPC555 methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    size := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2033b1b8; bytecode file offset 0xc37ac4"
!MapSymbolMPC555 methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($a).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('name    : ').
    recoveredValue7 := name.
    (recoveredValue4) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) cr.
    (recoveredValue8) nextPutAll: ('address   : ').
    recoveredValue10 := value.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) printOn: (recoveredValue11) base: (16).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredValue12.
    (recoveredValue13) cr.
    (recoveredValue12) nextPutAll: ('size    : ').
    recoveredValue14 := size.
    recoveredValue15 := recoveredArg1.
    (recoveredValue14) printOn: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) cr.
    ^self
! !

