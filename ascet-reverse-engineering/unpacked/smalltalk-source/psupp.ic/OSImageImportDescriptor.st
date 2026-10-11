"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002310; bytecode file offset 0x155d58"
!OSImageImportDescriptor methodsFor: 'recovered'!
Characteristics
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003860; bytecode file offset 0x157170"
!OSImageImportDescriptor methodsFor: 'recovered'!
TimeDateStamp
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003e14; bytecode file offset 0x157f64"
!OSImageImportDescriptor methodsFor: 'recovered'!
ForwarderChain
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004854; bytecode file offset 0x1589a4"
!OSImageImportDescriptor methodsFor: 'recovered'!
Name
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ff20; bytecode file offset 0x165330"
!OSImageImportDescriptor methodsFor: 'recovered'!
Characteristics: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010eb0; bytecode file offset 0x165330"
!OSImageImportDescriptor methodsFor: 'recovered'!
OriginalFirstThunk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126f8; bytecode file offset 0x166e00"
!OSImageImportDescriptor methodsFor: 'recovered'!
TimeDateStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200139e8; bytecode file offset 0x1683c0"
!OSImageImportDescriptor methodsFor: 'recovered'!
ForwarderChain: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d5c; bytecode file offset 0x169290"
!OSImageImportDescriptor methodsFor: 'recovered'!
Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016088; bytecode file offset 0x169eb4"
!OSImageImportDescriptor methodsFor: 'recovered'!
FirstThunk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ac58; bytecode file offset 0x16ea70"
!OSImageImportDescriptor methodsFor: 'recovered'!
OriginalFirstThunk
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSImageThunkData.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c600; bytecode file offset 0x170238"
!OSImageImportDescriptor methodsFor: 'recovered'!
FirstThunk
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSImageThunkData.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

