"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d40; bytecode file offset 0x155d58"
!OSRpcolemessage methodsFor: 'recovered'!
reserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200037f4; bytecode file offset 0x157170"
!OSRpcolemessage methodsFor: 'recovered'!
dataRepresentation
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004654; bytecode file offset 0x157f64"
!OSRpcolemessage methodsFor: 'recovered'!
Buffer
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d58; bytecode file offset 0x1589a4"
!OSRpcolemessage methodsFor: 'recovered'!
cbBuffer
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005354; bytecode file offset 0x159294"
!OSRpcolemessage methodsFor: 'recovered'!
iMethod
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20007324; bytecode file offset 0x15ad48"
!OSRpcolemessage methodsFor: 'recovered'!
rpcFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2001115c; bytecode file offset 0x165330"
!OSRpcolemessage methodsFor: 'recovered'!
reserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013244; bytecode file offset 0x166e00"
!OSRpcolemessage methodsFor: 'recovered'!
dataRepresentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001430c; bytecode file offset 0x1683c0"
!OSRpcolemessage methodsFor: 'recovered'!
Buffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154a0; bytecode file offset 0x169290"
!OSRpcolemessage methodsFor: 'recovered'!
cbBuffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016370; bytecode file offset 0x169eb4"
!OSRpcolemessage methodsFor: 'recovered'!
iMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200188c0; bytecode file offset 0x16c368"
!OSRpcolemessage methodsFor: 'recovered'!
rpcFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023b8c; bytecode file offset 0x177424"
!OSRpcolemessage methodsFor: 'recovered'!
reserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (20) put: (recoveredValue0) size: (5).
    ^self
! !

"psupp.ic method 0x20029fc4; bytecode file offset 0x17d868"
!OSRpcolemessage methodsFor: 'recovered'!
reserved2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := OSVoid.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

