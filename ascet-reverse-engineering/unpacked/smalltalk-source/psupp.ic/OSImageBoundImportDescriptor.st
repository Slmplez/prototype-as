"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020d0; bytecode file offset 0x155d58"
!OSImageBoundImportDescriptor methodsFor: 'recovered'!
TimeDateStamp
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200035a8; bytecode file offset 0x157170"
!OSImageBoundImportDescriptor methodsFor: 'recovered'!
OffsetModuleName
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003918; bytecode file offset 0x1572b8"
!OSImageBoundImportDescriptor methodsFor: 'recovered'!
NumberOfModuleForwarderRefs
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x200113cc; bytecode file offset 0x165330"
!OSImageBoundImportDescriptor methodsFor: 'recovered'!
TimeDateStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200124dc; bytecode file offset 0x166e00"
!OSImageBoundImportDescriptor methodsFor: 'recovered'!
OffsetModuleName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200135f8; bytecode file offset 0x166f5c"
!OSImageBoundImportDescriptor methodsFor: 'recovered'!
NumberOfModuleForwarderRefs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

