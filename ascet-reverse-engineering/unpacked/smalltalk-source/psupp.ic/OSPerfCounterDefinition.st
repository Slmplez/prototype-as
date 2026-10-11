"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001614; bytecode file offset 0x155d58"
!OSPerfCounterDefinition methodsFor: 'recovered'!
ByteLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002bc4; bytecode file offset 0x157170"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterNameTitleIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004f08; bytecode file offset 0x1589a4"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterHelpTitleIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005d64; bytecode file offset 0x159974"
!OSPerfCounterDefinition methodsFor: 'recovered'!
DefaultScale
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006510; bytecode file offset 0x159f34"
!OSPerfCounterDefinition methodsFor: 'recovered'!
DetailLevel
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b18; bytecode file offset 0x15a428"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c48; bytecode file offset 0x15a780"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007068; bytecode file offset 0x15aa74"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000f9b0; bytecode file offset 0x165330"
!OSPerfCounterDefinition methodsFor: 'recovered'!
ByteLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001283c; bytecode file offset 0x166e00"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterNameTitleIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013820; bytecode file offset 0x1683c0"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterNameTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015284; bytecode file offset 0x169290"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterHelpTitleIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e48; bytecode file offset 0x169eb4"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterHelpTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200169a0; bytecode file offset 0x16a7b4"
!OSPerfCounterDefinition methodsFor: 'recovered'!
DefaultScale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200173a8; bytecode file offset 0x16afe8"
!OSPerfCounterDefinition methodsFor: 'recovered'!
DetailLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c0c; bytecode file offset 0x16b690"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017f18; bytecode file offset 0x16bb70"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200184a0; bytecode file offset 0x16bff0"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bc9c; bytecode file offset 0x16f8e8"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterNameTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c948; bytecode file offset 0x170238"
!OSPerfCounterDefinition methodsFor: 'recovered'!
CounterHelpTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

