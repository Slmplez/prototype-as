"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008588; bytecode file offset 0x15caa4"
!OSHddedata methodsFor: 'recovered'!
ddeFreeDataHandle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DdeFreeDataHandle.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009028; bytecode file offset 0x15caa4"
!OSHddedata methodsFor: 'recovered'!
ddeUnaccessData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DdeUnaccessData.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20022724; bytecode file offset 0x1760d0"
!OSHddedata methodsFor: 'recovered'!
ddeAccessData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := DdeAccessData.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) address: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200242f8; bytecode file offset 0x1781a4"
!OSHddedata methodsFor: 'recovered'!
ddeGetData: recoveredArg1 cbMax: recoveredArg2 cbOff: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DdeGetData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200294cc; bytecode file offset 0x17ce78"
!OSHddedata methodsFor: 'recovered'!
ddeAddData: recoveredArg1 cb: recoveredArg2 cbOff: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSHddedata.
    recoveredValue1 := DdeAddData.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) immediate: (recoveredValue5).
    ^recoveredValue6
! !

