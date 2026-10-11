"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200016f8; bytecode file offset 0x8ffcfc"
!ETASDatabase32RT class methodsFor: 'recovered'!
_PRAGMA_CTreeOldInterface
    ^self
! !

"ASDBase.ic method 0x20001a00; bytecode file offset 0x8ffcfc"
!ETASDatabase32RT class methodsFor: 'recovered'!
_PRAGMA_ETASDatabase32RTNlsPool
    ^self
! !

"ASDBase.ic method 0x200032b8; bytecode file offset 0x8ffcfc"
!ETASDatabase32RT class methodsFor: 'recovered'!
_PRAGMA_DBInterface
    ^self
! !

"ASDBase.ic method 0x2004ef6c; bytecode file offset 0x94d048"
!ETASDatabase32RT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x2004fd58; bytecode file offset 0x94d048"
!ETASDatabase32RT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x2005bfa4; bytecode file offset 0x958ab0"
!ETASDatabase32RT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := DBInterface32.
    (recoveredValue0) saving.
    ^self
! !

