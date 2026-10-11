"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001667c; bytecode file offset 0x92209c"
!ASAP2DpPaIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'paBlob:')
! !

"ASDBase.ic method 0x20090f40; bytecode file offset 0x98d9dc"
!ASAP2DpPaIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6d88; bytecode file offset 0x9b39ac"
!ASAP2DpPaIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('paBlob')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2e34; bytecode file offset 0xaef814"
!ASAP2DpPaIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('PA_BLOB') put: ('getPaBlob:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('PA_BLOB') value: ('putIn:paBlob:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

