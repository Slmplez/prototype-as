"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200024c0; bytecode file offset 0x155d58"
!OSFiletime methodsFor: 'recovered'!
dwLowDateTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e7c; bytecode file offset 0x157170"
!OSFiletime methodsFor: 'recovered'!
dwHighDateTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20008748; bytecode file offset 0x15caa4"
!OSFiletime methodsFor: 'recovered'!
getSystemTimeAsFileTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetSystemTimeAsFileTime.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008ac8; bytecode file offset 0x15caa4"
!OSFiletime methodsFor: 'recovered'!
coFileTimeNow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CoFileTimeNow.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e96c; bytecode file offset 0x163098"
!OSFiletime methodsFor: 'recovered'!
fileTimeToLocalFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := FileTimeToLocalFileTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f26c; bytecode file offset 0x163098"
!OSFiletime methodsFor: 'recovered'!
fileTimeToSystemTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := FileTimeToSystemTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f2ac; bytecode file offset 0x163098"
!OSFiletime methodsFor: 'recovered'!
localFileTimeToFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LocalFileTimeToFileTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f34c; bytecode file offset 0x163098"
!OSFiletime methodsFor: 'recovered'!
compareFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CompareFileTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20011954; bytecode file offset 0x165330"
!OSFiletime methodsFor: 'recovered'!
dwLowDateTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200121e8; bytecode file offset 0x166e00"
!OSFiletime methodsFor: 'recovered'!
dwHighDateTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020d9c; bytecode file offset 0x174df8"
!OSFiletime methodsFor: 'recovered'!
fileTimeToDosDateTime: recoveredArg1 lpwDOSTime: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := FileTimeToDosDateTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200213dc; bytecode file offset 0x174df8"
!OSFiletime methodsFor: 'recovered'!
coFileTimeToDosDateTime: recoveredArg1 lpDosTime: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CoFileTimeToDosDateTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

