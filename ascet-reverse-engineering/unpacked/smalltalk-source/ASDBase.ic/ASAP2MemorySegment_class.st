"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001844c; bytecode file offset 0x92209c"
!ASAP2MemorySegment class methodsFor: 'recovered'!
possiblePrgTypes
    ^#('CODE' 'DATA' 'OFFLINE_DATA' 'VARIABLES' 'SERAM' 'RESERVED')
! !

"ASDBase.ic method 0x2001ea88; bytecode file offset 0x92209c"
!ASAP2MemorySegment class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'prgType:' 'address:' 'sizea:' 'offset:' 'ifData:' 'attribute:' 'memoryType:')
! !

"ASDBase.ic method 0x20024a64; bytecode file offset 0x92209c"
!ASAP2MemorySegment class methodsFor: 'recovered'!
keyWord
    ^'MEMORY_SEGMENT'
! !

"ASDBase.ic method 0x20025fc0; bytecode file offset 0x923928"
!ASAP2MemorySegment class methodsFor: 'recovered'!
possibleAttributes
    ^#('INTERN' 'EXTERN')
! !

"ASDBase.ic method 0x200267ac; bytecode file offset 0x923928"
!ASAP2MemorySegment class methodsFor: 'recovered'!
possibleMemoryTypes
    ^#('FLASH' 'RAM' 'EEPROM' 'REGISTER')
! !

"ASDBase.ic method 0x2007ff90; bytecode file offset 0x97c844"
!ASAP2MemorySegment class methodsFor: 'recovered'!
emBehaviorId
    ^162
! !

"ASDBase.ic method 0x200b69c8; bytecode file offset 0x9b39ac"
!ASAP2MemorySegment class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('attribute' 'memoryType')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b724c; bytecode file offset 0x9b3b98"
!ASAP2MemorySegment class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20112710; bytecode file offset 0xa0efd4"
!ASAP2MemorySegment class methodsFor: 'recovered'!
possibleKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := keyWords.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := ASAP2ModuleParameter.
    recoveredValue4 := (recoveredValue3) keyWords.
    (recoveredValue2) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

