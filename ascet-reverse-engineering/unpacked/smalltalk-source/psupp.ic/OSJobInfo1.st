"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001590; bytecode file offset 0x155d58"
!OSJobInfo1 methodsFor: 'recovered'!
JobId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a1c; bytecode file offset 0x15a428"
!OSJobInfo1 methodsFor: 'recovered'!
Status
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006e04; bytecode file offset 0x15a780"
!OSJobInfo1 methodsFor: 'recovered'!
Priority
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007170; bytecode file offset 0x15aa74"
!OSJobInfo1 methodsFor: 'recovered'!
Position
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007378; bytecode file offset 0x15ad48"
!OSJobInfo1 methodsFor: 'recovered'!
TotalPages
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007690; bytecode file offset 0x15b000"
!OSJobInfo1 methodsFor: 'recovered'!
PagesPrinted
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e6e0; bytecode file offset 0x161f9c"
!OSJobInfo1 methodsFor: 'recovered'!
Submitted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSystemtime.
    recoveredValue1 := (self) structAt: (48) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010478; bytecode file offset 0x165330"
!OSJobInfo1 methodsFor: 'recovered'!
JobId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f20; bytecode file offset 0x166e00"
!OSJobInfo1 methodsFor: 'recovered'!
pPrinterName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b68; bytecode file offset 0x1683c0"
!OSJobInfo1 methodsFor: 'recovered'!
pMachineName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200156b0; bytecode file offset 0x169290"
!OSJobInfo1 methodsFor: 'recovered'!
pUserName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b48; bytecode file offset 0x169eb4"
!OSJobInfo1 methodsFor: 'recovered'!
pDocument: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e5c; bytecode file offset 0x16a7b4"
!OSJobInfo1 methodsFor: 'recovered'!
pDatatype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200172e8; bytecode file offset 0x16afe8"
!OSJobInfo1 methodsFor: 'recovered'!
pStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d20; bytecode file offset 0x16b690"
!OSJobInfo1 methodsFor: 'recovered'!
Status: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200180ec; bytecode file offset 0x16bb70"
!OSJobInfo1 methodsFor: 'recovered'!
Priority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200186d4; bytecode file offset 0x16bff0"
!OSJobInfo1 methodsFor: 'recovered'!
Position: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200189f8; bytecode file offset 0x16c368"
!OSJobInfo1 methodsFor: 'recovered'!
TotalPages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018de8; bytecode file offset 0x16c6bc"
!OSJobInfo1 methodsFor: 'recovered'!
PagesPrinted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018f20; bytecode file offset 0x16c9d4"
!OSJobInfo1 methodsFor: 'recovered'!
Submitted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b3a8; bytecode file offset 0x16f1fc"
!OSJobInfo1 methodsFor: 'recovered'!
pPrinterName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bb98; bytecode file offset 0x16f8e8"
!OSJobInfo1 methodsFor: 'recovered'!
pMachineName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c180; bytecode file offset 0x16fe44"
!OSJobInfo1 methodsFor: 'recovered'!
pUserName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c77c; bytecode file offset 0x170238"
!OSJobInfo1 methodsFor: 'recovered'!
pDocument
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cb48; bytecode file offset 0x17049c"
!OSJobInfo1 methodsFor: 'recovered'!
pDatatype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cd48; bytecode file offset 0x170728"
!OSJobInfo1 methodsFor: 'recovered'!
pStatus
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

