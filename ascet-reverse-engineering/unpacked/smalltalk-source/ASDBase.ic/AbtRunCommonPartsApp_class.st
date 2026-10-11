"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002418; bytecode file offset 0x8ffcfc"
!AbtRunCommonPartsApp class methodsFor: 'recovered'!
_PRAGMA_AbtRunCommonStrings
    ^self
! !

"ASDBase.ic method 0x2004f2b4; bytecode file offset 0x94d048"
!AbtRunCommonPartsApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    ^self
! !

"ASDBase.ic method 0x2004f4dc; bytecode file offset 0x94d048"
!AbtRunCommonPartsApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x200a0950; bytecode file offset 0x99d3ac"
!AbtRunCommonPartsApp class methodsFor: 'recovered'!
loaded
    (self) abtRegisterExternalStrings.
    (self) relocalize.
    ^self
! !

"ASDBase.ic method 0x200e02b0; bytecode file offset 0x9dcbc0"
!AbtRunCommonPartsApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtrc?40') with: (false) with: (true).
    ^recoveredValue1
! !

