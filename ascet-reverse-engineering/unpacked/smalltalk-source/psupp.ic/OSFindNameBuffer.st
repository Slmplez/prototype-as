"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200014a0; bytecode file offset 0x155d58"
!OSFindNameBuffer methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002564; bytecode file offset 0x155e38"
!OSFindNameBuffer methodsFor: 'recovered'!
accessControl
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20002788; bytecode file offset 0x1561c4"
!OSFindNameBuffer methodsFor: 'recovered'!
frameControl
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fdc4; bytecode file offset 0x165330"
!OSFindNameBuffer methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b88; bytecode file offset 0x16542c"
!OSFindNameBuffer methodsFor: 'recovered'!
accessControl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011f24; bytecode file offset 0x1657d4"
!OSFindNameBuffer methodsFor: 'recovered'!
frameControl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022048; bytecode file offset 0x1758e4"
!OSFindNameBuffer methodsFor: 'recovered'!
destinationAddr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (3) size: (6) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022188; bytecode file offset 0x175a24"
!OSFindNameBuffer methodsFor: 'recovered'!
sourceAddr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (9) size: (6) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022208; bytecode file offset 0x175aa4"
!OSFindNameBuffer methodsFor: 'recovered'!
routingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (15) size: (18) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200238e8; bytecode file offset 0x177180"
!OSFindNameBuffer methodsFor: 'recovered'!
destinationAddr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (3) put: (recoveredValue0) size: (6).
    ^self
! !

"psupp.ic method 0x20023a78; bytecode file offset 0x177310"
!OSFindNameBuffer methodsFor: 'recovered'!
sourceAddr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (9) put: (recoveredValue0) size: (6).
    ^self
! !

"psupp.ic method 0x20023ae8; bytecode file offset 0x177380"
!OSFindNameBuffer methodsFor: 'recovered'!
routingInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (15) put: (recoveredValue0) size: (18).
    ^self
! !

