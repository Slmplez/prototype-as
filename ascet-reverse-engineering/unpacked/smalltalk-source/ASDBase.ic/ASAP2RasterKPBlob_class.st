"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ef08; bytecode file offset 0x92209c"
!ASAP2RasterKPBlob class methodsFor: 'recovered'!
members
    ^#('address' 'base' 'byteSize' 'raster')
! !

"ASDBase.ic method 0x200723e0; bytecode file offset 0x96ee04"
!ASAP2RasterKPBlob class methodsFor: 'recovered'!
fixedSize
    ^1
! !

"ASDBase.ic method 0x200804e4; bytecode file offset 0x97cdb8"
!ASAP2RasterKPBlob class methodsFor: 'recovered'!
asap2BehaviorId
    ^60
! !

"ASDBase.ic method 0x201f2bf8; bytecode file offset 0xaef814"
!ASAP2RasterKPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('RASTER') put: ('getRaster:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('RASTER') value: ('putIn:raster:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

