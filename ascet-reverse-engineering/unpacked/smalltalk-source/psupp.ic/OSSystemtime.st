"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d7c; bytecode file offset 0x155d58"
!OSSystemtime methodsFor: 'recovered'!
wYear
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000268c; bytecode file offset 0x1561c4"
!OSSystemtime methodsFor: 'recovered'!
wMonth
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002cfc; bytecode file offset 0x157170"
!OSSystemtime methodsFor: 'recovered'!
wDayOfWeek
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003a14; bytecode file offset 0x1572b8"
!OSSystemtime methodsFor: 'recovered'!
wDay
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x200041d4; bytecode file offset 0x157f64"
!OSSystemtime methodsFor: 'recovered'!
wHour
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200047d8; bytecode file offset 0x1580a0"
!OSSystemtime methodsFor: 'recovered'!
wMinute
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x20005004; bytecode file offset 0x1589a4"
!OSSystemtime methodsFor: 'recovered'!
wSecond
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200051f4; bytecode file offset 0x158aa4"
!OSSystemtime methodsFor: 'recovered'!
wMilliseconds
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x20008358; bytecode file offset 0x15caa4"
!OSSystemtime methodsFor: 'recovered'!
setLocalTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SetLocalTime.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200089c8; bytecode file offset 0x15caa4"
!OSSystemtime methodsFor: 'recovered'!
getLocalTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetLocalTime.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008e88; bytecode file offset 0x15caa4"
!OSSystemtime methodsFor: 'recovered'!
setSystemTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SetSystemTime.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009198; bytecode file offset 0x15caa4"
!OSSystemtime methodsFor: 'recovered'!
getSystemTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetSystemTime.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e9dc; bytecode file offset 0x163098"
!OSSystemtime methodsFor: 'recovered'!
systemTimeToFileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SystemTimeToFileTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000fbcc; bytecode file offset 0x165330"
!OSSystemtime methodsFor: 'recovered'!
wYear: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011db0; bytecode file offset 0x1657d4"
!OSSystemtime methodsFor: 'recovered'!
wMonth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200130f4; bytecode file offset 0x166e00"
!OSSystemtime methodsFor: 'recovered'!
wDayOfWeek: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013628; bytecode file offset 0x166f5c"
!OSSystemtime methodsFor: 'recovered'!
wDay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141ec; bytecode file offset 0x1683c0"
!OSSystemtime methodsFor: 'recovered'!
wHour: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014bc4; bytecode file offset 0x168528"
!OSSystemtime methodsFor: 'recovered'!
wMinute: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200157a0; bytecode file offset 0x169290"
!OSSystemtime methodsFor: 'recovered'!
wSecond: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015a34; bytecode file offset 0x169398"
!OSSystemtime methodsFor: 'recovered'!
wMilliseconds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

