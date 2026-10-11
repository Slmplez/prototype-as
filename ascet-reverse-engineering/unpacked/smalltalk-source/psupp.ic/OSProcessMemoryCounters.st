"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001aac; bytecode file offset 0x155d58"
!OSProcessMemoryCounters methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003458; bytecode file offset 0x157170"
!OSProcessMemoryCounters methodsFor: 'recovered'!
pageFaultCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003e5c; bytecode file offset 0x157f64"
!OSProcessMemoryCounters methodsFor: 'recovered'!
peakWorkingSetSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004f98; bytecode file offset 0x1589a4"
!OSProcessMemoryCounters methodsFor: 'recovered'!
workingSetSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200058a0; bytecode file offset 0x159294"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaPeakPagedPoolUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b18; bytecode file offset 0x159974"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaPagedPoolUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006318; bytecode file offset 0x159f34"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaPeakNonPagedPoolUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200067b8; bytecode file offset 0x15a428"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaNonPagedPoolUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006e64; bytecode file offset 0x15a780"
!OSProcessMemoryCounters methodsFor: 'recovered'!
pagefileUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006f6c; bytecode file offset 0x15aa74"
!OSProcessMemoryCounters methodsFor: 'recovered'!
peakPagefileUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c970; bytecode file offset 0x160210"
!OSProcessMemoryCounters methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    (self) cb: (recoveredValue1).
    ^self
! !

"psupp.ic method 0x2001064c; bytecode file offset 0x165330"
!OSProcessMemoryCounters methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012218; bytecode file offset 0x166e00"
!OSProcessMemoryCounters methodsFor: 'recovered'!
pageFaultCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ca0; bytecode file offset 0x1683c0"
!OSProcessMemoryCounters methodsFor: 'recovered'!
peakWorkingSetSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200159bc; bytecode file offset 0x169290"
!OSProcessMemoryCounters methodsFor: 'recovered'!
workingSetSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ec0; bytecode file offset 0x169eb4"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaPeakPagedPoolUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c7c; bytecode file offset 0x16a7b4"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaPagedPoolUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001742c; bytecode file offset 0x16afe8"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaPeakNonPagedPoolUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d5c; bytecode file offset 0x16b690"
!OSProcessMemoryCounters methodsFor: 'recovered'!
quotaNonPagedPoolUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018248; bytecode file offset 0x16bb70"
!OSProcessMemoryCounters methodsFor: 'recovered'!
pagefileUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018620; bytecode file offset 0x16bff0"
!OSProcessMemoryCounters methodsFor: 'recovered'!
peakPagefileUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

