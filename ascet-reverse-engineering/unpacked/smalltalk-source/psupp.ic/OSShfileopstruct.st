"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003248; bytecode file offset 0x157170"
!OSShfileopstruct methodsFor: 'recovered'!
wFunc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005474; bytecode file offset 0x159294"
!OSShfileopstruct methodsFor: 'recovered'!
fFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006140; bytecode file offset 0x159a20"
!OSShfileopstruct methodsFor: 'recovered'!
hNameMappings
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (22).
    ^recoveredValue0
! !

"psupp.ic method 0x20009158; bytecode file offset 0x15caa4"
!OSShfileopstruct methodsFor: 'recovered'!
sHFileOperation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SHFileOperation.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e110; bytecode file offset 0x1619a8"
!OSShfileopstruct methodsFor: 'recovered'!
fAnyOperationsAborted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (18).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011a50; bytecode file offset 0x165330"
!OSShfileopstruct methodsFor: 'recovered'!
hwnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012764; bytecode file offset 0x166e00"
!OSShfileopstruct methodsFor: 'recovered'!
wFunc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200144e0; bytecode file offset 0x1683c0"
!OSShfileopstruct methodsFor: 'recovered'!
pFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015248; bytecode file offset 0x169290"
!OSShfileopstruct methodsFor: 'recovered'!
pTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016004; bytecode file offset 0x169eb4"
!OSShfileopstruct methodsFor: 'recovered'!
fFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200166b8; bytecode file offset 0x169f98"
!OSShfileopstruct methodsFor: 'recovered'!
fAnyOperationsAborted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (18) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016fd0; bytecode file offset 0x16a868"
!OSShfileopstruct methodsFor: 'recovered'!
hNameMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (22) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017810; bytecode file offset 0x16b0cc"
!OSShfileopstruct methodsFor: 'recovered'!
lpszProgressTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (26) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001afb4; bytecode file offset 0x16ea70"
!OSShfileopstruct methodsFor: 'recovered'!
hwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bb34; bytecode file offset 0x16f8e8"
!OSShfileopstruct methodsFor: 'recovered'!
pFrom
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c338; bytecode file offset 0x16fe44"
!OSShfileopstruct methodsFor: 'recovered'!
pTo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cea8; bytecode file offset 0x170748"
!OSShfileopstruct methodsFor: 'recovered'!
lpszProgressTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (26).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

