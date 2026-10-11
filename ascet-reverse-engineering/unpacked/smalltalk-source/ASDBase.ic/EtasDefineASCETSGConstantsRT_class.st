"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002350; bytecode file offset 0x8ffcfc"
!EtasDefineASCETSGConstantsRT class methodsFor: 'recovered'!
_PRAGMA_ASCETSGConstants
    ^self
! !

"ASDBase.ic method 0x2004e150; bytecode file offset 0x94d048"
!EtasDefineASCETSGConstantsRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x2004fa94; bytecode file offset 0x94d048"
!EtasDefineASCETSGConstantsRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x20180344; bytecode file offset 0xa7cc18"
!EtasDefineASCETSGConstantsRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    MemoryClassesVariable := #('XRAM' 'IRAM' 'BITRAM' 'NVRAM').
    MemoryClassesParameter := #('XROM' 'IROM' 'FLASH' 'EEPROM').
    MemoryClassesCode := #('XROM' 'IROM').
    recoveredValue0 := ('hw') == (2007402198).
    ^self
! !

