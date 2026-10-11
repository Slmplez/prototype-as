"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026ca4; bytecode file offset 0x923928"
!ASAP2DPKwp2000V30DPBlob class methodsFor: 'recovered'!
members
    ^#('address' 'bsize' 'version')
! !

"ASDBase.ic method 0x20072a68; bytecode file offset 0x96f3cc"
!ASAP2DPKwp2000V30DPBlob class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x201ffe00; bytecode file offset 0xafc77c"
!ASAP2DPKwp2000V30DPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('DP_BLOB_VERSION') put: ('getVersion:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('DP_BLOB_VERSION') value: ('putIn:version:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

