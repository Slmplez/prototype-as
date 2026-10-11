"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200023dc; bytecode file offset 0x155d58"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002704; bytecode file offset 0x1561c4"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
CreatorBackTraceIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20005744; bytecode file offset 0x159294"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
EntryCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005da0; bytecode file offset 0x159974"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
ContentionCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d8a8; bytecode file offset 0x161514"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
ProcessLocksList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSListEntry.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200106f4; bytecode file offset 0x165330"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e58; bytecode file offset 0x1657d4"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
CreatorBackTraceIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012158; bytecode file offset 0x166e00"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
CriticalSection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200147bc; bytecode file offset 0x1683c0"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
ProcessLocksList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016598; bytecode file offset 0x169eb4"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
EntryCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ac0; bytecode file offset 0x16a7b4"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
ContentionCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b6b4; bytecode file offset 0x16f1fc"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
CriticalSection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRtlCriticalSection.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200222e8; bytecode file offset 0x175b84"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
Spare
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (24) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023be0; bytecode file offset 0x177490"
!OSRtlCriticalSectionDebug methodsFor: 'recovered'!
Spare: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (24) put: (recoveredValue0) size: (2).
    ^self
! !

