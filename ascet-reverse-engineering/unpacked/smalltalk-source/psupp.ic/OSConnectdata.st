"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200031a0; bytecode file offset 0x157170"
!OSConnectdata methodsFor: 'recovered'!
dwCookie
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200112e8; bytecode file offset 0x165330"
!OSConnectdata methodsFor: 'recovered'!
pUnk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001295c; bytecode file offset 0x166e00"
!OSConnectdata methodsFor: 'recovered'!
dwCookie: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae10; bytecode file offset 0x16ea70"
!OSConnectdata methodsFor: 'recovered'!
pUnk
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIUnknown.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

