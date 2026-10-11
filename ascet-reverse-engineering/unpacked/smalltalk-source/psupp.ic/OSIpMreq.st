"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cec0; bytecode file offset 0x160b8c"
!OSIpMreq methodsFor: 'recovered'!
imrMultiaddr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSInAddr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d5c4; bytecode file offset 0x160f90"
!OSIpMreq methodsFor: 'recovered'!
imrInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSInAddr.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010100; bytecode file offset 0x165330"
!OSIpMreq methodsFor: 'recovered'!
imrMultiaddr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d70; bytecode file offset 0x166e00"
!OSIpMreq methodsFor: 'recovered'!
imrInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

