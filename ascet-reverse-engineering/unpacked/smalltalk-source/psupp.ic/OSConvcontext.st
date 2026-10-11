"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000ffc; bytecode file offset 0x155d58"
!OSConvcontext methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200033b0; bytecode file offset 0x157170"
!OSConvcontext methodsFor: 'recovered'!
wFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003eb0; bytecode file offset 0x157f64"
!OSConvcontext methodsFor: 'recovered'!
wCountryID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004f2c; bytecode file offset 0x1589a4"
!OSConvcontext methodsFor: 'recovered'!
iCodePage
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005588; bytecode file offset 0x159294"
!OSConvcontext methodsFor: 'recovered'!
dwLangID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005fc8; bytecode file offset 0x159974"
!OSConvcontext methodsFor: 'recovered'!
dwSecurity
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e274; bytecode file offset 0x161c00"
!OSConvcontext methodsFor: 'recovered'!
qos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSecurityQualityOfService.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010bb0; bytecode file offset 0x165330"
!OSConvcontext methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f50; bytecode file offset 0x166e00"
!OSConvcontext methodsFor: 'recovered'!
wFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014354; bytecode file offset 0x1683c0"
!OSConvcontext methodsFor: 'recovered'!
wCountryID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015500; bytecode file offset 0x169290"
!OSConvcontext methodsFor: 'recovered'!
iCodePage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d4c; bytecode file offset 0x169eb4"
!OSConvcontext methodsFor: 'recovered'!
dwLangID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001679c; bytecode file offset 0x16a7b4"
!OSConvcontext methodsFor: 'recovered'!
dwSecurity: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017654; bytecode file offset 0x16afe8"
!OSConvcontext methodsFor: 'recovered'!
qos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

