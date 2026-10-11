"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002058; bytecode file offset 0x155d58"
!OSRemHGLOBAL methodsFor: 'recovered'!
fNullHGlobal
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200032f0; bytecode file offset 0x157170"
!OSRemHGLOBAL methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d8d8; bytecode file offset 0x161514"
!OSRemHGLOBAL methodsFor: 'recovered'!
data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200110f0; bytecode file offset 0x165330"
!OSRemHGLOBAL methodsFor: 'recovered'!
fNullHGlobal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012398; bytecode file offset 0x166e00"
!OSRemHGLOBAL methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

