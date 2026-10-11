"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201d26ec; bytecode file offset 0xacefc0"
!FamosError class methodsFor: 'recovered'!
createWrongFormat: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := ('wrong famos format [') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (']').
    (recoveredValue3) messageText: (recoveredValue6).
    (recoveredValue2) setMethodLocation: (1).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) monitor.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

