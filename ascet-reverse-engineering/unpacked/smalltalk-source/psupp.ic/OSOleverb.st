"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001644; bytecode file offset 0x155d58"
!OSOleverb methodsFor: 'recovered'!
lVerb
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003e80; bytecode file offset 0x157f64"
!OSOleverb methodsFor: 'recovered'!
fuFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004968; bytecode file offset 0x1589a4"
!OSOleverb methodsFor: 'recovered'!
grfAttribs
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20010280; bytecode file offset 0x165330"
!OSOleverb methodsFor: 'recovered'!
lVerb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012560; bytecode file offset 0x166e00"
!OSOleverb methodsFor: 'recovered'!
lpszVerbName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c70; bytecode file offset 0x1683c0"
!OSOleverb methodsFor: 'recovered'!
fuFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f18; bytecode file offset 0x169290"
!OSOleverb methodsFor: 'recovered'!
grfAttribs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b2e0; bytecode file offset 0x16f1fc"
!OSOleverb methodsFor: 'recovered'!
lpszVerbName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

