"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a29c; bytecode file offset 0x956b84"
!OSProcessMemoryCounters methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetProcess: recoveredArg1 memoryInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasPrimitiveError.
    recoveredValue1 := (recoveredValue0) primitiveFailed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e70a0; bytecode file offset 0x9e3968"
!OSProcessMemoryCounters methodsFor: 'recovered'!
getProcessMemoryInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (recoveredValue0) getCurrentProcess.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) fixedSize.
    (recoveredValue1) getProcessMemoryInfo: (self) cb: (recoveredValue3).
    ^self
! !

