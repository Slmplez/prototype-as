"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001398; bytecode file offset 0x155d58"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
mm
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002dc8; bytecode file offset 0x157170"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
xExt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003bd4; bytecode file offset 0x157f64"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
yExt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004de8; bytecode file offset 0x1589a4"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e01c; bytecode file offset 0x161938"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001160c; bytecode file offset 0x165330"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
mm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200124c4; bytecode file offset 0x166e00"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
xExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a08; bytecode file offset 0x1683c0"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
yExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200155cc; bytecode file offset 0x169290"
!OSRemHMETAFILEPICT methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

