"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000468; bytecode file offset 0x23760"
!CfsOSSystemtime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetLocalTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000498; bytecode file offset 0x23760"
!CfsOSSystemtime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetLocalTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200004e8; bytecode file offset 0x23760"
!CfsOSSystemtime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetSystemTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000508; bytecode file offset 0x23760"
!CfsOSSystemtime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetSystemTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000728; bytecode file offset 0x23980"
!CfsOSSystemtime methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSystemTimeToFileTime: recoveredArg1 lpFileTime: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000be0; bytecode file offset 0x23e44"
!CfsOSSystemtime methodsFor: 'recovered'!
setLocalTime
    | recoveredValue0 |
    recoveredValue0 := (self) platformFunctionSetLocalTime: (self).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000bec; bytecode file offset 0x23e44"
!CfsOSSystemtime methodsFor: 'recovered'!
getLocalTime
    | recoveredValue0 |
    recoveredValue0 := (self) platformFunctionGetLocalTime: (self).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000c04; bytecode file offset 0x23e44"
!CfsOSSystemtime methodsFor: 'recovered'!
setSystemTime
    | recoveredValue0 |
    recoveredValue0 := (self) platformFunctionSetSystemTime: (self).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000c10; bytecode file offset 0x23e44"
!CfsOSSystemtime methodsFor: 'recovered'!
getSystemTime
    | recoveredValue0 |
    recoveredValue0 := (self) platformFunctionGetSystemTime: (self).
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000123c; bytecode file offset 0x24470"
!CfsOSSystemtime methodsFor: 'recovered'!
wYear
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000125c; bytecode file offset 0x24490"
!CfsOSSystemtime methodsFor: 'recovered'!
wMonth
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200012a8; bytecode file offset 0x244dc"
!CfsOSSystemtime methodsFor: 'recovered'!
wDayOfWeek
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200012bc; bytecode file offset 0x244f0"
!CfsOSSystemtime methodsFor: 'recovered'!
wDay
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200012e4; bytecode file offset 0x24524"
!CfsOSSystemtime methodsFor: 'recovered'!
wHour
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001304; bytecode file offset 0x24538"
!CfsOSSystemtime methodsFor: 'recovered'!
wMinute
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001318; bytecode file offset 0x24558"
!CfsOSSystemtime methodsFor: 'recovered'!
wSecond
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001338; bytecode file offset 0x2456c"
!CfsOSSystemtime methodsFor: 'recovered'!
wMilliseconds
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200024f4; bytecode file offset 0x25740"
!CfsOSSystemtime methodsFor: 'recovered'!
systemTimeToFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) platformFunctionSystemTimeToFileTime: (self) lpFileTime: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20003428; bytecode file offset 0x2665c"
!CfsOSSystemtime methodsFor: 'recovered'!
wYear: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003440; bytecode file offset 0x26674"
!CfsOSSystemtime methodsFor: 'recovered'!
wMonth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003464; bytecode file offset 0x266bc"
!CfsOSSystemtime methodsFor: 'recovered'!
wDayOfWeek: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200034a0; bytecode file offset 0x266d4"
!CfsOSSystemtime methodsFor: 'recovered'!
wDay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200034e8; bytecode file offset 0x2671c"
!CfsOSSystemtime methodsFor: 'recovered'!
wHour: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003500; bytecode file offset 0x26734"
!CfsOSSystemtime methodsFor: 'recovered'!
wMinute: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003530; bytecode file offset 0x26764"
!CfsOSSystemtime methodsFor: 'recovered'!
wSecond: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003548; bytecode file offset 0x2677c"
!CfsOSSystemtime methodsFor: 'recovered'!
wMilliseconds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

