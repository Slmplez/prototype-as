"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200012f0; bytecode file offset 0x155d58"
!OSMenuitemtemplateheader methodsFor: 'recovered'!
versionNumber
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002908; bytecode file offset 0x1561c4"
!OSMenuitemtemplateheader methodsFor: 'recovered'!
offset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200100f4; bytecode file offset 0x165330"
!OSMenuitemtemplateheader methodsFor: 'recovered'!
versionNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011be8; bytecode file offset 0x1657d4"
!OSMenuitemtemplateheader methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

