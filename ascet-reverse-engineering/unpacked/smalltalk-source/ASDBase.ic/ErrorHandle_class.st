"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2013a474; bytecode file offset 0xa36d3c"
!ErrorHandle class methodsFor: 'recovered'!
initErrorTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ERRORTABLE := recoveredValue1.
    recoveredValue2 := ERRORTABLE.
    recoveredValue3 := CSSystemError.
    (recoveredValue2) at: (999) put: (recoveredValue3).
    ^self
! !

