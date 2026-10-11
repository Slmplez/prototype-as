"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bc50; bytecode file offset 0x92209c"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'prgType:' 'address:' 'sizea:' 'offset:' 'ifData:')
! !

"ASDBase.ic method 0x20026b84; bytecode file offset 0x923928"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
keyWord
    ^'MEMORY_LAYOUT'
! !

"ASDBase.ic method 0x2007478c; bytecode file offset 0x971040"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
emBehaviorId
    ^139
! !

"ASDBase.ic method 0x200b6518; bytecode file offset 0x9b39ac"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('prgType' 'address' 'sizea' 'offset' 'ifData')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7520; bytecode file offset 0x9b3e8c"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2c24; bytecode file offset 0xaef814"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('IF_DATA') put: ('getIfData:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('IF_DATA') value: ('putIn:ifData:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201fbef0; bytecode file offset 0xaf87d4"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 prgType: recoveredArg3 address: recoveredArg4 size: recoveredArg5 offset: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) prgType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) address: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) sizea: (recoveredValue9).
    recoveredValue10 := recoveredArg6.
    (recoveredValue3) offset: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20243130; bytecode file offset 0xb3fa00"
!ASAP2MemoryLayout class methodsFor: 'recovered'!
getCreateDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASAP2MemoryLayout.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) keyWord.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value0) at: (recoveredBlock13Value2) put: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

