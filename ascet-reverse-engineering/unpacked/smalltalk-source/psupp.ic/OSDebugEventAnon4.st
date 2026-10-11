"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cc00; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
CreateProcessInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCreateProcessDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cc20; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
ExitThread
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSExitThreadDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cca0; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
RipInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRipInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ce50; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
CreateThread
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCreateThreadDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ced0; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
ExitProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSExitProcessDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cfa0; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
UnloadDll
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUnloadDllDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d150; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
DebugString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSOutputDebugStringInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d210; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
Exception
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSExceptionDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d230; bytecode file offset 0x160b8c"
!OSDebugEventAnon4 methodsFor: 'recovered'!
LoadDll
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLoadDllDebugInfo.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f944; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
CreateProcessInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200102b0; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
Exception: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010544; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
RipInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200109f4; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
DebugString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010b38; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
LoadDll: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011018; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
ExitProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011510; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
CreateThread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011558; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
ExitThread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011a08; bytecode file offset 0x165330"
!OSDebugEventAnon4 methodsFor: 'recovered'!
UnloadDll: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

