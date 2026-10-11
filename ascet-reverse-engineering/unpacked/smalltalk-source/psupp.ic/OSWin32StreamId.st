"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000f6c; bytecode file offset 0x155d58"
!OSWin32StreamId methodsFor: 'recovered'!
dwStreamId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a80; bytecode file offset 0x157170"
!OSWin32StreamId methodsFor: 'recovered'!
dwStreamAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005618; bytecode file offset 0x159294"
!OSWin32StreamId methodsFor: 'recovered'!
dwStreamNameSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c148; bytecode file offset 0x15fa24"
!OSWin32StreamId methodsFor: 'recovered'!
cStreamName: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d8c8; bytecode file offset 0x161514"
!OSWin32StreamId methodsFor: 'recovered'!
Size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e1f8; bytecode file offset 0x161aa4"
!OSWin32StreamId methodsFor: 'recovered'!
cStreamName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fc2c; bytecode file offset 0x165330"
!OSWin32StreamId methodsFor: 'recovered'!
dwStreamId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128c0; bytecode file offset 0x166e00"
!OSWin32StreamId methodsFor: 'recovered'!
dwStreamAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a6c; bytecode file offset 0x1683c0"
!OSWin32StreamId methodsFor: 'recovered'!
Size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c08; bytecode file offset 0x169eb4"
!OSWin32StreamId methodsFor: 'recovered'!
dwStreamNameSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

