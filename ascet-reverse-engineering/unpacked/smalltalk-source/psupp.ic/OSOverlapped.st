"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200015f0; bytecode file offset 0x155d58"
!OSOverlapped methodsFor: 'recovered'!
Internal
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003260; bytecode file offset 0x157170"
!OSOverlapped methodsFor: 'recovered'!
InternalHigh
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003da8; bytecode file offset 0x157f64"
!OSOverlapped methodsFor: 'recovered'!
Offset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004860; bytecode file offset 0x1589a4"
!OSOverlapped methodsFor: 'recovered'!
OffsetHigh
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fc08; bytecode file offset 0x165330"
!OSOverlapped methodsFor: 'recovered'!
Internal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200130ac; bytecode file offset 0x166e00"
!OSOverlapped methodsFor: 'recovered'!
InternalHigh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d60; bytecode file offset 0x1683c0"
!OSOverlapped methodsFor: 'recovered'!
Offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001523c; bytecode file offset 0x169290"
!OSOverlapped methodsFor: 'recovered'!
OffsetHigh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e60; bytecode file offset 0x169eb4"
!OSOverlapped methodsFor: 'recovered'!
hEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c844; bytecode file offset 0x170238"
!OSOverlapped methodsFor: 'recovered'!
hEvent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

