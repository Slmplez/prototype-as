"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200176d8; bytecode file offset 0x92209c"
!ASAP2EtkIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'paBlob:' 'kpBlob:' 'source:' 'tpBlob:' 'raster:' 'eventGroup:' 'seedKey:' 'checksumType:')
! !

"ASDBase.ic method 0x20080274; bytecode file offset 0x97cb28"
!ASAP2EtkIFData class methodsFor: 'recovered'!
emBehaviorId
    ^175
! !

"ASDBase.ic method 0x2012fd34; bytecode file offset 0xa2c600"
!ASAP2EtkIFData class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 |
    super initializeClass.
    recoveredValue0 := (self) ifDatas.
    (recoveredValue0) at: ('ASAP1B_ETK') put: ('getEtkIFData:').
    ^self
! !

