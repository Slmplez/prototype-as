"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000320; bytecode file offset 0x6147c"
!SstLoadingWrapper methodsFor: 'recovered'!
sstMarshalingValue
    ^self
! !

"xxx_dyn.ic method 0x20004630; bytecode file offset 0x6592c"
!SstLoadingWrapper methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x20007ed8; bytecode file offset 0x69104"
!SstLoadingWrapper methodsFor: 'recovered'!
contentsClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    class := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200174a0; bytecode file offset 0x78580"
!SstLoadingWrapper methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: ('(class=').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := class.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) nextPutAll: (', contents=').
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := contents.
    recoveredValue10 := (recoveredValue9) sstPrintString.
    (recoveredValue8) nextPutAll: (recoveredValue10).
    (recoveredValue0) nextPut: ($)).
    ^self
! !

