"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001848; bytecode file offset 0x155d58"
!OSSecurityAttributes methodsFor: 'recovered'!
nLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200034d0; bytecode file offset 0x157170"
!OSSecurityAttributes methodsFor: 'recovered'!
lpSecurityDescriptor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dd00; bytecode file offset 0x1615c8"
!OSSecurityAttributes methodsFor: 'recovered'!
bInheritHandle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (8).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010a6c; bytecode file offset 0x165330"
!OSSecurityAttributes methodsFor: 'recovered'!
nLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012944; bytecode file offset 0x166e00"
!OSSecurityAttributes methodsFor: 'recovered'!
lpSecurityDescriptor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013bb0; bytecode file offset 0x1683c0"
!OSSecurityAttributes methodsFor: 'recovered'!
bInheritHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002a678; bytecode file offset 0x17df20"
!OSSecurityAttributes methodsFor: 'recovered'!
createMutex: recoveredArg1 lpszMutexName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := CreateMutex.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002b110; bytecode file offset 0x17e9d4"
!OSSecurityAttributes methodsFor: 'recovered'!
createSemaphore: recoveredArg1 cSemMax: recoveredArg2 lpszSemName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := CreateSemaphore.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002b12c; bytecode file offset 0x17e9d4"
!OSSecurityAttributes methodsFor: 'recovered'!
createEvent: recoveredArg1 fInitialState: recoveredArg2 lpszEventName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := CreateEvent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002bb40; bytecode file offset 0x17f3e4"
!OSSecurityAttributes methodsFor: 'recovered'!
createThread: recoveredArg1 lpStartAddr: recoveredArg2 lpvThreadParm: recoveredArg3 fdwCreate: recoveredArg4 lpIDThread: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := CreateThread.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) immediate: (recoveredValue7).
    ^recoveredValue8
! !

