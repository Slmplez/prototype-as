"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20031fc4; bytecode file offset 0x934580"
!OSMemorystatus class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200af7ac; bytecode file offset 0x9ac068"
!OSMemorystatus class methodsFor: 'recovered'!
globalMemoryStatus
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) globalMemoryStatus.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cab58; bytecode file offset 0x9c7418"
!OSMemorystatus class methodsFor: 'recovered'!
getFreeRam
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) globalMemoryStatus.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) dwAvailPhys.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cb494; bytecode file offset 0x9c7d54"
!OSMemorystatus class methodsFor: 'recovered'!
getFreeMemory
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    (recoveredValue1) globalMemoryStatus.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (recoveredValue2) getFreeMemory.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2024256c; bytecode file offset 0xb3ee48"
!OSMemorystatus class methodsFor: 'recovered'!
calculateCacheSizeLimit
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    (recoveredValue0) globalMemoryStatus.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) dwTotalPhys.
    recoveredValue4 := (recoveredValue3) min: (2000000000).
    recoveredValue5 := (recoveredValue4) / (65536).
    recoveredValue6 := (recoveredValue5) asInteger.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) getFreeMemory.
    recoveredValue9 := (recoveredValue8) min: (2000000000).
    recoveredValue10 := (recoveredValue9) / (32768).
    recoveredValue11 := (recoveredValue10) asInteger.
    recoveredValue12 := (recoveredValue6) + (recoveredValue11).
    ^recoveredValue12
! !

