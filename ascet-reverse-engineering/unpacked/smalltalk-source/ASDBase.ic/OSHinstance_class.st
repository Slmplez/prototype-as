"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200120a0; bytecode file offset 0x90e99c"
!OSHinstance class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiShellExecuteHWND: recoveredArg1 operation: recoveredArg2 file: recoveredArg3 parameters: recoveredArg4 directory: recoveredArg5 showCmd: recoveredArg6
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008396c; bytecode file offset 0x980230"
!OSHinstance class methodsFor: 'recovered'!
defaultAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) shellExecuteFile: (recoveredValue0) operation: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094618; bytecode file offset 0x991174"
!OSHinstance class methodsFor: 'recovered'!
explore: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) shellExecuteFile: (recoveredValue0) operation: ('explore').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094658; bytecode file offset 0x991174"
!OSHinstance class methodsFor: 'recovered'!
print: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) shellExecuteFile: (recoveredValue0) operation: ('print').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094868; bytecode file offset 0x991174"
!OSHinstance class methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) shellExecuteFile: (recoveredValue0) operation: ('open').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20156a84; bytecode file offset 0xa5334c"
!OSHinstance class methodsFor: 'recovered'!
shellExecuteFile: recoveredArg1 operation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := PlatformConstants.
    recoveredValue5 := (recoveredValue4) at: ('SwShow').
    recoveredValue6 := (self) apiShellExecuteHWND: (nil) operation: (recoveredValue1) file: (recoveredValue3) parameters: (nil) directory: (nil) showCmd: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20169690; bytecode file offset 0xa65f58"
!OSHinstance class methodsFor: 'recovered'!
shellExecuteFile: recoveredArg1 operation: recoveredArg2 parameters: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := PlatformConstants.
    recoveredValue7 := (recoveredValue6) at: ('SwShow').
    recoveredValue8 := (self) apiShellExecuteHWND: (nil) operation: (recoveredValue1) file: (recoveredValue3) parameters: (recoveredValue5) directory: (nil) showCmd: (recoveredValue7).
    ^recoveredValue8
! !

