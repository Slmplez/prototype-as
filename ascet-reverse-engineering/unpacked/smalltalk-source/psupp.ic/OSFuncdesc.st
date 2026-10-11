"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000147c; bytecode file offset 0x155d58"
!OSFuncdesc methodsFor: 'recovered'!
memid
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e6c; bytecode file offset 0x1589a4"
!OSFuncdesc methodsFor: 'recovered'!
funckind
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200058f4; bytecode file offset 0x159294"
!OSFuncdesc methodsFor: 'recovered'!
invkind
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x200060dc; bytecode file offset 0x159974"
!OSFuncdesc methodsFor: 'recovered'!
callconv
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006540; bytecode file offset 0x159f34"
!OSFuncdesc methodsFor: 'recovered'!
cParams
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006760; bytecode file offset 0x15a004"
!OSFuncdesc methodsFor: 'recovered'!
cParamsOpt
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (26).
    ^recoveredValue0
! !

"psupp.ic method 0x20006af4; bytecode file offset 0x15a428"
!OSFuncdesc methodsFor: 'recovered'!
oVft
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ba4; bytecode file offset 0x15a46c"
!OSFuncdesc methodsFor: 'recovered'!
cScodes
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (30).
    ^recoveredValue0
! !

"psupp.ic method 0x200078f0; bytecode file offset 0x15b29c"
!OSFuncdesc methodsFor: 'recovered'!
wFuncFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e4d0; bytecode file offset 0x161e0c"
!OSFuncdesc methodsFor: 'recovered'!
elemdescFunc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSElemdesc.
    recoveredValue1 := (self) structAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010c70; bytecode file offset 0x165330"
!OSFuncdesc methodsFor: 'recovered'!
memid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012bb4; bytecode file offset 0x166e00"
!OSFuncdesc methodsFor: 'recovered'!
lprgscode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200144f8; bytecode file offset 0x1683c0"
!OSFuncdesc methodsFor: 'recovered'!
lprgelemdescParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e64; bytecode file offset 0x169290"
!OSFuncdesc methodsFor: 'recovered'!
funckind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016220; bytecode file offset 0x169eb4"
!OSFuncdesc methodsFor: 'recovered'!
invkind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c4c; bytecode file offset 0x16a7b4"
!OSFuncdesc methodsFor: 'recovered'!
callconv: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200175ac; bytecode file offset 0x16afe8"
!OSFuncdesc methodsFor: 'recovered'!
cParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200177bc; bytecode file offset 0x16b0cc"
!OSFuncdesc methodsFor: 'recovered'!
cParamsOpt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (26) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b40; bytecode file offset 0x16b690"
!OSFuncdesc methodsFor: 'recovered'!
oVft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017e1c; bytecode file offset 0x16b6d8"
!OSFuncdesc methodsFor: 'recovered'!
cScodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (30) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ee8; bytecode file offset 0x16bb70"
!OSFuncdesc methodsFor: 'recovered'!
elemdescFunc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018fa4; bytecode file offset 0x16c9d4"
!OSFuncdesc methodsFor: 'recovered'!
wFuncFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b204; bytecode file offset 0x16f1fc"
!OSFuncdesc methodsFor: 'recovered'!
lprgscode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bb5c; bytecode file offset 0x16f8e8"
!OSFuncdesc methodsFor: 'recovered'!
lprgelemdescParam
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSElemdesc.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

