"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ed8; bytecode file offset 0x155d58"
!OSMetafilepict methodsFor: 'recovered'!
mm
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003788; bytecode file offset 0x157170"
!OSMetafilepict methodsFor: 'recovered'!
xExt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200045c4; bytecode file offset 0x157f64"
!OSMetafilepict methodsFor: 'recovered'!
yExt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010214; bytecode file offset 0x165330"
!OSMetafilepict methodsFor: 'recovered'!
mm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012188; bytecode file offset 0x166e00"
!OSMetafilepict methodsFor: 'recovered'!
xExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001436c; bytecode file offset 0x1683c0"
!OSMetafilepict methodsFor: 'recovered'!
yExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015050; bytecode file offset 0x169290"
!OSMetafilepict methodsFor: 'recovered'!
hMF: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c360; bytecode file offset 0x16fe44"
!OSMetafilepict methodsFor: 'recovered'!
hMF
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmetafile.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

