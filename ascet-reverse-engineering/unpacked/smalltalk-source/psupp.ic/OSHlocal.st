"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200084e8; bytecode file offset 0x15caa4"
!OSHlocal methodsFor: 'recovered'!
localFlags
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LocalFlags.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008798; bytecode file offset 0x15caa4"
!OSHlocal methodsFor: 'recovered'!
localSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LocalSize.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008db8; bytecode file offset 0x15caa4"
!OSHlocal methodsFor: 'recovered'!
localUnlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LocalUnlock.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009088; bytecode file offset 0x15caa4"
!OSHlocal methodsFor: 'recovered'!
localLock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LocalLock.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ef2c; bytecode file offset 0x163098"
!OSHlocal methodsFor: 'recovered'!
localShrink: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LocalShrink.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001a7e0; bytecode file offset 0x16e2c4"
!OSHlocal methodsFor: 'recovered'!
localFree
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHlocal.
    recoveredValue1 := LocalFree.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20027c9c; bytecode file offset 0x17b888"
!OSHlocal methodsFor: 'recovered'!
localReAlloc: recoveredArg1 fuFlags: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHlocal.
    recoveredValue1 := LocalReAlloc.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

