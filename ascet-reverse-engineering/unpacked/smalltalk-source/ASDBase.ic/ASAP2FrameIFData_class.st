"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f670; bytecode file offset 0x92209c"
!ASAP2FrameIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'qpBlob:')
! !

"ASDBase.ic method 0x20080570; bytecode file offset 0x97ce24"
!ASAP2FrameIFData class methodsFor: 'recovered'!
emBehaviorId
    ^190
! !

"ASDBase.ic method 0x20090fb0; bytecode file offset 0x98d9dc"
!ASAP2FrameIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6500; bytecode file offset 0x9b39ac"
!ASAP2FrameIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('qpBlob')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2c50; bytecode file offset 0xaef814"
!ASAP2FrameIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('QP_BLOB') put: ('getQpBlob:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('QP_BLOB') value: ('putIn:qpBlob:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

