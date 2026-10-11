"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002070; bytecode file offset 0x155d58"
!OSArrayInfo methodsFor: 'recovered'!
Dimension
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010f4c; bytecode file offset 0x165330"
!OSArrayInfo methodsFor: 'recovered'!
Dimension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001292c; bytecode file offset 0x166e00"
!OSArrayInfo methodsFor: 'recovered'!
BufferConformanceMark: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001457c; bytecode file offset 0x1683c0"
!OSArrayInfo methodsFor: 'recovered'!
BufferVarianceMark: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015878; bytecode file offset 0x169290"
!OSArrayInfo methodsFor: 'recovered'!
MaxCountArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001622c; bytecode file offset 0x169eb4"
!OSArrayInfo methodsFor: 'recovered'!
OffsetArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016df0; bytecode file offset 0x16a7b4"
!OSArrayInfo methodsFor: 'recovered'!
ActualCountArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b524; bytecode file offset 0x16f1fc"
!OSArrayInfo methodsFor: 'recovered'!
BufferConformanceMark
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c020; bytecode file offset 0x16f8e8"
!OSArrayInfo methodsFor: 'recovered'!
BufferVarianceMark
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c34c; bytecode file offset 0x16fe44"
!OSArrayInfo methodsFor: 'recovered'!
MaxCountArray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c5c4; bytecode file offset 0x170238"
!OSArrayInfo methodsFor: 'recovered'!
OffsetArray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ca30; bytecode file offset 0x17049c"
!OSArrayInfo methodsFor: 'recovered'!
ActualCountArray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

