"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001350; bytecode file offset 0x155d58"
!OSTbbutton methodsFor: 'recovered'!
iBitmap
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200038c0; bytecode file offset 0x157170"
!OSTbbutton methodsFor: 'recovered'!
idCommand
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ee0; bytecode file offset 0x157f64"
!OSTbbutton methodsFor: 'recovered'!
fsState
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200046e0; bytecode file offset 0x157fa8"
!OSTbbutton methodsFor: 'recovered'!
fsStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (9).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e54; bytecode file offset 0x1589a4"
!OSTbbutton methodsFor: 'recovered'!
dwData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005378; bytecode file offset 0x159294"
!OSTbbutton methodsFor: 'recovered'!
iString
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fb48; bytecode file offset 0x165330"
!OSTbbutton methodsFor: 'recovered'!
iBitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b9c; bytecode file offset 0x166e00"
!OSTbbutton methodsFor: 'recovered'!
idCommand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014648; bytecode file offset 0x1683c0"
!OSTbbutton methodsFor: 'recovered'!
fsState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014b40; bytecode file offset 0x168414"
!OSTbbutton methodsFor: 'recovered'!
fsStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (9) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015134; bytecode file offset 0x169290"
!OSTbbutton methodsFor: 'recovered'!
dwData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001640c; bytecode file offset 0x169eb4"
!OSTbbutton methodsFor: 'recovered'!
iString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200221a8; bytecode file offset 0x175a44"
!OSTbbutton methodsFor: 'recovered'!
bReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (10) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023a94; bytecode file offset 0x17732c"
!OSTbbutton methodsFor: 'recovered'!
bReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (10) put: (recoveredValue0) size: (2).
    ^self
! !

