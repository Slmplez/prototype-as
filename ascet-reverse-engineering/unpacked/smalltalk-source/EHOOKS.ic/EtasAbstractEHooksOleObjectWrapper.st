"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20001604; bytecode file offset 0x10744"
!EtasAbstractEHooksOleObjectWrapper methodsFor: 'recovered'!
setProperty: recoveredArg1 withArg: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) propertyAt: (recoveredValue4) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

