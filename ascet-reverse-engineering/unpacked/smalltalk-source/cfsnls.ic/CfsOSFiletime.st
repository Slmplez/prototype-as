"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200006b8; bytecode file offset 0x23980"
!CfsOSFiletime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionLocalFileTimeToFileTime: recoveredArg1 lpFileTime: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000738; bytecode file offset 0x23980"
!CfsOSFiletime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionFileTimeToSystemTime: recoveredArg1 lpSystemTime: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000748; bytecode file offset 0x23980"
!CfsOSFiletime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionFileTimeToLocalFileTime: recoveredArg1 lpLocalFileTime: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200007ec; bytecode file offset 0x23a24"
!CfsOSFiletime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionFileTimeToDosDateTime: recoveredArg1 lpFatDate: recoveredArg2 lpFatTime: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001224; bytecode file offset 0x24470"
!CfsOSFiletime methodsFor: 'recovered'!
dwLowDateTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000129c; bytecode file offset 0x244dc"
!CfsOSFiletime methodsFor: 'recovered'!
dwHighDateTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200024e8; bytecode file offset 0x25740"
!CfsOSFiletime methodsFor: 'recovered'!
fileTimeToLocalFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) platformFunctionFileTimeToLocalFileTime: (self) lpLocalFileTime: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20002500; bytecode file offset 0x25740"
!CfsOSFiletime methodsFor: 'recovered'!
localFileTimeToFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) platformFunctionLocalFileTimeToFileTime: (self) lpFileTime: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000250c; bytecode file offset 0x25740"
!CfsOSFiletime methodsFor: 'recovered'!
fileTimeToSystemTime: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) platformFunctionFileTimeToSystemTime: (self) lpSystemTime: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20003404; bytecode file offset 0x2665c"
!CfsOSFiletime methodsFor: 'recovered'!
dwLowDateTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x2000347c; bytecode file offset 0x266bc"
!CfsOSFiletime methodsFor: 'recovered'!
dwHighDateTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003798; bytecode file offset 0x269cc"
!CfsOSFiletime methodsFor: 'recovered'!
fileTimeToDosDateTime: recoveredArg1 lpwDOSTime: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) platformFunctionFileTimeToDosDateTime: (self) lpFatDate: (recoveredValue0) lpFatTime: (recoveredValue1).
    ^recoveredValue2
! !

