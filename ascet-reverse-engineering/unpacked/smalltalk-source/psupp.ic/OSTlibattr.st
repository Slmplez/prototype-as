"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005840; bytecode file offset 0x159294"
!OSTlibattr methodsFor: 'recovered'!
lcid
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005dc4; bytecode file offset 0x159974"
!OSTlibattr methodsFor: 'recovered'!
syskind
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000654c; bytecode file offset 0x159f34"
!OSTlibattr methodsFor: 'recovered'!
wMajorVerNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000676c; bytecode file offset 0x15a004"
!OSTlibattr methodsFor: 'recovered'!
wMinorVerNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (26).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a94; bytecode file offset 0x15a428"
!OSTlibattr methodsFor: 'recovered'!
wLibFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cbb0; bytecode file offset 0x160b8c"
!OSTlibattr methodsFor: 'recovered'!
guid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSGuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200118c4; bytecode file offset 0x165330"
!OSTlibattr methodsFor: 'recovered'!
guid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c44; bytecode file offset 0x169eb4"
!OSTlibattr methodsFor: 'recovered'!
lcid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016934; bytecode file offset 0x16a7b4"
!OSTlibattr methodsFor: 'recovered'!
syskind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200173fc; bytecode file offset 0x16afe8"
!OSTlibattr methodsFor: 'recovered'!
wMajorVerNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200177b0; bytecode file offset 0x16b0cc"
!OSTlibattr methodsFor: 'recovered'!
wMinorVerNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (26) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017dc8; bytecode file offset 0x16b690"
!OSTlibattr methodsFor: 'recovered'!
wLibFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (28) put: (recoveredValue0).
    ^self
! !

