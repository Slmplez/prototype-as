"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200018b4; bytecode file offset 0x155d58"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200034a0; bytecode file offset 0x157170"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ea8; bytecode file offset 0x1589a4"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200056f0; bytecode file offset 0x159294"
!OSExceptionRecord methodsFor: 'recovered'!
NumberParameters
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20011570; bytecode file offset 0x165330"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125d8; bytecode file offset 0x166e00"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200149d8; bytecode file offset 0x1683c0"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionRecord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d74; bytecode file offset 0x169290"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001631c; bytecode file offset 0x169eb4"
!OSExceptionRecord methodsFor: 'recovered'!
NumberParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bc88; bytecode file offset 0x16f8e8"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSExceptionRecord.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200222b8; bytecode file offset 0x175b54"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (20) size: (15) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023ba8; bytecode file offset 0x177440"
!OSExceptionRecord methodsFor: 'recovered'!
ExceptionInformation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (20) put: (recoveredValue0) size: (15).
    ^self
! !

