"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008638; bytecode file offset 0x15caa4"
!OSHconvlist methodsFor: 'recovered'!
ddeDisconnectList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DdeDisconnectList.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002273c; bytecode file offset 0x1760d0"
!OSHconvlist methodsFor: 'recovered'!
ddeQueryNextServer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHconv.
    recoveredValue1 := DdeQueryNextServer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) immediate: (recoveredValue3).
    ^recoveredValue4
! !

