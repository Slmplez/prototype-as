"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200049bc; bytecode file offset 0x1589a4"
!OSNmListview methodsFor: 'recovered'!
iItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005804; bytecode file offset 0x159294"
!OSNmListview methodsFor: 'recovered'!
iSubItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006088; bytecode file offset 0x159974"
!OSNmListview methodsFor: 'recovered'!
uNewState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000621c; bytecode file offset 0x159f34"
!OSNmListview methodsFor: 'recovered'!
uOldState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006878; bytecode file offset 0x15a428"
!OSNmListview methodsFor: 'recovered'!
uChanged
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20007498; bytecode file offset 0x15ad48"
!OSNmListview methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c9b0; bytecode file offset 0x160b8c"
!OSNmListview methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e510; bytecode file offset 0x161e0c"
!OSNmListview methodsFor: 'recovered'!
ptAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200107c0; bytecode file offset 0x165330"
!OSNmListview methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d80; bytecode file offset 0x169290"
!OSNmListview methodsFor: 'recovered'!
iItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e00; bytecode file offset 0x169eb4"
!OSNmListview methodsFor: 'recovered'!
iSubItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b50; bytecode file offset 0x16a7b4"
!OSNmListview methodsFor: 'recovered'!
uNewState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017354; bytecode file offset 0x16afe8"
!OSNmListview methodsFor: 'recovered'!
uOldState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c90; bytecode file offset 0x16b690"
!OSNmListview methodsFor: 'recovered'!
uChanged: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018218; bytecode file offset 0x16bb70"
!OSNmListview methodsFor: 'recovered'!
ptAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a4c; bytecode file offset 0x16c368"
!OSNmListview methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

