"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021224; bytecode file offset 0x92209c"
!EtasVMStats class methodsFor: 'recovered'!
members
    ^#('cacheHits' 'cacheMisses' 'millisecondGlobalGCTime' 'millisecondScavengeTime' 'numberOfGlobalGCs' 'numberOfScavenges' 'timeForLastScavenge' 'timeForLastGGC' 'bytesFlipped' 'bytesTenured' 'gcTenureAge' 'meanGlobalGCTime' 'meanScavengeTime')
! !

"ASDBase.ic method 0x20049e7c; bytecode file offset 0x947128"
!EtasVMStats class methodsFor: 'recovered'!
vmStats
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) vmStatsAddress.
    recoveredValue1 := (self) address: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ef54c; bytecode file offset 0x9ebe0c"
!EtasVMStats class methodsFor: 'recovered'!
initializeAfterLoad
    (self) members: (#('numberOfGlobalGCs' 'numberOfScavenges' 'millisecondGlobalGCTime' 'millisecondScavengeTime')).
    (self) fixedSize: (44).
    ^self
! !

"ASDBase.ic method 0x201bfbe8; bytecode file offset 0xabc4b4"
!EtasVMStats class methodsFor: 'recovered'!
vmStatsAddress
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSVoid.
    recoveredValue1 := OSVoid.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) activeProcess.
    recoveredValue4 := (recoveredValue3) vmStateAddress.
    recoveredValue5 := (recoveredValue1) address: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) uint32At: (104).
    recoveredValue7 := (recoveredValue0) address: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) uint32At: (12).
    ^recoveredValue8
! !

