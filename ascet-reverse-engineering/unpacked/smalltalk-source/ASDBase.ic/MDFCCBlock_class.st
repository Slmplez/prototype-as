"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20072b60; bytecode file offset 0x96f6d4"
!MDFCCBlock class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x201abc4c; bytecode file offset 0xaa8510"
!MDFCCBlock class methodsFor: 'recovered'!
fromPointer: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) memcpyFrom: (0) to: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) uint16At: (2).
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := (recoveredValue4) memcpyFrom: (0) to: (recoveredValue7).
    recoveredValue9 := (self) reference: (recoveredValue8).
    ^recoveredValue9
! !

