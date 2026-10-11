"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008e864; bytecode file offset 0x98b308"
!OSProcessMemoryCounters class methodsFor: 'recovered'!
getProcessMemoryInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := OSHandle.
    recoveredValue2 := (recoveredValue1) getCurrentProcess.
    recoveredValue3 := (recoveredValue0) getProcessMemoryInfo: (recoveredValue2).
    ^recoveredValue3
! !

