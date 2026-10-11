"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002304; bytecode file offset 0x155d58"
!OSKerningpair methodsFor: 'recovered'!
wFirst
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002818; bytecode file offset 0x1561c4"
!OSKerningpair methodsFor: 'recovered'!
wSecond
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000389c; bytecode file offset 0x157170"
!OSKerningpair methodsFor: 'recovered'!
iKernAmount
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fed8; bytecode file offset 0x165330"
!OSKerningpair methodsFor: 'recovered'!
wFirst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e94; bytecode file offset 0x1657d4"
!OSKerningpair methodsFor: 'recovered'!
wSecond: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001286c; bytecode file offset 0x166e00"
!OSKerningpair methodsFor: 'recovered'!
iKernAmount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

