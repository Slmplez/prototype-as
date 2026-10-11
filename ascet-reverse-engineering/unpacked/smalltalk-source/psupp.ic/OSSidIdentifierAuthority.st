"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20021f28; bytecode file offset 0x175804"
!OSSidIdentifierAuthority methodsFor: 'recovered'!
Value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (0) size: (6) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200237e8; bytecode file offset 0x177098"
!OSSidIdentifierAuthority methodsFor: 'recovered'!
Value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (6).
    ^self
! !

"psupp.ic method 0x20030348; bytecode file offset 0x183bf4"
!OSSidIdentifierAuthority methodsFor: 'recovered'!
allocateAndInitializeSid: recoveredArg1 nSubAuthority0: recoveredArg2 nSubAuthority1: recoveredArg3 nSubAuthority2: recoveredArg4 nSubAuthority3: recoveredArg5 nSubAuthority4: recoveredArg6 nSubAuthority5: recoveredArg7 nSubAuthority6: recoveredArg8 nSubAuthority7: recoveredArg9 pSid: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AllocateAndInitializeSid.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := recoveredArg8.
    recoveredValue9 := recoveredArg9.
    recoveredValue10 := recoveredArg10.
    recoveredValue11 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue10).
    ^recoveredValue11
! !

