"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e00; bytecode file offset 0x155d58"
!OSMonconvstruct methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d54; bytecode file offset 0x157f64"
!OSMonconvstruct methodsFor: 'recovered'!
dwTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d758; bytecode file offset 0x161038"
!OSMonconvstruct methodsFor: 'recovered'!
fConnect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011168; bytecode file offset 0x165330"
!OSMonconvstruct methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013148; bytecode file offset 0x166e00"
!OSMonconvstruct methodsFor: 'recovered'!
fConnect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013bbc; bytecode file offset 0x1683c0"
!OSMonconvstruct methodsFor: 'recovered'!
dwTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015668; bytecode file offset 0x169290"
!OSMonconvstruct methodsFor: 'recovered'!
hTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016010; bytecode file offset 0x169eb4"
!OSMonconvstruct methodsFor: 'recovered'!
hszSvc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ec8; bytecode file offset 0x16a7b4"
!OSMonconvstruct methodsFor: 'recovered'!
hszTopic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017480; bytecode file offset 0x16afe8"
!OSMonconvstruct methodsFor: 'recovered'!
hConvClient: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c24; bytecode file offset 0x16b690"
!OSMonconvstruct methodsFor: 'recovered'!
hConvServer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c2d4; bytecode file offset 0x16fe44"
!OSMonconvstruct methodsFor: 'recovered'!
hTask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c894; bytecode file offset 0x170238"
!OSMonconvstruct methodsFor: 'recovered'!
hszSvc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001caa8; bytecode file offset 0x17049c"
!OSMonconvstruct methodsFor: 'recovered'!
hszTopic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cdfc; bytecode file offset 0x170728"
!OSMonconvstruct methodsFor: 'recovered'!
hConvClient
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHconv.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cfa4; bytecode file offset 0x170948"
!OSMonconvstruct methodsFor: 'recovered'!
hConvServer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHconv.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

