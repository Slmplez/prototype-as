"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020ac; bytecode file offset 0x155d58"
!OSFloatingSaveArea methodsFor: 'recovered'!
ControlWord
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003854; bytecode file offset 0x157170"
!OSFloatingSaveArea methodsFor: 'recovered'!
StatusWord
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004150; bytecode file offset 0x157f64"
!OSFloatingSaveArea methodsFor: 'recovered'!
TagWord
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200050a0; bytecode file offset 0x1589a4"
!OSFloatingSaveArea methodsFor: 'recovered'!
ErrorOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200054f8; bytecode file offset 0x159294"
!OSFloatingSaveArea methodsFor: 'recovered'!
ErrorSelector
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005fec; bytecode file offset 0x159974"
!OSFloatingSaveArea methodsFor: 'recovered'!
DataOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200061f8; bytecode file offset 0x159f34"
!OSFloatingSaveArea methodsFor: 'recovered'!
DataSelector
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b988; bytecode file offset 0x15f244"
!OSFloatingSaveArea methodsFor: 'recovered'!
Cr0NpxState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (108).
    ^recoveredValue0
! !

"psupp.ic method 0x20010088; bytecode file offset 0x165330"
!OSFloatingSaveArea methodsFor: 'recovered'!
ControlWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012da0; bytecode file offset 0x166e00"
!OSFloatingSaveArea methodsFor: 'recovered'!
StatusWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c58; bytecode file offset 0x1683c0"
!OSFloatingSaveArea methodsFor: 'recovered'!
TagWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200157b8; bytecode file offset 0x169290"
!OSFloatingSaveArea methodsFor: 'recovered'!
ErrorOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165c8; bytecode file offset 0x169eb4"
!OSFloatingSaveArea methodsFor: 'recovered'!
ErrorSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016bec; bytecode file offset 0x16a7b4"
!OSFloatingSaveArea methodsFor: 'recovered'!
DataOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001733c; bytecode file offset 0x16afe8"
!OSFloatingSaveArea methodsFor: 'recovered'!
DataSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200204cc; bytecode file offset 0x173d64"
!OSFloatingSaveArea methodsFor: 'recovered'!
Cr0NpxState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (108) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200256e4; bytecode file offset 0x178f7c"
!OSFloatingSaveArea methodsFor: 'recovered'!
RegisterArea: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (28) put: (recoveredValue0) size: (80).
    ^self
! !

"psupp.ic method 0x20027554; bytecode file offset 0x17adf0"
!OSFloatingSaveArea methodsFor: 'recovered'!
RegisterArea
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (28) size: (80) type: (recoveredValue0).
    ^recoveredValue1
! !

