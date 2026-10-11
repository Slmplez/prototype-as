"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000231c; bytecode file offset 0x155d58"
!OSDdemlMsgHookData methodsFor: 'recovered'!
uiLo
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200037dc; bytecode file offset 0x157170"
!OSDdemlMsgHookData methodsFor: 'recovered'!
uiHi
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004174; bytecode file offset 0x157f64"
!OSDdemlMsgHookData methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20011624; bytecode file offset 0x165330"
!OSDdemlMsgHookData methodsFor: 'recovered'!
uiLo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d40; bytecode file offset 0x166e00"
!OSDdemlMsgHookData methodsFor: 'recovered'!
uiHi: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013790; bytecode file offset 0x1683c0"
!OSDdemlMsgHookData methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200221e8; bytecode file offset 0x175a84"
!OSDdemlMsgHookData methodsFor: 'recovered'!
Data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (12) size: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023acc; bytecode file offset 0x177364"
!OSDdemlMsgHookData methodsFor: 'recovered'!
Data: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (12) put: (recoveredValue0) size: (8).
    ^self
! !

