"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001fa6c; bytecode file offset 0x92209c"
!ASAP2McMessKPBlob class methodsFor: 'recovered'!
keyWord
    ^'KP_BLOB'
! !

"ASDBase.ic method 0x200258e8; bytecode file offset 0x923928"
!ASAP2McMessKPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'address:' 'addressLocation:' 'sizea:' 'pseudoAddress:' 'vsDef:')
! !

"ASDBase.ic method 0x200b6818; bytecode file offset 0x9b39ac"
!ASAP2McMessKPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('address' 'addressLocation' 'sizea' 'pseudoAddress' 'vsDef')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7580; bytecode file offset 0x9b3e8c"
!ASAP2McMessKPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202c4bcc; bytecode file offset 0xbc1520"
!ASAP2McMessKPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('PSEUDO_ADR') put: ('getPseudoAddress:').
    (recoveredValue0) at: ('VS_DEF') put: ('getVsDef:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('PSEUDO_ADR') value: ('putIn:pseudoAddress:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('VS_DEF') value: ('putIn:vsDef:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

