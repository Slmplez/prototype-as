"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002ad0; bytecode file offset 0x7ed00"
!CwOSInterchangeData methodsFor: 'recovered'!
dataRef
    | recoveredValue0 |
    recoveredValue0 := dataRef.
    ^recoveredValue0
! !

"winsys.ic method 0x20007294; bytecode file offset 0x8346c"
!CwOSInterchangeData methodsFor: 'recovered'!
dataRef: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataRef := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b854; bytecode file offset 0x87a20"
!CwOSInterchangeData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('DATAREF=').
    recoveredValue2 := dataRef.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

