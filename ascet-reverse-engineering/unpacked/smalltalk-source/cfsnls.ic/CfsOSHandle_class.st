"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000022c; bytecode file offset 0x23494"
!CfsOSHandle class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetCurrentProcess
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200008e8; bytecode file offset 0x23b30"
!CfsOSHandle class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCreateFile: recoveredArg1 fdwAccess: recoveredArg2 fdwShareMode: recoveredArg3 lpsa: recoveredArg4 fdwCreate: recoveredArg5 fdwAttrsAndFlags: recoveredArg6 hTemplateFile: recoveredArg7
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200011c8; bytecode file offset 0x24420"
!CfsOSHandle class methodsFor: 'recovered'!
getCurrentProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platformFunctionGetCurrentProcess.
    recoveredValue1 := (self) immediate: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20005c78; bytecode file offset 0x28eb4"
!CfsOSHandle class methodsFor: 'recovered'!
createFile: recoveredArg1 fdwAccess: recoveredArg2 fdwShareMode: recoveredArg3 lpsa: recoveredArg4 fdwCreate: recoveredArg5 fdwAttrsAndFlags: recoveredArg6 hTemplateFile: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nullTerminated.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := (self) platformFunctionCreateFile: (recoveredValue1) fdwAccess: (recoveredValue2) fdwShareMode: (recoveredValue3) lpsa: (recoveredValue4) fdwCreate: (recoveredValue5) fdwAttrsAndFlags: (recoveredValue6) hTemplateFile: (recoveredValue7).
    recoveredValue9 := (self) immediate: (recoveredValue8).
    ^recoveredValue9
! !

