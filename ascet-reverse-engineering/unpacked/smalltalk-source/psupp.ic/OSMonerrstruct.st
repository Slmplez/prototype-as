"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020e8; bytecode file offset 0x155d58"
!OSMonerrstruct methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b34; bytecode file offset 0x157170"
!OSMonerrstruct methodsFor: 'recovered'!
wLastError
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004228; bytecode file offset 0x157f64"
!OSMonerrstruct methodsFor: 'recovered'!
dwTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000f9f8; bytecode file offset 0x165330"
!OSMonerrstruct methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013370; bytecode file offset 0x166e00"
!OSMonerrstruct methodsFor: 'recovered'!
wLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141bc; bytecode file offset 0x1683c0"
!OSMonerrstruct methodsFor: 'recovered'!
dwTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d14; bytecode file offset 0x169290"
!OSMonerrstruct methodsFor: 'recovered'!
hTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c284; bytecode file offset 0x16fe44"
!OSMonerrstruct methodsFor: 'recovered'!
hTask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

