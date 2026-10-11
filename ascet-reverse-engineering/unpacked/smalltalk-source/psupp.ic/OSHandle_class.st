"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000933c; bytecode file offset 0x15cd08"
!OSHandle class methodsFor: 'recovered'!
getCurrentProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetCurrentProcess.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20009404; bytecode file offset 0x15cd08"
!OSHandle class methodsFor: 'recovered'!
getCurrentThread
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetCurrentThread.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20009468; bytecode file offset 0x15cd08"
!OSHandle class methodsFor: 'recovered'!
getProcessHeap
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetProcessHeap.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000bd64; bytecode file offset 0x15f71c"
!OSHandle class methodsFor: 'recovered'!
getStdHandle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetStdHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2000bd8c; bytecode file offset 0x15f71c"
!OSHandle class methodsFor: 'recovered'!
getClipboardData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetClipboardData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2000bfe8; bytecode file offset 0x15fa24"
!OSHandle class methodsFor: 'recovered'!
debugSnapShotProcessHeaps: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c068; bytecode file offset 0x15fa24"
!OSHandle class methodsFor: 'recovered'!
getStockObject: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2001e4e8; bytecode file offset 0x171d88"
!OSHandle class methodsFor: 'recovered'!
setClipboardData: recoveredArg1 hData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SetClipboardData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200215f4; bytecode file offset 0x174eb0"
!OSHandle class methodsFor: 'recovered'!
findFirstFile: recoveredArg1 lpffd: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := FindFirstFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x2002160c; bytecode file offset 0x174eb0"
!OSHandle class methodsFor: 'recovered'!
beginUpdateResource: recoveredArg1 bDeleteExistingResources: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := BeginUpdateResource.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20024058; bytecode file offset 0x177944"
!OSHandle class methodsFor: 'recovered'!
openEventLog: recoveredArg1 lpszSourceName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenEventLog.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20024070; bytecode file offset 0x177944"
!OSHandle class methodsFor: 'recovered'!
registerEventSource: recoveredArg1 lpszSource: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RegisterEventSource.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x200240a0; bytecode file offset 0x177944"
!OSHandle class methodsFor: 'recovered'!
openBackupEventLog: recoveredArg1 lpszFileName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenBackupEventLog.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002493c; bytecode file offset 0x178268"
!OSHandle class methodsFor: 'recovered'!
heapCreate: recoveredArg1 dwInitialSize: recoveredArg2 dwMaximumSize: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := HeapCreate.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20024964; bytecode file offset 0x178268"
!OSHandle class methodsFor: 'recovered'!
openProcess: recoveredArg1 fInherit: recoveredArg2 iDProcess: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OpenProcess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20025fdc; bytecode file offset 0x1798c8"
!OSHandle class methodsFor: 'recovered'!
openMutex: recoveredArg1 fInherit: recoveredArg2 lpszMutexName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenMutex.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20025ff4; bytecode file offset 0x1798c8"
!OSHandle class methodsFor: 'recovered'!
openSemaphore: recoveredArg1 fInherit: recoveredArg2 lpszSemName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenSemaphore.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002600c; bytecode file offset 0x1798c8"
!OSHandle class methodsFor: 'recovered'!
openEvent: recoveredArg1 fInherit: recoveredArg2 lpszEventName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenEvent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20026024; bytecode file offset 0x1798c8"
!OSHandle class methodsFor: 'recovered'!
openFileMapping: recoveredArg1 bInheritHandle: recoveredArg2 lpName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenFileMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x200260ac; bytecode file offset 0x179980"
!OSHandle class methodsFor: 'recovered'!
findFirstChangeNotification: recoveredArg1 fWatchSubTree: recoveredArg2 fdwFilter: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := FindFirstChangeNotification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20028848; bytecode file offset 0x17c0ec"
!OSHandle class methodsFor: 'recovered'!
createMailslot: recoveredArg1 cbMaxMsg: recoveredArg2 dwReadTimeout: recoveredArg3 lpsa: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CreateMailslot.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x20029974; bytecode file offset 0x17d23c"
!OSHandle class methodsFor: 'recovered'!
createConsoleScreenBuffer: recoveredArg1 dwShareMode: recoveredArg2 lpSecurityAttributes: recoveredArg3 dwFlags: recoveredArg4 lpScreenBufferData: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CreateConsoleScreenBuffer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002ceac; bytecode file offset 0x180750"
!OSHandle class methodsFor: 'recovered'!
createFile: recoveredArg1 fdwAccess: recoveredArg2 fdwShareMode: recoveredArg3 lpsa: recoveredArg4 fdwCreate: recoveredArg5 fdwAttrsAndFlags: recoveredArg6 hTemplateFile: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CreateFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8).
    recoveredValue10 := (self) immediate: (recoveredValue9).
    ^recoveredValue10
! !

"psupp.ic method 0x2002e918; bytecode file offset 0x1821bc"
!OSHandle class methodsFor: 'recovered'!
createNamedPipe: recoveredArg1 fdwOpenMode: recoveredArg2 fdwPipeMode: recoveredArg3 nMaxInstances: recoveredArg4 cbOutBuf: recoveredArg5 cbInBuf: recoveredArg6 dwTimeout: recoveredArg7 lpsa: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := CreateNamedPipe.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := recoveredArg8.
    recoveredValue10 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9).
    recoveredValue11 := (self) immediate: (recoveredValue10).
    ^recoveredValue11
! !

