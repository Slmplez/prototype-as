"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e95c; bytecode file offset 0x92209c"
!ASAP2BytesDpKpPaIFData class methodsFor: 'recovered'!
members
    ^#('dpBlob' 'paBlob' 'kpBlob')
! !

"ASDBase.ic method 0x20071c34; bytecode file offset 0x96e578"
!ASAP2BytesDpKpPaIFData class methodsFor: 'recovered'!
bytesSize
    ^0
! !

"ASDBase.ic method 0x20072b10; bytecode file offset 0x96f3cc"
!ASAP2BytesDpKpPaIFData class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x20362400; bytecode file offset 0xc5ed44"
!ASAP2BytesDpKpPaIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('TP_BLOB') put: ('getTpBlob:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('KP_BLOB') put: ('getKpBlob:').
    (recoveredValue0) at: ('PA_BLOB') put: ('getPaBlob:').
    recoveredValue3 := (self) options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('TP_BLOB') value: ('putIn:tpBlob:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('KP_BLOB') value: ('putIn:kpBlob:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('PA_BLOB') value: ('putIn:paBlob:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

