"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000171c; bytecode file offset 0x155d58"
!OSDriverInfo3 methodsFor: 'recovered'!
cVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010580; bytecode file offset 0x165330"
!OSDriverInfo3 methodsFor: 'recovered'!
cVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013478; bytecode file offset 0x166e00"
!OSDriverInfo3 methodsFor: 'recovered'!
pName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146c0; bytecode file offset 0x1683c0"
!OSDriverInfo3 methodsFor: 'recovered'!
pEnvironment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001526c; bytecode file offset 0x169290"
!OSDriverInfo3 methodsFor: 'recovered'!
pDriverPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165bc; bytecode file offset 0x169eb4"
!OSDriverInfo3 methodsFor: 'recovered'!
pDataFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200169e8; bytecode file offset 0x16a7b4"
!OSDriverInfo3 methodsFor: 'recovered'!
pConfigFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017168; bytecode file offset 0x16afe8"
!OSDriverInfo3 methodsFor: 'recovered'!
pHelpFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b10; bytecode file offset 0x16b690"
!OSDriverInfo3 methodsFor: 'recovered'!
pDependentFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018134; bytecode file offset 0x16bb70"
!OSDriverInfo3 methodsFor: 'recovered'!
pMonitorName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018518; bytecode file offset 0x16bff0"
!OSDriverInfo3 methodsFor: 'recovered'!
pDefaultDataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b308; bytecode file offset 0x16f1fc"
!OSDriverInfo3 methodsFor: 'recovered'!
pName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ba44; bytecode file offset 0x16f8e8"
!OSDriverInfo3 methodsFor: 'recovered'!
pEnvironment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c4f0; bytecode file offset 0x16fe44"
!OSDriverInfo3 methodsFor: 'recovered'!
pDriverPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c8bc; bytecode file offset 0x170238"
!OSDriverInfo3 methodsFor: 'recovered'!
pDataFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cbac; bytecode file offset 0x17049c"
!OSDriverInfo3 methodsFor: 'recovered'!
pConfigFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cd5c; bytecode file offset 0x170728"
!OSDriverInfo3 methodsFor: 'recovered'!
pHelpFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cf90; bytecode file offset 0x170948"
!OSDriverInfo3 methodsFor: 'recovered'!
pDependentFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d0f0; bytecode file offset 0x170b20"
!OSDriverInfo3 methodsFor: 'recovered'!
pMonitorName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d3c4; bytecode file offset 0x170d40"
!OSDriverInfo3 methodsFor: 'recovered'!
pDefaultDataType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

