"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201be92c; bytecode file offset 0xabb1f8"
!DBHashDictionary class methodsFor: 'recovered'!
client: recoveredArg1 with: recoveredArg2 size: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := (self) minimumSize.
    recoveredValue3 := (recoveredValue1) max: (recoveredValue2).
    recoveredValue4 := (self) basicNew: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) initialize.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) client: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) clientInfo: (recoveredValue10).
    ^recoveredValue5
! !

