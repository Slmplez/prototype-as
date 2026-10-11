"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013d64; bytecode file offset 0x912098"
!ASAP2DpIFData class methodsFor: 'recovered'!
kpBlobClass
    | recoveredValue0 |
    recoveredValue0 := ASAP2RasterKPBlob.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017d38; bytecode file offset 0x92209c"
!ASAP2DpIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:')
! !

"ASDBase.ic method 0x200910d0; bytecode file offset 0x98d9dc"
!ASAP2DpIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6ef0; bytecode file offset 0x9b39ac"
!ASAP2DpIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('dpBlob')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2f3c; bytecode file offset 0xaef814"
!ASAP2DpIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('DP_BLOB') put: ('getDpBlob:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('DP_BLOB') value: ('putIn:dpBlob:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

