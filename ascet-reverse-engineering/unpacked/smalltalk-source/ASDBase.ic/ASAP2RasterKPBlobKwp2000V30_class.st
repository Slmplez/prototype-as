"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200727d8; bytecode file offset 0x96f1c4"
!ASAP2RasterKPBlobKwp2000V30 class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x20073320; bytecode file offset 0x970b34"
!ASAP2RasterKPBlobKwp2000V30 class methodsFor: 'recovered'!
asap2BehaviorId
    ^nil
! !

"ASDBase.ic method 0x200b68a8; bytecode file offset 0x9b39ac"
!ASAP2RasterKPBlobKwp2000V30 class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2d00; bytecode file offset 0xaef814"
!ASAP2RasterKPBlobKwp2000V30 class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('KP_BLOB_VERSION') put: ('getVersion:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('KP_BLOB_VERSION') value: ('putIn:version:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

