"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002ac8; bytecode file offset 0x157170"
!OSRtlCriticalSection methodsFor: 'recovered'!
LockCount
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003b2c; bytecode file offset 0x157f64"
!OSRtlCriticalSection methodsFor: 'recovered'!
RecursionCount
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005cbc; bytecode file offset 0x159974"
!OSRtlCriticalSection methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20008238; bytecode file offset 0x15caa4"
!OSRtlCriticalSection methodsFor: 'recovered'!
enterCriticalSection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EnterCriticalSection.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008528; bytecode file offset 0x15caa4"
!OSRtlCriticalSection methodsFor: 'recovered'!
deleteCriticalSection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DeleteCriticalSection.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200086c8; bytecode file offset 0x15caa4"
!OSRtlCriticalSection methodsFor: 'recovered'!
leaveCriticalSection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LeaveCriticalSection.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008c08; bytecode file offset 0x15caa4"
!OSRtlCriticalSection methodsFor: 'recovered'!
initializeCriticalSection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := InitializeCriticalSection.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fbd8; bytecode file offset 0x165330"
!OSRtlCriticalSection methodsFor: 'recovered'!
DebugInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012cf8; bytecode file offset 0x166e00"
!OSRtlCriticalSection methodsFor: 'recovered'!
LockCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a84; bytecode file offset 0x1683c0"
!OSRtlCriticalSection methodsFor: 'recovered'!
RecursionCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200157d0; bytecode file offset 0x169290"
!OSRtlCriticalSection methodsFor: 'recovered'!
OwningThread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e9c; bytecode file offset 0x169eb4"
!OSRtlCriticalSection methodsFor: 'recovered'!
LockSemaphore: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001673c; bytecode file offset 0x16a7b4"
!OSRtlCriticalSection methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aeb0; bytecode file offset 0x16ea70"
!OSRtlCriticalSection methodsFor: 'recovered'!
DebugInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRtlCriticalSectionDebug.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c0f4; bytecode file offset 0x16fe44"
!OSRtlCriticalSection methodsFor: 'recovered'!
OwningThread
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c7f4; bytecode file offset 0x170238"
!OSRtlCriticalSection methodsFor: 'recovered'!
LockSemaphore
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

