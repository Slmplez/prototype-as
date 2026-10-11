"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b6c98; bytecode file offset 0x9b39ac"
!ASAP2BytesDpKpPaTpIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('tpBlob' 'source' 'raster' 'eventGroup' 'seedKey')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b75d0; bytecode file offset 0x9b3e8c"
!ASAP2BytesDpKpPaTpIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ffe34; bytecode file offset 0xafc77c"
!ASAP2BytesDpKpPaTpIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('DP_BLOB') put: ('getDpBlob:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('DP_BLOB') value: ('putIn:dpBlob:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

