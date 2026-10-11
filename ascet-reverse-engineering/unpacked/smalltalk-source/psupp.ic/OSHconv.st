"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008208; bytecode file offset 0x15caa4"
!OSHconv methodsFor: 'recovered'!
ddeImpersonateClient
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DdeImpersonateClient.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008388; bytecode file offset 0x15caa4"
!OSHconv methodsFor: 'recovered'!
ddeDisconnect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DdeDisconnect.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2001a858; bytecode file offset 0x16e2c4"
!OSHconv methodsFor: 'recovered'!
ddeReconnect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHconv.
    recoveredValue1 := DdeReconnect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002084c; bytecode file offset 0x174df8"
!OSHconv methodsFor: 'recovered'!
ddeQueryConvInfo: recoveredArg1 pConvInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DdeQueryConvInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002096c; bytecode file offset 0x174df8"
!OSHconv methodsFor: 'recovered'!
ddeSetUserHandle: recoveredArg1 hUser: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DdeSetUserHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

