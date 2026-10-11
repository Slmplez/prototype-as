"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000b00; bytecode file offset 0x4ba40"
!EsAsyncMessageQueue methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"kernel.ic method 0x20001024; bytecode file offset 0x4bf58"
!EsAsyncMessageQueue methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"kernel.ic method 0x2000af80; bytecode file offset 0x55e90"
!EsAsyncMessageQueue methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    head := 0.
    tail := 0.
    recoveredValue0 := (self) size.
    free := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000ffbc; bytecode file offset 0x5aee0"
!EsAsyncMessageQueue methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := head.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := tail.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := free.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('%1 (head = %2 tail = %3 free = %4)') bindWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    (recoveredValue0) nextPutAll: (recoveredValue9).
    ^self
! !

