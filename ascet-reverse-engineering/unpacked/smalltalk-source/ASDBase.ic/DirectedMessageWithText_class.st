"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20139000; bytecode file offset 0xa358c4"
!DirectedMessageWithText class methodsFor: 'recovered'!
selector: recoveredArg1 receiver: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super selector: (recoveredValue0) receiver: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) text: ('').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201fc9b4; bytecode file offset 0xaf9278"
!DirectedMessageWithText class methodsFor: 'recovered'!
selector: recoveredArg1 arguments: recoveredArg2 receiver: recoveredArg3 text: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super selector: (recoveredValue0) arguments: (recoveredValue1) receiver: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) copyEtasNlsStringWithout: ($~).
    recoveredValue6 := (recoveredValue5) copyEtasNlsStringWithout: ($&).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) text: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

