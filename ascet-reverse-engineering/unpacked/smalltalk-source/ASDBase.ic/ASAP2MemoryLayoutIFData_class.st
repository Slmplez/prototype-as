"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200261e8; bytecode file offset 0x923928"
!ASAP2MemoryLayoutIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'paBlob:' 'addressMapping:')
! !

"ASDBase.ic method 0x200802ac; bytecode file offset 0x97cb60"
!ASAP2MemoryLayoutIFData class methodsFor: 'recovered'!
emBehaviorId
    ^49
! !

"ASDBase.ic method 0x20090f30; bytecode file offset 0x98d9dc"
!ASAP2MemoryLayoutIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b62a8; bytecode file offset 0x9b39ac"
!ASAP2MemoryLayoutIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('addressMapping')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202499f0; bytecode file offset 0xb462cc"
!ASAP2MemoryLayoutIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ADDR_MAPPING') put: ('getAddressMapping:').
    (recoveredValue0) at: ('ADDRESS_MAPPING') put: ('getAddressMapping:').
    recoveredValue2 := options.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('ADDRESS_MAPPING') value: ('putIn:addressMapping:').
    (recoveredValue2) add: (recoveredValue4).
    ^self
! !

